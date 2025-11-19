@interface MTKTextureLoaderPVR
+ (BOOL)isPVRFile:(id)a3;
- (BOOL)determineFormat:(unsigned int)a3 options:(id)a4;
- (MTKTextureLoaderPVR)initWithData:(id)a3 options:(id)a4 error:(id *)a5;
- (id)getDataForArrayElement:(unint64_t)a3 face:(unint64_t)a4 level:(unint64_t)a5 depthPlane:(unint64_t)a6 bytesPerRow:(unint64_t *)a7 bytesPerImage:(unint64_t *)a8;
- (void)dealloc;
- (void)determineBlockSize:(unint64_t *)a3 blocksWide:(unint64_t *)a4 blocksHigh:(unint64_t *)a5 bytesPerBlock:(unint64_t *)a6 fromFormat:(unsigned int)a7 width:(unint64_t)a8 andHeight:(unint64_t)a9;
@end

@implementation MTKTextureLoaderPVR

+ (BOOL)isPVRFile:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  if ([a3 length] < 0x34)
  {
    return 0;
  }

  v7 = 0;
  v6 = 0u;
  memset(v5, 0, sizeof(v5));
  [a3 getBytes:v5 length:52];
  return HIDWORD(v6) == 559044176;
}

- (MTKTextureLoaderPVR)initWithData:(id)a3 options:(id)a4 error:(id *)a5
{
  v23.receiver = self;
  v23.super_class = MTKTextureLoaderPVR;
  v8 = [(MTKTextureLoaderData *)&v23 init];
  if (v8)
  {
    v8->_imageData = a3;
    if (![MTKTextureLoaderPVR isPVRFile:a3])
    {
      [MTKTextureLoaderPVR initWithData:options:error:];
    }

    v9 = [(NSData *)v8->_imageData bytes];
    v10 = v9;
    v11 = v9[4];
    v8->_pvrFormat = v11;
    v12 = v9[12];
    if (v12 <= 1)
    {
      v12 = 1;
    }

    v8->_numSurfaces = v12;
    [(MTKTextureLoaderData *)v8 setWidth:v9[2]];
    [(MTKTextureLoaderData *)v8 setHeight:v10[1]];
    [(MTKTextureLoaderData *)v8 setNumMipmapLevels:v10[3] + 1];
    [(MTKTextureLoaderData *)v8 setNumFaces:1];
    [(MTKTextureLoaderData *)v8 setImageOrigin:@"MTKTextureLoaderOriginTopLeft"];
    if ([(MTKTextureLoaderPVR *)v8 determineFormat:v8->_pvrFormat options:a4])
    {
      [(MTKTextureLoaderData *)v8 pixelFormat];
      MTLPixelFormatGetInfoForDevice();
      v8->_pixelFormatInfo.type.normal.pixelBytesRenderMSAA = v22;
      *&v8->_pixelFormatInfo.castClass = v20;
      *&v8->_pixelFormatInfo.type.compressed.blockWidth = v21;
      *&v8->_pixelFormatInfo.name = v19;
      flags = v8->_pixelFormatInfo.flags;
      v14 = [a4 objectForKey:@"MTKTextureLoaderOptionOrigin"];
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
            if (!a5)
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
          if (![a4 objectForKey:@"MTKTextureLoaderOptionCubeLayout"])
          {
            return v8;
          }

          if (!a5)
          {
            goto LABEL_13;
          }

          v16 = @"Creating cube maps from 2D textures is not supported for PVR files";
        }

        else
        {
          if (!a5)
          {
            goto LABEL_13;
          }

          v16 = @"Vertical flip is only supported for 2D, 2D array, and cube map textures";
        }

LABEL_12:
        *a5 = _newMTKTextureErrorWithCodeAndErrorString(0, v16);
        goto LABEL_13;
      }

      if (a5)
      {
        v16 = @"Vertical flip is not supported for compressed PVR textures";
        goto LABEL_12;
      }
    }

    else if (a5)
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

- (id)getDataForArrayElement:(unint64_t)a3 face:(unint64_t)a4 level:(unint64_t)a5 depthPlane:(unint64_t)a6 bytesPerRow:(unint64_t *)a7 bytesPerImage:(unint64_t *)a8
{
  v13 = [(NSData *)self->_imageData bytes];
  v14 = [(NSData *)self->_imageData length];
  result = [(MTKTextureLoaderData *)self depth];
  if (result)
  {
    v31 = a8;
    v32 = a3;
    v16 = 0;
    v17 = v14 - 52;
    v18 = v13 + 52;
    v33 = a6;
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
      a3 = v32;
      a6 = v33;
      v16 = v34;
      if ([(MTKTextureLoaderData *)self numArrayElements]<= v36 + 1)
      {
        goto LABEL_35;
      }
    }

    v20 = 0;
    v22 = v16 == a6 && v19 == a3;
    v37 = v22;
    while (1)
    {
      v23 = [(MTKTextureLoaderData *)self width];
      v24 = [(MTKTextureLoaderData *)self height];
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
    v26 = v20 == a4 && v37;
    while (1)
    {
      v42 = 0;
      v40 = 0;
      v41 = 0;
      v39 = 0;
      if ((self->_pixelFormatInfo.flags & 0x400) != 0)
      {
        [(MTKTextureLoaderPVR *)self determineBlockSize:&v42 blocksWide:&v41 blocksHigh:&v40 bytesPerBlock:&v39 fromFormat:self->_pvrFormat width:v23 andHeight:v24];
        v27 = v41 * v39;
        v28 = v41 * v39 * v40;
      }

      else
      {
        v27 = self->_pixelFormatInfo.type.normal.pixelBytes * v23;
        v28 = v27 * v24;
      }

      v29 = v17 >= v28;
      v17 -= v28;
      if (!v29)
      {
        return 0;
      }

      if (a5 == v25 && v26)
      {
        *a7 = v27;
        *v31 = v28;
        return [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v18 length:? freeWhenDone:?];
      }

      v18 += v28;
      if (v23 <= 1)
      {
        v23 = 1;
      }

      else
      {
        v23 >>= 1;
      }

      if (v24 <= 1)
      {
        v24 = 1;
      }

      else
      {
        v24 >>= 1;
      }

      if ([(MTKTextureLoaderData *)self numMipmapLevels]<= ++v25)
      {
        goto LABEL_33;
      }
    }
  }

  return result;
}

- (BOOL)determineFormat:(unsigned int)a3 options:(id)a4
{
  v6 = [objc_msgSend(a4 objectForKey:{@"MTKTextureLoaderOptionSRGB", "BOOLValue"}];
  result = 0;
  if (a3 > 23)
  {
    if (a3 <= 26)
    {
      if (a3 == 24)
      {
        v8 = v6 == 0;
        v9 = 164;
      }

      else
      {
        if (a3 != 25)
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

    switch(a3)
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

  else if (a3 > 18)
  {
    if (a3 != 19)
    {
      if (a3 == 22)
      {
        v8 = v6 == 0;
        v9 = 10;
      }

      else
      {
        if (a3 != 23)
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
    switch(a3)
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

- (void)determineBlockSize:(unint64_t *)a3 blocksWide:(unint64_t *)a4 blocksHigh:(unint64_t *)a5 bytesPerBlock:(unint64_t *)a6 fromFormat:(unsigned int)a7 width:(unint64_t)a8 andHeight:(unint64_t)a9
{
  v9 = (a9 + 3) >> 2;
  v10 = 2;
  if (v9 <= 2)
  {
    v9 = 2;
  }

  v11 = 3;
  if (a7 == 24)
  {
    v11 = 7;
    v12 = 3;
  }

  else
  {
    v12 = 2;
  }

  v13 = 16;
  if (a7 == 24)
  {
    v13 = 32;
  }

  v14 = (v11 + a8) >> v12;
  if (v14 > 2)
  {
    v10 = v14;
  }

  *a4 = v10;
  *a5 = v9;
  *a3 = v13;
  *a6 = 8;
}

@end