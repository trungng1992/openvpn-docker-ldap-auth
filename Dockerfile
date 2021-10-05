FROM alpine:3.7

MAINTAINER ChunChung<trungn.se@gmail.com>

ADD VERSION .

# Install needed packages
RUN apk update && apk add openssl easy-rsa openvpn iptables bash vim openvpn-auth-ldap && \
    rm -rf /tmp/* /var/tmp/* /var/cache/apk/* /var/cache/disfiles/*


RUN mkdir -p /dev/net && \
    mknod  /dev/net/tun c 10 200