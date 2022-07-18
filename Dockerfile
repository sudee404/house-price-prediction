# syntax=docker/dockerfile:1
# pulls image
FROM python:3.8.13-slim-buster
# creates a working directory called app
WORKDIR /app
# copies the requirements.txt to the app folder
COPY requirements.txt .

RUN pip install -r requirements.txt
# copies all the other files to the app folder
COPY . .

EXPOSE 5000
# this command is used to run flask applications in deployment
CMD gunicorn app:app
