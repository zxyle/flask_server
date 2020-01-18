FROM python:3.7.4

WORKDIR /usr/src/app

COPY requirements.txt ./

COPY ./pip.conf /etc/pip.conf

ENV TZ=Asia/Shanghai \
    FLASK_CONFIG=default

RUN pip install --no-cache-dir --upgrade pip \
     && pip install --no-cache-dir -r requirements.txt

RUN  mkdir -p /usr/src/app/data/logs