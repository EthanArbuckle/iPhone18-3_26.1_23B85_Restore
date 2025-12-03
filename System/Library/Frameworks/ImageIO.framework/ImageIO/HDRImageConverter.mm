@interface HDRImageConverter
+ (__CFUUID)createUUIDFromLumaGainHistogram:(id *)histogram;
+ (id)computeToneMappingCurveFromLumaGainHistogram:(id *)histogram;
+ (id)flexGTCTableDataFromCurveArray:(id)array min:(float)min max:(float)max;
+ (id)imageConverterWithOptions:(id)options;
- (BOOL)canProcessPixelBufferWithAttributes:(id)attributes;
- (BOOL)convertImage:(id)image toImage:(id)toImage;
- (BOOL)isYCCMatrixSupported:(id)supported;
- (id)computeHDRStatisticsForImage:(id)image targetSpace:(CGColorSpace *)space;
- (id)generateToneMappingCurveForImage:(id)image targetHeadroom:(double)headroom;
@end

@implementation HDRImageConverter

+ (id)imageConverterWithOptions:(id)options
{
  optionsCopy = options;
  v4 = [optionsCopy objectForKeyedSubscript:@"kCGDisableMetal"];
  bOOLValue = [v4 BOOLValue];

  if ((bOOLValue & 1) != 0 || IIORestrictedDecodingEnabledFlag())
  {
    LogWarning("+[HDRImageConverter imageConverterWithOptions:]", 35, "☀️ Metal disabled, will use SIMD for image conversion");
LABEL_4:
    v6 = objc_alloc_init(HDRImageConverter_SIMD);
    goto LABEL_5;
  }

  v6 = objc_alloc_init(HDRImageConverter_Metal);
  if (!v6)
  {
    LogError("+[HDRImageConverter imageConverterWithOptions:]", 40, "☀️ Failed to initialize Metal converter, falling back to SIMD for image conversion (slow)");
    goto LABEL_4;
  }

LABEL_5:
  if ((gIIODebugFlags & 0x300000) != 0)
  {
    v7 = [(HDRImageConverter_SIMD *)v6 description];
    ImageIOLog("☀️ Using converter: %s\n", [v7 UTF8String]);
  }

  return v6;
}

- (BOOL)convertImage:(id)image toImage:(id)toImage
{
  imageCopy = image;
  toImageCopy = toImage;
  [toImageCopy headroom];
  v8 = v7;
  v9 = [toImageCopy outputTransformFromEDR:?];
  v10 = v9;
  if (v9)
  {
    selfCopy = self;
    if ([v9 flags])
    {
      flags = [v10 flags];
      if (([v10 flags] & 2) != 0)
      {
        v22 = 1.0;
      }

      else
      {
        v22 = v8;
      }

      if ((flags & 8) != 0)
      {
        v23 = toImageCopy;
      }

      else
      {
        v23 = imageCopy;
      }

      *&v21 = v22;
      v13 = [v23 inputTransformToEDR:v21];
      if (([v10 flags] & 2) != 0)
      {
        v25 = v8;
      }

      else
      {
        v25 = 1.0;
      }

      *&v24 = v25;
      v26 = [imageCopy inputTransformToEDR:v24];
      v18 = v26;
      if (v13)
      {
        v27 = v26 == 0;
      }

      else
      {
        v27 = 1;
      }

      v14 = !v27;
      if ((gIIODebugFlags & 0x300000) != 0)
      {
        v28 = [v13 description];
        uTF8String = [v28 UTF8String];
        v30 = [v18 description];
        uTF8String2 = [v30 UTF8String];
        v32 = [v10 description];
        ImageIOLog("☀️ HDRImageConverter::convertImageToImage SRC x ALT => DST\nSRC[EDR=%g] => %s\nALT[EDR=%g] => %s\nDST[EDR=%g] => %s", v22, uTF8String, v25, uTF8String2, v8, [v32 UTF8String]);

        if (v14)
        {
          goto LABEL_27;
        }

LABEL_24:
        v19 = 0;
        goto LABEL_38;
      }
    }

    else
    {
      *&v11 = v8;
      v12 = [imageCopy inputTransformToEDR:v11];
      v13 = v12;
      v14 = v12 != 0;
      if ((gIIODebugFlags & 0x300000) != 0)
      {
        v15 = [v12 description];
        uTF8String3 = [v15 UTF8String];
        v17 = [v10 description];
        ImageIOLog("☀️ HDRImageConverter::convertImageToImage SRC => DST\nSRC[EDR=%g] => %s\nDST[EDR=%g] => %s", v8, uTF8String3, v8, [v17 UTF8String]);

        v18 = 0;
        if (!v13)
        {
          v19 = 0;
          v13 = 0;
LABEL_38:

          goto LABEL_39;
        }

LABEL_27:
        if ([v10 flags])
        {
          if ([v13 flags] & 1) != 0 || (objc_msgSend(v18, "flags"))
          {
            v33 = -[HDRImageConverter convertImage:transform:alternate:gainMap:transform:alternate:toImage:transform:gainMap:transform:](selfCopy, "convertImage:transform:alternate:gainMap:transform:alternate:toImage:transform:gainMap:transform:", [imageCopy imageBuffer], objc_msgSend(v13, "image"), objc_msgSend(v18, "image"), objc_msgSend(imageCopy, "gainMapBuffer"), objc_msgSend(v13, "gainMap"), objc_msgSend(v18, "gainMap"), objc_msgSend(toImageCopy, "imageBuffer"), objc_msgSend(v10, "image"), objc_msgSend(toImageCopy, "gainMapBuffer"), objc_msgSend(v10, "gainMap"));
          }

          else if (([v13 flags] & 4) != 0 || (objc_msgSend(v18, "flags") & 4) != 0)
          {
            if (([v10 flags] & 8) != 0)
            {
              v33 = -[HDRImageConverter computeGainMap:transform:fromBaseImage:transform:alternateImage:transform:](selfCopy, "computeGainMap:transform:fromBaseImage:transform:alternateImage:transform:", [toImageCopy gainMapBuffer], objc_msgSend(v10, "gainMap"), objc_msgSend(imageCopy, "imageBuffer"), objc_msgSend(v13, "image"), objc_msgSend(imageCopy, "alternateBuffer"), objc_msgSend(v18, "image"));
            }

            else
            {
              v33 = -[HDRImageConverter computeGainMap:transform:outputImage:transform:fromBaseImage:transform:alternateImage:transform:](selfCopy, "computeGainMap:transform:outputImage:transform:fromBaseImage:transform:alternateImage:transform:", [toImageCopy gainMapBuffer], objc_msgSend(v10, "gainMap"), objc_msgSend(toImageCopy, "imageBuffer"), objc_msgSend(v10, "image"), objc_msgSend(imageCopy, "imageBuffer"), objc_msgSend(v13, "image"), objc_msgSend(imageCopy, "alternateBuffer"), objc_msgSend(v18, "image"));
            }
          }

          else
          {
            v33 = -[HDRImageConverter convertImage:transform:alternate:toImage:transform:gainMap:transform:](selfCopy, "convertImage:transform:alternate:toImage:transform:gainMap:transform:", [imageCopy imageBuffer], objc_msgSend(v13, "image"), objc_msgSend(v18, "image"), objc_msgSend(toImageCopy, "imageBuffer"), objc_msgSend(v10, "image"), objc_msgSend(toImageCopy, "gainMapBuffer"), objc_msgSend(v10, "gainMap"));
          }
        }

        else if ([v13 flags])
        {
          v33 = -[HDRImageConverter convertImage:transform:gainMap:transform:toImage:transform:](selfCopy, "convertImage:transform:gainMap:transform:toImage:transform:", [imageCopy imageBuffer], objc_msgSend(v13, "image"), objc_msgSend(imageCopy, "gainMapBuffer"), objc_msgSend(v13, "gainMap"), objc_msgSend(toImageCopy, "imageBuffer"), objc_msgSend(v10, "image"));
        }

        else
        {
          v33 = -[HDRImageConverter convertImage:transform:toImage:transform:](selfCopy, "convertImage:transform:toImage:transform:", [imageCopy imageBuffer], objc_msgSend(v13, "image"), objc_msgSend(toImageCopy, "imageBuffer"), objc_msgSend(v10, "image"));
        }

        v19 = v33;
        goto LABEL_38;
      }

      v18 = 0;
    }

    if (v14)
    {
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  v19 = 0;
LABEL_39:

  return v19;
}

- (id)generateToneMappingCurveForImage:(id)image targetHeadroom:(double)headroom
{
  v4 = MEMORY[0x1EEE9AC00](self, a2);
  v6 = v5;
  v7 = v4;
  v9 = v8;
  [v9 headroom];
  v11 = fmin((v10 + -0.000001), v6);
  v12 = v11;
  *&v11 = v12;
  v42 = [v9 inputTransformToEDR:v11];
  if ((gIIODebugFlags & 0x300000) != 0)
  {
    v13 = [v42 description];
    ImageIOLog("☀️ HDRImageConverter::generateToneMappingCurve SRC => GTC\nSRC[EDR=%g] => %s", v12, [v13 UTF8String]);
  }

  if (!v42)
  {
    goto LABEL_20;
  }

  if (([v42 flags] & 1) == 0)
  {
    v14 = [v9 description];
    LogError("-[HDRImageConverter generateToneMappingCurveForImage:targetHeadroom:]", 135, "Missing gain map: %s", [v14 UTF8String]);

LABEL_20:
    v38 = 0;
    goto LABEL_21;
  }

  bzero(v43, 0x1000uLL);
  imageBuffer = [v9 imageBuffer];
  image = [v42 image];
  gainMapBuffer = [v9 gainMapBuffer];
  gainMap = [v42 gainMap];
  __asm { FMOV            V0.2S, #1.0 }

  *&_D0 = 1.0 / v12;
  if (([v7 computeLumaGainHistogram:v43 scale:imageBuffer image:image transform:gainMapBuffer gainMap:gainMap transform:_D0] & 1) == 0)
  {
    LogError("[HDRImageConverter generateToneMappingCurveForImage:targetHeadroom:]", 147, "Failed to compute luma-gain histogram");
    goto LABEL_20;
  }

  v41 = v9;
  if ((gIIODebugFlags & 0x300000) != 0)
  {
    v24 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:32];
    v25 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v26 = 1;
    do
    {
      v27 = [MEMORY[0x1E696AD98] numberWithInt:v26];
      [v24 addObject:v27];

      v26 = (v26 + 1);
    }

    while (v26 != 33);
    v28 = [v24 componentsJoinedByString:{@", "}];
    [v25 appendFormat:@"lxg, %@\n", v28];

    v29 = 0;
    v30 = v43;
    do
    {
      [v24 removeAllObjects];
      for (i = 0; i != 128; i += 4)
      {
        v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", *&v30[i]];
        [v24 addObject:v32];
      }

      v33 = [v24 componentsJoinedByString:{@", "}];
      ++v29;
      v9 = v41;
      [v25 appendFormat:@"%d, %@\n", v29, v33];

      v30 += 128;
    }

    while (v29 != 32);
    _cg_jpeg_mem_term("-[HDRImageConverter generateToneMappingCurveForImage:targetHeadroom:]", 167, "Luma-Gain Histogram Data: (32x32)\n%s", [v25 UTF8String]);
  }

  v34 = [objc_opt_class() computeToneMappingCurveFromLumaGainHistogram:v43];
  if (v34)
  {
    v35 = [objc_opt_class() createUUIDFromLumaGainHistogram:v43];
    if (v35)
    {
      *&v36 = v6;
      v37 = [v9 flexGTCInfoWithCurveData:v34 headroom:v35 identifier:v36];
      v38 = v37;
      if (v37)
      {
        v39 = v37;
      }

      else
      {
        LogError("[HDRImageConverter generateToneMappingCurveForImage:targetHeadroom:]", 187, "Failed to compute tone mapping curve from luma gain histogram");
      }
    }

    else
    {
      LogError("[HDRImageConverter generateToneMappingCurveForImage:targetHeadroom:]", 180, "Failed to compute tone mapping curve from luma gain histogram");
      v38 = 0;
    }
  }

  else
  {
    LogError("[HDRImageConverter generateToneMappingCurveForImage:targetHeadroom:]", 174, "Failed to compute tone mapping curve from luma gain histogram");
    v38 = 0;
  }

LABEL_21:

  return v38;
}

- (id)computeHDRStatisticsForImage:(id)image targetSpace:(CGColorSpace *)space
{
  imageCopy = image;
  [imageCopy headroom];
  v7 = [imageCopy inputTransformToEDR:space space:?];
  if ((gIIODebugFlags & 0x300000) != 0)
  {
    [imageCopy headroom];
    v9 = v8;
    v10 = [v7 description];
    ImageIOLog("☀️ HDRImageConverter::computeHDRStatistics SRC => STATS\nSRC[EDR=%g] => %s", v9, [v10 UTF8String]);
  }

  if (v7)
  {
    v20 = 0;
    v19 = 0;
    if ([v7 flags])
    {
      v11 = -[HDRImageConverter computeStatistics:image:transform:gainMap:transform:](self, "computeStatistics:image:transform:gainMap:transform:", &v19, [imageCopy imageBuffer], objc_msgSend(v7, "image"), objc_msgSend(imageCopy, "gainMapBuffer"), objc_msgSend(v7, "gainMap"));
    }

    else
    {
      v11 = -[HDRImageConverter computeStatistics:image:transform:](self, "computeStatistics:image:transform:", &v19, [imageCopy imageBuffer], objc_msgSend(v7, "image"));
    }

    if (v11)
    {
      v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
      LODWORD(v13) = v19;
      v14 = [MEMORY[0x1E696AD98] numberWithFloat:v13];
      [v12 setObject:v14 forKeyedSubscript:@"kCGContentHeadroom"];

      LODWORD(v15) = HIDWORD(v19);
      v16 = [MEMORY[0x1E696AD98] numberWithFloat:v15];
      [v12 setObject:v16 forKeyedSubscript:@"kCGContentBrightness"];

      v17 = [v12 copy];
      goto LABEL_11;
    }

    LogError("[HDRImageConverter computeHDRStatisticsForImage:targetSpace:]", 214, "Failed to compute image statistics");
  }

  v17 = 0;
LABEL_11:

  return v17;
}

- (BOOL)canProcessPixelBufferWithAttributes:(id)attributes
{
  attributesCopy = attributes;
  v5 = [attributesCopy objectForKeyedSubscript:*gIIO_kCVImageBufferCGColorSpaceKey];

  if (!v5)
  {
    v6 = [attributesCopy description];
    LogError("-[HDRImageConverter canProcessPixelBufferWithAttributes:]", 229, "Missing color space attribute: %s", [v6 UTF8String]);
    goto LABEL_38;
  }

  if (CGColorSpaceUsesITUR_2100TF(v5))
  {
    if (!CGColorSpaceIsPQBased(v5) && !CGColorSpaceIsHLGBased(v5))
    {
      v6 = [v5 description];
      LogError("-[HDRImageConverter canProcessPixelBufferWithAttributes:]", 236, "Unsupported HDR color space: %s", [v6 UTF8String]);
LABEL_38:
      v9 = 0;
      goto LABEL_39;
    }
  }

  else if (![HDRImage supportsSourceColorSpace:v5])
  {
    v6 = [v5 description];
    LogError("-[HDRImageConverter canProcessPixelBufferWithAttributes:]", 242, "Unsupported SDR color space: %s", [v6 UTF8String]);
    goto LABEL_38;
  }

  v7 = [attributesCopy objectForKeyedSubscript:*gIIO_kCVPixelBufferPixelFormatTypeKey];
  v6 = v7;
  if (!v7)
  {
    v10 = [attributesCopy description];
    LogError("-[HDRImageConverter canProcessPixelBufferWithAttributes:]", 250, "Missing pixel format attribute: %s", [v10 UTF8String]);

    goto LABEL_38;
  }

  unsignedIntValue = [v7 unsignedIntValue];
  if (![(HDRImageConverter *)self isPixelFormatSupported:unsignedIntValue])
  {
    v11 = unsignedIntValue >> 24;
    if ((unsignedIntValue >> 24) <= 0x7F)
    {
      v12 = *(MEMORY[0x1E69E9830] + 4 * v11 + 60) & 0x40000;
    }

    else
    {
      v12 = __maskrune(unsignedIntValue >> 24, 0x40000uLL);
    }

    if (v12)
    {
      v13 = v11;
    }

    else
    {
      v13 = 46;
    }

    v14 = (unsignedIntValue << 8) >> 24;
    if (v14 <= 0x7F)
    {
      v15 = *(MEMORY[0x1E69E9830] + 4 * v14 + 60) & 0x40000;
    }

    else
    {
      v15 = __maskrune((unsignedIntValue << 8) >> 24, 0x40000uLL);
    }

    if (v15)
    {
      v16 = v14;
    }

    else
    {
      v16 = 46;
    }

    v17 = unsignedIntValue >> 8;
    if (v17 <= 0x7F)
    {
      v18 = *(MEMORY[0x1E69E9830] + 4 * v17 + 60) & 0x40000;
    }

    else
    {
      v18 = __maskrune(unsignedIntValue >> 8, 0x40000uLL);
    }

    LODWORD(unsignedIntValue) = unsignedIntValue;
    if (unsignedIntValue <= 0x7F)
    {
      v19 = *(MEMORY[0x1E69E9830] + 4 * unsignedIntValue + 60) & 0x40000;
    }

    else
    {
      v19 = __maskrune(unsignedIntValue, 0x40000uLL);
    }

    if (v18)
    {
      v20 = v17;
    }

    else
    {
      v20 = 46;
    }

    if (v19)
    {
      v21 = unsignedIntValue;
    }

    else
    {
      v21 = 46;
    }

    LogError("[HDRImageConverter canProcessPixelBufferWithAttributes:]", 256, "Unsupported pixel format: '%c%c%c%c'", v13, v16, v20, v21);
    goto LABEL_38;
  }

  v9 = 1;
LABEL_39:

  return v9;
}

- (BOOL)isYCCMatrixSupported:(id)supported
{
  supportedCopy = supported;
  if ([supportedCopy isEqualToString:*gIIO_kCVImageBufferYCbCrMatrix_ITU_R_601_4] & 1) != 0 || (objc_msgSend(supportedCopy, "isEqualToString:", *gIIO_kCVImageBufferYCbCrMatrix_ITU_R_709_2))
  {
    v4 = 1;
  }

  else
  {
    v4 = [supportedCopy isEqualToString:*gIIO_kCVImageBufferYCbCrMatrix_ITU_R_2020];
  }

  return v4;
}

+ (id)computeToneMappingCurveFromLumaGainHistogram:(id *)histogram
{
  v53[559] = *MEMORY[0x1E69E9840];
  bzero(v52, 0x1180uLL);
  v4 = 0;
  v5.i64[0] = 0x3F0000003F000000;
  v5.i64[1] = 0x3F0000003F000000;
  v6.i64[0] = 0x3D0000003D000000;
  v6.i64[1] = 0x3D0000003D000000;
  v7.i64[0] = 0x400000004;
  v7.i64[1] = 0x400000004;
  histogramCopy = histogram;
  do
  {
    v9 = 0;
    v10 = 0uLL;
    do
    {
      v10 = vaddq_s32(*&histogramCopy->var0[0][v9], v10);
      v9 += 4;
    }

    while (v9 != 32);
    v11 = 0;
    v12 = vaddvq_s32(v10);
    v13 = &v52[35 * v4];
    *v13 = v12;
    v14 = v12;
    v15 = 0;
    v16 = xmmword_186205980;
    do
    {
      v17 = vmulq_f32(vmulq_f32(vaddq_f32(vcvtq_f32_u32(v16), v5), v6), vcvtq_f32_u32(*&histogramCopy->var0[0][v11]));
      *v15.i32 = (((*v15.i32 + v17.f32[0]) + v17.f32[1]) + v17.f32[2]) + v17.f32[3];
      v16 = vaddq_s32(v16, v7);
      v11 += 4;
    }

    while (v11 != 32);
    v18 = 0;
    *v15.i32 = *v15.i32 / v14;
    v13[1] = v15.i32[0];
    v19 = vdupq_lane_s32(v15, 0);
    v20 = 0.0;
    v21 = xmmword_186205980;
    do
    {
      v22 = vsubq_f32(vmulq_f32(vaddq_f32(vcvtq_f32_u32(v21), v5), v6), v19);
      v23 = vmulq_f32(vmulq_f32(v22, vcvtq_f32_u32(*&histogramCopy->var0[0][v18])), v22);
      v20 = (((v20 + v23.f32[0]) + v23.f32[1]) + v23.f32[2]) + v23.f32[3];
      v21 = vaddq_s32(v21, v7);
      v18 += 4;
    }

    while (v18 != 32);
    *(v13 + 2) = sqrtf(v20 / v14);
    v24 = histogram->var0[v4];
    v25 = *(v24 + 5);
    *(v13 + 19) = *(v24 + 4);
    *(v13 + 23) = v25;
    v26 = *(v24 + 7);
    *(v13 + 27) = *(v24 + 6);
    *(v13 + 31) = v26;
    v27 = *(v24 + 1);
    *(v13 + 3) = *v24;
    *(v13 + 7) = v27;
    v28 = *(v24 + 3);
    *(v13 + 11) = *(v24 + 2);
    *(v13 + 15) = v28;
    ++v4;
    histogramCopy = (histogramCopy + 128);
  }

  while (v4 != 32);
  if (!HDRFlexGTC_fillGaps(v52, 0x424800003C03126FLL, 1))
  {
    LogError("+[HDRImageConverter computeToneMappingCurveFromLumaGainHistogram:]", 383, "Failed to fill gaps");
LABEL_26:
    v37 = 0;
    goto LABEL_27;
  }

  if ((gIIODebugFlags & 0x300000) != 0)
  {
    v29 = objc_alloc_init(MEMORY[0x1E696AD60]);
    [v29 appendString:{@"Bin, N, gM, gSD\n"}];
    v30 = 0;
    v31 = v53;
    do
    {
      [v29 appendFormat:@"%d, %u, %f, %f\n", v30++, *(v31 - 2), *(v31 - 1), *v31];
      v31 += 35;
    }

    while (v30 != 32);
    v32 = v29;
    _cg_jpeg_mem_term("+[HDRImageConverter computeToneMappingCurveFromLumaGainHistogram:]", 395, "Luma-Gain Bins Data: (32x32)\n%s", [v29 UTF8String]);
  }

  bzero(v50, 0x380uLL);
  v48 = 0;
  HDRFlexGTC_curveFit(v52, 0x424800003C03126FLL, 1, v50, &v48);
  if (!v48)
  {
    LogError("+[HDRImageConverter computeToneMappingCurveFromLumaGainHistogram:]", 403, "Failed to fit curve");
    goto LABEL_26;
  }

  if ((gIIODebugFlags & 0x300000) != 0)
  {
    v33 = objc_alloc_init(MEMORY[0x1E696AD60]);
    [v33 appendString:{@"cubic, x, y, slope\n"}];
    if (v48 >= 1)
    {
      v34 = 0;
      v35 = v51;
      do
      {
        [v33 appendFormat:@"%d, %f, %f, %f\n", v34++, *(v35 - 2), *(v35 - 1), *v35];
        v35 += 7;
      }

      while (v34 < v48);
    }

    v36 = v33;
    _cg_jpeg_mem_term("+[HDRImageConverter computeToneMappingCurveFromLumaGainHistogram:]", 414, "Luma-Gain Cubic Points: \n%s", [v33 UTF8String]);
  }

  v37 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v48 >= 1)
  {
    v39 = 0;
    v40 = v51;
    do
    {
      LODWORD(v38) = *(v40 - 2);
      v41 = [MEMORY[0x1E696AD98] numberWithFloat:v38];
      v49[0] = v41;
      LODWORD(v42) = *(v40 - 1);
      v43 = [MEMORY[0x1E696AD98] numberWithFloat:v42];
      v49[1] = v43;
      LODWORD(v44) = *v40;
      v45 = [MEMORY[0x1E696AD98] numberWithFloat:v44];
      v49[2] = v45;
      v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:3];
      [v37 addObject:v46];

      ++v39;
      v40 += 7;
    }

    while (v39 < v48);
  }

LABEL_27:

  return v37;
}

+ (__CFUUID)createUUIDFromLumaGainHistogram:(id *)histogram
{
  CGGetMD5DigestOfBytes();
  *&v4.byte0 = 0;
  *&v4.byte8 = 0;
  return CFUUIDCreateFromUUIDBytes(0, v4);
}

+ (id)flexGTCTableDataFromCurveArray:(id)array min:(float)min max:(float)max
{
  arrayCopy = array;
  if ([arrayCopy count] >= 2 && objc_msgSend(arrayCopy, "count") < 0x21)
  {
    v10 = [arrayCopy count];
    v11 = malloc_type_calloc(v10, 0x1CuLL, 0x100004027586B93uLL);
    v12 = v11;
    if (v10 < 1)
    {
LABEL_17:
      v9 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:2048];
      mutableBytes = [v9 mutableBytes];
      v28 = malloc_type_malloc(0x1000uLL, 0x100004052888210uLL);
      HDRFlexGTC_fillTable(v12, v10, v28, 1024, v29);
      v30 = exp2f(max);
      v31 = 0;
      v32 = max - min;
      v33 = -1.0;
      do
      {
        _S0 = exp2f(min + (v32 * v28[v31]));
        v35 = v31 / 1023.0;
        v36 = (v35 * _S0) / v30;
        if (v36 < v33)
        {
          _S0 = v30 * (v33 / v35);
          v36 = v33;
        }

        __asm { FCVT            H0, S0 }

        *(mutableBytes + 2 * v31++) = _H0;
        v33 = v36 + 0.00035;
      }

      while (v31 != 1024);
      free(v28);
    }

    else
    {
      v13 = 0;
      v43 = v10;
      v44 = v11;
      v14 = (v10 & 0x7FFFFFFF) - 1;
      v15 = v11 + 8;
      v16 = 1;
      do
      {
        v17 = [arrayCopy objectAtIndexedSubscript:v13];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || [v17 count] != 3)
        {
          v41 = [v17 description];
          v12 = v44;
          LogError("+[HDRImageConverter flexGTCTableDataFromCurveArray:min:max:]", 464, "Invalid GTC data: %s", [v41 UTF8String]);

          goto LABEL_23;
        }

        v18 = [v17 objectAtIndexedSubscript:0];
        v19 = [v17 objectAtIndexedSubscript:1];
        v20 = [v17 objectAtIndexedSubscript:2];
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          [v18 floatValue];
          *(v15 - 2) = v21;
          [v19 floatValue];
          *(v15 - 1) = v22;
          [v20 floatValue];
          v23 = 0;
          *v15 = v24;
        }

        else
        {
          v25 = [v17 description];
          LogError("+[HDRImageConverter flexGTCTableDataFromCurveArray:min:max:]", 459, "Invalid GTC data: %s", [v25 UTF8String]);

          v16 = 0;
          v23 = 1;
        }

        if (v23)
        {
          break;
        }

        v15 += 7;
      }

      while (v14 != v13++);
      v10 = v43;
      v12 = v44;
      if (v16)
      {
        goto LABEL_17;
      }

LABEL_23:
      v9 = 0;
    }

    free(v12);
  }

  else
  {
    v8 = [arrayCopy description];
    LogError("+[HDRImageConverter flexGTCTableDataFromCurveArray:min:max:]", 440, "Invalid GTC data: %s", [v8 UTF8String]);

    v9 = 0;
  }

  return v9;
}

void __55__HDRImageConverter_Metal_commitAndWaitUntilCompleted___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 status] != 4)
  {
    v3 = [v5 error];
    v4 = [v3 debugDescription];
    LogError("-[HDRImageConverter_Metal commitAndWaitUntilCompleted:]_block_invoke", 434, "☀️ CommandBuffer %p failed '%s'", v5, [v4 UTF8String]);

    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

@end