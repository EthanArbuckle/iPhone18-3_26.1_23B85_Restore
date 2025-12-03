@interface MTKTextureLoaderMDL
- (BOOL)determineFormatFromChannelEncoding:(int64_t)encoding channelCount:(unint64_t)count error:(id *)error;
- (MTKTextureLoaderMDL)initWithMDLTexture:(id)texture options:(id)options error:(id *)error;
- (id)getDataForArrayElement:(unint64_t)element face:(unint64_t)face level:(unint64_t)level depthPlane:(unint64_t)plane bytesPerRow:(unint64_t *)row bytesPerImage:(unint64_t *)image;
- (void)dealloc;
@end

@implementation MTKTextureLoaderMDL

- (MTKTextureLoaderMDL)initWithMDLTexture:(id)texture options:(id)options error:(id *)error
{
  v20.receiver = self;
  v20.super_class = MTKTextureLoaderMDL;
  v8 = [(MTKTextureLoaderData *)&v20 init];
  if (v8)
  {
    *(v8 + 10) = texture;
    [texture dimensions];
    [v8 setWidth:v9];
    [v8 setDepth:1];
    [v8 setNumArrayElements:1];
    if ([texture isCube])
    {
      [v8 setNumFaces:6];
      [v8 setTextureType:5];
      [texture dimensions];
      v11 = v10 / 6;
    }

    else
    {
      [v8 setNumFaces:1];
      [v8 setTextureType:2];
      [texture dimensions];
      v11 = v12;
    }

    [v8 setHeight:v11];
    mipLevelCount = [texture mipLevelCount];
    if (mipLevelCount <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = mipLevelCount;
    }

    [v8 setNumMipmapLevels:v14];
    if (![v8 determineFormatFromChannelEncoding:objc_msgSend(texture channelCount:"channelEncoding") error:{objc_msgSend(texture, "channelCount"), error}])
    {
      goto LABEL_12;
    }

    [v8 pixelFormat];
    MTLPixelFormatGetInfoForDevice();
    *(v8 + 17) = v19;
    *(v8 + 104) = v17;
    *(v8 + 120) = v18;
    *(v8 + 88) = v16;
    [v8 setImageOrigin:@"MTKTextureLoaderOriginTopLeft"];
    if ([options objectForKey:@"MTKTextureLoaderOptionCubeLayout"])
    {
      if (error)
      {
        *error = _newMTKTextureErrorWithCodeAndErrorString(0, @"Creating cube maps from 2D textures is not supported for MDL textures");
      }

LABEL_12:

      return 0;
    }
  }

  return v8;
}

- (void)dealloc
{
  self->_texture = 0;
  v3.receiver = self;
  v3.super_class = MTKTextureLoaderMDL;
  [(MTKTextureLoaderData *)&v3 dealloc];
}

- (BOOL)determineFormatFromChannelEncoding:(int64_t)encoding channelCount:(unint64_t)count error:(id *)error
{
  if (encoding <= 2)
  {
    if (encoding == 1)
    {
      switch(count)
      {
        case 4uLL:
          v6 = 70;
          goto LABEL_39;
        case 2uLL:
          v6 = 30;
          goto LABEL_39;
        case 1uLL:
          v6 = 10;
          goto LABEL_39;
      }
    }

    else
    {
      if (encoding != 2)
      {
        goto LABEL_17;
      }

      switch(count)
      {
        case 4uLL:
          v6 = 110;
          goto LABEL_39;
        case 2uLL:
          v6 = 60;
          goto LABEL_39;
        case 1uLL:
          v6 = 20;
          goto LABEL_39;
      }
    }

LABEL_27:
    if (error)
    {
      v7 = @"Textures must have 1, 2, or 4 channels";
      goto LABEL_29;
    }

    return 0;
  }

  if ((encoding - 3) < 2)
  {
    if (!error)
    {
      return 0;
    }

    v7 = @"Textures must use 8 or 16 bits per channel";
LABEL_29:
    v8 = _newMTKTextureErrorWithCodeAndErrorString(0, v7);
    result = 0;
    *error = v8;
    return result;
  }

  if (encoding == 258)
  {
    switch(count)
    {
      case 4uLL:
        v6 = 115;
        goto LABEL_39;
      case 2uLL:
        v6 = 65;
        goto LABEL_39;
      case 1uLL:
        v6 = 25;
        goto LABEL_39;
    }

    goto LABEL_27;
  }

  if (encoding != 260)
  {
LABEL_17:
    if (!error)
    {
      return 0;
    }

    v7 = @"Could not determine format from MDLTexture";
    goto LABEL_29;
  }

  if (count == 4)
  {
    v6 = 125;
    goto LABEL_39;
  }

  if (count == 2)
  {
    v6 = 105;
    goto LABEL_39;
  }

  if (count != 1)
  {
    goto LABEL_27;
  }

  v6 = 55;
LABEL_39:
  [(MTKTextureLoaderData *)self setPixelFormat:v6];
  return 1;
}

- (id)getDataForArrayElement:(unint64_t)element face:(unint64_t)face level:(unint64_t)level depthPlane:(unint64_t)plane bytesPerRow:(unint64_t *)row bytesPerImage:(unint64_t *)image
{
  v13 = [(MTKTextureLoaderData *)self width:element];
  if (v13 >> level <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = v13 >> level;
  }

  v15 = [(MTKTextureLoaderData *)self height]>> level;
  if (v15 <= 1)
  {
    v15 = 1;
  }

  v16 = self->_pixelFormatInfo.type.normal.pixelBytes * v14;
  *row = v16;
  *image = v16 * v15;
  v17 = [(MDLTexture *)self->_texture texelDataWithTopLeftOriginAtMipLevel:level create:1];
  v18 = *image * face;

  return [(NSData *)v17 subdataWithRange:v18];
}

@end