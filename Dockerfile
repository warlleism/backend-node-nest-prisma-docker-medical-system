FROM node:alpine

WORKDIR /usr/app

COPY prisma ./prisma
COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "start"]
