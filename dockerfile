# Stage 1: Build the application (slim base)
FROM node:latest

WORKDIR /home/radiocity_next/my-app/

COPY package*.json ./

RUN npm install --production

COPY . .

RUN npm run build

# Expose port
EXPOSE 3000

# Start the application
CMD [ "npm", "run","dev" ]