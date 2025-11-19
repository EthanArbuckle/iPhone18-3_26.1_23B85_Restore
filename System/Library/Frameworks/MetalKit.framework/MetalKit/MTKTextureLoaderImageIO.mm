@interface MTKTextureLoaderImageIO
- (BOOL)decodeCGImage:(CGImage *)a3 options:(id)a4;
- (BOOL)decodeCGImageDataProvider:(CGImage *)a3 options:(id)a4;
- (BOOL)decodeCGImageImageProvider:(CGImage *)a3 CGImageProvider:(CGImageProvider *)a4 options:(id)a5;
- (BOOL)determineCGImageBlockFormatWithComponentType:(int)a3 alphaInfo:(unsigned int)a4 andPixelSizeBytes:(unint64_t)a5 andColorSpace:(CGColorSpace *)a6 isOptimized:(BOOL)a7 options:(id)a8;
- (MTKTextureLoaderImageIO)initWithCGImage:(CGImage *)a3 options:(id)a4 error:(id *)a5;
- (MTKTextureLoaderImageIO)initWithData:(id)a3 options:(id)a4 error:(id *)a5;
- (id)getDataForArrayElement:(unint64_t)a3 face:(unint64_t)a4 level:(unint64_t)a5 depthPlane:(unint64_t)a6 bytesPerRow:(unint64_t *)a7 bytesPerImage:(unint64_t *)a8;
- (void)dealloc;
@end

@implementation MTKTextureLoaderImageIO

- (void)dealloc
{
  self->_imageData = 0;
  if (self->_blockSet)
  {
    CGImageBlockSetRelease();
    self->_blockSet = 0;
  }

  cfData = self->_cfData;
  if (cfData)
  {
    CFRelease(cfData);
    self->_cfData = 0;
  }

  v4.receiver = self;
  v4.super_class = MTKTextureLoaderImageIO;
  [(MTKTextureLoaderData *)&v4 dealloc];
}

- (MTKTextureLoaderImageIO)initWithData:(id)a3 options:(id)a4 error:(id *)a5
{
  v24.receiver = self;
  v24.super_class = MTKTextureLoaderImageIO;
  v8 = [(MTKTextureLoaderData *)&v24 init];
  if (v8)
  {
    v9 = CGImageSourceCreateWithData(a3, 0);
    if (!v9)
    {
      if (a5)
      {
        *a5 = _newMTKTextureErrorWithCodeAndErrorString(0, @"Image decoding failed");
      }

      return 0;
    }

    v10 = v9;
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      if (a5)
      {
        *a5 = _newMTKTextureErrorWithCodeAndErrorString(0, @"Image decoding failed");
      }

      goto LABEL_40;
    }

    v12 = Mutable;
    CFDictionarySetValue(Mutable, @"kCGImageBlockIOSurfaceOptimizedRequest", *MEMORY[0x1E695E4D0]);
    v13 = CGImageSourceCopyPropertiesAtIndex(v10, 0, v12);
    if (!v13)
    {
      if (a5)
      {
        *a5 = _newMTKTextureErrorWithCodeAndErrorString(0, @"Image decoding failed");
      }

      goto LABEL_39;
    }

    v14 = v13;
    v15 = *MEMORY[0x1E696DE78];
    if (CFDictionaryContainsKey(v13, *MEMORY[0x1E696DE78]))
    {
      v16 = [CFDictionaryGetValue(v14 v15)];
      if (v16 == 1)
      {
        v17 = &MTKTextureLoaderOriginTopLeft;
      }

      else
      {
        if (v16 != 4)
        {
          if (a5)
          {
            v21 = @"Unsupported image orientation";
            goto LABEL_32;
          }

LABEL_33:

LABEL_38:
          CFRelease(v14);
LABEL_39:
          CFRelease(v12);
LABEL_40:
          CFRelease(v10);
          return 0;
        }

        v17 = &MTKTextureLoaderOriginBottomLeft;
      }

      [(MTKTextureLoaderData *)v8 setImageOrigin:*v17];
    }

    ImageAtIndex = CGImageSourceCreateImageAtIndex(v10, 0, v12);
    if (ImageAtIndex)
    {
      v19 = ImageAtIndex;
      if ([(MTKTextureLoaderImageIO *)v8 decodeCGImage:ImageAtIndex options:a4])
      {
        if (![a4 objectForKey:@"MTKTextureLoaderOptionCubeLayout"])
        {
LABEL_25:
          CGImageRelease(v19);
          CFRelease(v14);
          CFRelease(v12);
          CFRelease(v10);
          return v8;
        }

        v20 = [(MTKTextureLoaderData *)v8 height];
        if (v20 == 6 * [(MTKTextureLoaderData *)v8 width])
        {
          [(MTKTextureLoaderData *)v8 setHeight:[(MTKTextureLoaderData *)v8 width]];
          [(MTKTextureLoaderData *)v8 setNumFaces:6];
          [(MTKTextureLoaderData *)v8 setTextureType:5];
          goto LABEL_25;
        }

        if (!a5)
        {
          goto LABEL_37;
        }

        v22 = @"Image height must be six times the image width for a vertical cubemap texture";
      }

      else
      {
        if (!a5)
        {
LABEL_37:

          CGImageRelease(v19);
          goto LABEL_38;
        }

        v22 = @"Image decoding failed";
      }

      *a5 = _newMTKTextureErrorWithCodeAndErrorString(0, v22);
      goto LABEL_37;
    }

    if (a5)
    {
      v21 = @"Image decoding failed";
LABEL_32:
      *a5 = _newMTKTextureErrorWithCodeAndErrorString(0, v21);
      goto LABEL_33;
    }

    goto LABEL_33;
  }

  return v8;
}

- (MTKTextureLoaderImageIO)initWithCGImage:(CGImage *)a3 options:(id)a4 error:(id *)a5
{
  v11.receiver = self;
  v11.super_class = MTKTextureLoaderImageIO;
  v8 = [(MTKTextureLoaderData *)&v11 init];
  v9 = v8;
  if (v8)
  {
    if (![(MTKTextureLoaderImageIO *)v8 decodeCGImage:a3 options:a4])
    {
      v9 = 0;
      if (a5)
      {
        *a5 = _newMTKTextureErrorWithCodeAndErrorString(0, @"Image decoding failed");
      }
    }
  }

  return v9;
}

- (id)getDataForArrayElement:(unint64_t)a3 face:(unint64_t)a4 level:(unint64_t)a5 depthPlane:(unint64_t)a6 bytesPerRow:(unint64_t *)a7 bytesPerImage:(unint64_t *)a8
{
  bytesPerRow = self->_bytesPerRow;
  v13 = [(MTKTextureLoaderData *)self height:a3]* bytesPerRow;
  *a7 = self->_bytesPerRow;
  *a8 = v13;
  v14 = MEMORY[0x1E695DEF0];
  v15 = [(NSData *)self->_imageData bytes]+ v13 * a4;

  return [v14 dataWithBytesNoCopy:v15 length:v13 freeWhenDone:0];
}

- (BOOL)decodeCGImage:(CGImage *)a3 options:(id)a4
{
  ImageProvider = CGImageGetImageProvider();
  if (ImageProvider)
  {

    return [(MTKTextureLoaderImageIO *)self decodeCGImageImageProvider:a3 CGImageProvider:ImageProvider options:a4];
  }

  else
  {

    return [(MTKTextureLoaderImageIO *)self decodeCGImageDataProvider:a3 options:a4];
  }
}

- (BOOL)decodeCGImageImageProvider:(CGImage *)a3 CGImageProvider:(CGImageProvider *)a4 options:(id)a5
{
  ColorSpace = CGImageProviderGetColorSpace();
  if (CGColorSpaceGetModel(ColorSpace) > kCGColorSpaceModelRGB)
  {
    v9 = 0;
    goto LABEL_16;
  }

  CGImageProviderGetSize();
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  v9 = Mutable;
  if (Mutable)
  {
    v11 = *MEMORY[0x1E695E4D0];
    CFDictionarySetValue(Mutable, @"kCGImageBlockSingletonRequest", *MEMORY[0x1E695E4D0]);
    CGImageGetBitsPerPixel(a3);
    BitsPerComponent = CGImageGetBitsPerComponent(a3);
    AlphaInfo = CGImageGetAlphaInfo(a3);
    CGImageGetBitmapInfo(a3);
    if (BitsPerComponent == 8)
    {
      CFDictionarySetValue(v9, @"kCGImageBlockIOSurfaceOptimizedRequest", v11);
      CFDictionarySetValue(v9, @"kCGImageBlockFormatRequest", @"kCGImageBlockFormatBGRx8");
    }

    v13 = CGImageProviderCopyImageBlockSetWithOptions();
    self->_blockSet = v13;
    if (v13)
    {
      if (CGImageBlockSetGetCount() == 1)
      {
        v14 = BitsPerComponent == 8;
        blockSet = self->_blockSet;
        CGImageBlockSetGetImageBlock();
        CGImageBlockGetRect();
        v17 = v16;
        [(MTKTextureLoaderData *)self setWidth:v18];
        [(MTKTextureLoaderData *)self setHeight:v17];
        self->_bytesPerRow = CGImageBlockGetBytesPerRow();
        Data = CGImageBlockGetData();
        v20 = self->_blockSet;
        ComponentType = CGImageBlockSetGetComponentType();
        v22 = self->_blockSet;
        PixelSize = CGImageBlockSetGetPixelSize();
        v24 = v14 && PixelSize == 3 ? 4 : PixelSize;
        if ([(MTKTextureLoaderImageIO *)self determineCGImageBlockFormatWithComponentType:ComponentType alphaInfo:AlphaInfo andPixelSizeBytes:v24 andColorSpace:ColorSpace isOptimized:v14 options:a5])
        {
          expandRGBToRGBA = self->_expandRGBToRGBA;
          if (!expandRGBToRGBA)
          {
            goto LABEL_21;
          }

          v42 = Data;
          v26 = ComponentType - 2;
          if ((ComponentType - 2) >= 4)
          {
            [MTKTextureLoaderImageIO decodeCGImageImageProvider:CGImageProvider:options:];
          }

          v40 = qword_1D96A9450[v26];
          v27 = qword_1D96A9470[v26];
          v28 = malloc_type_malloc(4 * v27 * [(MTKTextureLoaderData *)self height]* [(MTKTextureLoaderData *)self width], 0x100004077774924uLL);
          if (::expandRGBToRGBA(v42, v28, [(MTKTextureLoaderData *)self width], [(MTKTextureLoaderData *)self height], self->_bytesPerRow, v24, v27, v40))
          {
            self->_bytesPerRow = 4 * v27 * [(MTKTextureLoaderData *)self width];
            v29 = self->_blockSet;
            CGImageBlockSetRelease();
            self->_blockSet = 0;
            Data = v28;
            expandRGBToRGBA = 1;
LABEL_21:
            if ((_mtkLinkedOnOrAfter(0) & 1) != 0 || [(MTKTextureLoaderData *)self imageOrigin]== @"MTKTextureLoaderOriginBottomLeft")
            {
              v33 = objc_alloc(MEMORY[0x1E695DEF0]);
              v34 = self->_bytesPerRow * [(MTKTextureLoaderData *)self height];
              v35 = v33;
              v36 = Data;
              v37 = expandRGBToRGBA;
            }

            else
            {
              v32 = malloc_type_malloc(self->_bytesPerRow * [(MTKTextureLoaderData *)self height], 0x100004077774924uLL);
              reflectImage(Data, v32, [(MTKTextureLoaderData *)self width], [(MTKTextureLoaderData *)self height], self->_bytesPerRow, 8 * self->_pixelFormatInfo.type.normal.pixelBytes, self->_pixelFormatInfo.type.normal.componentCount);
              if (expandRGBToRGBA)
              {
                free(Data);
              }

              else
              {
                v38 = self->_blockSet;
                CGImageBlockSetRelease();
                self->_blockSet = 0;
              }

              v39 = objc_alloc(MEMORY[0x1E695DEF0]);
              v34 = self->_bytesPerRow * [(MTKTextureLoaderData *)self height];
              v35 = v39;
              v36 = v32;
              v37 = 1;
            }

            self->_imageData = [v35 initWithBytesNoCopy:v36 length:v34 freeWhenDone:v37];
            v30 = 1;
            goto LABEL_19;
          }
        }
      }
    }
  }

LABEL_16:
  if (self->_blockSet)
  {
    CGImageBlockSetRelease();
    self->_blockSet = 0;
  }

  v30 = 0;
  result = 0;
  if (v9)
  {
LABEL_19:
    CFRelease(v9);
    return v30;
  }

  return result;
}

- (BOOL)decodeCGImageDataProvider:(CGImage *)a3 options:(id)a4
{
  BitmapInfo = CGImageGetBitmapInfo(a3);
  ColorSpace = CGImageGetColorSpace(a3);
  Model = CGColorSpaceGetModel(ColorSpace);
  BitsPerPixel = CGImageGetBitsPerPixel(a3);
  v10 = BitsPerPixel;
  if (BitsPerPixel != 32 && BitsPerPixel != 8 || ColorSpace && Model > kCGColorSpaceModelRGB)
  {
    goto LABEL_11;
  }

  self->_bytesPerRow = CGImageGetBytesPerRow(a3);
  [(MTKTextureLoaderData *)self setWidth:CGImageGetWidth(a3)];
  [(MTKTextureLoaderData *)self setHeight:CGImageGetHeight(a3)];
  if (v10 == 8)
  {
    if ((BitmapInfo & 0x1F) == 7 || ColorSpace == 0)
    {
      v12 = 1;
    }

    else
    {
      v12 = 10;
    }

    goto LABEL_19;
  }

  if (v10 != 32)
  {
    goto LABEL_11;
  }

  [(MTKTextureLoaderData *)self setPixelFormat:70];
  v11 = BitmapInfo & 0x1F;
  v12 = 80;
  if (v11 <= 3)
  {
    if ((BitmapInfo & 0x1F) != 0)
    {
      if (v11 != 2)
      {
        goto LABEL_20;
      }

LABEL_19:
      [(MTKTextureLoaderData *)self setPixelFormat:v12];
      goto LABEL_20;
    }

LABEL_11:
    LOBYTE(v13) = 0;
    return v13;
  }

  if (v11 == 4 || v11 == 6)
  {
    goto LABEL_19;
  }

LABEL_20:
  [(MTKTextureLoaderData *)self pixelFormat];
  MTLPixelFormatGetInfoForDevice();
  *&self->_pixelFormatInfo.name = v18;
  *&self->_pixelFormatInfo.castClass = v19;
  *&self->_pixelFormatInfo.type.compressed.blockWidth = v20;
  self->_pixelFormatInfo.type.normal.pixelBytesRenderMSAA = v21;
  DataProvider = CGImageGetDataProvider(a3);
  v13 = CGDataProviderCopyData(DataProvider);
  self->_cfData = v13;
  if (v13)
  {
    BytePtr = CFDataGetBytePtr(v13);
    if (BytePtr)
    {
      self->_imageData = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:BytePtr length:self->_bytesPerRow * -[MTKTextureLoaderData height](self freeWhenDone:{"height"), 0}];
      LOBYTE(v13) = 1;
    }

    else
    {
      CFRelease(self->_cfData);
      LOBYTE(v13) = 0;
      self->_cfData = 0;
    }
  }

  return v13;
}

- (BOOL)determineCGImageBlockFormatWithComponentType:(int)a3 alphaInfo:(unsigned int)a4 andPixelSizeBytes:(unint64_t)a5 andColorSpace:(CGColorSpace *)a6 isOptimized:(BOOL)a7 options:(id)a8
{
  v9 = a7;
  self->_expandRGBToRGBA = 0;
  v14 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  v15 = 0;
  if (_mtkLinkedOnOrAfter(0))
  {
    v15 = CFEqual(a6, v14) != 0;
  }

  CFRelease(v14);
  if ([a8 objectForKey:@"MTKTextureLoaderOptionSRGB"])
  {
    v15 = [objc_msgSend(a8 objectForKey:{@"MTKTextureLoaderOptionSRGB", "BOOLValue"}];
  }

  result = 0;
  if (a3 > 2)
  {
    switch(a3)
    {
      case 3:
        result = 0;
        v19 = __ROR8__(a5 - 4, 2);
        if (v19 <= 1)
        {
          if (v19)
          {
            if (v19 != 1)
            {
              return result;
            }

            v17 = self;
            v18 = 103;
          }

          else
          {
            v17 = self;
            v18 = 53;
          }

          goto LABEL_62;
        }

        if (v19 != 2)
        {
          if (v19 != 3)
          {
            return result;
          }

          v17 = self;
          v18 = 123;
          goto LABEL_62;
        }

        v21 = self;
        v22 = 123;
        break;
      case 4:
        result = 0;
        v20 = __ROR8__(a5 - 4, 2);
        if (v20 <= 1)
        {
          if (v20)
          {
            if (v20 != 1)
            {
              return result;
            }

            v17 = self;
            v18 = 105;
          }

          else
          {
            v17 = self;
            v18 = 55;
          }

          goto LABEL_62;
        }

        if (v20 != 2)
        {
          if (v20 != 3)
          {
            return result;
          }

          v17 = self;
          v18 = 125;
          goto LABEL_62;
        }

        v21 = self;
        v22 = 125;
        break;
      case 5:
        result = 0;
        if (a5 <= 5)
        {
          if (a5 == 2)
          {
            v17 = self;
            v18 = 25;
          }

          else
          {
            if (a5 != 4)
            {
              return result;
            }

            v17 = self;
            v18 = 65;
          }

          goto LABEL_62;
        }

        if (a5 != 6)
        {
          if (a5 != 8)
          {
            return result;
          }

          v17 = self;
          v18 = 115;
          goto LABEL_62;
        }

        v21 = self;
        v22 = 115;
        break;
      default:
        return result;
    }

    goto LABEL_58;
  }

  if (a3 != 1)
  {
    if (a3 != 2)
    {
      return result;
    }

    result = 0;
    if (a5 <= 5)
    {
      if (a5 == 2)
      {
        v17 = self;
        v18 = 20;
      }

      else
      {
        if (a5 != 4)
        {
          return result;
        }

        v17 = self;
        v18 = 60;
      }

      goto LABEL_62;
    }

    if (a5 != 6)
    {
      if (a5 != 8)
      {
        return result;
      }

      v17 = self;
      v18 = 110;
      goto LABEL_62;
    }

    v21 = self;
    v22 = 110;
LABEL_58:
    [(MTKTextureLoaderData *)v21 setPixelFormat:v22];
    self->_expandRGBToRGBA = 1;
    goto LABEL_63;
  }

  if (a5 == 1)
  {
    v17 = self;
    if (v15)
    {
      v18 = 11;
    }

    else
    {
      v18 = 10;
    }

    goto LABEL_62;
  }

  if (a5 == 2)
  {
    v17 = self;
    if (v15)
    {
      v18 = 31;
    }

    else
    {
      v18 = 30;
    }

    goto LABEL_62;
  }

  if (a5 != 4)
  {
    return 0;
  }

  if (v9)
  {
    v17 = self;
    if (v15)
    {
      v18 = 81;
    }

    else
    {
      v18 = 80;
    }

LABEL_62:
    [(MTKTextureLoaderData *)v17 setPixelFormat:v18];
  }

LABEL_63:
  [(MTKTextureLoaderData *)self pixelFormat];
  MTLPixelFormatGetInfoForDevice();
  *&self->_pixelFormatInfo.name = v23;
  *&self->_pixelFormatInfo.castClass = v24;
  *&self->_pixelFormatInfo.type.compressed.blockWidth = v25;
  self->_pixelFormatInfo.type.normal.pixelBytesRenderMSAA = v26;
  return self->_pixelFormatInfo.flags & 1;
}

@end