FROM debian:12
EXPOSE 80
WORKDIR /app
USER root

COPY loader.sh ./

RUN apt-get update && apt-get install curl wget tmux systemctl expect -y && chmod +x loader.sh

ENTRYPOINT [ "sudo bash loader.sh" ]
