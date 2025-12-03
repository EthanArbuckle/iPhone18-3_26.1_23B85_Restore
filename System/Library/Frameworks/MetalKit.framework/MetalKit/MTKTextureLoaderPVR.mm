@interface MTKTextureLoaderPVR
+ (BOOL)isPVRFile:(id)file;
- (BOOL)determineFormat:(unsigned int)format options:(id)options;
- (MTKTextureLoaderPVR)initWithData:(id)data options:(id)options error:(id *)error;
- (id)getDataForArrayElement:(unint64_t)element face:(unint64_t)face level:(unint64_t)level depthPlane:(unint64_t)plane bytesPerRow:(unint64_t *)row bytesPerImage:(unint64_t *)image;
- (void)dealloc;
- (void)determineBlockSize:(unint64_t *)size blocksWide:(unint64_t *)wide blocksHigh:(unint64_t *)high bytesPerBlock:(unint64_t *)block fromFormat:(unsigned int)format width:(unint64_t)width andHeight:(unint64_t)height;
@end

@implementation MTKTextureLoaderPVR

+ (BOOL)isPVRFile:(id)file
{
  if (!file)
  {
    return 0;
  }

  if ([file length] < 0x34)
  {
    return 0;
  }

  v7 = 0;
  v6 = 0u;
  memset(v5, 0, sizeof(v5));
  [file getBytes:v5 length:52];
  return HIDWORD(v6) == 559044176;
}

- (MTKTextureLoaderPVR)initWithData:(id)data options:(id)options error:(id *)error
{
  v23.receiver = self;
  v23.super_class = MTKTextureLoaderPVR;
  v8 = [(MTKTextureLoaderData *)&v23 init];
  if (v8)
  {
    v8->_imageData = data;
    if (![MTKTextureLoaderPVR isPVRFile:data])
    {
      [MTKTextureLoaderPVR initWithData:options:error:];
    }

    bytes = [(NSData *)v8->_imageData bytes];
    v10 = bytes;
    v11 = bytes[4];
    v8->_pvrFormat = v11;
    v12 = bytes[12];
    if (v12 <= 1)
    {
      v12 = 1;
    }

    v8->_numSurfaces = v12;
    [(MTKTextureLoaderData *)v8 setWidth:bytes[2]];
    [(MTKTextureLoaderData *)v8 setHeight:v10[1]];
    [(MTKTextureLoaderData *)v8 setNumMipmapLevels:v10[3] + 1];
    [(MTKTextureLoaderData *)v8 setNumFaces:1];
    [(MTKTextureLoaderData *)v8 setImageOrigin:@"MTKTextureLoaderOriginTopLeft"];
    if ([(MTKTextureLoaderPVR *)v8 determineFormat:v8->_pvrFormat options:options])
    {
      [(MTKTextureLoaderData *)v8 pixelFormat];
      MTLPixelFormatGetInfoForDevice();
      v8->_pixelFormatInfo.type.normal.pixelBytesRenderMSAA = v22;
      *&v8->_pixelFormatInfo.castClass = v20;
      *&v8->_pixelFormatInfo.type.compressed.blockWidth = v21;
      *&v8->_pixelFormatInfo.name = v19;
      flags = v8->_pixelFormatInfo.flags;
      v14 = [options objectForKey:@"MTKTextureLoaderOptionOrigin"];
      v15 = v14;
      if ((flags & 0x400) == 0 || !v14)
      {
        if ((v11 & 0x1000) != 0)
        {
          [(MTKTextureLoaderData *)v8 setTextureType:5];
          [(MTKTextureLoaderData *)v8 setNumFaces:6];
          numSurfaces = v8->_numSurfaces;
          v8->_numSurfaces = numSurfaces / 6;
          if (numSurfaces >= 0xC)
          {
            if (!error)
            {
              goto LABEL_13;
            }

            v16 = @"Metal does not support texture cube arrays";
            goto LABEL_12;
          }
        }

        else if ((v11 & 0x4000) != 0)
        {
          [(MTKTextureLoaderData *)v8 setTextureType:7];
          [(MTKTextureLoaderData *)v8 setDepth:v8->_numSurfaces];
        }

        else if (v8->_numSurfaces >= 2)
        {
          [(MTKTextureLoaderData *)v8 setTextureType:3];
          [(MTKTextureLoaderData *)v8 setNumArrayElements:v8->_numSurfaces];
        }

        if (!v15 || [(MTKTextureLoaderData *)v8 textureType]== 2 || [(MTKTextureLoaderData *)v8 textureType]== 3 || [(MTKTextureLoaderData *)v8 textureType]== 5)
        {
          if (![options objectForKey:@"MTKTextureLoaderOptionCubeLayout"])
          {
            return v8;
          }

          if (!error)
          {
            goto LABEL_13;
          }

          v16 = @"Creating cube maps from 2D textures is not supported for PVR files";
        }

        else
        {
          if (!error)
          {
            goto LABEL_13;
          }

          v16 = @"Vertical flip is only supported for 2D, 2D array, and cube map textures";
        }

LABEL_12:
        *error = _newMTKTextureErrorWithCodeAndErrorString(0, v16);
        goto LABEL_13;
      }

      if (error)
      {
        v16 = @"Vertical flip is not supported for compressed PVR textures";
        goto LABEL_12;
      }
    }

    else if (error)
    {
      v16 = @"Could not determine format from PVR header";
      goto LABEL_12;
    }

LABEL_13:

    return 0;
  }

  return v8;
}

- (void)dealloc
{
  self->_imageData = 0;
  v3.receiver = self;
  v3.super_class = MTKTextureLoaderPVR;
  [(MTKTextureLoaderData *)&v3 dealloc];
}

- (id)getDataForArrayElement:(unint64_t)element face:(unint64_t)face level:(unint64_t)level depthPlane:(unint64_t)plane bytesPerRow:(unint64_t *)row bytesPerImage:(unint64_t *)image
{
  bytes = [(NSData *)self->_imageData bytes];
  v14 = [(NSData *)self->_imageData length];
  result = [(MTKTextureLoaderData *)self depth];
  if (result)
  {
    imageCopy = image;
    elementCopy = element;
    v16 = 0;
    v17 = v14 - 52;
    v18 = bytes + 52;
    planeCopy = plane;
    while (![(MTKTextureLoaderData *)self numArrayElements])
    {
LABEL_35:
      if ([(MTKTextureLoaderData *)self depth]<= ++v16)
      {
        return 0;
      }
    }

    v19 = 0;
    v34 = v16;
    while (1)
    {
      v36 = v19;
      if ([(MTKTextureLoaderData *)self numFaces])
      {
        break;
      }

LABEL_34:
      v19 = v36 + 1;
      element = elementCopy;
      plane = planeCopy;
      v16 = v34;
      if ([(MTKTextureLoaderData *)self numArrayElements]<= v36 + 1)
      {
        goto LABEL_35;
      }
    }

    v20 = 0;
    v22 = v16 == plane && v19 == element;
    v37 = v22;
    while (1)
    {
      width = [(MTKTextureLoaderData *)self width];
      height = [(MTKTextureLoaderData *)self height];
      if ([(MTKTextureLoaderData *)self numMipmapLevels])
      {
        break;
      }

LABEL_33:
      if ([(MTKTextureLoaderData *)self numFaces]<= ++v20)
      {
        goto LABEL_34;
      }
    }

    v25 = 0;
    v26 = v20 == face && v37;
    while (1)
    {
      v42 = 0;
      v40 = 0;
      v41 = 0;
      v39 = 0;
      if ((self->_pixelFormatInfo.flags & 0x400) != 0)
      {
        [(MTKTextureLoaderPVR *)self determineBlockSize:&v42 blocksWide:&v41 blocksHigh:&v40 bytesPerBlock:&v39 fromFormat:self->_pvrFormat width:width andHeight:height];
        v27 = v41 * v39;
        v28 = v41 * v39 * v40;
      }

      else
      {
        v27 = self->_pixelFormatInfo.type.normal.pixelBytes * width;
        v28 = v27 * height;
      }

      v29 = v17 >= v28;
      v17 -= v28;
      if (!v29)
      {
        return 0;
      }

      if (level == v25 && v26)
      {
        *row = v27;
        *imageCopy = v28;
        return [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v18 length:? freeWhenDone:?];
      }

      v18 += v28;
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

      if ([(MTKTextureLoaderData *)self numMipmapLevels]<= ++v25)
      {
        goto LABEL_33;
      }
    }
  }

  return result;
}

- (BOOL)determineFormat:(unsigned int)format options:(id)options
{
  v6 = [objc_msgSend(options objectForKey:{@"MTKTextureLoaderOptionSRGB", "BOOLValue"}];
  result = 0;
  if (format > 23)
  {
    if (format <= 26)
    {
      if (format == 24)
      {
        v8 = v6 == 0;
        v9 = 164;
      }

      else
      {
        if (format != 25)
        {
LABEL_10:
          v8 = v6 == 0;
          v9 = 70;
          goto LABEL_26;
        }

        v8 = v6 == 0;
        v9 = 166;
      }

LABEL_26:
      if (v8)
      {
        v10 = v9;
      }

      else
      {
        v10 = v9 + 1;
      }

      goto LABEL_29;
    }

    switch(format)
    {
      case 0x1Bu:
        v10 = 1;
        break;
      case 0x32u:
        v10 = 115;
        break;
      case 0x35u:
        v10 = 125;
        break;
      default:
        return result;
    }
  }

  else if (format > 18)
  {
    if (format != 19)
    {
      if (format == 22)
      {
        v8 = v6 == 0;
        v9 = 10;
      }

      else
      {
        if (format != 23)
        {
          return result;
        }

        v8 = v6 == 0;
        v9 = 30;
      }

      goto LABEL_26;
    }

    v10 = 40;
  }

  else
  {
    switch(format)
    {
      case 0x10u:
        v10 = 42;
        break;
      case 0x11u:
        v10 = 41;
        break;
      case 0x12u:
        goto LABEL_10;
      default:
        return result;
    }
  }

LABEL_29:
  [(MTKTextureLoaderData *)self setPixelFormat:v10];
  return 1;
}

- (void)determineBlockSize:(unint64_t *)size blocksWide:(unint64_t *)wide blocksHigh:(unint64_t *)high bytesPerBlock:(unint64_t *)block fromFormat:(unsigned int)format width:(unint64_t)width andHeight:(unint64_t)height
{
  v9 = (height + 3) >> 2;
  v10 = 2;
  if (v9 <= 2)
  {
    v9 = 2;
  }

  v11 = 3;
  if (format == 24)
  {
    v11 = 7;
    v12 = 3;
  }

  else
  {
    v12 = 2;
  }

  v13 = 16;
  if (format == 24)
  {
    v13 = 32;
  }

  v14 = (v11 + width) >> v12;
  if (v14 > 2)
  {
    v10 = v14;
  }

  *wide = v10;
  *high = v9;
  *size = v13;
  *block = 8;
}

@end