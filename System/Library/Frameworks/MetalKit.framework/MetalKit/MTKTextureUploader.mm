@interface MTKTextureUploader
- (MTKTextureUploader)initWithDevice:(id)device commandQueue:(id)queue notifyQueue:(id)notifyQueue;
- (id)newTextureWithData:(id)data options:(id)options error:(id *)error;
- (void)copyBytes:(const void *)bytes toTexture:(id)texture bitsPerPixel:(unint64_t)pixel pixelComponents:(unint64_t)components bytesPerRow:(unint64_t)row bytesPerImage:(unint64_t)image region:(id *)region slice:(unint64_t)self0 level:(unint64_t)self1 flipVertically:(BOOL)self2;
- (void)copyTexture:(id)texture toTexture:(id)toTexture;
- (void)dealloc;
- (void)finishWithCompletionHandler:(id)handler;
- (void)generateMipmapsForTexture:(id)texture;
@end

@implementation MTKTextureUploader

- (void)dealloc
{
  self->_device = 0;
  blit = self->_blit;
  if (blit)
  {
    [(MTLBlitCommandEncoder *)blit endEncoding];

    self->_blit = 0;
  }

  self->_commandBuffer = 0;
  self->_lock = 0;
  dispatch_release(self->_notifyQueue);
  self->_notifyQueue = 0;
  v4.receiver = self;
  v4.super_class = MTKTextureUploader;
  [(MTKTextureUploader *)&v4 dealloc];
}

- (MTKTextureUploader)initWithDevice:(id)device commandQueue:(id)queue notifyQueue:(id)notifyQueue
{
  v12.receiver = self;
  v12.super_class = MTKTextureUploader;
  v8 = [(MTKTextureUploader *)&v12 init];
  if (v8)
  {
    v8->_device = device;
    v8->_lock = objc_alloc_init(MEMORY[0x1E696AD10]);
    v8->_notifyQueue = notifyQueue;
    dispatch_retain(notifyQueue);
    v9 = objc_autoreleasePoolPush();
    if (queue)
    {
      commandBuffer = [queue commandBuffer];
      v8->_commandBuffer = commandBuffer;
      v8->_blit = [(MTLCommandBuffer *)commandBuffer blitCommandEncoder];
    }

    objc_autoreleasePoolPop(v9);
  }

  return v8;
}

- (void)generateMipmapsForTexture:(id)texture
{
  if (texture)
  {
    [(NSLock *)self->_lock lock];
    [(MTLBlitCommandEncoder *)self->_blit generateMipmapsForTexture:texture];
    lock = self->_lock;

    [(NSLock *)lock unlock];
  }
}

- (void)copyBytes:(const void *)bytes toTexture:(id)texture bitsPerPixel:(unint64_t)pixel pixelComponents:(unint64_t)components bytesPerRow:(unint64_t)row bytesPerImage:(unint64_t)image region:(id *)region slice:(unint64_t)self0 level:(unint64_t)self1 flipVertically:(BOOL)self2
{
  if (!bytes || !texture)
  {
    [MTKTextureUploader copyBytes:toTexture:bitsPerPixel:pixelComponents:bytesPerRow:bytesPerImage:region:slice:level:flipVertically:];
  }

  bytesCopy = bytes;
  sliceCopy2 = slice;
  levelCopy2 = level;
  if (vertically)
  {
    componentsCopy = components;
    v20 = malloc_type_malloc(image, 0x446B8D26uLL);
    reflectImage(bytesCopy, v20, region->var1.var0, region->var1.var1, row, pixel, componentsCopy);
    bytesCopy = v20;
    levelCopy2 = level;
    sliceCopy2 = slice;
  }

  v25 = 0;
  memset(&v24[3], 0, 48);
  device = self->_device;
  [texture pixelFormat];
  MTLPixelFormatGetInfoForDevice();
  v22 = *&region->var0.var2;
  v24[0] = *&region->var0.var0;
  v24[1] = v22;
  v24[2] = *&region->var1.var1;
  [texture replaceRegion:v24 mipmapLevel:levelCopy2 slice:sliceCopy2 withBytes:bytesCopy bytesPerRow:row bytesPerImage:image];
  if (vertically)
  {
    free(bytesCopy);
  }
}

- (void)copyTexture:(id)texture toTexture:(id)toTexture
{
  if (!texture || !toTexture)
  {
    [MTKTextureUploader copyTexture:toTexture:];
  }

  [(NSLock *)self->_lock lock];
  textureType = [texture textureType];
  v8 = 6;
  if ((textureType - 5) >= 2)
  {
    v8 = 1;
  }

  v18 = v8;
  if ([texture arrayLength])
  {
    v9 = 0;
    do
    {
      v10 = 0;
      v16 = v9;
      v17 = v9 * v18;
      do
      {
        width = [texture width];
        height = [texture height];
        depth = [texture depth];
        if ([texture mipmapLevelCount])
        {
          v14 = 0;
          do
          {
            blit = self->_blit;
            memset(v21, 0, sizeof(v21));
            memset(v19, 0, sizeof(v19));
            v20[0] = width;
            v20[1] = height;
            v20[2] = depth;
            [(MTLBlitCommandEncoder *)blit copyFromTexture:texture sourceSlice:v10 + v17 sourceLevel:v14 sourceOrigin:v21 sourceSize:v20 toTexture:toTexture destinationSlice:v10 + v17 destinationLevel:v14 destinationOrigin:v19];
            if (width <= 1)
            {
              width = 1;
            }

            else
            {
              width >>= 1;
            }

            if (height <= 1)
            {
              height = 1;
            }

            else
            {
              height >>= 1;
            }

            if (depth <= 1)
            {
              depth = 1;
            }

            else
            {
              depth >>= 1;
            }

            ++v14;
          }

          while (v14 < [texture mipmapLevelCount]);
        }

        ++v10;
      }

      while (v10 != v18);
      v9 = v16 + 1;
    }

    while (v16 + 1 < [texture arrayLength]);
  }

  [(NSLock *)self->_lock unlock];
}

- (id)newTextureWithData:(id)data options:(id)options error:(id *)error
{
  v8 = objc_alloc_init(MEMORY[0x1E69741C0]);
  [v8 setTextureType:{objc_msgSend(data, "textureType")}];
  [v8 setPixelFormat:objc_msgSend(data, "pixelFormat")];
  [v8 setWidth:{objc_msgSend(data, "width")}];
  [v8 setHeight:{objc_msgSend(data, "height")}];
  [v8 setDepth:{objc_msgSend(data, "depth")}];
  [v8 setMipmapLevelCount:{objc_msgSend(data, "numMipmapLevels")}];
  [v8 setSampleCount:1];
  [v8 setArrayLength:{objc_msgSend(data, "numArrayElements")}];
  if ([data numMipmapLevels] == 1 && ((objc_msgSend(objc_msgSend(options, "objectForKey:", @"MTKTextureLoaderOptionAllocateMipmaps"), "BOOLValue") & 1) != 0 || objc_msgSend(objc_msgSend(options, "objectForKey:", @"MTKTextureLoaderOptionGenerateMipmaps"), "BOOLValue")))
  {
    width = [data width];
    height = [data height];
    if (width <= height)
    {
      v11 = height;
    }

    else
    {
      v11 = width;
    }

    [v8 setMipmapLevelCount:(floor(log2(v11)) + 1.0)];
  }

  v12 = [options objectForKeyedSubscript:@"MTKTextureLoaderOptionLoadAsArray"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v12 BOOLValue])
  {
    [v8 setTextureType:{arrayTextureTypeFromTextureType(objc_msgSend(v8, "textureType"))}];
  }

  storageMode = [v8 storageMode];
  if ([options objectForKey:@"MTKTextureLoaderOptionTextureStorageMode"])
  {
    storageMode = [objc_msgSend(options objectForKey:{@"MTKTextureLoaderOptionTextureStorageMode", "unsignedIntegerValue"}];
  }

  if (storageMode == 2)
  {
    v14 = [(MTLDevice *)self->_device newTextureWithDescriptor:v8];
  }

  else
  {
    v14 = 0;
  }

  [v8 setStorageMode:storageMode];
  if ([options objectForKey:@"MTKTextureLoaderOptionTextureUsage"])
  {
    [v8 setUsage:{objc_msgSend(objc_msgSend(options, "objectForKey:", @"MTKTextureLoaderOptionTextureUsage", "unsignedIntegerValue")}];
  }

  if ([options objectForKey:@"MTKTextureLoaderOptionTextureCPUCacheMode"])
  {
    [v8 setCpuCacheMode:{objc_msgSend(objc_msgSend(options, "objectForKey:", @"MTKTextureLoaderOptionTextureCPUCacheMode", "unsignedIntegerValue")}];
  }

  v15 = [(MTLDevice *)self->_device newTextureWithDescriptor:v8];

  imageOrigin = [data imageOrigin];
  v17 = [options objectForKey:@"MTKTextureLoaderOptionOrigin"];
  if (v17)
  {
    v18 = v17;
    if (v17 == @"MTKTextureLoaderOriginFlippedVertically")
    {
      if (imageOrigin == @"MTKTextureLoaderOriginTopLeft")
      {
        v18 = @"MTKTextureLoaderOriginBottomLeft";
      }

      else
      {
        v18 = @"MTKTextureLoaderOriginTopLeft";
      }
    }
  }

  else
  {
    v18 = imageOrigin;
  }

  if (storageMode == 2)
  {
    v19 = v14;
  }

  else
  {
    v19 = v15;
  }

  if (!v19 || !v15)
  {
    if (error)
    {
      *error = _newMTKTextureErrorWithCodeAndErrorString(0, @"Failed to allocate texture memory.");
    }

    if (v19 != v15)
    {
    }

    return 0;
  }

  errorCopy = error;
  v41 = v15;
  if ([data numArrayElements])
  {
    v20 = 0;
    v43 = v18;
    v44 = v19;
    v42 = imageOrigin;
    while (![data numFaces])
    {
LABEL_48:
      if (++v20 >= [data numArrayElements])
      {
        goto LABEL_49;
      }
    }

    v21 = 0;
    while (1)
    {
      width2 = [data width];
      height2 = [data height];
      if ([data numMipmapLevels])
      {
        break;
      }

LABEL_47:
      if (++v21 >= [data numFaces])
      {
        goto LABEL_48;
      }
    }

    v22 = 0;
    while (![data depth])
    {
LABEL_41:
      if (width2 <= 1)
      {
        v35 = 1;
      }

      else
      {
        v35 = width2 >> 1;
      }

      v36 = height2 >> 1;
      if (height2 <= 1)
      {
        v36 = 1;
      }

      height2 = v36;
      width2 = v35;
      if (++v22 >= [data numMipmapLevels])
      {
        goto LABEL_47;
      }
    }

    v23 = 0;
    while (1)
    {
      v54 = 0;
      v55 = 0;
      v24 = [data getDataForArrayElement:v20 face:v21 level:v22 depthPlane:v23 bytesPerRow:&v55 bytesPerImage:&v54];
      if (!v24)
      {
        break;
      }

      v25 = v24;
      v53 = 0;
      v48 = imageOrigin != v18;
      v51 = 0u;
      v52 = 0u;
      v50 = 0u;
      [data pixelFormat];
      MTLPixelFormatGetInfoForDevice();
      bytes = [v25 bytes];
      v27 = 8 * *(&v51 + 1);
      v28 = v52;
      v29 = v54;
      v30 = v55;
      numFaces = [data numFaces];
      v49[0] = 0;
      v49[1] = 0;
      v49[2] = v23;
      v49[3] = width2;
      v49[4] = height2;
      v49[5] = 1;
      LOBYTE(v39) = v48;
      v32 = bytes;
      v19 = v44;
      v33 = v27;
      v34 = v30;
      imageOrigin = v42;
      v18 = v43;
      [(MTKTextureUploader *)self copyBytes:v32 toTexture:v44 bitsPerPixel:v33 pixelComponents:v28 bytesPerRow:v34 bytesPerImage:v29 region:v49 slice:v21 + numFaces * v20 level:v22 flipVertically:v39];
      if (++v23 >= [data depth])
      {
        goto LABEL_41;
      }
    }

    if (errorCopy)
    {
      *errorCopy = _newMTKTextureErrorWithCodeAndErrorString(0, @"Texture malformed.");
    }

    if (v44 != v41)
    {
    }

    return 0;
  }

LABEL_49:
  v37 = v41;
  if (v19 != v41)
  {
    [(MTKTextureUploader *)self copyTexture:v19 toTexture:v41];
  }

  return v37;
}

- (void)finishWithCompletionHandler:(id)handler
{
  if (self->_commandBuffer)
  {
    [(MTLBlitCommandEncoder *)self->_blit endEncoding];
    commandBuffer = self->_commandBuffer;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __50__MTKTextureUploader_finishWithCompletionHandler___block_invoke;
    v7[3] = &unk_1E8580A38;
    v7[4] = handler;
    [(MTLCommandBuffer *)commandBuffer addCompletedHandler:v7];
    [(MTLCommandBuffer *)self->_commandBuffer commit];

    self->_blit = 0;
  }

  else
  {
    notifyQueue = self->_notifyQueue;

    dispatch_async(notifyQueue, handler);
  }
}

@end