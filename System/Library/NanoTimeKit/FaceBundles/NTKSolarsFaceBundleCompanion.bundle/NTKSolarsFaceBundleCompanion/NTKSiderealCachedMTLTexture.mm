@interface NTKSiderealCachedMTLTexture
- (NTKSiderealCachedMTLTexture)initWithCachedImageKey:(id)a3 isAlphaOnly:(BOOL)a4 imageGenerationBlock:(id)a5;
- (id)_alphaOnlyTexture;
- (id)_loadTexture:(id)a3 WithCommandBuffer:(id)a4;
- (id)_rgbaTexture;
- (id)loadTextureWithCommandBuffer:(id)a3 usingBlitEncoder:(id)a4;
@end

@implementation NTKSiderealCachedMTLTexture

- (NTKSiderealCachedMTLTexture)initWithCachedImageKey:(id)a3 isAlphaOnly:(BOOL)a4 imageGenerationBlock:(id)a5
{
  v9 = a3;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = NTKSiderealCachedMTLTexture;
  v11 = [(NTKSiderealCachedMTLTexture *)&v17 init];
  if (v11)
  {
    v12 = objc_retainBlock(v10);
    generateImageBlock = v11->_generateImageBlock;
    v11->_generateImageBlock = v12;

    v11->_isAlphaOnly = a4;
    v14 = +[CLKUIMetalResourceManager sharedDevice];
    device = v11->_device;
    v11->_device = v14;

    objc_storeStrong(&v11->_cacheKey, a3);
  }

  return v11;
}

- (id)loadTextureWithCommandBuffer:(id)a3 usingBlitEncoder:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!self->_mtlTexture)
  {
    if (!v7)
    {
      v8 = [v6 blitCommandEncoder];
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
    v10 = (v9)[2](v9, v8);
    mtlTexture = self->_mtlTexture;
    self->_mtlTexture = v10;

    generateImageBlock = self->_generateImageBlock;
    self->_generateImageBlock = 0;
  }

  v13 = v8;

  return v8;
}

- (id)_loadTexture:(id)a3 WithCommandBuffer:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      v8 = 1;
    }

    else
    {
      v10 = +[CLKUIMetalResourceManager sharedCommandQueue];
      v7 = [v10 commandBuffer];
      [CLKUIMetalResourceManager addCompletedErrorCheckToCommandBuffer:v7 forCase:@"SiderealLoadTexture"];

      v8 = v10 == 0;
    }

    v11 = [v7 blitCommandEncoder];
    v9 = v5[2](v5, v11);
    [v11 endEncoding];
    if (!v8)
    {
      [v7 commit];
      [v7 waitUntilScheduled];
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
        v6 = [v5 bytes];
        v7 = v30;
        v30[3] = *v6;
        v8 = v6[1];
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

        v12 = -[MTLDevice newBufferWithBytes:length:options:](self->_device, "newBufferWithBytes:length:options:", v6 + 2, ([v5 length] + -16.0), 0);
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
        v6 = [v5 bytes];
        v7 = v30;
        v30[3] = *v6;
        v8 = v6[1];
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

        v12 = -[MTLDevice newBufferWithBytes:length:options:](self->_device, "newBufferWithBytes:length:options:", v6 + 2, ([v5 length] + -16.0), 0);
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