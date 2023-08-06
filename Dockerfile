FROM arm64v8/ubuntu:latest

RUN apt update && apt install -y fio bash jq

ADD ./fio/ /fio/
WORKDIR ["/fio/"]
ENTRYPOINT ["bash", "/fio/run.sh"]
