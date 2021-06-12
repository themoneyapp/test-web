FROM node:14-alpine

WORKDIR /deploy/app
COPY package.json yarn.lock ./
RUN yarn install
COPY . ./
RUN npm run build