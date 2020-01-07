ARG BASE_CONTAINER=jupyter/base-notebook
FROM $BASE_CONTAINER

LABEL maintainer="DKorgun"

COPY input_images /home/jovyan/work/input_images/
COPY CNN_Visualizations.ipynb /home/jovyan/work/
COPY requirements.txt /home/jovyan/work/

RUN pip install --upgrade pip && \
    pip install -r /home/jovyan/work/requirements.txt
