@interface MTKTextureLoaderKTX
+ (BOOL)isKTXFile:(id)file;
- (BOOL)parseKey:(id)key value:(id)value error:(id *)error;
- (BOOL)parseKeyValueBytes:(const char *)bytes length:(unint64_t)length error:(id *)error;
- (MTKTextureLoaderKTX)initWithData:(id)data options:(id)options error:(id *)error;
- (id)getDataForArrayElement:(unint64_t)element face:(unint64_t)face level:(unint64_t)level depthPlane:(unint64_t)plane bytesPerRow:(unint64_t *)row bytesPerImage:(unint64_t *)image;
- (unint64_t)determineFormatFromSizedFormat:(unint64_t)format;
- (unint64_t)determineFormatFromType:(unsigned int)type format:(unsigned int)format internalFormat:(unsigned int)internalFormat baseInternalFormat:(unsigned int)baseInternalFormat;
- (void)dealloc;
@end

@implementation MTKTextureLoaderKTX

+ (BOOL)isKTXFile:(id)file
{
  if (!file)
  {
    return 0;
  }

  if ([file length] < 0x40)
  {
    return 0;
  }

  bytes = [file bytes];
  return *bytes == gKTXFileIdentifier && *(bytes + 8) == dword_1ECB3E8C8;
}

- (MTKTextureLoaderKTX)initWithData:(id)data options:(id)options error:(id *)error
{
  v42.receiver = self;
  v42.super_class = MTKTextureLoaderKTX;
  v8 = [(MTKTextureLoaderData *)&v42 init];
  if (v8)
  {
    if (![MTKTextureLoaderKTX isKTXFile:data])
    {
      [MTKTextureLoaderKTX initWithData:options:error:];
    }

    bytes = [data bytes];
    [v8 setWidth:bytes[9]];
    v10 = bytes[10];
    if (v10 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }

    [v8 setHeight:v11];
    v12 = bytes[11];
    if (v12 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = v12;
    }

    [v8 setDepth:v13];
    v14 = bytes[12];
    if (v14 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = v14;
    }

    [v8 setNumArrayElements:v15];
    v16 = bytes[13];
    if (v16 <= 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = v16;
    }

    [v8 setNumFaces:v17];
    v18 = bytes[14];
    if (v18 <= 1)
    {
      v19 = 1;
    }

    else
    {
      v19 = v18;
    }

    [v8 setNumMipmapLevels:v19];
    [v8 setImageOrigin:@"MTKTextureLoaderOriginTopLeft"];
    [v8 setPixelFormat:objc_msgSend(v8, "determineFormatFromType:format:internalFormat:baseInternalFormat:", bytes[4], bytes[6], bytes[7], bytes[8])];
    if (![v8 pixelFormat])
    {
      if (!error)
      {
LABEL_34:

        return 0;
      }

      v25 = @"Could not determine format from KTX header";
      goto LABEL_33;
    }

    [v8 pixelFormat];
    MTLPixelFormatGetInfoForDevice();
    v20 = v40[0];
    v21 = v40[1];
    v22 = v40[2];
    *(v8 + 17) = v41;
    *(v8 + 104) = v21;
    *(v8 + 120) = v22;
    *(v8 + 88) = v20;
    v23 = bytes[15];
    if ([data length] - 64 < v23 || !objc_msgSend(v8, "parseKeyValueBytes:length:error:", objc_msgSend(data, "bytes") + 64, v23, error))
    {
      goto LABEL_34;
    }

    *(v8 + 10) = [data subdataWithRange:{v23 + 64, objc_msgSend(data, "length") - v23 - 64}];
    [v8 setTextureType:0];
    if ([v8 height] >= 2)
    {
      [v8 setTextureType:2];
    }

    if ([v8 depth] >= 2)
    {
      [v8 setTextureType:7];
    }

    if ([v8 numFaces] == 6)
    {
      [v8 setTextureType:5];
    }

    if ([v8 numArrayElements] >= 2)
    {
      if ([v8 textureType])
      {
        if ([v8 textureType] == 2)
        {
          v24 = 3;
        }

        else
        {
          if ([v8 textureType] != 5)
          {
            goto LABEL_40;
          }

          v24 = 6;
        }
      }

      else
      {
        v24 = 1;
      }

      [v8 setTextureType:v24];
    }

LABEL_40:
    if (([v8 pixelFormat] - 203) <= 0xF && objc_msgSend(v8, "numArrayElements"))
    {
      v27 = 0;
      while (![v8 numFaces])
      {
LABEL_55:
        if (++v27 >= [v8 numArrayElements])
        {
          goto LABEL_59;
        }
      }

      v28 = 0;
      while (![v8 numMipmapLevels])
      {
LABEL_54:
        if (++v28 >= [v8 numFaces])
        {
          goto LABEL_55;
        }
      }

      v29 = 0;
      while (![v8 depth])
      {
LABEL_53:
        if (++v29 >= [v8 numMipmapLevels])
        {
          goto LABEL_54;
        }
      }

      v30 = 0;
      while (1)
      {
        *&v40[0] = 0;
        v43 = 0;
        v31 = [v8 getDataForArrayElement:v27 face:v28 level:v29 depthPlane:v30 bytesPerRow:v40 bytesPerImage:&v43];
        if (!v31)
        {
          break;
        }

        v32 = [MTKTextureLoaderASTCHelper isASTCHDRData:v31 is3DBlocks:0 error:0];
        if (v32 == -1)
        {
          break;
        }

        if (v32 == 1)
        {
          pixelFormat = [v8 pixelFormat];
          if ((pixelFormat - 203) >= 0x10)
          {
            [MTKTextureLoaderKTX initWithData:options:error:];
          }

          [v8 setPixelFormat:pixelFormat + 18];
          break;
        }

        if (++v30 >= [v8 depth])
        {
          goto LABEL_53;
        }
      }
    }

LABEL_59:
    v34 = *(v8 + 24);
    v35 = [options objectForKey:@"MTKTextureLoaderOptionOrigin"];
    if ((v34 & 0x400) != 0 && v35)
    {
      if (!error)
      {
        goto LABEL_34;
      }

      v25 = @"Vertical flip is not supported for block texture formats";
      goto LABEL_33;
    }

    if (!v35 || [v8 textureType] == 2 || objc_msgSend(v8, "textureType") == 3 || objc_msgSend(v8, "textureType") == 5)
    {
      if ([options objectForKey:@"MTKTextureLoaderOptionCubeLayout"])
      {
        if (!error)
        {
          goto LABEL_34;
        }

        v25 = @"Creating cube maps from 2D textures is not supported for KTX files";
        goto LABEL_33;
      }

      if (!_mtkLinkedOnOrAfter(1))
      {
        v8[144] = 1;
        return v8;
      }

      v36 = [options objectForKey:@"MTKTextureLoaderOptionSRGB"];
      if (!v36)
      {
        goto LABEL_80;
      }

      v37 = v36;
      if ([v36 BOOLValue])
      {
        v38 = selectSRGBFormat([v8 pixelFormat]);
      }

      else
      {
        if ([v37 BOOLValue])
        {
          goto LABEL_80;
        }

        v38 = selectRGBPixelFormat([v8 pixelFormat]);
      }

      [v8 setPixelFormat:v38];
LABEL_80:
      v39 = [options objectForKey:@"MTKTextureLoaderOptionPackedRowStride"];
      if (v39)
      {
        v8[144] = [v39 BOOLValue];
      }

      else
      {
        v8[144] = 0;
      }

      return v8;
    }

    if (!error)
    {
      goto LABEL_34;
    }

    v25 = @"Vertical flip is only supported for 2D, 2D array, and cube map textures";
LABEL_33:
    *error = _newMTKTextureErrorWithCodeAndErrorString(0, v25);
    goto LABEL_34;
  }

  return v8;
}

- (void)dealloc
{
  self->_imageData = 0;
  v3.receiver = self;
  v3.super_class = MTKTextureLoaderKTX;
  [(MTKTextureLoaderData *)&v3 dealloc];
}

- (BOOL)parseKeyValueBytes:(const char *)bytes length:(unint64_t)length error:(id *)error
{
  v5 = &bytes[length];
  v6 = &bytes[length - 4];
  if (v6 <= bytes)
  {
LABEL_11:
    LOBYTE(v18) = 1;
  }

  else
  {
    bytesCopy = bytes;
    while (1)
    {
      v12 = *bytesCopy;
      v10 = bytesCopy + 4;
      v11 = v12;
      if (v5 - v10 < v12)
      {
        break;
      }

      v13 = strnlen(v10, v11);
      if (!v13 || v11 <= v13)
      {
        break;
      }

      v15 = v13;
      v16 = v11 - v13;
      v17 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:4];
      v18 = -[MTKTextureLoaderKTX parseKey:value:error:](self, "parseKey:value:error:", v17, [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:&v10[v15 + 1] length:v16 freeWhenDone:0], error);
      if (!v18)
      {
        return v18;
      }

      bytesCopy = (&v10[v11 + 3] & 0xFFFFFFFFFFFFFFFCLL);
      if (v6 <= bytesCopy)
      {
        goto LABEL_11;
      }
    }

    LOBYTE(v18) = 0;
  }

  return v18;
}

- (BOOL)parseKey:(id)key value:(id)value error:(id *)error
{
  if ([objc_msgSend(key "lowercaseString")] && _mtkLinkedOnOrAfter(0))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:value encoding:4];
    if ([v8 hasPrefix:{@"S=r, T=d"}])
    {
      v9 = &MTKTextureLoaderOriginTopLeft;
    }

    else
    {
      if (([v8 hasPrefix:{@"S=r, T=u"}] & 1) == 0)
      {
        v10 = 0;
        if (error)
        {
          *error = _newMTKTextureErrorWithCodeAndErrorString(0, @"Unsupported image orientation");
        }

        goto LABEL_9;
      }

      v9 = &MTKTextureLoaderOriginBottomLeft;
    }

    [(MTKTextureLoaderData *)self setImageOrigin:*v9];
    v10 = 1;
LABEL_9:

    return v10;
  }

  return 1;
}

- (id)getDataForArrayElement:(unint64_t)element face:(unint64_t)face level:(unint64_t)level depthPlane:(unint64_t)plane bytesPerRow:(unint64_t *)row bytesPerImage:(unint64_t *)image
{
  bytes = [(NSData *)self->_imageData bytes];
  v11 = [(NSData *)self->_imageData length];
  width = [(MTKTextureLoaderData *)self width];
  height = [(MTKTextureLoaderData *)self height];
  if ([(MTKTextureLoaderData *)self numMipmapLevels])
  {
    v38 = 0;
    v12 = &bytes[v11];
    v33 = &bytes[v11];
    while (1)
    {
      if ((self->_pixelFormatInfo.flags & 0x400) != 0)
      {
        v13 = (width + self->_pixelFormatInfo.type.compressed.blockWidth - 1) / self->_pixelFormatInfo.type.compressed.blockWidth * self->_pixelFormatInfo.type.normal.pixelBytes;
        v14 = (height + self->_pixelFormatInfo.type.normal.pixelBytesRender - 1) / self->_pixelFormatInfo.type.normal.pixelBytesRender;
      }

      else
      {
        v13 = self->_packedRowStride ? self->_pixelFormatInfo.type.normal.pixelBytes * width : (self->_pixelFormatInfo.type.normal.pixelBytes * width + 3) & 0xFFFFFFFFFFFFFFFCLL;
        v14 = height;
      }

      v15 = v13 * v14;
      v16 = (bytes + 4);
      if ([(MTKTextureLoaderData *)self numArrayElements])
      {
        break;
      }

LABEL_36:
      if (width <= 1)
      {
        v26 = 1;
      }

      else
      {
        v26 = width >> 1;
      }

      v27 = height >> 1;
      if (height <= 1)
      {
        v27 = 1;
      }

      height = v27;
      width = v26;
      bytes = ((v16 + 3) & 0xFFFFFFFFFFFFFFFCLL);
      if ([(MTKTextureLoaderData *)self numMipmapLevels]<= ++v38)
      {
        return 0;
      }
    }

    v30 = v13;
    v17 = 0;
    while (![(MTKTextureLoaderData *)self numFaces])
    {
LABEL_35:
      if ([(MTKTextureLoaderData *)self numArrayElements]<= ++v17)
      {
        goto LABEL_36;
      }
    }

    v18 = 0;
    v20 = v38 == level && v17 == element;
    v34 = v20;
    while (![(MTKTextureLoaderData *)self depth])
    {
LABEL_32:
      if ([(MTKTextureLoaderData *)self textureType]== 5)
      {
        v16 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      }

      if ([(MTKTextureLoaderData *)self numFaces]<= ++v18)
      {
        goto LABEL_35;
      }
    }

    v21 = 0;
    v22 = v18 == face && v34;
    v23 = &v33[-v16];
    while (v16 < v12)
    {
      v24 = v23 >= v15;
      v23 -= v15;
      if (!v24)
      {
        break;
      }

      if (plane == v21 && v22)
      {
        *row = v30;
        *image = v15;
        v29 = MEMORY[0x1E695DEF0];

        return [v29 dataWithBytesNoCopy:v16 length:v15 freeWhenDone:0];
      }

      v16 += v15;
      if ([(MTKTextureLoaderData *)self depth]<= ++v21)
      {
        goto LABEL_32;
      }
    }
  }

  return 0;
}

- (unint64_t)determineFormatFromType:(unsigned int)type format:(unsigned int)format internalFormat:(unsigned int)internalFormat baseInternalFormat:(unsigned int)baseInternalFormat
{
  if (type)
  {
    v6 = format == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  if (internalFormat == format && (v7 & 1) == 0)
  {
    if (format <= 33318)
    {
      v19 = 6403;
      v20 = 12;
      if (type != 5120)
      {
        v20 = 0;
      }

      if (type == 5121)
      {
        v20 = 10;
      }

      v21 = 70;
      if (type != 5121)
      {
        v21 = 0;
      }

      v22 = 80;
      if (type != 5121)
      {
        v22 = 0;
      }

      if (format != 32993)
      {
        v22 = 0;
      }

      if (format == 6408)
      {
        v22 = v21;
      }
    }

    else
    {
      if (format <= 36243)
      {
        v8 = 30;
        if (type != 5121)
        {
          v8 = 0;
        }

        v9 = 34;
        if (type != 5120)
        {
          v9 = 0;
        }

        v10 = 33;
        if (type != 5121)
        {
          v10 = v9;
        }

        if (format != 33320)
        {
          v10 = 0;
        }

        if (format == 33319)
        {
          return v8;
        }

        else
        {
          return v10;
        }
      }

      v19 = 36244;
      v20 = 14;
      if (type != 5120)
      {
        v20 = 0;
      }

      if (type == 5121)
      {
        v20 = 13;
      }

      v23 = 91;
      if (type != 33640)
      {
        v23 = 0;
      }

      if (format == 36249)
      {
        v22 = v23;
      }

      else
      {
        v22 = 0;
      }
    }

    if (format == v19)
    {
      return v20;
    }

    else
    {
      return v22;
    }
  }

  if (internalFormat != format || ((v7 ^ 1) & 1) != 0)
  {
    return [(MTKTextureLoaderKTX *)self determineFormatFromSizedFormat:internalFormat];
  }

  if (format > 36491)
  {
    v12 = 36493;
    v24 = 150;
    if (baseInternalFormat != 6407)
    {
      v24 = 0;
    }

    v25 = 151;
    if (baseInternalFormat != 6407)
    {
      v25 = 0;
    }

    if (format != 36495)
    {
      v25 = 0;
    }

    if (format == 36494)
    {
      v16 = v24;
    }

    else
    {
      v16 = v25;
    }

    v26 = 152;
    if (baseInternalFormat != 6408)
    {
      v26 = 0;
    }

    v27 = 153;
    if (baseInternalFormat != 6408)
    {
      v27 = 0;
    }

    if (format != 36493)
    {
      v27 = 0;
    }

    if (format == 36492)
    {
      v18 = v26;
    }

    else
    {
      v18 = v27;
    }
  }

  else
  {
    v12 = 36284;
    v13 = 142;
    if (baseInternalFormat != 6407)
    {
      v13 = 0;
    }

    v14 = 143;
    if (baseInternalFormat != 6407)
    {
      v14 = 0;
    }

    if (format == 36286)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    if (format == 36285)
    {
      v16 = v13;
    }

    else
    {
      v16 = v15;
    }

    v17 = 140;
    if (baseInternalFormat != 6407)
    {
      v17 = 0;
    }

    v18 = 141;
    if (baseInternalFormat != 6407)
    {
      v18 = 0;
    }

    if (format != 36284)
    {
      v18 = 0;
    }

    if (format == 36283)
    {
      v18 = v17;
    }
  }

  if (format <= v12)
  {
    return v18;
  }

  else
  {
    return v16;
  }
}

- (unint64_t)determineFormatFromSizedFormat:(unint64_t)format
{
  v4 = _mtkLinkedBefore(1);
  v5 = 0;
  while (determineFormatFromSizedFormat__ktxFormats[v5] != format)
  {
    if (++v5 == 105)
    {
      return 0;
    }
  }

  if (v5 == 1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    return 71;
  }

  else
  {
    return determineFormatFromSizedFormat__mtlFormats[v5];
  }
}

@end