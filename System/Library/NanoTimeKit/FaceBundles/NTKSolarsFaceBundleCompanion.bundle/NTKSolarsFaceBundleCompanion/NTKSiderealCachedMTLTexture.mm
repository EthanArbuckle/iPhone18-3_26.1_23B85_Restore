@interface NTKSiderealCachedMTLTexture
- (NTKSiderealCachedMTLTexture)initWithCachedImageKey:(id)key isAlphaOnly:(BOOL)only imageGenerationBlock:(id)block;
- (id)_alphaOnlyTexture;
- (id)_loadTexture:(id)texture WithCommandBuffer:(id)buffer;
- (id)_rgbaTexture;
- (id)loadTextureWithCommandBuffer:(id)buffer usingBlitEncoder:(id)encoder;
@end

@implementation NTKSiderealCachedMTLTexture

- (NTKSiderealCachedMTLTexture)initWithCachedImageKey:(id)key isAlphaOnly:(BOOL)only imageGenerationBlock:(id)block
{
  keyCopy = key;
  blockCopy = block;
  v17.receiver = self;
  v17.super_class = NTKSiderealCachedMTLTexture;
  v11 = [(NTKSiderealCachedMTLTexture *)&v17 init];
  if (v11)
  {
    v12 = objc_retainBlock(blockCopy);
    generateImageBlock = v11->_generateImageBlock;
    v11->_generateImageBlock = v12;

    v11->_isAlphaOnly = only;
    v14 = +[CLKUIMetalResourceManager sharedDevice];
    device = v11->_device;
    v11->_device = v14;

    objc_storeStrong(&v11->_cacheKey, key);
  }

  return v11;
}

- (id)loadTextureWithCommandBuffer:(id)buffer usingBlitEncoder:(id)encoder
{
  bufferCopy = buffer;
  encoderCopy = encoder;
  blitCommandEncoder = encoderCopy;
  if (!self->_mtlTexture)
  {
    if (!encoderCopy)
    {
      blitCommandEncoder = [bufferCopy blitCommandEncoder];
    }

    if (self->_isAlphaOnly)
    {
      [(NTKSiderealCachedMTLTexture *)self _alphaOnlyTexture];
    }

    else
    {
      [(NTKSiderealCachedMTLTexture *)self _rgbaTexture];
    }
    v9 = ;
    v10 = (v9)[2](v9, blitCommandEncoder);
    mtlTexture = self->_mtlTexture;
    self->_mtlTexture = v10;

    generateImageBlock = self->_generateImageBlock;
    self->_generateImageBlock = 0;
  }

  v13 = blitCommandEncoder;

  return blitCommandEncoder;
}

- (id)_loadTexture:(id)texture WithCommandBuffer:(id)buffer
{
  textureCopy = texture;
  bufferCopy = buffer;
  commandBuffer = bufferCopy;
  if (textureCopy)
  {
    if (bufferCopy)
    {
      v8 = 1;
    }

    else
    {
      v10 = +[CLKUIMetalResourceManager sharedCommandQueue];
      commandBuffer = [v10 commandBuffer];
      [CLKUIMetalResourceManager addCompletedErrorCheckToCommandBuffer:commandBuffer forCase:@"SiderealLoadTexture"];

      v8 = v10 == 0;
    }

    blitCommandEncoder = [commandBuffer blitCommandEncoder];
    v9 = textureCopy[2](textureCopy, blitCommandEncoder);
    [blitCommandEncoder endEncoding];
    if (!v8)
    {
      [commandBuffer commit];
      [commandBuffer waitUntilScheduled];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_alphaOnlyTexture
{
  if (self->_generateImageBlock)
  {
    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = sub_A210;
    v37 = sub_A220;
    v38 = 0;
    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v32 = 0;
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 0;
    objc_initWeak(&location, self);
    v3 = +[NTKSiderealCache sharedCache];
    cacheKey = self->_cacheKey;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_A228;
    v22[3] = &unk_2CA80;
    objc_copyWeak(&v23, &location);
    v22[4] = &v29;
    v22[5] = &v25;
    v22[6] = &v33;
    v5 = [v3 imageDataForKey:cacheKey generationBlock:v22];

    if (v5)
    {
      if (!v34[5])
      {
        bytes = [v5 bytes];
        v7 = v30;
        v30[3] = *bytes;
        v8 = bytes[1];
        v26[3] = v8;
        if (!(v7[3] | v8))
        {
          v9 = _NTKLoggingObjectForDomain();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            sub_19D08(v9);
          }

LABEL_12:
          v11 = 0;
LABEL_15:

          objc_destroyWeak(&v23);
          objc_destroyWeak(&location);
          _Block_object_dispose(&v25, 8);
          _Block_object_dispose(&v29, 8);
          _Block_object_dispose(&v33, 8);

          goto LABEL_16;
        }

        v12 = -[MTLDevice newBufferWithBytes:length:options:](self->_device, "newBufferWithBytes:length:options:", bytes + 2, ([v5 length] + -16.0), 0);
        v13 = v34[5];
        v34[5] = v12;
      }

      v9 = [MTLTextureDescriptor texture2DDescriptorWithPixelFormat:10 width:v30[3] height:v26[3] mipmapped:0];
      [v9 setStorageMode:2];
      [v9 setUsage:1];
      v14 = [(MTLDevice *)self->_device newTextureWithDescriptor:v9];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_A5D8;
      v17[3] = &unk_2CAA8;
      v20 = &v29;
      v21 = &v25;
      v18 = v14;
      v19 = &v33;
      v15 = v14;
      v11 = objc_retainBlock(v17);

      goto LABEL_15;
    }

    v9 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_19D4C(&self->_cacheKey);
    }

    goto LABEL_12;
  }

  v10 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_19DB8(self);
  }

  v11 = 0;
LABEL_16:

  return v11;
}

- (id)_rgbaTexture
{
  if (self->_generateImageBlock)
  {
    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = sub_A210;
    v37 = sub_A220;
    v38 = 0;
    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v32 = 0;
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 0;
    objc_initWeak(&location, self);
    v3 = +[NTKSiderealCache sharedCache];
    cacheKey = self->_cacheKey;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_AA5C;
    v22[3] = &unk_2CA80;
    objc_copyWeak(&v23, &location);
    v22[4] = &v29;
    v22[5] = &v25;
    v22[6] = &v33;
    v5 = [v3 imageDataForKey:cacheKey generationBlock:v22];

    if (v5)
    {
      if (!v34[5])
      {
        bytes = [v5 bytes];
        v7 = v30;
        v30[3] = *bytes;
        v8 = bytes[1];
        v26[3] = v8;
        if (!(v7[3] | v8))
        {
          v9 = _NTKLoggingObjectForDomain();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            sub_19D08(v9);
          }

LABEL_12:
          v11 = 0;
LABEL_15:

          objc_destroyWeak(&v23);
          objc_destroyWeak(&location);
          _Block_object_dispose(&v25, 8);
          _Block_object_dispose(&v29, 8);
          _Block_object_dispose(&v33, 8);

          goto LABEL_16;
        }

        v12 = -[MTLDevice newBufferWithBytes:length:options:](self->_device, "newBufferWithBytes:length:options:", bytes + 2, ([v5 length] + -16.0), 0);
        v13 = v34[5];
        v34[5] = v12;
      }

      v9 = [MTLTextureDescriptor texture2DDescriptorWithPixelFormat:81 width:v30[3] height:v26[3] mipmapped:0];
      [v9 setStorageMode:2];
      [v9 setUsage:1];
      v14 = [(MTLDevice *)self->_device newTextureWithDescriptor:v9];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_AD88;
      v17[3] = &unk_2CAA8;
      v20 = &v29;
      v21 = &v25;
      v18 = v14;
      v19 = &v33;
      v15 = v14;
      v11 = objc_retainBlock(v17);

      goto LABEL_15;
    }

    v9 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_19D4C(&self->_cacheKey);
    }

    goto LABEL_12;
  }

  v10 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_19DB8(self);
  }

  v11 = 0;
LABEL_16:

  return v11;
}

@end