@interface MTKTextureLoaderKTX
+ (BOOL)isKTXFile:(id)a3;
- (BOOL)parseKey:(id)a3 value:(id)a4 error:(id *)a5;
- (BOOL)parseKeyValueBytes:(const char *)a3 length:(unint64_t)a4 error:(id *)a5;
- (MTKTextureLoaderKTX)initWithData:(id)a3 options:(id)a4 error:(id *)a5;
- (id)getDataForArrayElement:(unint64_t)a3 face:(unint64_t)a4 level:(unint64_t)a5 depthPlane:(unint64_t)a6 bytesPerRow:(unint64_t *)a7 bytesPerImage:(unint64_t *)a8;
- (unint64_t)determineFormatFromSizedFormat:(unint64_t)a3;
- (unint64_t)determineFormatFromType:(unsigned int)a3 format:(unsigned int)a4 internalFormat:(unsigned int)a5 baseInternalFormat:(unsigned int)a6;
- (void)dealloc;
@end

@implementation MTKTextureLoaderKTX

+ (BOOL)isKTXFile:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  if ([a3 length] < 0x40)
  {
    return 0;
  }

  v5 = [a3 bytes];
  return *v5 == gKTXFileIdentifier && *(v5 + 8) == dword_1ECB3E8C8;
}

- (MTKTextureLoaderKTX)initWithData:(id)a3 options:(id)a4 error:(id *)a5
{
  v42.receiver = self;
  v42.super_class = MTKTextureLoaderKTX;
  v8 = [(MTKTextureLoaderData *)&v42 init];
  if (v8)
  {
    if (![MTKTextureLoaderKTX isKTXFile:a3])
    {
      [MTKTextureLoaderKTX initWithData:options:error:];
    }

    v9 = [a3 bytes];
    [v8 setWidth:v9[9]];
    v10 = v9[10];
    if (v10 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }

    [v8 setHeight:v11];
    v12 = v9[11];
    if (v12 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = v12;
    }

    [v8 setDepth:v13];
    v14 = v9[12];
    if (v14 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = v14;
    }

    [v8 setNumArrayElements:v15];
    v16 = v9[13];
    if (v16 <= 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = v16;
    }

    [v8 setNumFaces:v17];
    v18 = v9[14];
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
    [v8 setPixelFormat:objc_msgSend(v8, "determineFormatFromType:format:internalFormat:baseInternalFormat:", v9[4], v9[6], v9[7], v9[8])];
    if (![v8 pixelFormat])
    {
      if (!a5)
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
    v23 = v9[15];
    if ([a3 length] - 64 < v23 || !objc_msgSend(v8, "parseKeyValueBytes:length:error:", objc_msgSend(a3, "bytes") + 64, v23, a5))
    {
      goto LABEL_34;
    }

    *(v8 + 10) = [a3 subdataWithRange:{v23 + 64, objc_msgSend(a3, "length") - v23 - 64}];
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
          v33 = [v8 pixelFormat];
          if ((v33 - 203) >= 0x10)
          {
            [MTKTextureLoaderKTX initWithData:options:error:];
          }

          [v8 setPixelFormat:v33 + 18];
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
    v35 = [a4 objectForKey:@"MTKTextureLoaderOptionOrigin"];
    if ((v34 & 0x400) != 0 && v35)
    {
      if (!a5)
      {
        goto LABEL_34;
      }

      v25 = @"Vertical flip is not supported for block texture formats";
      goto LABEL_33;
    }

    if (!v35 || [v8 textureType] == 2 || objc_msgSend(v8, "textureType") == 3 || objc_msgSend(v8, "textureType") == 5)
    {
      if ([a4 objectForKey:@"MTKTextureLoaderOptionCubeLayout"])
      {
        if (!a5)
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

      v36 = [a4 objectForKey:@"MTKTextureLoaderOptionSRGB"];
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
      v39 = [a4 objectForKey:@"MTKTextureLoaderOptionPackedRowStride"];
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

    if (!a5)
    {
      goto LABEL_34;
    }

    v25 = @"Vertical flip is only supported for 2D, 2D array, and cube map textures";
LABEL_33:
    *a5 = _newMTKTextureErrorWithCodeAndErrorString(0, v25);
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

- (BOOL)parseKeyValueBytes:(const char *)a3 length:(unint64_t)a4 error:(id *)a5
{
  v5 = &a3[a4];
  v6 = &a3[a4 - 4];
  if (v6 <= a3)
  {
LABEL_11:
    LOBYTE(v18) = 1;
  }

  else
  {
    v8 = a3;
    while (1)
    {
      v12 = *v8;
      v10 = v8 + 4;
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
      v18 = -[MTKTextureLoaderKTX parseKey:value:error:](self, "parseKey:value:error:", v17, [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:&v10[v15 + 1] length:v16 freeWhenDone:0], a5);
      if (!v18)
      {
        return v18;
      }

      v8 = (&v10[v11 + 3] & 0xFFFFFFFFFFFFFFFCLL);
      if (v6 <= v8)
      {
        goto LABEL_11;
      }
    }

    LOBYTE(v18) = 0;
  }

  return v18;
}

- (BOOL)parseKey:(id)a3 value:(id)a4 error:(id *)a5
{
  if ([objc_msgSend(a3 "lowercaseString")] && _mtkLinkedOnOrAfter(0))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:a4 encoding:4];
    if ([v8 hasPrefix:{@"S=r, T=d"}])
    {
      v9 = &MTKTextureLoaderOriginTopLeft;
    }

    else
    {
      if (([v8 hasPrefix:{@"S=r, T=u"}] & 1) == 0)
      {
        v10 = 0;
        if (a5)
        {
          *a5 = _newMTKTextureErrorWithCodeAndErrorString(0, @"Unsupported image orientation");
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

- (id)getDataForArrayElement:(unint64_t)a3 face:(unint64_t)a4 level:(unint64_t)a5 depthPlane:(unint64_t)a6 bytesPerRow:(unint64_t *)a7 bytesPerImage:(unint64_t *)a8
{
  v10 = [(NSData *)self->_imageData bytes];
  v11 = [(NSData *)self->_imageData length];
  v40 = [(MTKTextureLoaderData *)self width];
  v39 = [(MTKTextureLoaderData *)self height];
  if ([(MTKTextureLoaderData *)self numMipmapLevels])
  {
    v38 = 0;
    v12 = &v10[v11];
    v33 = &v10[v11];
    while (1)
    {
      if ((self->_pixelFormatInfo.flags & 0x400) != 0)
      {
        v13 = (v40 + self->_pixelFormatInfo.type.compressed.blockWidth - 1) / self->_pixelFormatInfo.type.compressed.blockWidth * self->_pixelFormatInfo.type.normal.pixelBytes;
        v14 = (v39 + self->_pixelFormatInfo.type.normal.pixelBytesRender - 1) / self->_pixelFormatInfo.type.normal.pixelBytesRender;
      }

      else
      {
        v13 = self->_packedRowStride ? self->_pixelFormatInfo.type.normal.pixelBytes * v40 : (self->_pixelFormatInfo.type.normal.pixelBytes * v40 + 3) & 0xFFFFFFFFFFFFFFFCLL;
        v14 = v39;
      }

      v15 = v13 * v14;
      v16 = (v10 + 4);
      if ([(MTKTextureLoaderData *)self numArrayElements])
      {
        break;
      }

LABEL_36:
      if (v40 <= 1)
      {
        v26 = 1;
      }

      else
      {
        v26 = v40 >> 1;
      }

      v27 = v39 >> 1;
      if (v39 <= 1)
      {
        v27 = 1;
      }

      v39 = v27;
      v40 = v26;
      v10 = ((v16 + 3) & 0xFFFFFFFFFFFFFFFCLL);
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
    v20 = v38 == a5 && v17 == a3;
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
    v22 = v18 == a4 && v34;
    v23 = &v33[-v16];
    while (v16 < v12)
    {
      v24 = v23 >= v15;
      v23 -= v15;
      if (!v24)
      {
        break;
      }

      if (a6 == v21 && v22)
      {
        *a7 = v30;
        *a8 = v15;
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

- (unint64_t)determineFormatFromType:(unsigned int)a3 format:(unsigned int)a4 internalFormat:(unsigned int)a5 baseInternalFormat:(unsigned int)a6
{
  if (a3)
  {
    v6 = a4 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  if (a5 == a4 && (v7 & 1) == 0)
  {
    if (a4 <= 33318)
    {
      v19 = 6403;
      v20 = 12;
      if (a3 != 5120)
      {
        v20 = 0;
      }

      if (a3 == 5121)
      {
        v20 = 10;
      }

      v21 = 70;
      if (a3 != 5121)
      {
        v21 = 0;
      }

      v22 = 80;
      if (a3 != 5121)
      {
        v22 = 0;
      }

      if (a4 != 32993)
      {
        v22 = 0;
      }

      if (a4 == 6408)
      {
        v22 = v21;
      }
    }

    else
    {
      if (a4 <= 36243)
      {
        v8 = 30;
        if (a3 != 5121)
        {
          v8 = 0;
        }

        v9 = 34;
        if (a3 != 5120)
        {
          v9 = 0;
        }

        v10 = 33;
        if (a3 != 5121)
        {
          v10 = v9;
        }

        if (a4 != 33320)
        {
          v10 = 0;
        }

        if (a4 == 33319)
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
      if (a3 != 5120)
      {
        v20 = 0;
      }

      if (a3 == 5121)
      {
        v20 = 13;
      }

      v23 = 91;
      if (a3 != 33640)
      {
        v23 = 0;
      }

      if (a4 == 36249)
      {
        v22 = v23;
      }

      else
      {
        v22 = 0;
      }
    }

    if (a4 == v19)
    {
      return v20;
    }

    else
    {
      return v22;
    }
  }

  if (a5 != a4 || ((v7 ^ 1) & 1) != 0)
  {
    return [(MTKTextureLoaderKTX *)self determineFormatFromSizedFormat:a5];
  }

  if (a4 > 36491)
  {
    v12 = 36493;
    v24 = 150;
    if (a6 != 6407)
    {
      v24 = 0;
    }

    v25 = 151;
    if (a6 != 6407)
    {
      v25 = 0;
    }

    if (a4 != 36495)
    {
      v25 = 0;
    }

    if (a4 == 36494)
    {
      v16 = v24;
    }

    else
    {
      v16 = v25;
    }

    v26 = 152;
    if (a6 != 6408)
    {
      v26 = 0;
    }

    v27 = 153;
    if (a6 != 6408)
    {
      v27 = 0;
    }

    if (a4 != 36493)
    {
      v27 = 0;
    }

    if (a4 == 36492)
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
    if (a6 != 6407)
    {
      v13 = 0;
    }

    v14 = 143;
    if (a6 != 6407)
    {
      v14 = 0;
    }

    if (a4 == 36286)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    if (a4 == 36285)
    {
      v16 = v13;
    }

    else
    {
      v16 = v15;
    }

    v17 = 140;
    if (a6 != 6407)
    {
      v17 = 0;
    }

    v18 = 141;
    if (a6 != 6407)
    {
      v18 = 0;
    }

    if (a4 != 36284)
    {
      v18 = 0;
    }

    if (a4 == 36283)
    {
      v18 = v17;
    }
  }

  if (a4 <= v12)
  {
    return v18;
  }

  else
  {
    return v16;
  }
}

- (unint64_t)determineFormatFromSizedFormat:(unint64_t)a3
{
  v4 = _mtkLinkedBefore(1);
  v5 = 0;
  while (determineFormatFromSizedFormat__ktxFormats[v5] != a3)
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