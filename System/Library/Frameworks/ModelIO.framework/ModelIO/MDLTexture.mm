@interface MDLTexture
+ (MDLTexture)textureCubeWithImagesNamed:(NSArray *)names;
+ (MDLTexture)textureCubeWithImagesNamed:(NSArray *)names bundle:(NSBundle *)bundleOrNil;
+ (MDLTexture)textureNamed:(NSString *)name;
+ (MDLTexture)textureNamed:(NSString *)name assetResolver:(id)resolver;
+ (MDLTexture)textureNamed:(NSString *)name bundle:(NSBundle *)bundleOrNil;
+ (MDLTexture)textureWithData:(id)a3 offset:(unint64_t)a4 size:(unint64_t)a5;
+ (MDLTexture)textureWithURL:(id)a3;
+ (MDLTexture)textureWithURL:(id)a3 offset:(unint64_t)a4 size:(unint64_t)a5;
+ (id)_textureCubeWithSingleImageNamed:(id)a3 bundle:(id)a4;
+ (id)textureFromResource:(id)a3;
+ (id)textureResourceNamed:(id)a3 assetResolver:(id)a4;
- (BOOL)hasAlphaValues;
- (BOOL)writeToURL:(NSURL *)URL level:(NSUInteger)level;
- (BOOL)writeToURL:(NSURL *)nsurl type:(CFStringRef)type level:(NSUInteger)level;
- (CGImageRef)imageFromTextureAtLevel:(NSUInteger)level;
- (MDLTexture)init;
- (MDLTexture)initWithData:(NSData *)pixelData topLeftOrigin:(BOOL)topLeftOrigin name:(NSString *)name dimensions:(vector_int2)dimensions rowStride:(NSInteger)rowStride channelCount:(NSUInteger)channelCount channelEncoding:(MDLTextureChannelEncoding)channelEncoding isCube:(BOOL)isCube;
- (NSUInteger)mipLevelCount;
- (id)allocateDataAtLevel:(int64_t)a3;
- (id)generateDataAtLevel:(int64_t)a3 selector:(SEL)a4;
- (void)clearTexelData;
- (void)loadDataWithBottomLeftOriginAtMipLevel:(int64_t)a3 create:(BOOL)a4 selector:(SEL)a5;
- (void)loadDataWithTopLeftOriginAtMipLevel:(int64_t)a3 create:(BOOL)a4 selector:(SEL)a5;
- (void)setTexelDataWithBottomLeftOrigin:(id)a3 atMipLevel:(int64_t)a4;
- (void)setTexelDataWithTopLeftOrigin:(id)a3 atMipLevel:(int64_t)a4;
@end

@implementation MDLTexture

- (void)clearTexelData
{
  v3 = 14;
  do
  {
    v4 = self->_topLeftOriginData[0];
    self->_topLeftOriginData[0] = 0;

    self->_textureData.topLeftBytesForMip[0] = 0;
    v5 = self->_bottomLeftOriginData[0];
    self->_bottomLeftOriginData[0] = 0;

    self->_textureData.bottomLeftBytesForMip[0] = 0;
    self = (self + 8);
    --v3;
  }

  while (v3);
}

- (BOOL)hasAlphaValues
{
  if (self->_textureData.channelCount >= 4)
  {
    if (*self->_anon_118)
    {
      v4 = HIDWORD(*self->_anon_118) == 0;
    }

    else
    {
      v4 = 1;
    }

    if (!v4 && *&self->_anon_118[8] && ((v5 = self->_topLeftOriginData[0]) != 0 || self->_bottomLeftOriginData[0]))
    {
      if (self->_alphaValuesSet)
      {
        return self->_hasAlphaValues;
      }

      else
      {
        v7 = v5;
        v10 = objc_msgSend_bytes(v7, v8, v9);
        if (!v10)
        {
          v11 = self->_bottomLeftOriginData[0];
          v10 = objc_msgSend_bytes(v11, v12, v13);
        }

        v14 = *self->_anon_118;
        if (SHIDWORD(v14) < 1)
        {
          v2 = 0;
        }

        else
        {
          v15 = 0;
          do
          {
            if (v14 < 1)
            {
              v2 = 0;
            }

            else
            {
              v16 = 1;
              v17 = v10;
              do
              {
                v18 = *v17++;
                v19 = HIBYTE(v18);
                v2 = HIBYTE(v18) != 255;
                if (v16 >= v14)
                {
                  break;
                }

                ++v16;
              }

              while (v19 >= 0xFF);
            }

            if (++v15 >= HIDWORD(v14))
            {
              break;
            }

            v10 += *&self->_anon_118[8];
          }

          while (!v2);
        }

        self->_hasAlphaValues = v2;
        self->_alphaValuesSet = 1;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 0;
  }

  return v2;
}

- (id)allocateDataAtLevel:(int64_t)a3
{
  v3.i32[0] = 0;
  v4.i32[1] = HIDWORD(*self->_anon_118);
  v4.i32[0] = 1;
  v5 = vbsl_s8(vdup_lane_s32(vcgt_s32(v3, *self->_anon_118), 0), v4, *self->_anon_118);
  v6 = vbsl_s8(vdup_lane_s32(vcgt_s32(v3, vdup_lane_s32(v5, 1)), 0), (v5.u32[0] | 0x100000000), v5);
  if (v6.i32[0] >> a3 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6.i32[0] >> a3;
  }

  if (v6.i32[1] >> a3 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6.i32[1] >> a3;
  }

  channelCount = self->_textureData.channelCount;
  v10 = sub_239F6B868(self->_channelEncoding) / 8;
  v11 = objc_alloc(MEMORY[0x277CBEB28]);
  v13 = objc_msgSend_initWithLength_(v11, v12, v10 * channelCount * v8 * v7);

  return v13;
}

- (id)generateDataAtLevel:(int64_t)a3 selector:(SEL)a4
{
  v4 = a3;
  v6 = objc_msgSend_allocateDataAtLevel_(self, a2, a3, a4);
  channelCount = self->_textureData.channelCount;
  v10 = sub_239F6B868(self->_channelEncoding) & 0xFFFFFFF8;
  if (channelCount == 4 && v10 == 8)
  {
    v11.i32[0] = 0;
    v13 = 1;
    v14.i32[1] = HIDWORD(*self->_anon_118);
    v14.i32[0] = 1;
    v15 = vbsl_s8(vdup_lane_s32(vcgt_s32(v11, *self->_anon_118), 0), v14, *self->_anon_118);
    v16 = vbsl_s8(vdup_lane_s32(vcgt_s32(v11, vdup_lane_s32(v15, 1)), 0), (v15.u32[0] | 0x100000000), v15);
    if (v16.i32[0] >> v4 <= 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = v16.i32[0] >> v4;
    }

    v18 = v16.i32[1] >> v4;
    v19 = &self->_topLeftOriginData[v4 + 13];
    while (1)
    {
      v20 = __OFSUB__(v4--, 1);
      if (v4 < 0 != v20)
      {
        break;
      }

      v13 *= 2;
      v21 = *(v19 - 14);
      if (v21)
      {
        v32 = v21;
        v35 = objc_msgSend_bytes(v32, v33, v34);
        v36 = v6;
        v39 = objc_msgSend_bytes(v36, v37, v38);
        v40 = 0;
        if (v18 <= 1)
        {
          v41 = 1;
        }

        else
        {
          v41 = v18;
        }

        do
        {
          v42 = v35;
          v43 = v17;
          do
          {
            *v39++ = *v42;
            v42 += v13;
            --v43;
          }

          while (v43);
          ++v40;
          v35 += 4 * v13 * v17 * v13;
        }

        while (v40 != v41);
        break;
      }

      if (*v19--)
      {
        v23 = objc_msgSend_bytes(0, v8, v9);
        v24 = v6;
        v27 = objc_msgSend_bytes(v24, v25, v26);
        v28 = 0;
        if (v18 <= 1)
        {
          v29 = 1;
        }

        else
        {
          v29 = v18;
        }

        do
        {
          v30 = v23;
          v31 = v17;
          do
          {
            *v27++ = *v30;
            v30 += v13;
            --v31;
          }

          while (v31);
          ++v28;
          v23 += 4 * v13 * v17 * v13;
        }

        while (v28 != v29);
        break;
      }
    }
  }

  return v6;
}

- (MDLTexture)init
{
  v9.receiver = self;
  v9.super_class = MDLTexture;
  v2 = [(MDLTexture *)&v9 init];
  v5 = v2;
  if (v2)
  {
    objc_msgSend_clearTexelData(v2, v3, v4);
    name = v5->_name;
    v5->_name = &stru_284D18478;

    v7 = v5;
  }

  return v5;
}

- (MDLTexture)initWithData:(NSData *)pixelData topLeftOrigin:(BOOL)topLeftOrigin name:(NSString *)name dimensions:(vector_int2)dimensions rowStride:(NSInteger)rowStride channelCount:(NSUInteger)channelCount channelEncoding:(MDLTextureChannelEncoding)channelEncoding isCube:(BOOL)isCube
{
  v11 = channelCount;
  v15 = topLeftOrigin;
  v17 = pixelData;
  v18 = name;
  v40.receiver = self;
  v40.super_class = MDLTexture;
  v19 = [(MDLTexture *)&v40 init];
  v22 = v19;
  if (v19)
  {
    objc_msgSend_clearTexelData(v19, v20, v21);
    if (v18)
    {
      v24 = objc_msgSend_stringWithString_(MEMORY[0x277CCACA8], v23, v18);
    }

    else
    {
      v24 = &stru_284D18478;
    }

    v25 = v22->_name;
    v22->_name = &v24->isa;

    v26 = v17;
    v27 = v26;
    if (v15)
    {
      v28 = v22->_topLeftOriginData[0];
      v22->_topLeftOriginData[0] = v26;

      v29 = v27;
      v32 = objc_msgSend_bytes(v29, v30, v31);
      v33 = 16;
    }

    else
    {
      v34 = v22->_bottomLeftOriginData[0];
      v22->_bottomLeftOriginData[0] = v26;

      v35 = v27;
      v32 = objc_msgSend_bytes(v35, v36, v37);
      v33 = 144;
    }

    *(&v22->super.isa + v33) = v32;
    *v22->_anon_118 = dimensions;
    *&v22->_anon_118[8] = rowStride;
    v22->_textureData.channelCount = v11;
    v22->_channelEncoding = channelEncoding;
    v22->_anon_118[16] = isCube;
    v38 = v22;
  }

  return v22;
}

- (NSUInteger)mipLevelCount
{
  result = 0;
  bottomLeftOriginData = self->_bottomLeftOriginData;
  do
  {
    if (!*(bottomLeftOriginData - 14) && !*bottomLeftOriginData)
    {
      break;
    }

    ++result;
    ++bottomLeftOriginData;
  }

  while (result != 14);
  return result;
}

+ (id)_textureCubeWithSingleImageNamed:(id)a3 bundle:(id)a4
{
  v6 = a3;
  v56 = a4;
  v57 = v6;
  v8 = sub_239F6C144(v6, v56);
  if (v8 || (objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v7, v6), (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = CGImageSourceCreateWithURL(v8, 0);
    v10 = v9;
    if (v9)
    {
      ImageAtIndex = CGImageSourceCreateImageAtIndex(v9, 0, 0);
      if (ImageAtIndex)
      {

        Width = CGImageGetWidth(ImageAtIndex);
        Height = CGImageGetHeight(ImageAtIndex);
        cf = ImageAtIndex;
        if (Height <= Width)
        {
          v36 = [a1 alloc];
          isCube = objc_msgSend_initWithData_topLeftOrigin_name_dimensions_rowStride_channelCount_channelEncoding_isCube_(v36, v37, 0, 1, v6, 4 * Height, 4, 1, COERCE_DOUBLE(__PAIR64__(Width, Height)), 1);
          v38 = 0;
          if (Height < 0)
          {
            v39 = 1;
          }

          else
          {
            v39 = Height;
          }

          while (CGImageSourceGetCount(v10) > v38)
          {
            if (v38)
            {
              v40 = CGImageSourceCreateImageAtIndex(v10, v38, 0);
            }

            else
            {
              v40 = CFRetain(cf);
            }

            v41 = v40;
            if (v39 >> v38 <= 1)
            {
              v42 = 1;
            }

            else
            {
              v42 = (v39 >> v38);
            }

            DeviceRGB = CGColorSpaceCreateDeviceRGB();
            v45 = objc_msgSend_texelDataWithTopLeftOriginAtMipLevel_create_(isCube, v44, v38, 1);
            v46 = v45;
            v49 = objc_msgSend_bytes(v46, v47, v48);
            v50 = CGBitmapContextCreate(v49, v42, (6 * v42), 8uLL, (4 * v42), DeviceRGB, 1u);
            CFRelease(DeviceRGB);

            CGContextSetBlendMode(v50, kCGBlendModeCopy);
            v51 = 0;
            v52 = 5 * v42;
            v53 = 6;
            do
            {
              v62.origin.x = v51;
              v62.origin.y = 0.0;
              v62.size.width = v42;
              v62.size.height = v42;
              v54 = CGImageCreateWithImageInRect(v41, v62);
              v63.origin.y = v52;
              v63.origin.x = 0.0;
              v63.size.width = v42;
              v63.size.height = v42;
              CGContextDrawImage(v50, v63, v54);
              CGImageRelease(v54);
              v51 += v42;
              v52 -= v42;
              --v53;
            }

            while (v53);
            CGContextRelease(v50);
            CGImageRelease(v41);
            ++v38;
          }
        }

        else
        {
          v14 = [a1 alloc];
          isCube = objc_msgSend_initWithData_topLeftOrigin_name_dimensions_rowStride_channelCount_channelEncoding_isCube_(v14, v15, 0, 1, v6, 4 * Width, 4, 1, 1);
          v16.i32[0] = 0;
          v17 = 0;
          v18.i32[0] = Width;
          v19 = vbsl_s8(vdup_lane_s32(vcgt_s32(v16, v18), 0), __PAIR64__(Height, 1), __PAIR64__(Height, Width));
          v20 = vbsl_s8(vdup_lane_s32(vcgt_s32(v16, vdup_lane_s32(v19, 1)), 0), (v19.u32[0] | 0x100000000), v19);
          v21 = v20.i32[1];
          v22 = v20.i32[0];
          while (CGImageSourceGetCount(v10) > v17)
          {
            if (v17)
            {
              v23 = CGImageSourceCreateImageAtIndex(v10, v17, 0);
            }

            else
            {
              v23 = CFRetain(cf);
            }

            v24 = v23;
            if (v22 >> v17 <= 1)
            {
              v25 = 1;
            }

            else
            {
              v25 = (v22 >> v17);
            }

            if (v21 >> v17 <= 1)
            {
              v26 = 1;
            }

            else
            {
              v26 = (v21 >> v17);
            }

            v27 = CGColorSpaceCreateDeviceRGB();
            v29 = objc_msgSend_texelDataWithTopLeftOriginAtMipLevel_create_(isCube, v28, v17, 1);
            v30 = v29;
            v33 = objc_msgSend_bytes(v30, v31, v32);
            v34 = CGBitmapContextCreate(v33, v25, v26, 8uLL, (4 * v25), v27, 1u);
            CFRelease(v27);

            CGContextSetBlendMode(v34, kCGBlendModeCopy);
            v61.size.width = v25;
            v61.size.height = v26;
            v61.origin.x = 0.0;
            v61.origin.y = 0.0;
            CGContextDrawImage(v34, v61, v24);
            CGContextRelease(v34);
            CFRelease(v24);
            ++v17;
          }
        }

        v35 = isCube;
        CFRelease(cf);
        CFRelease(v10);
        goto LABEL_34;
      }

      CFRelease(v10);
    }
  }

  v35 = 0;
LABEL_34:

  return v35;
}

+ (MDLTexture)textureWithURL:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && (v6 = CGImageSourceCreateWithURL(v4, 0), (v7 = v6) != 0) && (ImageAtIndex = CGImageSourceCreateImageAtIndex(v6, 0, 0), CFRelease(v7), ImageAtIndex))
  {
    Width = CGImageGetWidth(ImageAtIndex);
    Height = CGImageGetHeight(ImageAtIndex);
    v11 = objc_alloc(MEMORY[0x277CBEB28]);
    v12 = 4 * Width;
    v14 = objc_msgSend_initWithLength_(v11, v13, Height * v12);
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v16 = v14;
    v19 = objc_msgSend_bytes(v16, v17, v18);
    v20 = CGBitmapContextCreate(v19, Width, Height, 8uLL, v12, DeviceRGB, 1u);
    CFRelease(DeviceRGB);
    CGContextSetBlendMode(v20, kCGBlendModeCopy);
    v27.size.width = Width;
    v27.size.height = Height;
    v27.origin.x = 0.0;
    v27.origin.y = 0.0;
    CGContextDrawImage(v20, v27, ImageAtIndex);
    CGContextRelease(v20);
    CFRelease(ImageAtIndex);
    v21 = [a1 alloc];
    v25 = 0;
    isCube = objc_msgSend_initWithData_topLeftOrigin_name_dimensions_rowStride_channelCount_channelEncoding_isCube_(v21, v22, v14, 1, 0, v12, 4, 1, COERCE_DOUBLE(__PAIR64__(Height, Width)), v25);
  }

  else
  {
    isCube = 0;
  }

  return isCube;
}

+ (MDLTexture)textureWithURL:(id)a3 offset:(unint64_t)a4 size:(unint64_t)a5
{
  v7 = a3;
  v8 = [MDLMemoryMappedData alloc];
  v10 = objc_msgSend_initWithURL_offset_length_(v8, v9, v7, a4, a5);
  v13 = objc_msgSend_dataNoCopy(v10, v11, v12);
  v14 = v13;
  if (!v13)
  {
    goto LABEL_5;
  }

  v15 = CGImageSourceCreateWithData(v13, 0);
  isCube = v15;
  if (!v15)
  {
    goto LABEL_6;
  }

  ImageAtIndex = CGImageSourceCreateImageAtIndex(v15, 0, 0);
  CFRelease(isCube);
  if (ImageAtIndex)
  {
    Width = CGImageGetWidth(ImageAtIndex);
    Height = CGImageGetHeight(ImageAtIndex);
    v20 = objc_alloc(MEMORY[0x277CBEB28]);
    v21 = 4 * Width;
    v23 = objc_msgSend_initWithLength_(v20, v22, Height * v21);
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v25 = v23;
    v28 = objc_msgSend_bytes(v25, v26, v27);
    v29 = CGBitmapContextCreate(v28, Width, Height, 8uLL, v21, DeviceRGB, 1u);
    CFRelease(DeviceRGB);
    CGContextSetBlendMode(v29, kCGBlendModeCopy);
    v36.size.width = Width;
    v36.size.height = Height;
    v36.origin.x = 0.0;
    v36.origin.y = 0.0;
    CGContextDrawImage(v29, v36, ImageAtIndex);
    CGContextRelease(v29);
    CFRelease(ImageAtIndex);
    v30 = [a1 alloc];
    v33 = 0;
    isCube = objc_msgSend_initWithData_topLeftOrigin_name_dimensions_rowStride_channelCount_channelEncoding_isCube_(v30, v31, v23, 1, 0, v21, 4, 1, COERCE_DOUBLE(__PAIR64__(Height, Width)), v33);
  }

  else
  {
LABEL_5:
    isCube = 0;
  }

LABEL_6:

  return isCube;
}

+ (MDLTexture)textureWithData:(id)a3 offset:(unint64_t)a4 size:(unint64_t)a5
{
  v8 = a3;
  v9 = MEMORY[0x277CBEA90];
  v10 = v8;
  v13 = objc_msgSend_bytes(v10, v11, v12);
  v15 = objc_msgSend_dataWithBytes_length_(v9, v14, v13 + a4, a5);
  v16 = CGImageSourceCreateWithData(v15, 0);
  isCube = v16;
  if (v16)
  {
    ImageAtIndex = CGImageSourceCreateImageAtIndex(v16, 0, 0);
    CFRelease(isCube);
    if (ImageAtIndex)
    {
      v30 = a1;
      Width = CGImageGetWidth(ImageAtIndex);
      Height = CGImageGetHeight(ImageAtIndex);
      v21 = malloc_type_malloc(Height * (4 * Width), 0xD2E2BB23uLL);
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      v23 = CGBitmapContextCreate(v21, Width, Height, 8uLL, 4 * Width, DeviceRGB, 1u);
      CFRelease(DeviceRGB);
      CGContextSetBlendMode(v23, kCGBlendModeCopy);
      v32.size.width = Width;
      v32.size.height = Height;
      v32.origin.x = 0.0;
      v32.origin.y = 0.0;
      CGContextDrawImage(v23, v32, ImageAtIndex);
      CGContextRelease(v23);
      v24 = objc_alloc(MEMORY[0x277CBEB28]);
      v26 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v24, v25, v21, Height * (4 * Width), 1);
      CFRelease(ImageAtIndex);
      v27 = [v30 alloc];
      isCube = objc_msgSend_initWithData_topLeftOrigin_name_dimensions_rowStride_channelCount_channelEncoding_isCube_(v27, v28, v26, 1, 0, 4 * Width, 4, 1, COERCE_DOUBLE(__PAIR64__(Height, Width)), 0);
    }

    else
    {
      isCube = 0;
    }
  }

  return isCube;
}

+ (id)textureResourceNamed:(id)a3 assetResolver:(id)a4
{
  v5 = a3;
  v6 = a4;
  v8 = objc_msgSend_resolveAssetNamed_(v6, v7, v5);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v6;
    v48[0] = 0;
    v48[1] = 0;
    v49 = 0;
    v10 = v5;
    v13 = objc_msgSend_UTF8String(v10, v11, v12);
    sub_239E552A0(&v42, v13);
    pxrInternal__aapl__pxrReserved__::ArSplitPackageRelativePathInner();
    *v48 = v46;
    v49 = v47;
    v47 = 0;
    v46 = 0uLL;
    if (v45 < 0)
    {
      operator delete(__p);
    }

    if (v43 < 0)
    {
      operator delete(v42);
    }

    if (v49 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v48);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v48[0]);
    }
    v15 = ;
    v18 = objc_msgSend_pathExtension(v15, v16, v17);
    v21 = objc_msgSend_lowercaseString(v18, v19, v20);

    if ((objc_msgSend_isEqualToString_(v21, v22, @"jpg") & 1) == 0 && (objc_msgSend_isEqualToString_(v21, v23, @"png") & 1) == 0 && (objc_msgSend_isEqualToString_(v21, v23, @"jpeg") & 1) == 0)
    {
      NSLog(&cfstr_WarningUnsuppo.isa, v21);
    }

    v24 = objc_msgSend_resolveInsideArchiveWithAssetNamed_(v9, v23, v5);
    v26 = objc_msgSend_objectAtIndexedSubscript_(v24, v25, 0);
    v29 = objc_msgSend_longValue(v26, v27, v28);

    v31 = objc_msgSend_objectAtIndexedSubscript_(v24, v30, 1);
    v34 = objc_msgSend_longValue(v31, v32, v33);

    v35 = [MDLMemoryMappedData alloc];
    v37 = objc_msgSend_initWithURL_offset_length_(v35, v36, v8, v29, v34);
    v40 = objc_msgSend_dataNoCopy(v37, v38, v39);

    if (SHIBYTE(v49) < 0)
    {
      operator delete(v48[0]);
    }
  }

  else
  {
    NSLog(&cfstr_NeedsMdlassetL.isa);
    v40 = 0;
  }

  return v40;
}

+ (MDLTexture)textureNamed:(NSString *)name assetResolver:(id)resolver
{
  v5 = name;
  v6 = resolver;
  v8 = objc_msgSend_resolveAssetNamed_(v6, v7, v5);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v6;
    v52[0] = 0;
    v52[1] = 0;
    v53 = 0;
    v11 = v5;
    v14 = objc_msgSend_UTF8String(v11, v12, v13);
    sub_239E552A0(&v46, v14);
    pxrInternal__aapl__pxrReserved__::ArSplitPackageRelativePathInner();
    *v52 = v50;
    v53 = v51;
    v51 = 0;
    v50 = 0uLL;
    if (v49 < 0)
    {
      operator delete(__p);
    }

    if (v47 < 0)
    {
      operator delete(v46);
    }

    if (v53 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v52);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v52[0]);
    }
    v16 = ;
    v19 = objc_msgSend_pathExtension(v16, v17, v18);
    v22 = objc_msgSend_lowercaseString(v19, v20, v21);

    if ((objc_msgSend_isEqualToString_(v22, v23, @"jpg") & 1) == 0 && (objc_msgSend_isEqualToString_(v22, v24, @"png") & 1) == 0 && (objc_msgSend_isEqualToString_(v22, v24, @"jpeg") & 1) == 0)
    {
      NSLog(&cfstr_WarningUnsuppo.isa, v22);
    }

    v25 = objc_msgSend_resolveInsideArchiveWithAssetNamed_(v10, v24, v5);
    v27 = v25;
    if (v25)
    {
      v28 = objc_msgSend_objectAtIndexedSubscript_(v25, v26, 0);
      v31 = objc_msgSend_longValue(v28, v29, v30);

      v33 = objc_msgSend_objectAtIndexedSubscript_(v27, v32, 1);
      v36 = objc_msgSend_longValue(v33, v34, v35);

      v39 = objc_msgSend_data(v10, v37, v38);

      if (v39)
      {
        v42 = objc_msgSend_data(v10, v40, v41);
        v44 = objc_msgSend_textureWithData_offset_size_(MDLTexture, v43, v42, v31, v36);
      }

      else
      {
        v44 = objc_msgSend_textureWithURL_offset_size_(MDLTexture, v40, v8, v31, v36);
      }
    }

    else
    {
      v44 = 0;
    }

    if (SHIBYTE(v53) < 0)
    {
      operator delete(v52[0]);
    }
  }

  else
  {
    v44 = objc_msgSend_textureWithURL_(MDLTexture, v9, v8);
  }

  return v44;
}

+ (id)textureFromResource:(id)a3
{
  v4 = a3;
  v5 = CGImageSourceCreateWithData(v4, 0);
  v6 = v5;
  if (v5 && (ImageAtIndex = CGImageSourceCreateImageAtIndex(v5, 0, 0), CFRelease(v6), ImageAtIndex))
  {
    Width = CGImageGetWidth(ImageAtIndex);
    Height = CGImageGetHeight(ImageAtIndex);
    v10 = objc_alloc(MEMORY[0x277CBEB28]);
    v11 = 4 * Width;
    v13 = objc_msgSend_initWithLength_(v10, v12, Height * v11);
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v15 = v13;
    v18 = objc_msgSend_bytes(v15, v16, v17);
    v19 = CGBitmapContextCreate(v18, Width, Height, 8uLL, v11, DeviceRGB, 1u);
    CFRelease(DeviceRGB);
    CGContextSetBlendMode(v19, kCGBlendModeCopy);
    v26.size.width = Width;
    v26.size.height = Height;
    v26.origin.x = 0.0;
    v26.origin.y = 0.0;
    CGContextDrawImage(v19, v26, ImageAtIndex);
    CGContextRelease(v19);
    CFRelease(ImageAtIndex);
    v20 = [a1 alloc];
    v24 = 0;
    isCube = objc_msgSend_initWithData_topLeftOrigin_name_dimensions_rowStride_channelCount_channelEncoding_isCube_(v20, v21, v13, 1, 0, v11, 4, 1, COERCE_DOUBLE(__PAIR64__(Height, Width)), v24);
  }

  else
  {
    isCube = 0;
  }

  return isCube;
}

+ (MDLTexture)textureNamed:(NSString *)name bundle:(NSBundle *)bundleOrNil
{
  v6 = name;
  v9 = bundleOrNil;
  if (v6 && objc_msgSend_length(v6, v7, v8))
  {
    if (!v9)
    {
      v9 = objc_msgSend_mainBundle(MEMORY[0x277CCA8D8], v10, v11);
    }

    v13 = sub_239F6C144(v6, v9);
    if (v13)
    {
      v14 = objc_msgSend_textureWithURL_(a1, v12, v13);
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (MDLTexture)textureNamed:(NSString *)name
{
  v3 = objc_msgSend_textureNamed_bundle_(a1, a2, name, 0);

  return v3;
}

+ (MDLTexture)textureCubeWithImagesNamed:(NSArray *)names bundle:(NSBundle *)bundleOrNil
{
  v52 = *MEMORY[0x277D85DE8];
  v6 = names;
  v7 = bundleOrNil;
  if (objc_msgSend_count(v6, v8, v9) == 1)
  {
    v12 = objc_msgSend_firstObject(v6, v10, v11);
    isCube = objc_msgSend__textureCubeWithSingleImageNamed_bundle_(a1, v13, v12, v7);
  }

  else
  {
    v15 = 0;
    v50 = 0u;
    v51 = 0u;
    *image = 0u;
    do
    {
      v16 = objc_msgSend_objectAtIndexedSubscript_(v6, v10, v15);
      v17 = sub_239F6C144(v16, v7);

      if (!v17)
      {
        v19 = MEMORY[0x277CBEBC0];
        v20 = objc_msgSend_objectAtIndexedSubscript_(v6, v18, v15);
        v17 = objc_msgSend_fileURLWithPath_(v19, v21, v20);
      }

      v22 = CGImageSourceCreateWithURL(v17, 0);
      v23 = v22;
      if (v22)
      {
        image[v15] = CGImageSourceCreateImageAtIndex(v22, 0, 0);
        CFRelease(v23);
      }

      ++v15;
    }

    while (v15 != 6);
    v24 = image[0];
    Width = CGImageGetWidth(image[0]);
    Height = CGImageGetHeight(v24);
    v27 = objc_alloc(MEMORY[0x277CBEB28]);
    v28 = 4 * Width;
    v12 = objc_msgSend_initWithLength_(v27, v29, v28 * 6 * Height);
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v31 = v12;
    v34 = objc_msgSend_bytes(v31, v32, v33);
    v35 = CGBitmapContextCreate(v34, Width, 6 * Height, 8uLL, v28, DeviceRGB, 1u);
    CFRelease(DeviceRGB);
    v48 = a1;
    CGContextSetBlendMode(v35, kCGBlendModeCopy);
    v36 = 0;
    LODWORD(v37) = Width;
    HIDWORD(v37) = 6 * Height;
    v47 = v37;
    v38 = Width;
    v39 = 30 * Height;
    do
    {
      v54.origin.y = (v39 / 6);
      v54.origin.x = 0.0;
      v54.size.width = v38;
      v54.size.height = Height;
      CGContextDrawImage(v35, v54, image[v36]);
      v39 -= 6 * Height;
      ++v36;
    }

    while (v36 != 6);
    CGContextRelease(v35);
    for (i = 0; i != 6; ++i)
    {
      v41 = image[i];
      if (v41)
      {
        CFRelease(v41);
        image[i] = 0;
      }
    }

    v42 = [v48 alloc];
    isCube = objc_msgSend_initWithData_topLeftOrigin_name_dimensions_rowStride_channelCount_channelEncoding_isCube_(v42, v43, v12, 1, 0, v28, 4, 1, v47, 1);
  }

  v44 = isCube;

  v45 = *MEMORY[0x277D85DE8];

  return v44;
}

+ (MDLTexture)textureCubeWithImagesNamed:(NSArray *)names
{
  v3 = names;
  v6 = objc_msgSend_mainBundle(MEMORY[0x277CCA8D8], v4, v5);
  v8 = objc_msgSend_textureCubeWithImagesNamed_bundle_(MDLTexture, v7, v3, v6);

  return v8;
}

- (void)loadDataWithTopLeftOriginAtMipLevel:(int64_t)a3 create:(BOOL)a4 selector:(SEL)a5
{
  if (a3 <= 13)
  {
    topLeftOriginData = self->_topLeftOriginData;
    if (self->_topLeftOriginData[a3])
    {
      v8 = 1;
    }

    else
    {
      v8 = !a4;
    }

    if (!v8)
    {
      v9 = objc_msgSend_generateDataAtLevel_selector_(self, a2, a3, a5);
      v10 = topLeftOriginData[a3];
      topLeftOriginData[a3] = v9;

      v11 = topLeftOriginData[a3];
      self->_textureData.topLeftBytesForMip[a3] = objc_msgSend_bytes(v11, v12, v13);
    }
  }
}

- (void)loadDataWithBottomLeftOriginAtMipLevel:(int64_t)a3 create:(BOOL)a4 selector:(SEL)a5
{
  if (a3 <= 13)
  {
    bottomLeftOriginData = self->_bottomLeftOriginData;
    if (self->_bottomLeftOriginData[a3])
    {
      v8 = 1;
    }

    else
    {
      v8 = !a4;
    }

    if (!v8)
    {
      v9 = objc_msgSend_generateDataAtLevel_selector_(self, a2, a3, a5);
      v10 = bottomLeftOriginData[a3];
      bottomLeftOriginData[a3] = v9;

      v11 = bottomLeftOriginData[a3];
      self->_textureData.bottomLeftBytesForMip[a3] = objc_msgSend_bytes(v11, v12, v13);
    }
  }
}

- (void)setTexelDataWithBottomLeftOrigin:(id)a3 atMipLevel:(int64_t)a4
{
  v12 = a3;
  v7 = (&self->super.isa + a4);
  objc_storeStrong(v7 + 53, a3);
  v8 = v7[53];
  v7[18] = objc_msgSend_bytes(v8, v9, v10);
  v11 = v7[39];
  v7[39] = 0;

  v7[2] = 0;
}

- (void)setTexelDataWithTopLeftOrigin:(id)a3 atMipLevel:(int64_t)a4
{
  v6 = a3;
  v7 = &self->super.isa + a4;
  v8 = v7[53];
  v7[53] = 0;

  v7[18] = 0;
  v9 = v7[39];
  v7[39] = v6;
  v10 = v6;

  v11 = v10;
  v14 = objc_msgSend_bytes(v11, v12, v13);

  v7[2] = v14;
}

- (BOOL)writeToURL:(NSURL *)URL level:(NSUInteger)level
{
  v6 = URL;
  v9 = objc_msgSend_pathExtension(v6, v7, v8);
  v12 = objc_msgSend_lowercaseString(v9, v10, v11);

  if (objc_msgSend_isEqualToString_(v12, v13, @"jpeg") & 1) != 0 || (objc_msgSend_isEqualToString_(v12, v14, @"jpg"))
  {
    v15 = MEMORY[0x277CC20C8];
LABEL_8:
    v16 = objc_msgSend_writeToURL_type_(self, v14, v6, *v15);
    goto LABEL_9;
  }

  if ((objc_msgSend_isEqualToString_(v12, v14, @"gif") & 1) != 0 || (objc_msgSend_isEqualToString_(v12, v14, @"tiff") & 1) != 0 || objc_msgSend_isEqualToString_(v12, v14, @"tif"))
  {
    v15 = MEMORY[0x277CC2180];
    goto LABEL_8;
  }

  if (objc_msgSend_isEqualToString_(v12, v14, @"exr"))
  {
    v16 = objc_msgSend_writeToURL_type_(self, v19, v6, @"com.ilm.openexr-image");
  }

  else
  {
    v16 = objc_msgSend_writeToURL_type_level_(self, v19, v6, *MEMORY[0x277CC2120], level);
  }

LABEL_9:
  v17 = v16;

  return v17;
}

- (BOOL)writeToURL:(NSURL *)nsurl type:(CFStringRef)type level:(NSUInteger)level
{
  v8 = nsurl;
  v10 = objc_msgSend_imageFromTextureAtLevel_(self, v9, level);
  if (v10)
  {
    v11 = v8;
    v12 = CGImageDestinationCreateWithURL(v11, type, 1uLL, 0);
    v13 = v12;
    if (v12)
    {
      CGImageDestinationAddImage(v12, v10, 0);
      LOBYTE(v10) = CGImageDestinationFinalize(v13);
      CFRelease(v13);
      if (v11)
      {
        CFRelease(v11);
      }
    }

    else
    {
      if (v11)
      {
        CFRelease(v11);
      }

      LOBYTE(v10) = 0;
    }
  }

  return v10;
}

- (CGImageRef)imageFromTextureAtLevel:(NSUInteger)level
{
  v3 = level;
  v5 = objc_msgSend_texelDataWithTopLeftOrigin_(self, a2, level);
  v8 = v5;
  channelCount = self->_textureData.channelCount;
  if (!channelCount)
  {
    goto LABEL_29;
  }

  v10 = channelCount > 4 || v5 == 0;
  if (v10 || !objc_msgSend_length(v5, v6, v7))
  {
    goto LABEL_29;
  }

  if (self->_textureData.channelCount < 2)
  {
    DeviceGray = CGColorSpaceCreateDeviceGray();
    v13 = 0;
    channelEncoding = self->_channelEncoding;
  }

  else
  {
    DeviceGray = CGColorSpaceCreateDeviceRGB();
    channelEncoding = self->_channelEncoding;
    if (channelEncoding == 1)
    {
      v13 = 16385;
    }

    else
    {
      v13 = 1;
    }
  }

  if (channelEncoding != 770)
  {
    if (channelEncoding == 260)
    {
      v14 = 8448;
      goto LABEL_17;
    }

    if (channelEncoding != 258)
    {
      goto LABEL_18;
    }
  }

  v14 = 4352;
LABEL_17:
  v13 |= v14;
LABEL_18:
  v17 = sub_239F6B868(channelEncoding);
  v18.i32[0] = 0;
  v19.i32[1] = HIDWORD(*self->_anon_118);
  v19.i32[0] = 1;
  v20 = vbsl_s8(vdup_lane_s32(vcgt_s32(v18, *self->_anon_118), 0), v19, *self->_anon_118);
  v21 = vbsl_s8(vdup_lane_s32(vcgt_s32(v18, vdup_lane_s32(v20, 1)), 0), (v20.u32[0] | 0x100000000), v20);
  if (v21.i32[0] >> v3 <= 1)
  {
    v22 = 1;
  }

  else
  {
    v22 = (v21.i32[0] >> v3);
  }

  if (v21.i32[1] >> v3 <= 1)
  {
    v23 = 1;
  }

  else
  {
    v23 = (v21.i32[1] >> v3);
  }

  v24 = self->_textureData.channelCount;
  if (objc_msgSend_length(v8, v15, v16) != v22 * (v24 * v17 / 8) * v23)
  {
    CGColorSpaceRelease(DeviceGray);
LABEL_29:
    Image = 0;
    goto LABEL_30;
  }

  v25 = v8;
  v28 = objc_msgSend_bytes(v25, v26, v27);
  v29 = CGBitmapContextCreate(v28, v22, v23, v17, (v22 * v17 * self->_textureData.channelCount + (v22 * v17 * self->_textureData.channelCount < 0 ? 7 : 0)) >> 3, DeviceGray, v13);
  Image = CGBitmapContextCreateImage(v29);
  CGColorSpaceRelease(DeviceGray);
  if (v29)
  {
    CGContextRelease(v29);
  }

  CFAutorelease(Image);
LABEL_30:

  return Image;
}

@end