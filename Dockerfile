FROM debian:stable-slim

RUN echo 'deb http://deb.debian.org/debian bullseye-backports main' >> /etc/apt/sources.list
RUN apt-get update && apt-get -y install offlineimap3 cron rsnapshot && rm -rf /var/lib/apt/lists/*
