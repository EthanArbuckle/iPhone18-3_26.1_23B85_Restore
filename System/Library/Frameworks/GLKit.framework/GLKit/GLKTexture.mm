@interface GLKTexture
- (BOOL)_uploadToGLTexture:(unsigned int)a3 data:(id)a4 width:(int)a5 height:(int)a6 dataCategory:(int)a7 cubeMapIndex:(int)a8 mipMapIndex:(int)a9 error:(id *)a10;
- (BOOL)decodeCGImage:(CGImage *)a3;
- (BOOL)decodeCGImageDataProvider:(CGImage *)a3;
- (BOOL)decodeCGImageImageProvider:(CGImage *)a3 CGImageProvider:(CGImageProvider *)a4;
- (BOOL)determineCGImageBlockFormatWithComponentType:(int)a3 andPixelSize:(unint64_t)a4 andColorModel:(int)a5;
- (BOOL)determinePVRFormat:(unsigned int)a3;
- (BOOL)loadCGImage:(CGImage *)a3 options:(id)a4 error:(id *)a5;
- (BOOL)loadPVRTCData:(id)a3 error:(id *)a4;
- (BOOL)loadWithData:(id)a3 options:(id)a4 error:(id *)a5;
- (BOOL)premultiplyWithAlpha:(void *)a3 source:(void *)a4 withWidth:(unsigned int)a5 withHeight:(unsigned int)a6 withRowBytes:(unsigned int)a7 error:(id *)a8;
- (BOOL)reorientToGL:(void *)a3 source:(void *)a4 withWidth:(unsigned int)a5 withHeight:(unsigned int)a6 withRowBytes:(unsigned int)a7 error:(id *)a8;
- (GLKTexture)init;
- (GLKTexture)initWithCGImage:(CGImage *)a3 forceCubeMap:(BOOL)a4 wasCubeMap:(BOOL *)a5 cubeMapIndex:(int)a6 options:(id)a7 error:(id *)a8;
- (GLKTexture)initWithData:(id)a3 forceCubeMap:(BOOL)a4 wasCubeMap:(BOOL *)a5 cubeMapIndex:(int)a6 options:(id)a7 error:(id *)a8;
- (GLKTexture)initWithDecodedData:(id)a3 width:(unsigned int)a4 height:(unsigned int)a5 rowBytes:(unsigned int)a6 texture:(id)a7 cubeMapIndex:(int)a8 options:(id)a9 error:(id *)a10;
- (void)alignmentFix:(unsigned int)a3 data:(const void *)a4;
- (void)dealloc;
- (void)updateRequestedOperationsFromOptions:(id)a3;
@end

@implementation GLKTexture

- (GLKTexture)init
{
  v3.receiver = self;
  v3.super_class = GLKTexture;
  result = [(GLKTexture *)&v3 init];
  if (result)
  {
    result->_type = 5121;
    *&result->_bindTarget = vdup_n_s32(0xDE1u);
    result->_hasPremultipliedAlpha = 0;
    result->_unpackAlignment = 4;
    result->_requestIssuedForSRGB = 0;
  }

  return result;
}

- (void)dealloc
{
  if (self->_blockSet)
  {
    CGImageBlockSetRelease();
  }

  cfData = self->_cfData;
  if (cfData)
  {
    CFRelease(cfData);
  }

  [(GLKTexture *)self setLabel:0];
  v4.receiver = self;
  v4.super_class = GLKTexture;
  [(GLKTexture *)&v4 dealloc];
}

- (void)updateRequestedOperationsFromOptions:(id)a3
{
  self->_requestIssuedForMipmapGeneration = [objc_msgSend(a3 objectForKey:{@"GLKTextureLoaderGenerateMipmaps", "BOOLValue"}];
  self->_requestIssuedToReorientToGL = [objc_msgSend(a3 objectForKey:{@"GLKTextureLoaderOriginBottomLeft", "BOOLValue"}];
  self->_requestIssuedForAlphaPremultiplication = [objc_msgSend(a3 objectForKey:{@"GLKTextureLoaderApplyPremultiplication", "BOOLValue"}];
  self->_requestIssuedForSRGB = [objc_msgSend(a3 objectForKey:{@"GLKTextureLoaderSRGB", "BOOLValue"}];
  self->_requestIssuedToInterpretGrayAsAlpha = [objc_msgSend(a3 objectForKey:{@"GLKTextureLoaderGrayscaleAsAlpha", "BOOLValue"}];
  self->_isMipmapped = self->_requestIssuedForMipmapGeneration;
}

- (GLKTexture)initWithData:(id)a3 forceCubeMap:(BOOL)a4 wasCubeMap:(BOOL *)a5 cubeMapIndex:(int)a6 options:(id)a7 error:(id *)a8
{
  v12 = a4;
  v14 = [(GLKTexture *)self init];
  if (v14)
  {
    v20 = 0;
    v19 = 0u;
    memset(v18, 0, sizeof(v18));
    [a3 getBytes:v18 length:52];
    if (HIDWORD(v19) == 559044176)
    {
      v15 = 2;
    }

    else
    {
      v15 = 1;
    }

    v14->_loadMode = v15;
    [(GLKTexture *)v14 updateRequestedOperationsFromOptions:a7];
    v14->_index = a6;
    if (a5)
    {
      *a5 = 0;
    }

    loadMode = v14->_loadMode;
    if (loadMode != 2)
    {
      if (loadMode != 1)
      {
        return v14;
      }

      v14->_isCubeMap = v12;
      if ([(GLKTexture *)v14 loadWithData:a3 options:a7 error:a8])
      {
        return v14;
      }

LABEL_17:

      return 0;
    }

    if (![(GLKTexture *)v14 loadPVRTCData:a3 error:a8])
    {
      goto LABEL_17;
    }

    if (a5 && v14->_isCubeMap)
    {
      *a5 = 1;
    }

    if (v12)
    {
      v14->_isCubeMap = 1;
      *&v14->_bindTarget = 0x851500008513;
    }
  }

  return v14;
}

- (GLKTexture)initWithCGImage:(CGImage *)a3 forceCubeMap:(BOOL)a4 wasCubeMap:(BOOL *)a5 cubeMapIndex:(int)a6 options:(id)a7 error:(id *)a8
{
  v14 = [(GLKTexture *)self init];
  v15 = v14;
  if (v14)
  {
    v14->_loadMode = 1;
    [(GLKTexture *)v14 updateRequestedOperationsFromOptions:a7];
    v15->_isCubeMap = a4;
    v15->_index = a6;
    if (a5)
    {
      *a5 = 0;
    }

    if (![(GLKTexture *)v15 loadCGImage:a3 options:a7 error:a8])
    {

      return 0;
    }
  }

  return v15;
}

- (GLKTexture)initWithDecodedData:(id)a3 width:(unsigned int)a4 height:(unsigned int)a5 rowBytes:(unsigned int)a6 texture:(id)a7 cubeMapIndex:(int)a8 options:(id)a9 error:(id *)a10
{
  v16 = [(GLKTexture *)self init];
  if (v16)
  {
    v16->_loadMode = [a7 loadMode];
    [(GLKTexture *)v16 updateRequestedOperationsFromOptions:a9];
    v16->_dataCategory = [a7 dataCategory];
    v16->_imageData = a3;
    v16->_width = a4;
    v16->_height = a5;
    v16->_rowBytes = a6;
    v16->_index = a8;
    v16->_isCubeMap = [a7 isCubeMap];
    v16->_bitsPerPixel = [a7 bitsPerPixel];
    v16->_nComponents = [a7 nComponents];
    v16->_orientation = [a7 orientation];
    v16->_texelFormat = [a7 texelFormat];
    v16->_internalFormat = [a7 internalFormat];
    v16->_format = [a7 format];
    v16->_type = [a7 type];
    v16->_isPowerOfTwo = [a7 isPowerOfTwo];
    v16->_isVerticalFlipped = [a7 isVerticalFlipped];
    v16->_hasAlpha = [a7 hasAlpha];
    v16->_numMipMapLevels = 1;
    v16->_bindTarget = [a7 bindTarget];
    v16->_textureTarget = [a7 textureTarget];
  }

  return v16;
}

- (BOOL)loadPVRTCData:(id)a3 error:(id *)a4
{
  self->_imageData = 0;
  if (self->_blockSet)
  {
    CGImageBlockSetRelease();
    self->_blockSet = 0;
  }

  v7 = a3;
  self->_imageData = v7;
  v8 = [(NSData *)v7 bytes];
  v9 = v8[4];
  if (![(GLKTexture *)self determinePVRFormat:v9])
  {
    if (!a4)
    {
LABEL_17:

      result = 0;
      self->_imageData = 0;
      return result;
    }

    v14 = @"Unsupported PVR format";
    v15 = 11;
LABEL_16:
    *a4 = _GLKTextureErrorWithCodeAndErrorString(v15, v14);
    goto LABEL_17;
  }

  v10 = v8[3];
  self->_numMipMapLevels = v10 + 1;
  if ((v9 & 0xFE) != 0x18)
  {
    self->_dataCategory = 7;
    goto LABEL_19;
  }

  self->_dataCategory = 5;
  if (v10)
  {
    requestIssuedForMipmapGeneration = 0;
  }

  else
  {
    requestIssuedForMipmapGeneration = self->_requestIssuedForMipmapGeneration;
  }

  if (requestIssuedForMipmapGeneration)
  {
    if (!a4)
    {
      goto LABEL_32;
    }

    *a4 = _GLKTextureErrorWithCodeAndErrorString(13, @"Cannot generate mipmaps for compressed PVR file");
  }

  if (!self->_requestIssuedToReorientToGL)
  {
    v13 = !requestIssuedForMipmapGeneration;
    goto LABEL_33;
  }

  if (!a4)
  {
LABEL_32:
    v13 = 0;
    goto LABEL_33;
  }

  v12 = _GLKTextureErrorWithCodeAndErrorString(15, @"Cannot reorient compressed PVR file");
  v13 = 0;
  *a4 = v12;
LABEL_33:
  if (self->_requestIssuedForAlphaPremultiplication)
  {
    if (!a4)
    {
      goto LABEL_17;
    }

    v14 = @"Cannot premultiply compressed PVR file";
    v15 = 16;
    goto LABEL_16;
  }

  if (!v13)
  {
    goto LABEL_17;
  }

LABEL_19:
  v17 = v8[10] != 0;
  v18 = v8[2];
  self->_width = v18;
  result = 1;
  v19 = HIWORD(v9) & 1;
  if (v19)
  {
    v20 = 4;
  }

  else
  {
    v20 = 1;
  }

  self->_height = v8[1];
  self->_orientation = v20;
  v21 = v8[6];
  self->_bitsPerPixel = v21;
  self->_rowBytes = (v21 * v18) >> 3;
  self->_unpackAlignment = 1;
  v22 = v8[12];
  if (v22 <= 1)
  {
    v22 = 1;
  }

  self->_isCubeMap = (v9 & 0x1000) != 0;
  self->_isMipmapped |= BYTE1(v9) & 1;
  self->_isVerticalFlipped = v19;
  self->_hasAlpha = v17;
  self->_nPrimarySurfaces = v22;
  self->_nSurfaces = v8[3] + 1;
  if ((v9 >> 12))
  {
    v23 = 34067;
  }

  else
  {
    v23 = 3553;
  }

  if ((v9 >> 12))
  {
    v24 = 34069;
  }

  else
  {
    v24 = 3553;
  }

  self->_bindTarget = v23;
  self->_textureTarget = v24;
  self->_primarySurfaceLength = v8[5];
  return result;
}

- (void)alignmentFix:(unsigned int)a3 data:(const void *)a4
{
  v5 = self->_width * a3;
  v6 = self->_rowBytes - v5;
  if (!v6)
  {
    result = 0;
    v8 = 1;
LABEL_7:
    self->_unpackAlignment = v8;
    return result;
  }

  if (v6 <= 1)
  {
    result = 0;
    v8 = 2;
    goto LABEL_7;
  }

  if (v6 <= 3)
  {
    result = 0;
    v8 = 4;
    goto LABEL_7;
  }

  self->_unpackAlignment = 8;
  if (v6 < 8)
  {
    return 0;
  }

  v10 = (v5 + 7) & 0xFFFFFFF8;
  memptr = 0;
  if (malloc_type_posix_memalign(&memptr, 8uLL, self->_height * v10, 0x100004077774924uLL))
  {
    return 0;
  }

  if (self->_height)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      memcpy(memptr + v11, a4 + (self->_rowBytes * v12++), v10);
      v11 += v10;
    }

    while (v12 < self->_height);
  }

  self->_rowBytes = v10;
  return memptr;
}

- (BOOL)decodeCGImageDataProvider:(CGImage *)a3
{
  BitmapInfo = CGImageGetBitmapInfo(a3);
  ColorSpace = CGImageGetColorSpace(a3);
  Model = CGColorSpaceGetModel(ColorSpace);
  BitsPerPixel = CGImageGetBitsPerPixel(a3);
  self->_bitsPerPixel = BitsPerPixel;
  if (BitsPerPixel != 32 && BitsPerPixel != 8 || ColorSpace && Model > kCGColorSpaceModelRGB)
  {
    return 0;
  }

  self->_rowBytes = CGImageGetBytesPerRow(a3);
  self->_width = CGImageGetWidth(a3);
  self->_height = CGImageGetHeight(a3);
  self->_type = 5121;
  v9 = self->_bitsPerPixel;
  if (v9 == 8)
  {
    if (ColorSpace)
    {
      v14 = (BitmapInfo & 0x1F) == 7;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      v13 = 6406;
    }

    else
    {
      v13 = 6409;
    }

    if (v14)
    {
      v12 = 23;
    }

    else
    {
      v12 = 20;
    }

    self->_internalFormat = v13;
    v11 = 1;
  }

  else
  {
    if (v9 != 32)
    {
      return 0;
    }

    v10 = 0;
    self->_internalFormat = 6408;
    if ((BitmapInfo & 0x1Fu) > 6 || ((1 << (BitmapInfo & 0x1F)) & 0x54) == 0)
    {
      return v10;
    }

    v11 = 4;
    v12 = 2;
    v13 = 32993;
  }

  self->_format = v13;
  self->_texelFormat = v12;
  self->_nComponents = v11;
  DataProvider = CGImageGetDataProvider(a3);
  v16 = CGDataProviderCopyData(DataProvider);
  self->_cfData = v16;
  if (!v16)
  {
    return 0;
  }

  BytePtr = CFDataGetBytePtr(v16);
  if (BytePtr)
  {
    v18 = BytePtr;
    v19 = [(GLKTexture *)self alignmentFix:v11 data:BytePtr];
    if (v19)
    {
      v20 = v19;
LABEL_31:
      CFRelease(self->_cfData);
      self->_cfData = 0;
      v10 = 1;
      self->_imageData = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v20 length:self->_rowBytes * self->_height freeWhenDone:1];
      return v10;
    }

    if ([(GLKTexture *)self shouldApplyReorientToGL]|| [(GLKTexture *)self shouldApplyPremultiplication])
    {
      v22 = malloc_type_malloc(self->_rowBytes * self->_height, 0x100004077774924uLL);
      if (v22)
      {
        v20 = v22;
        memcpy(v22, v18, self->_rowBytes * self->_height);
        goto LABEL_31;
      }
    }

    else
    {
      self->_imageData = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v18 length:self->_rowBytes * self->_height freeWhenDone:0];
    }

    return 1;
  }

  CFRelease(self->_cfData);
  v10 = 0;
  self->_cfData = 0;
  return v10;
}

- (BOOL)decodeCGImageImageProvider:(CGImage *)a3 CGImageProvider:(CGImageProvider *)a4
{
  ColorSpace = CGImageProviderGetColorSpace();
  Model = CGColorSpaceGetModel(ColorSpace);
  if (Model <= 1)
  {
    v7 = Model;
    CGImageProviderGetSize();
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v9 = Mutable;
      CFDictionarySetValue(Mutable, @"kCGImageBlockIOSurfaceOptimizedRequest", *MEMORY[0x277CBED28]);
      CFDictionarySetValue(v9, @"kCGImageBlockFormatRequest", @"kCGImageBlockFormatBGRx8");
      v10 = CGImageProviderCopyImageBlockSetWithOptions();
      self->_blockSet = v10;
      if (v10)
      {
        Count = CGImageBlockSetGetCount();
        blockSet = self->_blockSet;
        if (Count == 1)
        {
          CGImageBlockSetGetImageBlock();
          CGImageBlockGetRect();
          self->_width = v13;
          self->_height = v14;
          self->_rowBytes = CGImageBlockGetBytesPerRow();
          Data = CGImageBlockGetData();
          v16 = self->_blockSet;
          ComponentType = CGImageBlockSetGetComponentType();
          v18 = self->_blockSet;
          PixelSize = CGImageBlockSetGetPixelSize();
          if (PixelSize == 3)
          {
            v20 = 4;
          }

          else
          {
            v20 = PixelSize;
          }

          if ([(GLKTexture *)self determineCGImageBlockFormatWithComponentType:ComponentType andPixelSize:v20 andColorModel:v7])
          {
            v21 = [(GLKTexture *)self alignmentFix:v20 data:Data];
            if (v21)
            {
              v22 = v21;
              v23 = self->_blockSet;
              CGImageBlockSetRelease();
              self->_blockSet = 0;
              v24 = 1;
              self->_imageData = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v22 length:self->_rowBytes * self->_height freeWhenDone:1];
            }

            else
            {
              self->_imageData = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:Data length:self->_rowBytes * self->_height freeWhenDone:0];
              v24 = 1;
            }

            goto LABEL_15;
          }

          v25 = self->_blockSet;
        }

        CGImageBlockSetRelease();
        v24 = 0;
        self->_blockSet = 0;
      }

      else
      {
        v24 = 0;
      }

LABEL_15:
      CFRelease(v9);
      return v24;
    }
  }

  return 0;
}

- (BOOL)decodeCGImage:(CGImage *)a3
{
  ImageProvider = CGImageGetImageProvider();
  if (ImageProvider)
  {

    return [(GLKTexture *)self decodeCGImageImageProvider:a3 CGImageProvider:ImageProvider];
  }

  else
  {

    return [(GLKTexture *)self decodeCGImageDataProvider:a3];
  }
}

- (BOOL)loadWithData:(id)a3 options:(id)a4 error:(id *)a5
{
  self->_imageData = 0;
  if (self->_blockSet)
  {
    CGImageBlockSetRelease();
    self->_blockSet = 0;
  }

  self->_dataCategory = 1;
  v8 = CGImageSourceCreateWithData(a3, 0);
  if (!v8)
  {
    goto LABEL_24;
  }

  v9 = v8;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    goto LABEL_23;
  }

  v11 = Mutable;
  CFDictionarySetValue(Mutable, @"kCGImageBlockIOSurfaceOptimizedRequest", *MEMORY[0x277CBED28]);
  CFDictionarySetValue(v11, @"kCGImageBlockFormatRequest", @"kCGImageBlockFormatBGRx8");
  v12 = CGImageSourceCopyPropertiesAtIndex(v9, 0, v11);
  if (!v12)
  {
    goto LABEL_23;
  }

  v13 = v12;
  v14 = *MEMORY[0x277CD3410];
  if (CFDictionaryContainsKey(v12, *MEMORY[0x277CD3410]))
  {
    Value = CFDictionaryGetValue(v13, v14);
    CFNumberGetValue(Value, kCFNumberIntType, &self->_orientation);
    orientation = self->_orientation;
    if (orientation != 1 && orientation != 4)
    {
      self->_orientation = 0;
    }
  }

  else
  {
    self->_orientation = 1;
  }

  v17 = *MEMORY[0x277CD3368];
  if (CFDictionaryContainsKey(v13, *MEMORY[0x277CD3368]))
  {
    v18 = CFDictionaryGetValue(v13, v17);
    self->_hasAlpha = CFBooleanGetValue(v18) != 0;
  }

  ImageAtIndex = CGImageSourceCreateImageAtIndex(v9, 0, v11);
  if (!ImageAtIndex)
  {
    CFRelease(v11);
    CFRelease(v13);
LABEL_23:
    CFRelease(v9);
LABEL_24:
    if (!a5)
    {
      return 0;
    }

    v25 = _GLKTextureErrorWithCodeAndErrorString(12, @"Image decoding failed");
    result = 0;
    *a5 = v25;
    return result;
  }

  v20 = ImageAtIndex;
  v21 = [(GLKTexture *)self decodeCGImage:ImageAtIndex];
  CGImageRelease(v20);
  CFRelease(v11);
  CFRelease(v13);
  CFRelease(v9);
  if (!v21)
  {
    goto LABEL_24;
  }

  *&self->_nPrimarySurfaces = 0x100000001;
  result = 1;
  self->_numMipMapLevels = 1;
  if (self->_isCubeMap)
  {
    v23 = 34067;
  }

  else
  {
    v23 = 3553;
  }

  if (self->_isCubeMap)
  {
    v24 = 34069;
  }

  else
  {
    v24 = 3553;
  }

  self->_bindTarget = v23;
  self->_textureTarget = v24;
  return result;
}

- (BOOL)loadCGImage:(CGImage *)a3 options:(id)a4 error:(id *)a5
{
  if (!a3)
  {
    if (a5)
    {
      v11 = @"Invalid CGImageRef";
LABEL_16:
      v8 = 0;
      *a5 = _GLKTextureErrorWithCodeAndErrorString(12, v11);
      return v8;
    }

    return 0;
  }

  self->_imageData = 0;
  if (self->_blockSet)
  {
    CGImageBlockSetRelease();
    self->_blockSet = 0;
  }

  v8 = 1;
  self->_dataCategory = 1;
  self->_orientation = 1;
  self->_hasAlpha = CGImageGetAlphaInfo(a3) - 1 < 4;
  if (![(GLKTexture *)self decodeCGImage:a3])
  {
    if (a5)
    {
      v11 = @"Image decoding failed";
      goto LABEL_16;
    }

    return 0;
  }

  *&self->_nPrimarySurfaces = 0x100000001;
  self->_numMipMapLevels = 1;
  if (self->_isCubeMap)
  {
    v9 = 34067;
  }

  else
  {
    v9 = 3553;
  }

  if (self->_isCubeMap)
  {
    v10 = 34069;
  }

  else
  {
    v10 = 3553;
  }

  self->_bindTarget = v9;
  self->_textureTarget = v10;
  return v8;
}

- (BOOL)_uploadToGLTexture:(unsigned int)a3 data:(id)a4 width:(int)a5 height:(int)a6 dataCategory:(int)a7 cubeMapIndex:(int)a8 mipMapIndex:(int)a9 error:(id *)a10
{
  glBindTexture(self->_bindTarget, a3);
  label = self->_label;
  if (label)
  {
    glLabelObjectEXT(0x1702u, a3, 0, [(NSString *)label cStringUsingEncoding:1]);
  }

  glTexParameteri(self->_bindTarget, 0x2802u, 33071);
  glTexParameteri(self->_bindTarget, 0x2803u, 33071);
  glTexParameteri(self->_bindTarget, 0x2800u, 9729);
  if (self->_isMipmapped)
  {
    v18 = 9987;
  }

  else
  {
    v18 = 9729;
  }

  glTexParameteri(self->_bindTarget, 0x2801u, v18);
  if (a7 == 5)
  {
    glCompressedTexImage2D(self->_textureTarget + a8, a9, self->_internalFormat, a5, a6, 0, [a4 length], objc_msgSend(a4, "bytes"));
  }

  else
  {
    params = 0;
    glGetIntegerv(0xCF5u, &params);
    glPixelStorei(0xCF5u, self->_unpackAlignment);
    v19 = a5;
    v20 = a6;
    v21 = a7;
    textureTarget = self->_textureTarget;
    internalFormat = self->_internalFormat;
    type = self->_type;
    format = self->_format;
    pixels = [a4 bytes];
    v25 = textureTarget + a8;
    a7 = v21;
    a6 = v20;
    a5 = v19;
    glTexImage2D(v25, a9, internalFormat, v19, a6, 0, format, type, pixels);
    glPixelStorei(0xCF5u, params);
  }

  Error = glGetError();
  v27 = Error;
  if (Error)
  {
    if (Error == 1281)
    {
      v35 = 0;
      v36 = 0;
      glGetIntegerv(0xD33u, &v36);
      glGetIntegerv(0x851Cu, &v35);
      if (self->_isCubeMap || v36 >= a5)
      {
        if (self->_isCubeMap || v36 >= a6)
        {
          if (a5 == a6 || !self->_isCubeMap)
          {
            if (self->_isCubeMap && v35 < a5)
            {
              v28 = @"Cube Map width / height are greater than GL_MAX_CUBE_MAP_TEXTURE_SIZE";
            }

            else
            {
              v28 = 0;
            }

            if (a7 == 5 && (!self->_isCubeMap || v35 >= a5))
            {
              if ([a4 length] == (a6 * a5 * self->_bitsPerPixel) >> 3)
              {
                v28 = 0;
              }

              else
              {
                v28 = @"Compressed texture image size is not consistent with the format, dimensions, and contents of the specified compressed image data.";
              }
            }
          }

          else
          {
            v28 = @"Cube Map width and height are not equal.";
          }
        }

        else
        {
          v28 = @"Texture height is greater than GL_MAX_TEXTURE_SIZE";
        }
      }

      else
      {
        v28 = @"Texture width is greater than GL_MAX_TEXTURE_SIZE";
      }
    }

    else
    {
      v28 = @"OpenGLES Error.";
    }

    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", v27), @"GLKTextureLoaderGLErrorKey", v28, @"GLKTextureLoaderErrorKey", 0}];
    if (a10)
    {
      v30 = v29;
      if (a7 == 5)
      {
        v31 = 7;
      }

      else
      {
        v31 = 8;
      }

      *a10 = _GLKTextureErrorWithCodeAndUserInfo(v31, v30);
    }
  }

  return v27 == 0;
}

- (BOOL)determineCGImageBlockFormatWithComponentType:(int)a3 andPixelSize:(unint64_t)a4 andColorModel:(int)a5
{
  if (a3 != 1)
  {
    return 0;
  }

  self->_type = 5121;
  if (a4 == 1)
  {
    if (self->_requestIssuedToInterpretGrayAsAlpha)
    {
      v5 = 6406;
    }

    else
    {
      v5 = 6409;
    }

    if (self->_requestIssuedToInterpretGrayAsAlpha)
    {
      v9 = 23;
    }

    else
    {
      v9 = 20;
    }

    v7 = 8;
    v8 = 1;
    v6 = v5;
    goto LABEL_23;
  }

  if (a4 != 2)
  {
    if (a4 == 4)
    {
      if (self->_requestIssuedForSRGB)
      {
        v5 = 35906;
      }

      else
      {
        v5 = 6408;
      }

      if (self->_requestIssuedForSRGB)
      {
        v6 = 35906;
      }

      else
      {
        v6 = 32993;
      }

      v7 = 32;
      v8 = 4;
      v9 = 2;
      goto LABEL_23;
    }

    return 0;
  }

  v10 = 0;
  if (!a5 && self->_hasAlpha)
  {
    v7 = 16;
    v8 = 2;
    v9 = 14;
    v5 = 6410;
    v6 = 6410;
LABEL_23:
    self->_internalFormat = v5;
    self->_format = v6;
    self->_texelFormat = v9;
    self->_nComponents = v8;
    v10 = 1;
    self->_bitsPerPixel = v7;
  }

  return v10;
}

- (BOOL)determinePVRFormat:(unsigned int)a3
{
  if ((a3 & 0xFFFFFFF7) == 0x12)
  {
    if (self->_requestIssuedForSRGB)
    {
      v3 = 35906;
    }

    else
    {
      v3 = 6408;
    }

    self->_internalFormat = v3;
    v4 = 4;
    v5 = 1;
LABEL_6:
    v6 = 5121;
    v7 = 64;
    v8 = 60;
LABEL_37:
    *(&self->super.isa + v8) = v3;
    *(&self->super.isa + v7) = v6;
    self->_texelFormat = v5;
    v9 = 1;
    self->_nComponents = v4;
    return v9;
  }

  v9 = 0;
  if (a3 > 22)
  {
    if (a3 <= 26)
    {
      if (a3 != 23)
      {
        if (a3 == 24)
        {
          v4 = 4;
          v5 = 26;
          v3 = 35843;
          v7 = 60;
          v8 = 56;
          v6 = 35843;
          goto LABEL_37;
        }

        if (a3 == 25)
        {
          v4 = 4;
          v5 = 27;
          v3 = 35842;
          v7 = 60;
          v8 = 56;
          v6 = 35842;
          goto LABEL_37;
        }

        return v9;
      }

      v3 = 6410;
      v4 = 2;
      self->_format = 6410;
      v5 = 14;
      goto LABEL_35;
    }

    if (a3 != 27)
    {
      if (a3 == 50)
      {
        v3 = 6408;
        v4 = 4;
        self->_format = 6408;
        v5 = 6;
        v6 = 36193;
      }

      else
      {
        if (a3 != 53)
        {
          return v9;
        }

        v3 = 6408;
        v4 = 4;
        self->_format = 6408;
        v5 = 5;
        v6 = 5126;
      }

      goto LABEL_36;
    }

    v3 = 6406;
    v4 = 1;
    self->_format = 6406;
    v5 = 23;
LABEL_35:
    v6 = 5121;
    goto LABEL_36;
  }

  if (a3 <= 18)
  {
    if (a3 == 16)
    {
      v3 = 6408;
      v5 = 4;
      self->_format = 6408;
      v6 = 32819;
      v7 = 64;
      v8 = 56;
      v4 = 4;
      goto LABEL_37;
    }

    if (a3 != 17)
    {
      return v9;
    }

    v3 = 6408;
    v4 = 4;
    self->_format = 6408;
    v5 = 3;
    v6 = 32820;
LABEL_36:
    v7 = 64;
    v8 = 56;
    goto LABEL_37;
  }

  switch(a3)
  {
    case 0x13u:
      v3 = 6407;
      v4 = 3;
      self->_format = 6407;
      v5 = 10;
      v6 = 33635;
      goto LABEL_36;
    case 0x15u:
      if (self->_requestIssuedForSRGB)
      {
        v3 = 35904;
      }

      else
      {
        v3 = 6407;
      }

      self->_internalFormat = v3;
      v4 = 3;
      v5 = 7;
      goto LABEL_6;
    case 0x16u:
      v3 = 6409;
      v4 = 1;
      self->_format = 6409;
      v5 = 20;
      goto LABEL_35;
  }

  return v9;
}

- (BOOL)reorientToGL:(void *)a3 source:(void *)a4 withWidth:(unsigned int)a5 withHeight:(unsigned int)a6 withRowBytes:(unsigned int)a7 error:(id *)a8
{
  src.data = a4;
  src.height = a6;
  src.width = a5;
  src.rowBytes = a7;
  dest.data = a3;
  dest.height = a6;
  dest.width = a5;
  dest.rowBytes = a7;
  orientation = self->_orientation;
  if (!orientation)
  {
    if (a8)
    {
      v16 = @"Unsupported image orientation";
      v17 = 14;
LABEL_21:
      v18 = _GLKTextureErrorWithCodeAndErrorString(v17, v16);
      v13 = 0;
      *a8 = v18;
      return v13;
    }

    return 0;
  }

  if (orientation != 1)
  {
    return 1;
  }

  bitsPerPixel = self->_bitsPerPixel;
  HIDWORD(v12) = bitsPerPixel - 8;
  LODWORD(v12) = bitsPerPixel - 8;
  v11 = v12 >> 3;
  v13 = 1;
  if (v11 <= 0xF)
  {
    if (((1 << v11) & 0x8A6) != 0)
    {
      if (bitsPerPixel >= 0x40)
      {
        v14 = 5;
      }

      else
      {
        v14 = 3;
      }

      dest.width = self->_width * (bitsPerPixel >> v14);
      src.width = dest.width;
      if (bitsPerPixel > 0x3F)
      {
        v15 = vImageVerticalReflect_PlanarF(&src, &dest, 0);
        if (!v15)
        {
          return 1;
        }

LABEL_19:
        if (a8)
        {
          v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Image reorientation failed, vImageError: %ld", v15];
          v17 = 15;
          goto LABEL_21;
        }

        return 0;
      }

      goto LABEL_18;
    }

    if (v11 == 3)
    {
      v15 = vImageVerticalReflect_ARGB8888(&src, &dest, 0);
      if (v15)
      {
        goto LABEL_19;
      }

      return 1;
    }

    if (v11 == 15)
    {
      v15 = vImageVerticalReflect_ARGBFFFF(&src, &dest, 0);
      if (!v15)
      {
        return 1;
      }

      goto LABEL_19;
    }
  }

  if (!v11)
  {
LABEL_18:
    v15 = vImageVerticalReflect_Planar8(&src, &dest, 0);
    if (v15)
    {
      goto LABEL_19;
    }

    return 1;
  }

  return v13;
}

- (BOOL)premultiplyWithAlpha:(void *)a3 source:(void *)a4 withWidth:(unsigned int)a5 withHeight:(unsigned int)a6 withRowBytes:(unsigned int)a7 error:(id *)a8
{
  v9 = a4;
  v10 = a3;
  src.data = a4;
  src.height = a6;
  src.width = a5;
  src.rowBytes = a7;
  dest.data = a3;
  dest.height = a6;
  dest.width = a5;
  dest.rowBytes = a7;
  texelFormat = self->_texelFormat;
  if (texelFormat > 4)
  {
    if (texelFormat == 5)
    {
      v13 = vImagePremultiplyData_RGBAFFFF(&src, &dest, 0);
      if (v13)
      {
        goto LABEL_18;
      }

LABEL_21:
      result = 1;
      goto LABEL_22;
    }

    if (texelFormat == 14)
    {
      [(GLKTexture *)self rowBytes];
      [(GLKTexture *)self height];
      v14 = 0;
      do
      {
        v15 = &v10[v14];
        v16 = HIBYTE(v9[v14]);
        *v15 = LOBYTE(v9[v14]) * v16 / 0xFF;
        *(v15 + 1) = v16;
        v17 = [(GLKTexture *)self rowBytes];
        ++v14;
      }

      while ((v14 * 2) <= [(GLKTexture *)self height]* v17);
      goto LABEL_21;
    }

LABEL_20:
    NSLog(&cfstr_CannotApplyPre.isa, a2);
    goto LABEL_21;
  }

  if ((texelFormat - 1) >= 2)
  {
    if (texelFormat == 3)
    {
      [(GLKTexture *)self rowBytes];
      [(GLKTexture *)self height];
      v18 = 0;
      do
      {
        if (*v9)
        {
          v19 = *v10;
        }

        else
        {
          v19 = 0;
        }

        *v10++ = v19;
        ++v9;
        v18 += 4;
        v20 = [(GLKTexture *)self rowBytes];
      }

      while (v18 <= [(GLKTexture *)self height]* v20);
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v13 = vImagePremultiplyData_RGBA8888(&src, &dest, 0);
  if (!v13)
  {
    goto LABEL_21;
  }

LABEL_18:
  if (a8)
  {
    v21 = _GLKTextureErrorWithCodeAndErrorString(16, [MEMORY[0x277CCACA8] stringWithFormat:@"Alpha premultiplication failed, vImageError: %ld", v13]);
    result = 0;
    *a8 = v21;
  }

  else
  {
    result = 0;
  }

LABEL_22:
  self->_hasPremultipliedAlpha = result;
  return result;
}

@end