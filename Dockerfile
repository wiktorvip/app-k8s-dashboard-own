FROM python:3.10-alpine

#RUN apk add --no-cache curl python pkgconfig python-dev openssl-dev libffi-dev musl-dev
RUN apk add --no-cache curl pkgconfig openssl-dev libffi-dev musl-dev

ADD ./requirements.txt /opt/webapp-conntest/

WORKDIR /opt/webapp-conntest

RUN pip install -r requirements.txt

ADD . /opt/webapp-conntest

EXPOSE 8080

ENTRYPOINT ["python", "app.py"]
