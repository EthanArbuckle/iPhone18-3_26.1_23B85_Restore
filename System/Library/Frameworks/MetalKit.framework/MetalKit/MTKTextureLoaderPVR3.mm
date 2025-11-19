@interface MTKTextureLoaderPVR3
+ (BOOL)isPVR3File:(id)a3;
- (BOOL)parseMetadataWithError:(id *)a3;
- (MTKTextureLoaderPVR3)initWithData:(id)a3 options:(id)a4 error:(id *)a5;
- (id)getDataForArrayElement:(unint64_t)a3 face:(unint64_t)a4 level:(unint64_t)a5 depthPlane:(unint64_t)a6 bytesPerRow:(unint64_t *)a7 bytesPerImage:(unint64_t *)a8;
- (unint64_t)determineFormat:(unint64_t)a3 colorSpace:(unsigned int)a4 channelType:(unsigned int)a5 options:(id)a6;
- (void)dealloc;
- (void)determineBlockSize:(unint64_t *)a3 blocksWide:(unint64_t *)a4 blocksHigh:(unint64_t *)a5 bytesPerBlock:(unint64_t *)a6 fromFormat:(unsigned int)a7 width:(unint64_t)a8 andHeight:(unint64_t)a9;
@end

@implementation MTKTextureLoaderPVR3

+ (BOOL)isPVR3File:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  if ([a3 length] < 0x34)
  {
    return 0;
  }

  v6 = 0;
  memset(v5, 0, sizeof(v5));
  [a3 getBytes:v5 length:52];
  return LODWORD(v5[0]) == 55727696;
}

- (MTKTextureLoaderPVR3)initWithData:(id)a3 options:(id)a4 error:(id *)a5
{
  v25.receiver = self;
  v25.super_class = MTKTextureLoaderPVR3;
  v8 = [(MTKTextureLoaderData *)&v25 init];
  if (!v8)
  {
    return v8;
  }

  if (![MTKTextureLoaderPVR3 isPVR3File:a3])
  {
    [MTKTextureLoaderPVR3 initWithData:options:error:];
  }

  v9 = a3;
  *(v8 + 19) = v9;
  v10 = [v9 bytes];
  [v8 setWidth:*(v10 + 28)];
  [v8 setHeight:*(v10 + 24)];
  [v8 setDepth:*(v10 + 32)];
  v11 = *(v10 + 36);
  [v8 setNumFaces:*(v10 + 40)];
  [v8 setNumMipmapLevels:*(v10 + 44)];
  *(v8 + 36) = *(v10 + 48);
  [v8 setImageOrigin:@"MTKTextureLoaderOriginTopLeft"];
  if (![v8 parseMetadataWithError:a5])
  {
    goto LABEL_32;
  }

  *(v8 + 20) = *(v10 + 8);
  v12 = *(v10 + 16);
  v13 = *(v10 + 20);
  [v8 setPixelFormat:objc_msgSend(v8, "determineFormat:colorSpace:channelType:options:")];
  if (![v8 pixelFormat])
  {
    if (a5)
    {
      v17 = @"Could not determine format from PVR header";
      goto LABEL_31;
    }

LABEL_32:

    return 0;
  }

  [v8 pixelFormat];
  MTLPixelFormatGetInfoForDevice();
  *(v8 + 17) = v24;
  *(v8 + 104) = v22;
  *(v8 + 120) = v23;
  *(v8 + 88) = v21;
  v14 = *(v8 + 24);
  v15 = [a4 objectForKey:@"MTKTextureLoaderOptionOrigin"];
  v16 = v15;
  if ((v14 & 0x400) != 0 && v15)
  {
    if (a5)
    {
      v17 = @"Vertical flip is not supported for compressed PVR textures";
LABEL_31:
      *a5 = _newMTKTextureErrorWithCodeAndErrorString(0, v17);
      goto LABEL_32;
    }

    goto LABEL_32;
  }

  if (v11 >= 2)
  {
    if ([v8 numFaces] >= 2)
    {
      if (a5)
      {
        v17 = @"Metal does not support texture cube arrays";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if ([v8 depth] <= 1)
    {
      [v8 setTextureType:3];
      [v8 setNumArrayElements:v11];
      if (v16)
      {
        goto LABEL_22;
      }

      goto LABEL_28;
    }

    goto LABEL_19;
  }

  if ([v8 depth] >= 2)
  {
LABEL_19:
    v18 = v8;
    v19 = 7;
    goto LABEL_21;
  }

  if ([v8 numFaces] < 2)
  {
    v18 = v8;
    v19 = 2;
  }

  else
  {
    v18 = v8;
    v19 = 5;
  }

LABEL_21:
  [v18 setTextureType:v19];
  if (v16)
  {
LABEL_22:
    if ([v8 textureType] != 2 && objc_msgSend(v8, "textureType") != 3 && objc_msgSend(v8, "textureType") != 5)
    {
      if (a5)
      {
        v17 = @"Vertical flip is only supported for 2D, 2D array, and cube map textures";
        goto LABEL_31;
      }

      goto LABEL_32;
    }
  }

LABEL_28:
  if ([a4 objectForKey:@"MTKTextureLoaderOptionCubeLayout"])
  {
    if (a5)
    {
      v17 = @"Creating cube maps from 2D textures is not supported for PVR files";
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  return v8;
}

- (void)dealloc
{
  self->_imageData = 0;
  v3.receiver = self;
  v3.super_class = MTKTextureLoaderPVR3;
  [(MTKTextureLoaderData *)&v3 dealloc];
}

- (BOOL)parseMetadataWithError:(id *)a3
{
  if ([(NSData *)self->_imageData length]- 52 >= self->_metaDataSize)
  {
    v8 = [(NSData *)self->_imageData bytes];
    metaDataSize = self->_metaDataSize;
    if (metaDataSize >= 0xD)
    {
      v10 = &v8[metaDataSize];
      v11 = &v8[metaDataSize + 40];
      v12 = v8 + 52;
      v13 = v10 + 52;
      while (1)
      {
        if (*v12 != 55727696)
        {
          if (!a3)
          {
            return 0;
          }

          v5 = @"Could not parse KTX metadata";
          goto LABEL_4;
        }

        v14 = *(v12 + 2);
        v15 = v12 + 12;
        if (v13 - (v12 + 12) < v14)
        {
          break;
        }

        if (*(v12 + 1) == 3 && v14 == 3)
        {
          if (v12[13])
          {
            v17 = @"MTKTextureLoaderOriginBottomLeft";
          }

          else
          {
            v17 = @"MTKTextureLoaderOriginTopLeft";
          }

          [(MTKTextureLoaderData *)self setImageOrigin:v17];
        }

        v12 = &v15[v14];
        if (&v15[v14] >= v11)
        {
          return 1;
        }
      }

      if (!a3)
      {
        return 0;
      }

      v5 = @"KTX metadata size exceeds metadata region size";
      goto LABEL_4;
    }

    return 1;
  }

  else
  {
    if (a3)
    {
      v5 = @"PVR header metadata size too large";
LABEL_4:
      v6 = _newMTKTextureErrorWithCodeAndErrorString(0, v5);
      result = 0;
      *a3 = v6;
      return result;
    }

    return 0;
  }
}

- (id)getDataForArrayElement:(unint64_t)a3 face:(unint64_t)a4 level:(unint64_t)a5 depthPlane:(unint64_t)a6 bytesPerRow:(unint64_t *)a7 bytesPerImage:(unint64_t *)a8
{
  v10 = [(NSData *)self->_imageData bytes];
  metaDataSize = self->_metaDataSize;
  v12 = [(NSData *)self->_imageData length];
  v13 = self->_metaDataSize;
  v14 = [(MTKTextureLoaderData *)self width];
  v15 = [(MTKTextureLoaderData *)self height];
  result = [(MTKTextureLoaderData *)self numMipmapLevels];
  if (result)
  {
    v17 = 0;
    v18 = v12 - v13 - 52;
    v19 = v10 + metaDataSize + 52;
    p_pixelFormatInfo = &self->_pixelFormatInfo;
    while (1)
    {
      v43 = 0;
      v44 = 0;
      v41 = 0;
      v42 = 0;
      if ((p_pixelFormatInfo->flags & 0x400) != 0)
      {
        [(MTKTextureLoaderPVR3 *)self determineBlockSize:&v44 blocksWide:&v43 blocksHigh:&v42 bytesPerBlock:&v41 fromFormat:self->_pvrCompressedFormat width:v14 andHeight:v15];
        v35 = v43 * v41;
        v21 = v43 * v41 * v42;
      }

      else
      {
        v35 = p_pixelFormatInfo->type.normal.pixelBytes * v14;
        v21 = v35 * v15;
      }

      v36 = v14;
      if ([(MTKTextureLoaderData *)self numArrayElements])
      {
        break;
      }

LABEL_29:
      if (v36 <= 1)
      {
        v14 = 1;
      }

      else
      {
        v14 = v36 >> 1;
      }

      if (v15 <= 1)
      {
        v15 = 1;
      }

      else
      {
        v15 >>= 1;
      }

      ++v17;
      v31 = [(MTKTextureLoaderData *)self numMipmapLevels];
      p_pixelFormatInfo = &self->_pixelFormatInfo;
      if (v31 <= v17)
      {
        return 0;
      }
    }

    v22 = 0;
    v32 = v17;
    while (![(MTKTextureLoaderData *)self numFaces])
    {
LABEL_28:
      ++v22;
      v17 = v32;
      if ([(MTKTextureLoaderData *)self numArrayElements]<= v22)
      {
        goto LABEL_29;
      }
    }

    v23 = 0;
    v25 = v17 == a5 && v22 == a3;
    v37 = v25;
    while (1)
    {
      v26 = v15;
      if ([(MTKTextureLoaderData *)self depth])
      {
        break;
      }

LABEL_27:
      ++v23;
      v15 = v26;
      if ([(MTKTextureLoaderData *)self numFaces]<= v23)
      {
        goto LABEL_28;
      }
    }

    v27 = 0;
    v28 = v23 == a4 && v37;
    while (1)
    {
      v29 = v18 >= v21;
      v18 -= v21;
      if (!v29)
      {
        return 0;
      }

      if (a6 == v27 && v28)
      {
        *a7 = v35;
        *a8 = v21;
        return [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v19 length:v21 freeWhenDone:0];
      }

      v19 += v21;
      if ([(MTKTextureLoaderData *)self depth]<= ++v27)
      {
        goto LABEL_27;
      }
    }
  }

  return result;
}

- (unint64_t)determineFormat:(unint64_t)a3 colorSpace:(unsigned int)a4 channelType:(unsigned int)a5 options:(id)a6
{
  v9 = a4 == 1;
  if ([a6 objectForKey:@"MTKTextureLoaderOptionSRGB"])
  {
    v9 = [objc_msgSend(a6 objectForKey:{@"MTKTextureLoaderOptionSRGB", "BOOLValue"}];
  }

  if (HIDWORD(a3))
  {
    if (a3 > 0x105050561726761)
    {
      if (a3 <= 0x800000000000060)
      {
        if (a3 > 0x404040472676260)
        {
          if (a3 == 0x404040472676261)
          {
            if (a5 <= 8 && ((1 << a5) & 0x111) != 0)
            {
              return 42;
            }
          }

          else if (a3 == 0x505050172676261 && a5 <= 8 && ((1 << a5) & 0x111) != 0)
          {
            return 41;
          }
        }

        else if (a3 == 0x105050561726762)
        {
          if (a5 <= 8 && ((1 << a5) & 0x111) != 0)
          {
            return 43;
          }
        }

        else if (a3 == 0x20A0A0A61626772 && a5 < 0xB)
        {
          v15 = &unk_1D96A9268;
          return v15[a5];
        }

        return 0;
      }

      if (a3 <= 0x808080861726761)
      {
        if (a3 == 0x800000000000061)
        {
          return 1;
        }

        if (a3 != 0x808080861626772)
        {
          return 0;
        }

        if (a5 > 1)
        {
          if (a5 == 2)
          {
            return 73;
          }

          if (a5 == 3)
          {
            return 74;
          }

          return 0;
        }

        if (a5)
        {
          if (a5 == 1)
          {
            return 72;
          }

          return 0;
        }

        v11 = v9 == 0;
        v12 = 70;
      }

      else
      {
        if (a3 != 0x808080861726762)
        {
          if (a3 != 0x1010101061626772)
          {
            if (a3 == 0x2020202061626772 && a5 - 10 < 3)
            {
              return a5 + 113;
            }

            return 0;
          }

          v13 = a5 - 4;
          if (a5 - 4 < 9)
          {
            v14 = &unk_1D96A9220;
            return v14[v13];
          }

          return 0;
        }

        v11 = v9 == 0;
        v12 = 80;
      }

      goto LABEL_129;
    }

    if (a3 > 0x101000006771)
    {
      if (a3 > 0x5060500726761)
      {
        if (a3 == 0x5060500726762)
        {
          if (a5 <= 8 && ((1 << a5) & 0x111) != 0)
          {
            return 40;
          }
        }

        else if (a3 == 0xA0A0A00626772)
        {
          if (a5 == 12)
          {
            return 92;
          }

          else
          {
            return 0;
          }
        }

        return 0;
      }

      if (a3 == 0x101000006772)
      {
        v13 = a5 - 4;
        if (a5 - 4 < 9)
        {
          v14 = &unk_1D96A91D8;
          return v14[v13];
        }

        return 0;
      }

      if (a3 != 0x202000006772)
      {
        return 0;
      }

      v16 = a5 - 10 >= 3;
      v17 = a5 + 93;
    }

    else
    {
      if (a3 <= 0x2000000071)
      {
        if (a3 != 0x800000072)
        {
          if (a3 == 0x1000000072)
          {
            v13 = a5 - 4;
            if (a5 - 4 < 9)
            {
              v14 = &unk_1D96A9190;
              return v14[v13];
            }
          }

          return 0;
        }

        if (a5 > 1)
        {
          if (a5 == 2)
          {
            return 13;
          }

          if (a5 == 3)
          {
            return 14;
          }

          return 0;
        }

        if (a5)
        {
          if (a5 == 1)
          {
            return 12;
          }

          return 0;
        }

        v11 = v9 == 0;
        v12 = 10;
LABEL_129:
        if (v11)
        {
          return v12;
        }

        else
        {
          return v12 + 1;
        }
      }

      if (a3 != 0x2000000072)
      {
        if (a3 != 0x80800006772)
        {
          return 0;
        }

        if (a5 > 1)
        {
          if (a5 == 2)
          {
            return 33;
          }

          if (a5 == 3)
          {
            return 34;
          }

          return 0;
        }

        if (a5)
        {
          if (a5 == 1)
          {
            return 32;
          }

          return 0;
        }

        v11 = v9 == 0;
        v12 = 30;
        goto LABEL_129;
      }

      v16 = a5 - 10 >= 3;
      v17 = a5 + 43;
    }

    if (v16)
    {
      return 0;
    }

    else
    {
      return v17;
    }
  }

  result = 150;
  switch(a3)
  {
    case 0:
      v11 = v9 == 0;
      v12 = 160;
      goto LABEL_129;
    case 1:
      v11 = v9 == 0;
      v12 = 164;
      goto LABEL_129;
    case 2:
      v11 = v9 == 0;
      v12 = 162;
      goto LABEL_129;
    case 3:
      v11 = v9 == 0;
      v12 = 166;
      goto LABEL_129;
    case 7:
      v11 = v9 == 0;
      v12 = 130;
      goto LABEL_129;
    case 8:
    case 9:
      v11 = v9 == 0;
      v12 = 132;
      goto LABEL_129;
    case 10:
    case 11:
      v11 = v9 == 0;
      v12 = 134;
      goto LABEL_129;
    case 12:
      if (a5 >= 0xC)
      {
        return 0;
      }

      v15 = &unk_1D96A92C0;
      return v15[a5];
    case 13:
      if (a5 >= 0xC)
      {
        return 0;
      }

      v15 = &unk_1D96A9320;
      return v15[a5];
    case 14:
      return result;
    case 15:
      v11 = v9 == 0;
      v12 = 152;
      goto LABEL_129;
    case 16:
      return 241;
    case 17:
      return 240;
    case 19:
      return 93;
    case 22:
      v11 = v9 == 0;
      v12 = 180;
      goto LABEL_129;
    case 23:
      v11 = v9 == 0;
      v12 = 178;
      goto LABEL_129;
    case 24:
      v11 = v9 == 0;
      v12 = 182;
      goto LABEL_129;
    case 25:
      if (a5 >= 0xC)
      {
        return 0;
      }

      v15 = &unk_1D96A9380;
      return v15[a5];
    case 26:
      if (a5 >= 0xC)
      {
        return 0;
      }

      v15 = &unk_1D96A93E0;
      return v15[a5];
    case 27:
      v18 = v9 == 0;
      v19 = 204;
      v20 = 186;
      goto LABEL_106;
    case 28:
      v18 = v9 == 0;
      v19 = 205;
      v20 = 187;
      goto LABEL_106;
    case 29:
      v18 = v9 == 0;
      v19 = 206;
      v20 = 188;
      goto LABEL_106;
    case 30:
      v18 = v9 == 0;
      v19 = 207;
      v20 = 189;
      goto LABEL_106;
    case 31:
      v18 = v9 == 0;
      v19 = 208;
      v20 = 190;
      goto LABEL_106;
    case 32:
      v18 = v9 == 0;
      v19 = 210;
      v20 = 192;
      goto LABEL_106;
    case 33:
      v18 = v9 == 0;
      v19 = 211;
      v20 = 193;
      goto LABEL_106;
    case 34:
      v18 = v9 == 0;
      v19 = 212;
      v20 = 194;
      goto LABEL_106;
    case 35:
      v18 = v9 == 0;
      v19 = 213;
      v20 = 195;
      goto LABEL_106;
    case 36:
      v18 = v9 == 0;
      v19 = 214;
      v20 = 196;
      goto LABEL_106;
    case 37:
      v18 = v9 == 0;
      v19 = 215;
      v20 = 197;
      goto LABEL_106;
    case 38:
      v18 = v9 == 0;
      v19 = 216;
      v20 = 198;
      goto LABEL_106;
    case 39:
      v18 = v9 == 0;
      v19 = 217;
      v20 = 199;
      goto LABEL_106;
    case 40:
      v18 = v9 == 0;
      v19 = 218;
      v20 = 200;
LABEL_106:
      if (v18)
      {
        result = v19;
      }

      else
      {
        result = v20;
      }

      break;
    default:
      return 0;
  }

  return result;
}

- (void)determineBlockSize:(unint64_t *)a3 blocksWide:(unint64_t *)a4 blocksHigh:(unint64_t *)a5 bytesPerBlock:(unint64_t *)a6 fromFormat:(unsigned int)a7 width:(unint64_t)a8 andHeight:(unint64_t)a9
{
  if (a7 > 1)
  {
    if ((a7 & 0xFFFFFFFE) == 2)
    {
      v13 = (a8 + 3) >> 2;
      if (v13 <= 2)
      {
        v13 = 2;
      }

      *a4 = v13;
      v14 = (a9 + 3) >> 2;
      if (v14 <= 2)
      {
        v14 = 2;
      }

      *a5 = v14;
      pixelBytes = 8;
      v12 = 16;
    }

    else
    {
      blockWidth = self->_pixelFormatInfo.type.compressed.blockWidth;
      pixelBytesRender = self->_pixelFormatInfo.type.normal.pixelBytesRender;
      pixelBytes = self->_pixelFormatInfo.type.normal.pixelBytes;
      v17 = (a8 - 1 + blockWidth) / blockWidth;
      if (__CFADD__(a8 - 1, blockWidth))
      {
        v17 = 1;
      }

      *a4 = v17;
      v18 = (a9 - 1 + pixelBytesRender) / pixelBytesRender;
      if (__CFADD__(a9 - 1, pixelBytesRender))
      {
        v18 = 1;
      }

      *a5 = v18;
      v12 = pixelBytesRender * blockWidth;
    }
  }

  else
  {
    v9 = (a8 + 7) >> 3;
    if (v9 <= 2)
    {
      v9 = 2;
    }

    *a4 = v9;
    v10 = (a9 + 3) >> 2;
    if (v10 <= 2)
    {
      v10 = 2;
    }

    *a5 = v10;
    pixelBytes = 8;
    v12 = 32;
  }

  *a3 = v12;
  *a6 = pixelBytes;
}

@end