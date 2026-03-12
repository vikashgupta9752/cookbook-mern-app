#!/bin/bash
echo "Building Cookbook App for Render..."

# 1. Install root dependencies (concurrently, etc if needed)
npm install

# 2. Build the React Client
echo "Building the React Client..."
cd client
npm install
npm run build
cd ..

# 3. Install Server Dependencies
echo "Installing Server Dependencies..."
cd server
npm install
cd ..

echo "Build complete! Ready to start."
