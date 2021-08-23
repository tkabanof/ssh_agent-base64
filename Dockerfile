FROM debian:jessie-slim

RUN which ssh-agent || ( apt-get update -y && apt-get install openssh-client -y )
RUN mkdir -p ~/.ssh

ADD start.sh /

ENTRYPOINT ["./start.sh"]
