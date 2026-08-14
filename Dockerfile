# Base image (OS) 14 Aug 2026

FROM python:3.14-slim

# Working directory

WORKDIR /app

# Copy src code to container

COPY . .

# Run the build commands

RUN pip install --no-cache-dir -r requirements.txt 

# expose port 80

EXPOSE 80

# serve the app / run the app (keep it running)

CMD ["python","run.py"]

