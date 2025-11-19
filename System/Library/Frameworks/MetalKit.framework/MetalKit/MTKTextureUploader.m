@interface MTKTextureUploader
- (MTKTextureUploader)initWithDevice:(id)a3 commandQueue:(id)a4 notifyQueue:(id)a5;
- (id)newTextureWithData:(id)a3 options:(id)a4 error:(id *)a5;
- (void)copyBytes:(const void *)a3 toTexture:(id)a4 bitsPerPixel:(unint64_t)a5 pixelComponents:(unint64_t)a6 bytesPerRow:(unint64_t)a7 bytesPerImage:(unint64_t)a8 region:(id *)a9 slice:(unint64_t)a10 level:(unint64_t)a11 flipVertically:(BOOL)a12;
- (void)copyTexture:(id)a3 toTexture:(id)a4;
- (void)dealloc;
- (void)finishWithCompletionHandler:(id)a3;
- (void)generateMipmapsForTexture:(id)a3;
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

- (MTKTextureUploader)initWithDevice:(id)a3 commandQueue:(id)a4 notifyQueue:(id)a5
{
  v12.receiver = self;
  v12.super_class = MTKTextureUploader;
  v8 = [(MTKTextureUploader *)&v12 init];
  if (v8)
  {
    v8->_device = a3;
    v8->_lock = objc_alloc_init(MEMORY[0x1E696AD10]);
    v8->_notifyQueue = a5;
    dispatch_retain(a5);
    v9 = objc_autoreleasePoolPush();
    if (a4)
    {
      v10 = [a4 commandBuffer];
      v8->_commandBuffer = v10;
      v8->_blit = [(MTLCommandBuffer *)v10 blitCommandEncoder];
    }

    objc_autoreleasePoolPop(v9);
  }

  return v8;
}

- (void)generateMipmapsForTexture:(id)a3
{
  if (a3)
  {
    [(NSLock *)self->_lock lock];
    [(MTLBlitCommandEncoder *)self->_blit generateMipmapsForTexture:a3];
    lock = self->_lock;

    [(NSLock *)lock unlock];
  }
}

- (void)copyBytes:(const void *)a3 toTexture:(id)a4 bitsPerPixel:(unint64_t)a5 pixelComponents:(unint64_t)a6 bytesPerRow:(unint64_t)a7 bytesPerImage:(unint64_t)a8 region:(id *)a9 slice:(unint64_t)a10 level:(unint64_t)a11 flipVertically:(BOOL)a12
{
  if (!a3 || !a4)
  {
    [MTKTextureUploader copyBytes:toTexture:bitsPerPixel:pixelComponents:bytesPerRow:bytesPerImage:region:slice:level:flipVertically:];
  }

  v15 = a3;
  v17 = a10;
  v18 = a11;
  if (a12)
  {
    v23 = a6;
    v20 = malloc_type_malloc(a8, 0x446B8D26uLL);
    reflectImage(v15, v20, a9->var1.var0, a9->var1.var1, a7, a5, v23);
    v15 = v20;
    v18 = a11;
    v17 = a10;
  }

  v25 = 0;
  memset(&v24[3], 0, 48);
  device = self->_device;
  [a4 pixelFormat];
  MTLPixelFormatGetInfoForDevice();
  v22 = *&a9->var0.var2;
  v24[0] = *&a9->var0.var0;
  v24[1] = v22;
  v24[2] = *&a9->var1.var1;
  [a4 replaceRegion:v24 mipmapLevel:v18 slice:v17 withBytes:v15 bytesPerRow:a7 bytesPerImage:a8];
  if (a12)
  {
    free(v15);
  }
}

- (void)copyTexture:(id)a3 toTexture:(id)a4
{
  if (!a3 || !a4)
  {
    [MTKTextureUploader copyTexture:toTexture:];
  }

  [(NSLock *)self->_lock lock];
  v7 = [a3 textureType];
  v8 = 6;
  if ((v7 - 5) >= 2)
  {
    v8 = 1;
  }

  v18 = v8;
  if ([a3 arrayLength])
  {
    v9 = 0;
    do
    {
      v10 = 0;
      v16 = v9;
      v17 = v9 * v18;
      do
      {
        v11 = [a3 width];
        v12 = [a3 height];
        v13 = [a3 depth];
        if ([a3 mipmapLevelCount])
        {
          v14 = 0;
          do
          {
            blit = self->_blit;
            memset(v21, 0, sizeof(v21));
            memset(v19, 0, sizeof(v19));
            v20[0] = v11;
            v20[1] = v12;
            v20[2] = v13;
            [(MTLBlitCommandEncoder *)blit copyFromTexture:a3 sourceSlice:v10 + v17 sourceLevel:v14 sourceOrigin:v21 sourceSize:v20 toTexture:a4 destinationSlice:v10 + v17 destinationLevel:v14 destinationOrigin:v19];
            if (v11 <= 1)
            {
              v11 = 1;
            }

            else
            {
              v11 >>= 1;
            }

            if (v12 <= 1)
            {
              v12 = 1;
            }

            else
            {
              v12 >>= 1;
            }

            if (v13 <= 1)
            {
              v13 = 1;
            }

            else
            {
              v13 >>= 1;
            }

            ++v14;
          }

          while (v14 < [a3 mipmapLevelCount]);
        }

        ++v10;
      }

      while (v10 != v18);
      v9 = v16 + 1;
    }

    while (v16 + 1 < [a3 arrayLength]);
  }

  [(NSLock *)self->_lock unlock];
}

- (id)newTextureWithData:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = objc_alloc_init(MEMORY[0x1E69741C0]);
  [v8 setTextureType:{objc_msgSend(a3, "textureType")}];
  [v8 setPixelFormat:objc_msgSend(a3, "pixelFormat")];
  [v8 setWidth:{objc_msgSend(a3, "width")}];
  [v8 setHeight:{objc_msgSend(a3, "height")}];
  [v8 setDepth:{objc_msgSend(a3, "depth")}];
  [v8 setMipmapLevelCount:{objc_msgSend(a3, "numMipmapLevels")}];
  [v8 setSampleCount:1];
  [v8 setArrayLength:{objc_msgSend(a3, "numArrayElements")}];
  if ([a3 numMipmapLevels] == 1 && ((objc_msgSend(objc_msgSend(a4, "objectForKey:", @"MTKTextureLoaderOptionAllocateMipmaps"), "BOOLValue") & 1) != 0 || objc_msgSend(objc_msgSend(a4, "objectForKey:", @"MTKTextureLoaderOptionGenerateMipmaps"), "BOOLValue")))
  {
    v9 = [a3 width];
    v10 = [a3 height];
    if (v9 <= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v9;
    }

    [v8 setMipmapLevelCount:(floor(log2(v11)) + 1.0)];
  }

  v12 = [a4 objectForKeyedSubscript:@"MTKTextureLoaderOptionLoadAsArray"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v12 BOOLValue])
  {
    [v8 setTextureType:{arrayTextureTypeFromTextureType(objc_msgSend(v8, "textureType"))}];
  }

  v13 = [v8 storageMode];
  if ([a4 objectForKey:@"MTKTextureLoaderOptionTextureStorageMode"])
  {
    v13 = [objc_msgSend(a4 objectForKey:{@"MTKTextureLoaderOptionTextureStorageMode", "unsignedIntegerValue"}];
  }

  if (v13 == 2)
  {
    v14 = [(MTLDevice *)self->_device newTextureWithDescriptor:v8];
  }

  else
  {
    v14 = 0;
  }

  [v8 setStorageMode:v13];
  if ([a4 objectForKey:@"MTKTextureLoaderOptionTextureUsage"])
  {
    [v8 setUsage:{objc_msgSend(objc_msgSend(a4, "objectForKey:", @"MTKTextureLoaderOptionTextureUsage", "unsignedIntegerValue")}];
  }

  if ([a4 objectForKey:@"MTKTextureLoaderOptionTextureCPUCacheMode"])
  {
    [v8 setCpuCacheMode:{objc_msgSend(objc_msgSend(a4, "objectForKey:", @"MTKTextureLoaderOptionTextureCPUCacheMode", "unsignedIntegerValue")}];
  }

  v15 = [(MTLDevice *)self->_device newTextureWithDescriptor:v8];

  v16 = [a3 imageOrigin];
  v17 = [a4 objectForKey:@"MTKTextureLoaderOptionOrigin"];
  if (v17)
  {
    v18 = v17;
    if (v17 == @"MTKTextureLoaderOriginFlippedVertically")
    {
      if (v16 == @"MTKTextureLoaderOriginTopLeft")
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
    v18 = v16;
  }

  if (v13 == 2)
  {
    v19 = v14;
  }

  else
  {
    v19 = v15;
  }

  if (!v19 || !v15)
  {
    if (a5)
    {
      *a5 = _newMTKTextureErrorWithCodeAndErrorString(0, @"Failed to allocate texture memory.");
    }

    if (v19 != v15)
    {
    }

    return 0;
  }

  v40 = a5;
  v41 = v15;
  if ([a3 numArrayElements])
  {
    v20 = 0;
    v43 = v18;
    v44 = v19;
    v42 = v16;
    while (![a3 numFaces])
    {
LABEL_48:
      if (++v20 >= [a3 numArrayElements])
      {
        goto LABEL_49;
      }
    }

    v21 = 0;
    while (1)
    {
      v46 = [a3 width];
      v45 = [a3 height];
      if ([a3 numMipmapLevels])
      {
        break;
      }

LABEL_47:
      if (++v21 >= [a3 numFaces])
      {
        goto LABEL_48;
      }
    }

    v22 = 0;
    while (![a3 depth])
    {
LABEL_41:
      if (v46 <= 1)
      {
        v35 = 1;
      }

      else
      {
        v35 = v46 >> 1;
      }

      v36 = v45 >> 1;
      if (v45 <= 1)
      {
        v36 = 1;
      }

      v45 = v36;
      v46 = v35;
      if (++v22 >= [a3 numMipmapLevels])
      {
        goto LABEL_47;
      }
    }

    v23 = 0;
    while (1)
    {
      v54 = 0;
      v55 = 0;
      v24 = [a3 getDataForArrayElement:v20 face:v21 level:v22 depthPlane:v23 bytesPerRow:&v55 bytesPerImage:&v54];
      if (!v24)
      {
        break;
      }

      v25 = v24;
      v53 = 0;
      v48 = v16 != v18;
      v51 = 0u;
      v52 = 0u;
      v50 = 0u;
      [a3 pixelFormat];
      MTLPixelFormatGetInfoForDevice();
      v26 = [v25 bytes];
      v27 = 8 * *(&v51 + 1);
      v28 = v52;
      v29 = v54;
      v30 = v55;
      v31 = [a3 numFaces];
      v49[0] = 0;
      v49[1] = 0;
      v49[2] = v23;
      v49[3] = v46;
      v49[4] = v45;
      v49[5] = 1;
      LOBYTE(v39) = v48;
      v32 = v26;
      v19 = v44;
      v33 = v27;
      v34 = v30;
      v16 = v42;
      v18 = v43;
      [(MTKTextureUploader *)self copyBytes:v32 toTexture:v44 bitsPerPixel:v33 pixelComponents:v28 bytesPerRow:v34 bytesPerImage:v29 region:v49 slice:v21 + v31 * v20 level:v22 flipVertically:v39];
      if (++v23 >= [a3 depth])
      {
        goto LABEL_41;
      }
    }

    if (v40)
    {
      *v40 = _newMTKTextureErrorWithCodeAndErrorString(0, @"Texture malformed.");
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

- (void)finishWithCompletionHandler:(id)a3
{
  if (self->_commandBuffer)
  {
    [(MTLBlitCommandEncoder *)self->_blit endEncoding];
    commandBuffer = self->_commandBuffer;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __50__MTKTextureUploader_finishWithCompletionHandler___block_invoke;
    v7[3] = &unk_1E8580A38;
    v7[4] = a3;
    [(MTLCommandBuffer *)commandBuffer addCompletedHandler:v7];
    [(MTLCommandBuffer *)self->_commandBuffer commit];

    self->_blit = 0;
  }

  else
  {
    notifyQueue = self->_notifyQueue;

    dispatch_async(notifyQueue, a3);
  }
}

@end