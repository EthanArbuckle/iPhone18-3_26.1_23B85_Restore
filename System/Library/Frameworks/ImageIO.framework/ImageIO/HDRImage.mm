@interface HDRImage
+ (BOOL)getColorTRC:(id *)a3 matrix:(id *)a4 toneMapping:(id *)a5 fromEDR:(float)a6 space:(CGColorSpace *)a7 toTargetSpace:(CGColorSpace *)a8;
+ (BOOL)getColorTRC:(id *)a3 matrix:(id *)a4 toneMapping:(id *)a5 fromSourceSpace:(CGColorSpace *)a6 headroom:(float)a7 toEDR:(float)a8 space:(CGColorSpace *)a9 toneMappingMode:(int)a10;
+ (BOOL)getColorTRC:(id *)a3 matrix:(id *)a4 toneMapping:(id *)a5 fromSourceSpace:(CGColorSpace *)a6 toTargetSpace:(CGColorSpace *)a7 options:(id)a8;
+ (BOOL)getComponentMin:(id)a1 componentMax:(SEL)a2 forPixelType:componentRange:bitDepth:;
+ (BOOL)getGainMapHeadroom:(float *)a3 fromFlexGTCInfo:(id)a4;
+ (BOOL)getGainMapHeadroom:(float *)a3 fromMetadata:(CGImageMetadata *)a4;
+ (BOOL)getGainMapHeadroom:(float *)a3 fromProperties:(id)a4;
+ (BOOL)getGainMapMin:(float *)a3 max:(float *)a4 fromFlexGTCInfo:(id)a5;
+ (BOOL)getGainMapVersionMajor:(unint64_t *)a3 minor:(unint64_t *)a4 fromMetadata:(CGImageMetadata *)a5;
+ (BOOL)getInputPixelRange:(id *)a3 forPixelType:(int)a4 componentRange:(id)a5 bitDepth:(unsigned __int16)a6 isFloat:(BOOL)a7;
+ (BOOL)getInputPixelType:(int *)a3 range:(id *)a4 YCCMatrix:(id *)a5 forBuffer:(__CVBuffer *)a6;
+ (BOOL)getInputYCCMatrix:(id *)a3 forYCCMatrixString:(id)a4;
+ (BOOL)getOutputPixelRange:(id *)a3 forPixelType:(int)a4 componentRange:(id)a5 bitDepth:(unsigned __int16)a6 isFloat:(BOOL)a7;
+ (BOOL)getOutputPixelType:(id)a1 range:(SEL)a2 YCCMatrix:(int *)a3 chromaSubsampling:(id *)a4 forBuffer:(id *)a5;
+ (BOOL)getOutputYCCMatrix:(id *)a3 forYCCMatrixString:(id)a4;
+ (BOOL)getPixelType:(int *)a3 YCCMatrixString:(id *)a4 chromaSubsampling:componentRange:bitDepth:isFloat:forBuffer:;
+ (BOOL)supportsSourceColorSpace:(CGColorSpace *)a3;
+ (CGImageMetadata)createGainMapMetadataWithHeadroom:(float)a3;
+ (float)gainMapHeadroomForHDRGain:(float)a3 gainMapValue:(float)a4;
+ (id)curveDataFromFlexGTCInfo:(id)a3;
+ (id)flexRangeParametersWithHeadroom:(float)a3 options:(id)a4;
+ (id)gainMapHeadroomFromFlexGTCInfo:(id)a3;
+ (id)tableDataWithFloatValues:(const float *)a3 count:(unint64_t)a4;
- (BOOL)getInputAlternateColorTransform:(id *)a3 toEDR:(float)a4 space:(CGColorSpace *)a5;
- (BOOL)getInputAlternateImagePixelTransform:(id *)a3;
- (BOOL)getInputAlternateImageTransform:(id *)a3 toEDR:(float)a4 space:(CGColorSpace *)a5;
- (BOOL)getInputColorTransform:(id *)a3 toEDR:(float)a4 space:(CGColorSpace *)a5;
- (BOOL)getInputGainMapColorMatrix:(id *)a3 targetSpace:(CGColorSpace *)a4;
- (BOOL)getInputGainMapPixelTransform:(id *)a3;
- (BOOL)getInputGainMapTransform:(id *)a3 toEDR:(float)a4 space:(CGColorSpace *)a5 needsGainMap:(BOOL *)a6 baseIsSDR:(BOOL *)a7;
- (BOOL)getInputImagePixelTransform:(id *)a3;
- (BOOL)getInputImageTransform:(id *)a3 toEDR:(float)a4 space:(CGColorSpace *)a5;
- (BOOL)getInputTransform:(id *)a3 toEDR:(float)a4 space:(CGColorSpace *)a5;
- (BOOL)getOutputColorTransform:(id *)a3 fromEDR:(float)a4 space:(CGColorSpace *)a5;
- (BOOL)getOutputGainMapColorMatrix:(id *)a3 lumaWeights:isLuma:sourceSpace:;
- (BOOL)getOutputGainMapPixelTransform:(id *)a3;
- (BOOL)getOutputGainMapTransform:(id *)a3 fromEDR:(float)a4 space:(CGColorSpace *)a5 needsGainMap:(BOOL *)a6 baseIsSDR:(BOOL *)a7;
- (BOOL)getOutputImagePixelTransform:(id *)a3;
- (BOOL)getOutputImageTransform:(id *)a3 fromEDR:(float)a4 space:(CGColorSpace *)a5;
- (BOOL)getOutputTransform:(id *)a3 fromEDR:(float)a4 space:(CGColorSpace *)a5;
- (CGColorSpace)alternateColorSpace;
- (CGColorSpace)colorSpace;
- (CGColorSpace)gainMapColorSpace;
- (HDRImage)init;
- (HDRImage)initWithImageBuffer:(__CVBuffer *)a3 alternateBuffer:(__CVBuffer *)a4;
- (HDRImage)initWithImageBuffer:(__CVBuffer *)a3 gainMapBuffer:(__CVBuffer *)a4 flexRangeParameters:(id)a5;
- (HDRImage)initWithImageBuffer:(__CVBuffer *)a3 gainMapBuffer:(__CVBuffer *)a4 gainMapMetadata:(CGImageMetadata *)a5 imageProperties:(id)a6;
- (double)gainMapSize;
- (id)description;
- (id)flexGTCInfoWithCurveData:(id)a3 headroom:(float)a4 identifier:(id)a5;
- (id)inputTransformToEDR:(float)a3 space:(CGColorSpace *)a4;
- (id)outputTransformFromEDR:(float)a3 space:(CGColorSpace *)a4;
- (unint64_t)height;
- (unint64_t)width;
- (void)dealloc;
@end

@implementation HDRImage

- (unint64_t)width
{
  v4 = gFunc_CVPixelBufferGetWidth;
  v2 = [(HDRImage *)self imageBuffer];

  return v4(v2);
}

- (unint64_t)height
{
  v4 = gFunc_CVPixelBufferGetHeight;
  v2 = [(HDRImage *)self imageBuffer];

  return v4(v2);
}

+ (BOOL)getGainMapHeadroom:(float *)a3 fromProperties:(id)a4
{
  v5 = a4;
  v6 = [v5 objectForKeyedSubscript:@"{MakerApple}"];
  v7 = [v6 objectForKeyedSubscript:@"33"];
  v8 = [v6 objectForKeyedSubscript:@"48"];
  if (v6)
  {
    v9 = v7;
  }

  else
  {
    v9 = [v5 objectForKeyedSubscript:@"kCGFallbackHDRGain"];

    v10 = gIIODebugFlags & 0x300000;
    if (!v9)
    {
      if (v10)
      {
        v26 = [v5 description];
        ImageIOLog("☀️  Missing makernote data: %s, no fallback provided", [v26 UTF8String]);
      }

      v9 = 0;
      goto LABEL_22;
    }

    if (v10)
    {
      [v9 floatValue];
      ImageIOLog("☀️  Missing makernote data, using fallback hdrGain=%f\n", v11);
    }

    v8 = &unk_1EF5454D0;
  }

  if (v9)
  {
    v12 = v8 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    if ((gIIODebugFlags & 0x300000) != 0)
    {
      v13 = [v9 description];
      v14 = [v13 UTF8String];
      v15 = [v8 description];
      ImageIOLog("☀️  Invalid Meteor+ makernote data (hdrGain=%s, gainMapValue=%s)", v14, [v15 UTF8String]);
    }

LABEL_22:
    v25 = 0;
    goto LABEL_23;
  }

  [v9 floatValue];
  v17 = v16;
  [v8 floatValue];
  LODWORD(v18) = LODWORD(v19);
  LODWORD(v19) = v17;
  [HDRImage gainMapHeadroomForHDRGain:v19 gainMapValue:v18];
  v21 = v20;
  if ((gIIODebugFlags & 0x300000) != 0)
  {
    [v9 floatValue];
    v23 = v22;
    [v8 floatValue];
    ImageIOLog("☀️  Meteor+ headroom: %f (hdrGain=%f, gainMapValue=%f)", v21, v23, v24);
  }

  if (a3)
  {
    *a3 = v21;
  }

  v25 = 1;
LABEL_23:

  return v25;
}

+ (float)gainMapHeadroomForHDRGain:(float)a3 gainMapValue:(float)a4
{
  if (a3 >= 1.0)
  {
    if (a4 <= 0.01)
    {
      return exp2f((a4 * -70.0) + 3.0);
    }

    v4 = a4 * -0.303030255 + 2.0;
    v5 = 0.303030255;
  }

  else
  {
    if (a4 <= 0.01)
    {
      return exp2f((a4 * -20.0) + 1.8);
    }

    v4 = a4 * -0.101010125 + 1.5;
    v5 = 0.101010125;
  }

  v6 = v4 + v5;
  return exp2f(v6);
}

+ (BOOL)getGainMapVersionMajor:(unint64_t *)a3 minor:(unint64_t *)a4 fromMetadata:(CGImageMetadata *)a5
{
  if (a5)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", @"HDRGainMap", @"HDRGainMapVersion"];
    v9 = CGImageMetadataCopyTagWithPath(a5, 0, v8);
    v10 = v9;
    if (v9)
    {
      v11 = CGImageMetadataTagCopyValue(v9);
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v13 = [v11 integerValue];
        if (a3)
        {
          *a3 = v13 >> 16;
        }

        if (a4)
        {
          *a4 = v13;
        }
      }

      else
      {
        v14 = [v11 description];
        LogError("+[HDRImage getGainMapVersionMajor:minor:fromMetadata:]", 424, "Invalid version tag value: %s", [v14 UTF8String]);
      }
    }

    else
    {
      v11 = [(__CFString *)v8 description];
      LogError("+[HDRImage getGainMapVersionMajor:minor:fromMetadata:]", 418, "Failed to get metadata tag: %s", [v11 UTF8String]);
      isKindOfClass = 0;
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

+ (BOOL)getGainMapHeadroom:(float *)a3 fromMetadata:(CGImageMetadata *)a4
{
  v17 = 0;
  v18 = 0;
  if (([a1 getGainMapVersionMajor:&v18 minor:&v17 fromMetadata:a4] & 1) == 0)
  {
    v7 = [(CGImageMetadata *)a4 description];
    LogError("+[HDRImage getGainMapHeadroom:fromMetadata:]", 444, "Failed to read gain map version info: %s", [(__CFString *)v7 UTF8String]);
LABEL_15:
    isKindOfClass = 0;
    goto LABEL_19;
  }

  if (v18 == 1 && v17 == 0)
  {
    v7 = [(CGImageMetadata *)a4 description];
    _cg_jpeg_mem_term("+[HDRImage getGainMapHeadroom:fromMetadata:]", 450, "Version 1.0 gain map metadata does not contain headroom value: %s", [(__CFString *)v7 UTF8String]);
    goto LABEL_15;
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", @"HDRGainMap", @"HDRGainMapHeadroom"];
  v8 = CGImageMetadataCopyTagWithPath(a4, 0, v7);
  v9 = v8;
  if (v8)
  {
    v10 = CGImageMetadataTagCopyValue(v8);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v12 = v10;
      [v12 floatValue];
      v14 = v13;
      if ((gIIODebugFlags & 0x300000) != 0)
      {
        ImageIOLog("Gain map headroom value: %f", v13);
      }

      if (a3)
      {
        *a3 = v14;
      }

      v10 = v12;
    }

    else
    {
      v12 = [v10 description];
      LogError("+[HDRImage getGainMapHeadroom:fromMetadata:]", 464, "Invalid gain map headroom tag value: %s", [v12 UTF8String]);
    }
  }

  else
  {
    v10 = [(__CFString *)v7 description];
    v15 = [v10 UTF8String];
    v12 = [(CGImageMetadata *)a4 description];
    LogError("+[HDRImage getGainMapHeadroom:fromMetadata:]", 458, "Failed to get metadata tag %s from metadata: %s", v15, [v12 UTF8String]);
    isKindOfClass = 0;
  }

LABEL_19:
  return isKindOfClass & 1;
}

+ (CGImageMetadata)createGainMapMetadataWithHeadroom:(float)a3
{
  Mutable = CGImageMetadataCreateMutable();
  if (CGImageMetadataRegisterNamespaceForPrefix(Mutable, @"http://ns.apple.com/HDRGainMap/1.0/", @"HDRGainMap", 0))
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:0x20000];
    v6 = CGImageMetadataTagCreate(@"http://ns.apple.com/HDRGainMap/1.0/", @"HDRGainMap", @"HDRGainMapVersion", kCGImageMetadataTypeDefault, v5);
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", @"HDRGainMap", @"HDRGainMapVersion"];
    if (CGImageMetadataSetTagWithPath(Mutable, 0, v7, v6))
    {
      *&v8 = a3;
      v9 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
      v10 = CGImageMetadataTagCreate(@"http://ns.apple.com/HDRGainMap/1.0/", @"HDRGainMap", @"HDRGainMapHeadroom", kCGImageMetadataTypeDefault, v9);
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", @"HDRGainMap", @"HDRGainMapHeadroom"];
      if (CGImageMetadataSetTagWithPath(Mutable, 0, v11, v10))
      {
        v12 = Mutable;
      }

      else
      {
        LogError("+[HDRImage createGainMapMetadataWithHeadroom:]", 501, "Failed to set HDRGainMap metadata headroom tag!");
        v12 = 0;
      }
    }

    else
    {
      LogError("+[HDRImage createGainMapMetadataWithHeadroom:]", 493, "Failed to set HDRGainMap metadata version tag!");
      v12 = 0;
    }
  }

  else
  {
    LogError("+[HDRImage createGainMapMetadataWithHeadroom:]", 482, "Failed to register HDRGainMap metadata tag!");
    v12 = 0;
  }

  return v12;
}

- (id)flexGTCInfoWithCurveData:(id)a3 headroom:(float)a4 identifier:(id)a5
{
  v85[3] = *MEMORY[0x1E69E9840];
  v81 = a3;
  v78 = a5;
  v79 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v79 setObject:v78 forKeyedSubscript:*MEMORY[0x1E695BB70]];
  *&v8 = log2f(a4);
  v9 = LODWORD(v8);
  flexRangeParams = self->_flexRangeParams;
  v80 = flexRangeParams;
  if (flexRangeParams)
  {
    [(HDRFlexRangeParameters *)flexRangeParams baseHeadroom];
    v12 = v11;
    [(HDRFlexRangeParameters *)self->_flexRangeParams alternateHeadroom];
    v14 = v13;
    v15 = self->_flexRangeParams;
    if (v12 <= v13)
    {
      [(HDRFlexRangeParameters *)v15 baseHeadroom];
    }

    else
    {
      [(HDRFlexRangeParameters *)v15 alternateHeadroom];
    }

    v18 = v16;
    [(HDRFlexRangeParameters *)self->_flexRangeParams channelGamma];
    v19 = v23;
    [(HDRFlexRangeParameters *)self->_flexRangeParams channelMin];
    if (v12 <= v14)
    {
      v27 = v24;
      [(HDRFlexRangeParameters *)self->_flexRangeParams channelMax];
      v29 = v28;
      [(HDRFlexRangeParameters *)self->_flexRangeParams channelAlternateOffset];
      v22 = v30;
      [(HDRFlexRangeParameters *)self->_flexRangeParams channelBaseOffset];
      v21 = LODWORD(v8);
      v20 = -v27;
      v17 = -v29;
    }

    else
    {
      v20 = v24;
      [(HDRFlexRangeParameters *)self->_flexRangeParams channelMax];
      v17 = v25;
      [(HDRFlexRangeParameters *)self->_flexRangeParams channelAlternateOffset];
      v22 = v26;
      [(HDRFlexRangeParameters *)self->_flexRangeParams channelAlternateOffset];
      v21 = LODWORD(v8);
    }
  }

  else
  {
    v17 = -*&v8;
    v18 = 0;
    v19 = 1074580685;
    v20 = -0.0;
    v21 = 981668463;
    v22 = 981668463;
  }

  LODWORD(v8) = v9;
  v31 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
  [v79 setObject:v31 forKeyedSubscript:*MEMORY[0x1E695BB90]];

  LODWORD(v32) = v18;
  v33 = [MEMORY[0x1E696AD98] numberWithFloat:v32];
  [v79 setObject:v33 forKeyedSubscript:*MEMORY[0x1E695BB80]];

  *&v34 = v20;
  v35 = [MEMORY[0x1E696AD98] numberWithFloat:v34];
  [v79 setObject:v35 forKeyedSubscript:*MEMORY[0x1E695BBA8]];

  *&v36 = v17;
  v37 = [MEMORY[0x1E696AD98] numberWithFloat:v36];
  [v79 setObject:v37 forKeyedSubscript:*MEMORY[0x1E695BBA0]];

  LODWORD(v38) = v22;
  v39 = [MEMORY[0x1E696AD98] numberWithFloat:v38];
  [v79 setObject:v39 forKeyedSubscript:*MEMORY[0x1E695BB88]];

  LODWORD(v40) = v21;
  v41 = [MEMORY[0x1E696AD98] numberWithFloat:v40];
  [v79 setObject:v41 forKeyedSubscript:*MEMORY[0x1E695BB78]];

  LODWORD(v42) = v19;
  v43 = [MEMORY[0x1E696AD98] numberWithFloat:v42];
  [v79 setObject:v43 forKeyedSubscript:*MEMORY[0x1E695BB98]];

  v44 = [(HDRImage *)self gainMapColorSpace];
  if (!v44)
  {
    v44 = [(HDRImage *)self colorSpace];
  }

  Linearized = CGColorSpaceCreateLinearized(v44);
  if ((CGColorSpaceGetCICPInfo() & 1) == 0 && Linearized)
  {
    v46 = CFCopyDescription(Linearized);
    v47 = v46;
    LogError("cicp_tagFromColorSpace", 57, "Failed to get CICP info for space: %s", [(__CFString *)v46 UTF8String]);
  }

  v48 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v81, "count")}];
  v49 = 0;
  v50 = -v17;
  v51 = a4 + -1.0;
  v52 = v17 * -0.693147181;
  v53 = MEMORY[0x1E695BB68];
  v54 = MEMORY[0x1E695BB58];
  while (v49 < [v81 count])
  {
    v55 = [v81 objectAtIndexedSubscript:v49];
    v56 = [v55 objectAtIndexedSubscript:0];
    [v56 floatValue];
    v58 = v57;

    v59 = [v55 objectAtIndexedSubscript:1];
    [v59 floatValue];
    v61 = v60;

    v62 = [v55 objectAtIndexedSubscript:2];
    [v62 floatValue];
    v64 = v63;

    if (!v80)
    {
      v66 = (v51 * v61) + 1.0;
      v64 = (v51 * v64) / (v52 * v66);
      v61 = (v20 + log2f(v66)) / v50;
    }

    v84[0] = *MEMORY[0x1E695BB60];
    LODWORD(v65) = v58;
    v67 = [MEMORY[0x1E696AD98] numberWithFloat:v65];
    v85[0] = v67;
    v84[1] = *v53;
    *&v68 = v61;
    v69 = [MEMORY[0x1E696AD98] numberWithFloat:v68];
    v85[1] = v69;
    v84[2] = *v54;
    *&v70 = v64;
    v71 = [MEMORY[0x1E696AD98] numberWithFloat:v70];
    v85[2] = v71;
    v72 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v85 forKeys:v84 count:3];
    [v48 addObject:v72];

    ++v49;
  }

  v73 = *MEMORY[0x1E695BBC0];
  v83[0] = v79;
  v74 = *MEMORY[0x1E695BBC8];
  v82[0] = v73;
  v82[1] = v74;
  v75 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:0];
  v82[2] = *MEMORY[0x1E695BBB8];
  v83[1] = v75;
  v83[2] = v48;
  v76 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v83 forKeys:v82 count:3];

  return v76;
}

+ (id)gainMapHeadroomFromFlexGTCInfo:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:*MEMORY[0x1E695BBC0]];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v3 count])
  {
    v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E695BB90]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v4;
      v5 = v4;
      goto LABEL_7;
    }

    v7 = [v3 description];
    LogError("+[HDRImage gainMapHeadroomFromFlexGTCInfo:]", 589, "Invalid FlexGTC gainmap info: %s", [v7 UTF8String]);
  }

  else
  {
    v4 = [v3 description];
    LogError("+[HDRImage gainMapHeadroomFromFlexGTCInfo:]", 583, "Invalid FlexGTC gainmap info: %s", [v4 UTF8String]);
  }

  v5 = 0;
LABEL_7:

  return v5;
}

+ (BOOL)getGainMapHeadroom:(float *)a3 fromFlexGTCInfo:(id)a4
{
  v5 = [a1 gainMapHeadroomFromFlexGTCInfo:a4];
  v6 = v5;
  if (v5)
  {
    [v5 floatValue];
    *a3 = exp2f(v7);
  }

  return v6 != 0;
}

+ (BOOL)getGainMapMin:(float *)a3 max:(float *)a4 fromFlexGTCInfo:(id)a5
{
  v7 = a5;
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x1E695BBC0]];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v8 count])
  {
    v9 = [v8 objectForKeyedSubscript:*MEMORY[0x1E695BBA8]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v8 objectForKeyedSubscript:*MEMORY[0x1E695BBA0]];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        if (a3)
        {
          [v9 floatValue];
          *a3 = v12;
        }

        if (a4)
        {
          [v10 floatValue];
          *a4 = v13;
        }
      }

      else
      {
        v14 = [v8 description];
        LogError("+[HDRImage getGainMapMin:max:fromFlexGTCInfo:]", 621, "Invalid FlexGTC gainmap info: %s", [v14 UTF8String]);
      }
    }

    else
    {
      v10 = [v8 description];
      LogError("+[HDRImage getGainMapMin:max:fromFlexGTCInfo:]", 615, "Invalid FlexGTC gainmap info: %s", [v10 UTF8String]);
      isKindOfClass = 0;
    }
  }

  else
  {
    v9 = [v8 description];
    LogError("+[HDRImage getGainMapMin:max:fromFlexGTCInfo:]", 609, "Invalid FlexGTC gainmap info: %s", [v9 UTF8String]);
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

+ (id)curveDataFromFlexGTCInfo:(id)a3
{
  v24[3] = *MEMORY[0x1E69E9840];
  v22 = a3;
  v3 = [v22 objectForKeyedSubscript:*MEMORY[0x1E695BBB8]];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v3 count])
  {
    v23 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
    v4 = 0;
    v5 = MEMORY[0x1E695BB58];
    while (1)
    {
      if (v4 >= [v3 count])
      {
        v18 = v23;
        v17 = v23;
        goto LABEL_24;
      }

      v6 = [v3 objectAtIndexedSubscript:v4];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      v7 = [v6 objectForKeyedSubscript:*MEMORY[0x1E695BB60]];
      v8 = [v6 objectForKeyedSubscript:*MEMORY[0x1E695BB68]];
      v9 = [v6 objectForKeyedSubscript:*v5];
      v10 = v9;
      if (v7)
      {
        v11 = v8 == 0;
      }

      else
      {
        v11 = 1;
      }

      v12 = v11 || v9 == 0;
      v13 = !v12;
      if (v12)
      {
        v14 = [v6 description];
        v15 = v14;
        LogError("+[HDRImage curveDataFromFlexGTCInfo:]", 651, "Invalid FlexGTC table data point: %s", [v14 UTF8String]);
      }

      else
      {
        v24[0] = v7;
        v24[1] = v8;
        v24[2] = v9;
        v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:3];
        [v23 addObject:v14];
      }

      ++v4;
      if ((v13 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    v19 = [v6 description];
    v20 = v19;
    LogError("+[HDRImage curveDataFromFlexGTCInfo:]", 644, "Invalid FlexGTC table data point: %s", [v19 UTF8String]);

LABEL_23:
    v17 = 0;
    v18 = v23;
LABEL_24:
  }

  else
  {
    v16 = [v3 description];
    LogError("+[HDRImage curveDataFromFlexGTCInfo:]", 637, "Invalid FlexGTC table data: %s", [v16 UTF8String]);

    v17 = 0;
  }

  return v17;
}

+ (id)flexRangeParametersWithHeadroom:(float)a3 options:(id)a4
{
  v5 = a4;
  v6 = objc_alloc_init(HDRFlexRangeParameters);
  v7 = [v5 objectForKeyedSubscript:@"kCGFlexRangeBaseIsHDR"];
  v8 = [v7 BOOLValue];

  v9 = [v5 objectForKeyedSubscript:@"kCGFlexRangeMin"];
  *&v10 = log2f(a3);
  if (((v9 != 0) & v8) == 1)
  {
    [v9 floatValue];
    v12 = -v11;
  }

  else
  {
    v12 = *&v10;
  }

  v13 = [v5 objectForKeyedSubscript:@"kCGFlexRangeMax"];
  v15 = v13;
  if (!((v13 == 0) | v8 & 1))
  {
    [v13 floatValue];
    v12 = *&v14;
  }

  v16 = 0.0;
  if (v8)
  {
    *&v14 = v12;
  }

  else
  {
    *&v14 = 0.0;
  }

  [(HDRFlexRangeParameters *)v6 setBaseHeadroom:v14];
  if (!v8)
  {
    v16 = v12;
  }

  *&v17 = v16;
  [(HDRFlexRangeParameters *)v6 setAlternateHeadroom:v17];
  [(HDRFlexRangeParameters *)v6 setIsMono:1];
  if (v9)
  {
    [v9 floatValue];
  }

  else
  {
    *&v18 = -v12;
    if (!v8)
    {
      *&v18 = 0.0;
    }
  }

  [(HDRFlexRangeParameters *)v6 setChannelMin:v18];
  if (v15)
  {
    [v15 floatValue];
    v16 = *&v19;
  }

  *&v19 = v16;
  [(HDRFlexRangeParameters *)v6 setChannelMax:v19];
  v20 = [v5 objectForKeyedSubscript:@"kCGFlexRangeGamma"];
  v21 = v20;
  if (v20)
  {
    [v20 floatValue];
    [(HDRFlexRangeParameters *)v6 setChannelGamma:?];
  }

  v22 = [v5 objectForKeyedSubscript:@"kCGFlexRangeEpsilon"];
  v23 = v22;
  if (v22)
  {
    [v22 floatValue];
    [(HDRFlexRangeParameters *)v6 setChannelBaseOffset:?];
    [v23 floatValue];
    [(HDRFlexRangeParameters *)v6 setChannelAlternateOffset:?];
  }

  v24 = [v5 objectForKeyedSubscript:@"kCGFlexRangeAlternateColorSpace"];
  if (v24)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = CGColorSpaceCreateWithName(v24);
      if (v25)
      {
        [(HDRFlexRangeParameters *)v6 setAlternateColorSpace:v25];
        CFRelease(v25);
      }

      else
      {
        LogError("+[HDRImage flexRangeParametersWithHeadroom:options:]", 694, "Unrecognized colorspace name: %s", [(__CFString *)v24 UTF8String]);
      }
    }
  }

  v26 = [v5 objectForKeyedSubscript:@"kCGFlexRangeUseAlternateColor"];
  -[HDRFlexRangeParameters setUseBaseColor:](v6, "setUseBaseColor:", [v26 BOOLValue] ^ 1);
  if (![(HDRFlexRangeParameters *)v6 useBaseColor]&& ![(HDRFlexRangeParameters *)v6 alternateColorSpace])
  {
    LogError("+[HDRImage flexRangeParametersWithHeadroom:options:]", 700, "Request to use alternate color but no alternate colorspace specified: %s", [(__CFString *)v24 UTF8String]);
  }

  return v6;
}

- (CGColorSpace)colorSpace
{
  result = self->_imageSpace;
  if (!result)
  {
    result = self->_imageBuffer;
    if (result)
    {
      result = xdr_CVPixelBufferCopyColorSpace(result);
      self->_imageSpace = result;
      if (!result)
      {
        v4 = [(__CVBuffer *)self->_imageBuffer description];
        LogError("-[HDRImage colorSpace]", 727, "Failed to create color space from image buffer: %s", [v4 UTF8String]);

        result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
        self->_imageSpace = result;
      }
    }
  }

  return result;
}

- (CGColorSpace)alternateColorSpace
{
  result = self->_alternateSpace;
  if (!result)
  {
    result = self->_alternateBuffer;
    if (result)
    {
      result = xdr_CVPixelBufferCopyColorSpace(result);
      self->_alternateSpace = result;
      if (!result)
      {
        v4 = [(__CVBuffer *)self->_alternateBuffer description];
        LogError("-[HDRImage alternateColorSpace]", 742, "Failed to create color space from image buffer: %s", [v4 UTF8String]);

        result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
        self->_alternateSpace = result;
      }
    }
  }

  return result;
}

- (CGColorSpace)gainMapColorSpace
{
  if (!self->_gainMapSpace)
  {
    if (self->_gainMapBuffer)
    {
      flexRangeParams = self->_flexRangeParams;
      if (flexRangeParams)
      {
        if (![(HDRFlexRangeParameters *)flexRangeParams useBaseColor])
        {
          v5 = CGColorSpaceRetain([(HDRFlexRangeParameters *)self->_flexRangeParams alternateColorSpace]);
          self->_gainMapSpace = v5;
          if (!v5)
          {
            LogError("[HDRImage gainMapColorSpace]", 760, "FlexRange alternate colorspace not set, cannot use alternate color!");
          }
        }
      }
    }
  }

  return self->_gainMapSpace;
}

- (double)gainMapSize
{
  if (![a1 hasGainMap])
  {
    return 0.0;
  }

  Width = gFunc_CVPixelBufferGetWidth([a1 gainMapBuffer]);
  return COERCE_DOUBLE(__PAIR64__(gFunc_CVPixelBufferGetHeight([a1 gainMapBuffer]), Width));
}

- (HDRImage)init
{
  [(HDRImage *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (HDRImage)initWithImageBuffer:(__CVBuffer *)a3 alternateBuffer:(__CVBuffer *)a4
{
  v5 = [(HDRImage *)self initWithImageBuffer:a3 gainMapBuffer:0 flexRangeParameters:0];
  if (a4)
  {
    v5->_alternateBuffer = gFunc_CVPixelBufferRetain(a4);
    v6 = xdr_CVPixelBufferCopyColorSpace(a4);
    v5->_alternateSpace = v6;
    if (CGColorSpaceUsesITUR_2100TF(v6))
    {
      v5->_alternateHeadroom = IIOHDRPixelBufferGetHeadroom(a4);
      v7 = 4;
    }

    else
    {
      if (!CGColorSpaceUsesExtendedRange(v5->_alternateSpace))
      {
        *&v5->_alternateHeadroom = 1065353216;
        goto LABEL_10;
      }

      Headroom = IIOHDRPixelBufferGetHeadroom(a4);
      v5->_alternateHeadroom = Headroom;
      if (Headroom <= 1.0)
      {
        v5->_alternateToneMappingMode = 0;
        goto LABEL_10;
      }

      v7 = 3;
    }

    v5->_alternateToneMappingMode = v7;
LABEL_10:
    v5->_type = 6;
  }

  return v5;
}

- (HDRImage)initWithImageBuffer:(__CVBuffer *)a3 gainMapBuffer:(__CVBuffer *)a4 gainMapMetadata:(CGImageMetadata *)a5 imageProperties:(id)a6
{
  v10 = a6;
  if (a5)
  {
    v11 = [HDRFlexRangeParameters flexRangeParametersFromMetadata:a5];
  }

  else
  {
    v11 = 0;
  }

  v12 = [(HDRImage *)self initWithImageBuffer:a3 gainMapBuffer:a4 flexRangeParameters:v11];
  if (a4 && !v11)
  {
    v23 = 0.0;
    if (a5 && ([objc_opt_class() getGainMapHeadroom:&v23 fromMetadata:a5] & 1) != 0 || (v13 = +[HDRImage getGainMapHeadroom:fromProperties:](HDRImage, "getGainMapHeadroom:fromProperties:", &v23, v10), v14 = 1.0, v13))
    {
      v14 = v23;
    }

    v12->_headroom = v14;
  }

  v15 = [v10 objectForKeyedSubscript:@"kCGFlexGTCInfo"];
  if (v15)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [v15 copy];
      flexGTCInfo = v12->_flexGTCInfo;
      v12->_flexGTCInfo = v16;

      v22 = 0.0;
      if ([objc_opt_class() getGainMapHeadroom:&v22 fromFlexGTCInfo:v15])
      {
        v12->_headroom = v22;
      }
    }
  }

  v18 = [v10 objectForKeyedSubscript:@"kCGToneMappingMode"];
  if (v18)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [v18 intValue];
      if (v19 <= 2)
      {
        if (v19 == 1)
        {
          v20 = 5;
        }

        else
        {
          if (v19 != 2)
          {
            goto LABEL_31;
          }

          v20 = 4;
        }
      }

      else
      {
        switch(v19)
        {
          case 3:
            if (v12->_type == 2)
            {
              v20 = 1;
            }

            else
            {
              v20 = 2;
            }

            break;
          case 4:
            v20 = 3;
            break;
          case 5:
            v20 = 0;
            break;
          default:
            goto LABEL_31;
        }
      }

      v12->_toneMappingMode = v20;
    }
  }

LABEL_31:
  if (![(HDRImage *)v12 orientation])
  {
    [(HDRImage *)v12 setOrientation:1];
  }

  return v12;
}

- (HDRImage)initWithImageBuffer:(__CVBuffer *)a3 gainMapBuffer:(__CVBuffer *)a4 flexRangeParameters:(id)a5
{
  v8 = a5;
  v22.receiver = self;
  v22.super_class = HDRImage;
  v9 = [(HDRImage *)&v22 init];
  v9->_imageBuffer = gFunc_CVPixelBufferRetain(a3);
  v9->_toneMappingMode = 0;
  if (a4)
  {
    if (v8)
    {
      v9->_type = 5;
      [v8 baseHeadroom];
      v11 = v10;
      [v8 alternateHeadroom];
      v9->_headroom = exp2f(fmaxf(v11, v12));
      v13 = [v8 copy];
      flexRangeParams = v9->_flexRangeParams;
      v9->_flexRangeParams = v13;
    }

    else
    {
      v9->_type = 3;
      v9->_headroom = 4.0;
    }

    v9->_gainMapBuffer = gFunc_CVPixelBufferRetain(a4);
    goto LABEL_15;
  }

  v15 = xdr_CVPixelBufferCopyColorSpace(a3);
  v9->_imageSpace = v15;
  if (CGColorSpaceIsHLGBased(v15))
  {
    v9->_type = 1;
    Headroom = IIOHDRPixelBufferGetHeadroom(a3);
LABEL_10:
    v9->_headroom = Headroom;
    v17 = 4;
    goto LABEL_11;
  }

  if (CGColorSpaceIsPQBased(v9->_imageSpace))
  {
    v9->_type = 2;
    Headroom = IIOHDRPixelBufferGetHeadroom(a3);
    goto LABEL_10;
  }

  if (CGColorSpaceUsesExtendedRange(v9->_imageSpace))
  {
    v20 = IIOHDRPixelBufferGetHeadroom(a3);
    v9->_headroom = v20;
    if (v20 <= 1.0)
    {
      v17 = 0;
      v9->_type = 0;
    }

    else
    {
      v9->_type = 4;
      v17 = 3;
    }
  }

  else
  {
    v17 = 0;
    v9->_type = 0;
    v9->_headroom = 1.0;
  }

LABEL_11:
  v9->_toneMappingMode = v17;
  if (CGColorSpaceContainsFlexGTCInfo())
  {
    v18 = CGColorSpaceCopyFlexGTCInfo();
    v21 = 0.0;
    if ([objc_opt_class() getGainMapHeadroom:&v21 fromFlexGTCInfo:v18])
    {
      v9->_headroom = v21;
    }

    v9->_toneMappingMode = 5;
  }

LABEL_15:

  return v9;
}

- (void)dealloc
{
  gFunc_CVPixelBufferRelease(self->_imageBuffer);
  gFunc_CVPixelBufferRelease(self->_gainMapBuffer);
  gFunc_CVPixelBufferRelease(self->_alternateBuffer);
  CGColorSpaceRelease(self->_imageSpace);
  CGColorSpaceRelease(self->_gainMapSpace);
  CGColorSpaceRelease(self->_alternateSpace);
  v3.receiver = self;
  v3.super_class = HDRImage;
  [(HDRImage *)&v3 dealloc];
}

- (id)description
{
  if ([(HDRImage *)self hasAlternateImage])
  {
    v50 = MEMORY[0x1E696AEC0];
    v3 = [(HDRImage *)self type];
    if (v3 > 6)
    {
      v4 = "???";
    }

    else
    {
      v4 = off_1E6EF8668[v3];
    }

    v9 = [(HDRImage *)self imageBuffer];
    Width = gFunc_CVPixelBufferGetWidth(v9);
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ldx%ld", Width, gFunc_CVPixelBufferGetHeight(v9)];
    v12 = [(HDRImage *)self imageBuffer];
    PixelFormatType = gFunc_CVPixelBufferGetPixelFormatType(v12);
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%c%c%c%c", (PixelFormatType >> 24), (PixelFormatType << 8 >> 24), (PixelFormatType >> 8), PixelFormatType];
    v15 = [(HDRImage *)self colorSpace];
    v16 = __23__HDRImage_description__block_invoke_3(v15, v15);
    [(HDRImage *)self headroom];
    v18 = v17;
    v19 = [(HDRImage *)self alternateBuffer];
    v20 = gFunc_CVPixelBufferGetWidth(v19);
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ldx%ld", v20, gFunc_CVPixelBufferGetHeight(v19)];
    v22 = [(HDRImage *)self alternateBuffer];
    v23 = gFunc_CVPixelBufferGetPixelFormatType(v22);
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%c%c%c%c", (v23 >> 24), (v23 << 8 >> 24), (v23 >> 8), v23];
    v25 = [(HDRImage *)self alternateColorSpace];
    v26 = __23__HDRImage_description__block_invoke_3(v25, v25);
    [(HDRImage *)self alternateHeadroom];
    v28 = [v50 stringWithFormat:@"<HDRImage(%s) base: %@ '%@' [%@] h=%0.1f\n\talternate: %@ '%@' [%@] h=%0.1f>", v4, v11, v14, v16, v18, v21, v24, v26, v27];
  }

  else
  {
    v5 = [(HDRImage *)self hasGainMap];
    v6 = MEMORY[0x1E696AEC0];
    v7 = [(HDRImage *)self type];
    if (!v5)
    {
      if (v7 > 6)
      {
        v29 = "???";
      }

      else
      {
        v29 = off_1E6EF8668[v7];
      }

      v43 = [(HDRImage *)self imageBuffer];
      v44 = gFunc_CVPixelBufferGetWidth(v43);
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ldx%ld", v44, gFunc_CVPixelBufferGetHeight(v43)];
      v45 = [(HDRImage *)self imageBuffer];
      v46 = gFunc_CVPixelBufferGetPixelFormatType(v45);
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%c%c%c%c", (v46 >> 24), (v46 << 8 >> 24), (v46 >> 8), v46];
      v47 = [(HDRImage *)self colorSpace];
      v16 = __23__HDRImage_description__block_invoke_3(v47, v47);
      [(HDRImage *)self headroom];
      v42 = [v6 stringWithFormat:@"<HDRImage(%s) img: %@ '%@' [%@] h=%0.1f>", v29, v11, v14, v16, v48];
      goto LABEL_16;
    }

    if (v7 > 6)
    {
      v8 = "???";
    }

    else
    {
      v8 = off_1E6EF8668[v7];
    }

    v51 = v8;
    v30 = [(HDRImage *)self imageBuffer];
    v31 = gFunc_CVPixelBufferGetWidth(v30);
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ldx%ld", v31, gFunc_CVPixelBufferGetHeight(v30)];
    v32 = [(HDRImage *)self imageBuffer];
    v33 = gFunc_CVPixelBufferGetPixelFormatType(v32);
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%c%c%c%c", (v33 >> 24), (v33 << 8 >> 24), (v33 >> 8), v33];
    v34 = [(HDRImage *)self colorSpace];
    v16 = __23__HDRImage_description__block_invoke_3(v34, v34);
    [(HDRImage *)self headroom];
    v36 = v35;
    v37 = [(HDRImage *)self gainMapBuffer];
    v38 = gFunc_CVPixelBufferGetWidth(v37);
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ldx%ld", v38, gFunc_CVPixelBufferGetHeight(v37)];
    v39 = [(HDRImage *)self gainMapBuffer];
    v40 = gFunc_CVPixelBufferGetPixelFormatType(v39);
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%c%c%c%c", (v40 >> 24), (v40 << 8 >> 24), (v40 >> 8), v40];
    v41 = [(HDRImage *)self gainMapColorSpace];
    v26 = __23__HDRImage_description__block_invoke_3(v41, v41);
    v28 = [v6 stringWithFormat:@"<HDRImage(%s) base: %@ '%@' [%@] h=%0.1f\n\tgainMap: %@ '%@' [%@]>", v51, v11, v14, v16, v36, v21, v24, v26];
  }

  v42 = v28;

LABEL_16:

  return v42;
}

__CFString *__23__HDRImage_description__block_invoke_3(int a1, CGColorSpaceRef space)
{
  v3 = CGColorSpaceCopyName(space);
  if (!v3 || (v4 = v3, [(__CFString *)v3 stringByReplacingOccurrencesOfString:@"kCGColorSpace" withString:&stru_1EF50EA10], v5 = objc_claimAutoreleasedReturnValue(), v4, !v5))
  {
    v5 = CGColorSpaceCopyICCProfileDescription();
    if (!v5)
    {
      v6 = CFCopyDescription(space);
      if (v6)
      {
        v5 = v6;
      }

      else
      {
        v5 = @"n/a";
      }
    }
  }

  return v5;
}

+ (BOOL)getPixelType:(int *)a3 YCCMatrixString:(id *)a4 chromaSubsampling:componentRange:bitDepth:isFloat:forBuffer:
{
  v8 = v7;
  v44 = v6;
  v45 = v5;
  v43 = v4;
  PixelFormatType = gFunc_CVPixelBufferGetPixelFormatType(v46);
  v12 = PixelFormatType;
  v13 = gFunc_CVPixelFormatDescriptionCreateWithPixelFormatType(0, PixelFormatType);
  v14 = [v13 objectForKeyedSubscript:*gIIO_kCVPixelFormatContainsAlpha];
  v15 = [v14 BOOLValue];

  if (v15)
  {
    v16 = gFunc_CVBufferCopyAttachment(v46, *gIIO_kCVImageBufferAlphaChannelIsOpaque, 0);
    if ([v16 BOOLValue])
    {
      v17 = 2;
    }

    else
    {
      v18 = gFunc_CVBufferCopyAttachment(v46, *gIIO_kCVImageBufferAlphaChannelModeKey, 0);
      if ([v18 isEqualToString:*gIIO_kCVImageBufferAlphaChannelMode_PremultipliedAlpha])
      {
        v17 = 3;
      }

      else if ([v18 isEqualToString:*gIIO_kCVImageBufferAlphaChannelMode_StraightAlpha])
      {
        v17 = 2;
      }

      else
      {
        v17 = 3;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  v19 = [v13 objectForKeyedSubscript:*gIIO_kCVPixelFormatContainsRGB];
  v20 = [v19 BOOLValue];

  if (!(v20 & 1 | ((v15 & 1) == 0)))
  {
    v28 = [v13 description];
    LogError("+[HDRImage getPixelType:YCCMatrixString:chromaSubsampling:componentRange:bitDepth:isFloat:forBuffer:]", 1015, "*** Unsupported (alpha) pixel format: %s", [v28 UTF8String]);
LABEL_44:
    v41 = 0;
    goto LABEL_45;
  }

  v21 = v20 ^ 1;
  if (!a3)
  {
    v21 = 1;
  }

  if ((v21 & 1) == 0)
  {
    *a3 = v17;
  }

  v22 = [v13 objectForKeyedSubscript:*gIIO_kCVPixelFormatContainsGrayscale];
  v23 = [v22 BOOLValue];

  v24 = v23 ^ 1;
  if (!a3)
  {
    v24 = 1;
  }

  if ((v24 & 1) == 0)
  {
    *a3 = 5;
  }

  v25 = [v13 objectForKeyedSubscript:*gIIO_kCVPixelFormatContainsYCbCr];
  v26 = [v25 BOOLValue];

  v27 = v26 ^ 1;
  if (!a3)
  {
    v27 = 1;
  }

  if ((v27 & 1) == 0)
  {
    *a3 = 4;
  }

  if (((v20 | v26 | v23) & 1) == 0)
  {
    v28 = [v13 description];
    LogError("+[HDRImage getPixelType:YCCMatrixString:chromaSubsampling:componentRange:bitDepth:isFloat:forBuffer:]", 1041, "*** Unsupported pixel format: %s", [v28 UTF8String]);
    goto LABEL_44;
  }

  v28 = gFunc_CVBufferCopyAttachment(v46, *gIIO_kCVImageBufferYCbCrMatrixKey, 0);
  if (((v28 == 0) & v26) == 1)
  {
    v28 = *gIIO_kCVImageBufferYCbCrMatrix_ITU_R_601_4;
    LogError("+[HDRImage getPixelType:YCCMatrixString:chromaSubsampling:componentRange:bitDepth:isFloat:forBuffer:]", 1050, "*** Missing YCC matrix, falling back to %s", [v28 UTF8String]);
  }

  if (a4)
  {
    v29 = v28;
    *a4 = v28;
  }

  v30 = [v13 objectForKeyedSubscript:*gIIO_kCVPixelFormatPlanes];
  v31 = v30;
  if (v43 && (([v30 count] == 2) & v26) == 1)
  {
    v32 = [v31 objectAtIndexedSubscript:1];
    v33 = [v32 objectForKeyedSubscript:*gIIO_kCVPixelFormatHorizontalSubsampling];
    v34 = [v33 unsignedShortValue];

    v35 = [v32 objectForKeyedSubscript:*gIIO_kCVPixelFormatVerticalSubsampling];
    v36 = [v35 unsignedShortValue];

    v37 = vmax_u32(__PAIR64__(v36, v34), 0x100000001);
    v43[1] = v37.i16[2];
    *v43 = v37.i16[0];
  }

  if (v45)
  {
    v38 = [v13 objectForKeyedSubscript:*gIIO_kCVPixelFormatComponentRange];
    if (!v38)
    {
      v38 = *gIIO_kCVPixelFormatComponentRange_FullRange;
    }

    v39 = v38;
    *v45 = v39;
  }

  if (v44)
  {
    v40 = [v13 objectForKeyedSubscript:*gIIO_kCVPixelFormatBitsPerComponent];
    *v44 = [v40 unsignedShortValue];
  }

  if (v8)
  {
    *v8 = ((v12 - 1380410945) & 0xFFFFFDFF) == 0;
  }

  v41 = 1;
LABEL_45:

  return v41;
}

+ (BOOL)getInputYCCMatrix:(id *)a3 forYCCMatrixString:(id)a4
{
  v5 = a4;
  IntegerCodePointForString = gFunc_CVYCbCrMatrixGetIntegerCodePointForString();
  if ((IntegerCodePointForString - 5) >= 2)
  {
    if ((IntegerCodePointForString - 9) < 2)
    {
      v7 = xmmword_1862057E0;
      v8 = xmmword_1862057F0;
      v9 = xmmword_186205800;
      goto LABEL_8;
    }

    if (IntegerCodePointForString == 1)
    {
      v7 = xmmword_1862057B0;
      v8 = xmmword_1862057C0;
      v9 = xmmword_1862057D0;
      goto LABEL_8;
    }

    LogError("+[HDRImage getInputYCCMatrix:forYCCMatrixString:]", 1147, "Unrecognized YCC matrix: '%s' (%d), using 601", [v5 UTF8String], IntegerCodePointForString);
  }

  v7 = xmmword_186205810;
  v8 = xmmword_186205820;
  v9 = xmmword_186205830;
LABEL_8:
  if (a3)
  {
    *(a3 + 2) = v7;
    *(a3 + 6) = DWORD1(v7);
    *a3 = vzip1q_s32(v9, v8).u64[0];
    *(a3 + 2) = vtrn2q_s32(v9, v8).u64[0];
    *(a3 + 10) = DWORD2(v7);
    *(a3 + 4) = vzip1q_s32(vdupq_laneq_s32(v9, 2), vdupq_laneq_s32(v8, 2)).u64[0];
  }

  return 1;
}

+ (BOOL)getOutputYCCMatrix:(id *)a3 forYCCMatrixString:(id)a4
{
  v5 = a4;
  IntegerCodePointForString = gFunc_CVYCbCrMatrixGetIntegerCodePointForString();
  if ((IntegerCodePointForString - 5) >= 2)
  {
    if ((IntegerCodePointForString - 9) < 2)
    {
      v7 = xmmword_186205870;
      v8 = xmmword_186205880;
      v9 = xmmword_186205890;
      goto LABEL_8;
    }

    if (IntegerCodePointForString == 1)
    {
      v7 = xmmword_186205840;
      v8 = xmmword_186205850;
      v9 = xmmword_186205860;
      goto LABEL_8;
    }

    LogError("+[HDRImage getOutputYCCMatrix:forYCCMatrixString:]", 1204, "Unrecognized YCC matrix: '%s' (%d), using 601", [v5 UTF8String], IntegerCodePointForString);
  }

  v7 = xmmword_1862058A0;
  v8 = xmmword_1862058B0;
  v9 = xmmword_1862058C0;
LABEL_8:
  if (a3)
  {
    *(a3 + 2) = v7;
    *(a3 + 6) = DWORD1(v7);
    *a3 = vzip1q_s32(v9, v8).u64[0];
    *(a3 + 2) = vtrn2q_s32(v9, v8).u64[0];
    *(a3 + 10) = DWORD2(v7);
    *(a3 + 4) = vzip1q_s32(vdupq_laneq_s32(v9, 2), vdupq_laneq_s32(v8, 2)).u64[0];
  }

  return 1;
}

+ (BOOL)getComponentMin:(id)a1 componentMax:(SEL)a2 forPixelType:componentRange:bitDepth:
{
  v7 = v6;
  v8 = v4;
  v9 = v3;
  v10 = v2;
  v11 = v5;
  if (![v11 isEqualToString:*gIIO_kCVPixelFormatComponentRange_FullRange])
  {
    if ([v11 isEqualToString:*gIIO_kCVPixelFormatComponentRange_VideoRange])
    {
      if (v7 > 11)
      {
        if (v7 == 12)
        {
          v15 = xmmword_1862058F0;
          v14.i64[0] = 0x10000000100;
          v14.i64[1] = 0x10000000100;
          goto LABEL_3;
        }

        if (v7 == 16)
        {
          v15 = xmmword_1862058E0;
          v14.i64[0] = 0x100000001000;
          v14.i64[1] = 0x100000001000;
          goto LABEL_3;
        }
      }

      else
      {
        if (v7 == 8)
        {
          v15 = xmmword_1862058D0;
          v14.i64[0] = 0x1000000010;
          v14.i64[1] = 0x1000000010;
          goto LABEL_3;
        }

        if (v7 == 10)
        {
          v15 = xmmword_186205900;
          v14.i64[0] = 0x4000000040;
          v14.i64[1] = 0x4000000040;
          goto LABEL_3;
        }
      }

      LogError("+[HDRImage getComponentMin:componentMax:forPixelType:componentRange:bitDepth:]", 1252, "Unsupported bit depth: %d", v7);
    }

    else
    {
      LogError("+[HDRImage getComponentMin:componentMax:forPixelType:componentRange:bitDepth:]", 1257, "Unsupported component range: %s", [v11 UTF8String]);
    }

    v16 = 0;
    goto LABEL_15;
  }

  v12.i32[0] = 4;
  v13.i32[0] = v8;
  v14 = vandq_s8(vdupq_lane_s32(*&vceqq_s32(v13, v12), 0), xmmword_186205910);
  v15 = vdupq_n_s32(~(-1 << v7));
LABEL_3:
  if (v10)
  {
    *v10 = v14;
  }

  if (v9)
  {
    *v9 = v15;
  }

  v16 = 1;
LABEL_15:

  return v16;
}

+ (BOOL)getInputPixelRange:(id *)a3 forPixelType:(int)a4 componentRange:(id)a5 bitDepth:(unsigned __int16)a6 isFloat:(BOOL)a7
{
  v8 = a6;
  v9 = *&a4;
  v12 = a5;
  if (a7)
  {
    __asm { FMOV            V0.4S, #1.0 }

    v18 = 0uLL;
    if (a3)
    {
LABEL_3:
      *a3 = _Q0;
      *(a3 + 1) = v18;
    }
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
    if (([a1 getComponentMin:&v29 componentMax:&v28 forPixelType:v9 componentRange:v12 bitDepth:v8] & 1) == 0)
    {
      v19 = 0;
      goto LABEL_9;
    }

    v20.i32[0] = 4;
    v21.i32[0] = v9;
    v22 = vdupq_lane_s32(*&vceqq_s32(v21, v20), 0);
    v23 = vandq_s8(xmmword_186205920, v22);
    __asm { FMOV            V3.4S, #-1.0 }

    v25 = vbslq_s8(v22, xmmword_186205930, _Q3);
    *v22.i32 = ~(-1 << v8);
    v26 = vdupq_lane_s32(*v22.i8, 0);
    _Q0 = vdivq_f32(v26, vcvtq_f32_u32(vsubq_s32(v28, v29)));
    v18 = vdivq_f32(vmlaq_f32(vmulq_f32(v25, vcvtq_f32_u32(v29)), vcvtq_f32_u32(v28), v23), v26);
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v19 = 1;
LABEL_9:

  return v19;
}

+ (BOOL)getOutputPixelRange:(id *)a3 forPixelType:(int)a4 componentRange:(id)a5 bitDepth:(unsigned __int16)a6 isFloat:(BOOL)a7
{
  v8 = a6;
  v9 = *&a4;
  v12 = a5;
  if (a7)
  {
    __asm { FMOV            V0.4S, #1.0 }

    v18 = 0uLL;
    if (a3)
    {
LABEL_3:
      *a3 = _Q0;
      *(a3 + 1) = v18;
    }
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
    if (([a1 getComponentMin:&v31 componentMax:&v30 forPixelType:v9 componentRange:v12 bitDepth:v8] & 1) == 0)
    {
      v19 = 0;
      goto LABEL_9;
    }

    v20.i32[0] = 4;
    v21.i32[0] = v9;
    v23 = vdupq_lane_s32(*&vceqq_s32(v21, v20), 0);
    __asm { FMOV            V2.4S, #1.0 }

    v25 = vbslq_s8(v23, xmmword_186205940, _Q2);
    v26.i64[0] = 0x8000000080000000;
    v26.i64[1] = 0x8000000080000000;
    v27 = vbslq_s8(v23, xmmword_186205950, v26);
    *v22.i32 = ~(-1 << v8);
    v28 = vdupq_lane_s32(v22, 0);
    _Q0 = vdivq_f32(vcvtq_f32_u32(vsubq_s32(v30, v31)), v28);
    v18 = vdivq_f32(vmlaq_f32(vmulq_f32(v27, vcvtq_f32_u32(v30)), vcvtq_f32_u32(v31), v25), v28);
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v19 = 1;
LABEL_9:

  return v19;
}

+ (BOOL)getInputPixelType:(int *)a3 range:(id *)a4 YCCMatrix:(id *)a5 forBuffer:(__CVBuffer *)a6
{
  v21 = 0;
  v20 = 0;
  v19 = 0;
  v17 = 0;
  v18 = 0;
  v10 = [a1 getPixelType:&v21 YCCMatrixString:&v18 chromaSubsampling:0 componentRange:&v17 bitDepth:&v20 isFloat:&v19 forBuffer:a6];
  v11 = v18;
  v12 = v17;
  if (v10)
  {
    v13 = [a1 getInputPixelRange:a4 forPixelType:v21 componentRange:v12 bitDepth:v20 isFloat:v19];
    v14 = v13;
    if (v21 == 4)
    {
      v15 = v13;
    }

    else
    {
      v15 = 0;
    }

    if (v15 == 1)
    {
      v14 = [a1 getInputYCCMatrix:a5 forYCCMatrixString:v11];
    }
  }

  else
  {
    v14 = 0;
  }

  if (a3)
  {
    *a3 = v21;
  }

  return v14;
}

+ (BOOL)getOutputPixelType:(id)a1 range:(SEL)a2 YCCMatrix:(int *)a3 chromaSubsampling:(id *)a4 forBuffer:(id *)a5
{
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v18 = 0;
  v19 = 0;
  v11 = [a1 getPixelType:&v22 YCCMatrixString:&v19 chromaSubsampling:v5 componentRange:&v18 bitDepth:&v21 isFloat:&v20 forBuffer:v6];
  v12 = v19;
  v13 = v18;
  if (v11)
  {
    v14 = [a1 getOutputPixelRange:a4 forPixelType:v22 componentRange:v13 bitDepth:v21 isFloat:v20];
    v15 = v14;
    if (v22 == 4)
    {
      v16 = v14;
    }

    else
    {
      v16 = 0;
    }

    if (v16 == 1)
    {
      v15 = [a1 getOutputYCCMatrix:a5 forYCCMatrixString:v12];
    }
  }

  else
  {
    v15 = 0;
  }

  if (a3)
  {
    *a3 = v22;
  }

  return v15;
}

+ (BOOL)getColorTRC:(id *)a3 matrix:(id *)a4 toneMapping:(id *)a5 fromSourceSpace:(CGColorSpace *)a6 headroom:(float)a7 toEDR:(float)a8 space:(CGColorSpace *)a9 toneMappingMode:(int)a10
{
  v56[2] = *MEMORY[0x1E69E9840];
  if (a8 <= 1.0)
  {
    if (a9)
    {
      Linearized = CGColorSpaceCreateLinearized(a9);
    }

    else
    {
      Linearized = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1B0]);
    }

    v21 = Linearized;
  }

  else
  {
    if (a9)
    {
      ExtendedLinearized = CGColorSpaceCreateExtendedLinearized(a9);
    }

    else
    {
      ExtendedLinearized = CGColorSpaceCreateWithName(*MEMORY[0x1E695F108]);
    }

    v21 = ExtendedLinearized;
    if (a8 >= a7)
    {
      goto LABEL_19;
    }
  }

  v22 = 0;
  if (a10 > 3)
  {
    switch(a10)
    {
      case 4:
        v49 = *MEMORY[0x1E695F078];
        v29 = *MEMORY[0x1E695F460];
        v48[0] = &unk_1EF5454E0;
        v30 = *MEMORY[0x1E695F458];
        v47[0] = v29;
        v47[1] = v30;
        *&v19 = a7 * 203.0;
        v31 = [MEMORY[0x1E696AD98] numberWithFloat:v19];
        v48[1] = v31;
        v47[2] = *MEMORY[0x1E695F450];
        *&v32 = a8;
        v33 = [MEMORY[0x1E696AD98] numberWithFloat:v32];
        v47[3] = *MEMORY[0x1E695F468];
        v48[2] = v33;
        v48[3] = &unk_1EF5454F0;
        v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:4];
        v50 = v34;
        v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];

        v22 = v35;
        break;
      case 5:
        v46[0] = &unk_1EF545520;
        v36 = *MEMORY[0x1E695F070];
        v45[0] = @"kCGHDRMediaReferenceWhite";
        v45[1] = v36;
        v43 = *MEMORY[0x1E695F240];
        *&v19 = a8;
        v37 = [MEMORY[0x1E696AD98] numberWithFloat:v19];
        v44 = v37;
        v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
        v46[1] = v38;
        v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:2];

        goto LABEL_23;
      case 6:
LABEL_19:
        v41 = @"kCGHDRMediaReferenceWhite";
        v42 = &unk_1EF545520;
        v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
        break;
    }
  }

  else
  {
    if ((a10 - 1) < 2)
    {
      v51[0] = @"kCGHDRMediaReferenceWhite";
      v51[1] = @"kCGApplyToneMappingForBT2100";
      v52[0] = &unk_1EF5454E0;
      v27 = [MEMORY[0x1E696AD98] numberWithBool:a8 == 1.0];
      v52[1] = v27;
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:v51 count:2];

      v22 = v28;
      goto LABEL_24;
    }

    if (!a10)
    {
      goto LABEL_19;
    }

    if (a10 == 3)
    {
      v56[0] = &unk_1EF5454E0;
      v23 = *MEMORY[0x1E695F2A8];
      v55[0] = @"kCGHDRMediaReferenceWhite";
      v55[1] = v23;
      v53 = *MEMORY[0x1E695F068];
      v24 = [MEMORY[0x1E696AD98] numberWithBool:a8 == 1.0];
      v54 = v24;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
      v56[1] = v25;
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:v55 count:2];

LABEL_23:
      v22 = v26;
    }
  }

LABEL_24:
  v39 = [a1 getColorTRC:a3 matrix:a4 toneMapping:a5 fromSourceSpace:a6 toTargetSpace:v21 options:v22];
  CFRelease(v21);

  return v39;
}

+ (BOOL)getColorTRC:(id *)a3 matrix:(id *)a4 toneMapping:(id *)a5 fromEDR:(float)a6 space:(CGColorSpace *)a7 toTargetSpace:(CGColorSpace *)a8
{
  if (a6 <= 1.0)
  {
    if (a7)
    {
      Linearized = CGColorSpaceCreateLinearized(a7);
      goto LABEL_9;
    }

    v14 = MEMORY[0x1E695F1B0];
LABEL_8:
    Linearized = CGColorSpaceCreateWithName(*v14);
    goto LABEL_9;
  }

  if (!a7)
  {
    v14 = MEMORY[0x1E695F108];
    goto LABEL_8;
  }

  Linearized = CGColorSpaceCreateExtendedLinearized(a7);
LABEL_9:
  v15 = Linearized;
  v16 = [a1 getColorTRC:a3 matrix:a4 toneMapping:a5 fromSourceSpace:Linearized toTargetSpace:a8 options:&unk_1EF545530];
  CFRelease(v15);
  return v16;
}

+ (BOOL)getColorTRC:(id *)a3 matrix:(id *)a4 toneMapping:(id *)a5 fromSourceSpace:(CGColorSpace *)a6 toTargetSpace:(CGColorSpace *)a7 options:(id)a8
{
  v14 = a8;
  if (!CGColorSpaceEqualToColorSpace())
  {
    v20 = CGColorConversionInfoCreateWithOptions(a6, a7, v14);
    if (!v20)
    {
      v23 = [(CGColorSpace *)a6 description];
      v24 = [v23 UTF8String];
      v17 = [(CGColorSpace *)a7 description];
      LogError("+[HDRImage getColorTRC:matrix:toneMapping:fromSourceSpace:toTargetSpace:options:]", 1494, "Failed to create color converter from: %s to: %s", v24, [v17 UTF8String]);

      LOBYTE(v17) = 0;
      goto LABEL_54;
    }

    v154 = 0;
    v155 = &v154;
    v156 = 0x2020000000;
    v157 = 0;
    v145 = 0;
    v146 = &v145;
    v147 = 0x5812000000;
    v148 = __Block_byref_object_copy_;
    v149 = __Block_byref_object_dispose_;
    v150 = "";
    v151 = 0u;
    v152 = 0u;
    v153 = 0;
    v141 = 0;
    v142 = &v141;
    v143 = 0x2020000000;
    v144 = 0;
    v132 = 0;
    v133 = &v132;
    v134 = 0x6012000000;
    v135 = __Block_byref_object_copy__96;
    v136 = __Block_byref_object_dispose__97;
    v137 = "";
    v138 = 0u;
    v139 = 0u;
    v140 = 0u;
    v128 = 0;
    v129 = &v128;
    v130 = 0x2020000000;
    v131 = 0;
    v119 = 0;
    v120 = &v119;
    v121 = 0x5812000000;
    v122 = __Block_byref_object_copy__99;
    v123 = __Block_byref_object_dispose__100;
    v124 = "";
    v125 = 0u;
    v126 = 0u;
    v127 = 0;
    v115 = 0;
    v116 = &v115;
    v117 = 0x2020000000;
    v118 = 0;
    v106 = 0;
    v107 = &v106;
    v108 = 0x6012000000;
    v109 = __Block_byref_object_copy__96;
    v110 = __Block_byref_object_dispose__97;
    v111 = "";
    v112 = 0u;
    v113 = 0u;
    v114 = 0u;
    v102 = 0;
    v103 = &v102;
    v104 = 0x2020000000;
    v105 = 0;
    v93 = 0;
    v94 = &v93;
    v95 = 0x5812000000;
    v96 = __Block_byref_object_copy_;
    v97 = __Block_byref_object_dispose_;
    v98 = "";
    v99 = 0u;
    v100 = 0u;
    v101 = 0;
    v89 = 0;
    v90 = &v89;
    v91 = 0x2020000000;
    v92 = 0;
    v80 = 0;
    v81 = &v80;
    v82 = 0x5812000000;
    v83 = __Block_byref_object_copy__99;
    v84 = __Block_byref_object_dispose__100;
    v85 = "";
    v86 = 0u;
    v87 = 0u;
    v88 = 0;
    v76 = 0;
    v77 = &v76;
    v78 = 0x2020000000;
    v79 = 0;
    v67 = 0;
    v68 = &v67;
    v69 = 0x5812000000;
    v70 = __Block_byref_object_copy__99;
    v71 = __Block_byref_object_dispose__100;
    v72 = "";
    v73 = 0u;
    v74 = 0u;
    v75 = 0;
    v63 = 0;
    v64 = &v63;
    v65 = 0x2020000000;
    v66 = 0;
    v54 = 0;
    v55 = &v54;
    v56 = 0x5812000000;
    v57 = __Block_byref_object_copy_;
    v58 = __Block_byref_object_dispose_;
    v59 = "";
    v60 = 0u;
    v61 = 0u;
    v62 = 0;
    aBlock[24] = MEMORY[0x1E69E9820];
    aBlock[25] = 3221225472;
    aBlock[26] = __81__HDRImage_getColorTRC_matrix_toneMapping_fromSourceSpace_toTargetSpace_options___block_invoke;
    aBlock[27] = &unk_1E6EF85D8;
    aBlock[28] = &v102;
    aBlock[29] = &v93;
    aBlock[30] = &v76;
    aBlock[31] = &v63;
    aBlock[32] = &v54;
    aBlock[33] = &v154;
    aBlock[34] = &v145;
    aBlock[15] = MEMORY[0x1E69E9820];
    aBlock[16] = 3221225472;
    aBlock[17] = __81__HDRImage_getColorTRC_matrix_toneMapping_fromSourceSpace_toTargetSpace_options___block_invoke_2;
    aBlock[18] = &unk_1E6EF8600;
    aBlock[19] = &v128;
    aBlock[20] = &v115;
    aBlock[21] = &v106;
    aBlock[22] = &v141;
    aBlock[23] = &v132;
    aBlock[5] = MEMORY[0x1E69E9820];
    aBlock[6] = 3221225472;
    aBlock[7] = __81__HDRImage_getColorTRC_matrix_toneMapping_fromSourceSpace_toTargetSpace_options___block_invoke_3;
    aBlock[8] = &unk_1E6EF8628;
    aBlock[9] = &v128;
    aBlock[10] = &v80;
    aBlock[11] = &v89;
    aBlock[12] = &v119;
    aBlock[13] = &v67;
    aBlock[14] = &v76;
    LODWORD(v17) = CGColorConversionInfoIterateFunctionsWithCallbacks();
    if (!v17)
    {
LABEL_53:
      CFRelease(v20);
      _Block_object_dispose(&v54, 8);
      _Block_object_dispose(&v63, 8);
      _Block_object_dispose(&v67, 8);
      _Block_object_dispose(&v76, 8);
      _Block_object_dispose(&v80, 8);
      _Block_object_dispose(&v89, 8);
      _Block_object_dispose(&v93, 8);
      _Block_object_dispose(&v102, 8);
      _Block_object_dispose(&v106, 8);
      _Block_object_dispose(&v115, 8);
      _Block_object_dispose(&v119, 8);
      _Block_object_dispose(&v128, 8);
      _Block_object_dispose(&v132, 8);
      _Block_object_dispose(&v141, 8);
      _Block_object_dispose(&v145, 8);
      _Block_object_dispose(&v154, 8);
      goto LABEL_54;
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __81__HDRImage_getColorTRC_matrix_toneMapping_fromSourceSpace_toTargetSpace_options___block_invoke_4;
    aBlock[3] = &__block_descriptor_40_e165_v24__0r__CGColorTRC_i____CGColorTRCParametric_ffffffff__CGColorTRCTable_Q_f_CGColorTRCBoundaryExtension_ff__CGColorTRCBoundaryExtension_ff____8____i___ffffffff__v_16l;
    aBlock[4] = a1;
    v21 = _Block_copy(aBlock);
    v22 = v21;
    if (!a3)
    {
      goto LABEL_23;
    }

    if (*(v155 + 24) == 1)
    {
      (*(v21 + 2))(v21, v146 + 6, a3);
    }

    else
    {
      a3->var0 = 0;
      *&a3[1].var1.var3 = 0;
    }

    if (*(v90 + 24) != 1)
    {
LABEL_23:
      if (!a4)
      {
        goto LABEL_31;
      }

      if (*(v116 + 24) == 1)
      {
        v29 = 0;
        v30 = v107;
      }

      else
      {
        if (*(v142 + 24) != 1 || (v129[3] & 1) != 0)
        {
          v34 = *MEMORY[0x1E69E9B10];
          v35 = *(MEMORY[0x1E69E9B10] + 32);
          *&a4[16].var1 = *(MEMORY[0x1E69E9B10] + 16);
          *&a4[32].var1 = v35;
          *&a4->var1 = v34;
          v29 = 1;
          goto LABEL_30;
        }

        v29 = 0;
        v30 = v133;
      }

      v31 = v30[3];
      v32 = v30[4];
      v33 = v30[5];
      *&a4[24].var1 = v33.i32[1];
      *&a4[40].var1 = v33.i32[2];
      *&a4[8].var1 = v33.i32[0];
      *&a4->var1 = vzip1q_s32(v31, v32).u64[0];
      *&a4[16].var1 = vtrn2q_s32(v31, v32).u64[0];
      *&a4[32].var1 = vzip1q_s32(vdupq_laneq_s32(v31, 2), vdupq_laneq_s32(v32, 2)).u64[0];
LABEL_30:
      a4[48].var1 = v29;
LABEL_31:
      if (!a5)
      {
LABEL_52:

        goto LABEL_53;
      }

      a5[1].var4.var0 = 0;
      *&a5->var4.var1.var5 = 0;
      LOBYTE(a5[1].var2) = 1;
      v36 = MEMORY[0x1E69E9B10];
      v37 = *(MEMORY[0x1E69E9B10] + 32);
      *&a5[1].var1.var1 = *(MEMORY[0x1E69E9B10] + 16);
      *&a5[1].var1.var5 = v37;
      *&a5->var4.var2 = *v36;
      *&a5[2].var1.var3 = 0;
      if (*(v129 + 24) != 1)
      {
        if (*(v103 + 24) == 1)
        {
          a5->var0 = 3;
          v41 = v94;
          a5->var1.var3 = v94[14];
          a5->var1.var4 = v41[15];
          a5->var1.var5 = v41[16];
          a5->var1.var6 = v41[17];
          a5->var1.var7 = v41[18];
          *(&a5->var1 + 8) = v41[19];
        }

        else if (*(v77 + 24) == 1)
        {
          a5->var0 = 6;
          *&a5->var4.var1.var5 = [MEMORY[0x1E695DEF0] dataWithBytes:*(v68 + 76) length:8 * *(v68 + 68) * *(v68 + 68) * *(v68 + 68)];
          if (*(v64 + 24) == 1)
          {
            (v22)[2](v22, v55 + 6, &a5[1].var4);
          }
        }

        else
        {
          a5->var0 = 0;
        }

        goto LABEL_52;
      }

      v38 = *(v120 + 12);
      if (v38 > 9)
      {
        if (v38 != 10)
        {
          if (v38 == 11)
          {
            v42 = *(v120 + 76);
            a5->var0 = 5;
            *&a5->var4.var1.var5 = [a1 tableDataWithFloatValues:v42 + 36 count:*(v42 + 28)];
            *&a5->var3.var1 = *(v42 + 8);
            LODWORD(a5->var2) = *(v42 + 24);
            goto LABEL_50;
          }

          goto LABEL_47;
        }

        v45 = *(v120 + 76);
        *&a5->var1.var3 = *(v45 + 48);
        a5->var1.var7 = *(v45 + 64);
        *&v46 = *(v45 + 4);
        v47 = *&a5->var3.var1;
        v48 = *&a5->var4.var1.var1;
        LODWORD(v47) = *(v45 + 12);
        DWORD2(v46) = *(v45 + 28);
        HIDWORD(v46) = v47;
        *(&a5->var1 + 2) = v46;
        DWORD1(v47) = *(v45 + 16);
        *&a5->var3.var1 = v47;
        DWORD2(v47) = *(v45 + 20);
        *&a5->var3.var1 = v47;
        HIDWORD(v47) = *(v45 + 24);
        *&a5->var3.var1 = v47;
        LODWORD(v48) = *(v45 + 32);
        LODWORD(a5->var4.var1.var1) = v48;
        DWORD1(v48) = *(v45 + 36);
        *&a5->var4.var1.var1 = v48;
        DWORD2(v48) = *(v45 + 40);
        a5->var0 = 4;
        *&a5->var4.var1.var1 = v48;
        HIDWORD(v48) = *(v45 + 44);
        *&a5->var4.var1.var1 = v48;
      }

      else
      {
        if (v38 != 7)
        {
          if (v38 == 9)
          {
            v39 = *(v120 + 76);
            *&a5->var1.var3 = *(v39 + 20);
            *&a5->var1.var7 = *(v39 + 36);
            LODWORD(a5->var2) = *(v39 + 44);
            v40 = *&a5->var3.var1;
            LODWORD(v40) = *(v39 + 56);
            *&a5->var3.var1 = v40;
            DWORD1(v40) = *(v39 + 60);
            *&a5->var3.var1 = v40;
            DWORD2(v40) = *(v39 + 64);
            a5->var0 = 1;
            *&a5->var3.var1 = v40;
            HIDWORD(v40) = *(v39 + 68);
            *&a5->var3.var1 = v40;
            goto LABEL_50;
          }

LABEL_47:
          LogError("+[HDRImage getColorTRC:matrix:toneMapping:fromSourceSpace:toTargetSpace:options:]", 1758, "Unsupported tone mapping transform format: %ld, unsupported!", *(v120 + 12));
          a5->var0 = 0;
          goto LABEL_50;
        }

        v43 = *(v120 + 76);
        a5->var0 = 2;
        v44 = *&a5->var3.var1;
        LODWORD(v44) = v43[1].i32[0];
        *&a5->var3.var1 = v44;
        DWORD1(v44) = v43[1].i32[1];
        *&a5->var3.var1 = v44;
        DWORD2(v44) = v43[2].i32[0];
        *&a5->var3.var1 = v44;
        HIDWORD(v44) = v43[2].i32[1];
        *&a5->var3.var1 = v44;
        a5->var2 = vrev64_s32(*v43);
      }

LABEL_50:
      if (*(v142 + 24) == 1)
      {
        LOBYTE(a5[1].var2) = 0;
        v49 = v133[3];
        v50 = v133[4];
        v51 = v133[5];
        a5[1].var0 = v51.i32[0];
        LODWORD(a5[1].var1.var3) = v51.i32[1];
        a5->var4.var2 = vzip1q_s32(v49, v50).u64[0];
        *&a5[1].var1.var1 = vtrn2q_s32(v49, v50).u64[0];
        LODWORD(a5[1].var1.var7) = v51.i32[2];
        *&a5[1].var1.var5 = vzip1q_s32(vdupq_laneq_s32(v49, 2), vdupq_laneq_s32(v50, 2)).u64[0];
      }

      goto LABEL_52;
    }

    v25 = *(v81 + 76);
    v26 = *(v146 + 12);
    if (v26 == 9)
    {
      v27 = 11;
    }

    else
    {
      if (v26 != 8)
      {
        LogError("+[HDRImage getColorTRC:matrix:toneMapping:fromSourceSpace:toTargetSpace:options:]", 1664, "Got HLG luma scaling but no HLG EOTF!");
        goto LABEL_22;
      }

      v27 = 12;
    }

    a3->var0 = v27;
LABEL_22:
    *&a3[1].var1.var3 = 0;
    v28 = *&a3[1].var0;
    LODWORD(v28) = v25[1].i32[0];
    a3[1].var0 = v28;
    DWORD1(v28) = v25[1].i32[1];
    *&a3[1].var0 = v28;
    DWORD2(v28) = v25[2].i32[0];
    *&a3[1].var0 = v28;
    HIDWORD(v28) = v25[2].i32[1];
    *&a3[1].var0 = v28;
    a3->var2 = vrev64_s32(*v25);
    goto LABEL_23;
  }

  if (a3)
  {
    a3->var0 = 0;
    *&a3[1].var1.var3 = 0;
  }

  if (a4)
  {
    v15 = *MEMORY[0x1E69E9B10];
    v16 = *(MEMORY[0x1E69E9B10] + 32);
    *&a4[16].var1 = *(MEMORY[0x1E69E9B10] + 16);
    *&a4[32].var1 = v16;
    *&a4->var1 = v15;
    a4[48].var1 = 1;
  }

  LOBYTE(v17) = 1;
  if (a5)
  {
    a5->var0 = 0;
    *&a5->var4.var1.var5 = 0;
    LOBYTE(a5[1].var2) = 1;
    v18 = MEMORY[0x1E69E9B10];
    v19 = *(MEMORY[0x1E69E9B10] + 16);
    *&a5->var4.var2 = *MEMORY[0x1E69E9B10];
    *&a5[1].var1.var1 = v19;
    *&a5[1].var1.var5 = *(v18 + 32);
    a5[1].var4.var0 = 0;
    *&a5[2].var1.var3 = 0;
  }

LABEL_54:

  return v17;
}

uint64_t __81__HDRImage_getColorTRC_matrix_toneMapping_fromSourceSpace_toTargetSpace_options___block_invoke(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if ((gIIODebugFlags & 0x300000) != 0)
  {
    v9 = [*(*(a2 + 52) + 8 * *a5) description];
    ImageIOLog("CGColorConversion TRC: %ld [%d] %s", a3, a4, [v9 UTF8String]);
  }

  if (a4 != 1 && (a4 != 3 || *a5 != a5[1] || *a5 != a5[2]))
  {
    LogError("+[HDRImage getColorTRC:matrix:toneMapping:fromSourceSpace:toTargetSpace:options:]_block_invoke", 1559, "Unsupported TRC configuration");
    return 0;
  }

  if (CGColorTRCGetGammaID() == 7)
  {
    return 1;
  }

  CGColorTRCGetFunction();
  if (*(*(a1[6] + 8) + 24) == 1)
  {
    if (*(*(a1[7] + 8) + 24) == 1)
    {
      LogError("+[HDRImage getColorTRC:matrix:toneMapping:fromSourceSpace:toTargetSpace:options:]_block_invoke", 1544, "Already have post color transform TRC stage!");
      return 0;
    }

    v11 = *(a1[8] + 8);
    *(v11 + 48) = 0u;
    *(v11 + 64) = 0u;
    *(v11 + 80) = 0;
    v12 = a1[7];
  }

  else
  {
    if (*(*(a1[9] + 8) + 24) == 1)
    {
      LogError("+[HDRImage getColorTRC:matrix:toneMapping:fromSourceSpace:toTargetSpace:options:]_block_invoke", 1552, "Already have TRC stage!");
      return 0;
    }

    v13 = *(a1[10] + 8);
    *(v13 + 48) = 0u;
    *(v13 + 64) = 0u;
    *(v13 + 80) = 0;
    v12 = a1[9];
  }

  result = 1;
  *(*(v12 + 8) + 24) = 1;
  return result;
}

uint64_t __81__HDRImage_getColorTRC_matrix_toneMapping_fromSourceSpace_toTargetSpace_options___block_invoke_2(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((gIIODebugFlags & 0x300000) != 0)
  {
    v7 = [*(*(a2 + 60) + 8 * a4) description];
    ImageIOLog("CGColorConversion matrix: %ld/%ld %s", a3, a4, [v7 UTF8String]);
  }

  if (*(*(a1[4] + 8) + 24) == 1)
  {
    if (*(*(a1[5] + 8) + 24) == 1)
    {
      LogError("+[HDRImage getColorTRC:matrix:toneMapping:fromSourceSpace:toTargetSpace:options:]_block_invoke_2", 1568, "Already have TM color matrix stage!");
      return 0;
    }

    CGColorMatrixGetMatrix();
    v9 = *(a1[6] + 8);
    v9[3] = v12;
    v9[4] = v13;
    v9[5] = v14;
    v10 = a1[5];
  }

  else
  {
    if (*(*(a1[7] + 8) + 24) == 1)
    {
      LogError("+[HDRImage getColorTRC:matrix:toneMapping:fromSourceSpace:toTargetSpace:options:]_block_invoke_2", 1576, "Already have color matrix stage!");
      return 0;
    }

    CGColorMatrixGetMatrix();
    v11 = *(a1[8] + 8);
    v11[3] = v12;
    v11[4] = v13;
    v11[5] = v14;
    v10 = a1[7];
  }

  result = 1;
  *(*(v10 + 8) + 24) = 1;
  return result;
}

uint64_t __81__HDRImage_getColorTRC_matrix_toneMapping_fromSourceSpace_toTargetSpace_options___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((gIIODebugFlags & 0x300000) != 0)
  {
    v6 = [*(*(a2 + 68) + 8 * a4) description];
    ImageIOLog("CGColorConversion NxM: %ld %s", a3, [v6 UTF8String]);
  }

  CGColorNxMTransformGetTransform();
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    LogError("+[HDRImage getColorTRC:matrix:toneMapping:fromSourceSpace:toTargetSpace:options:]_block_invoke_3", 1587, "Already have color NxM transform stage!");
  }

  else
  {
    LogError("+[HDRImage getColorTRC:matrix:toneMapping:fromSourceSpace:toTargetSpace:options:]_block_invoke_3", 1612, "CGColorConversion NxM: %ld/%ld, unsupported!");
  }

  return 0;
}

float __81__HDRImage_getColorTRC_matrix_toneMapping_fromSourceSpace_toTargetSpace_options___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 64) = 0;
  v5 = *a2;
  if (*a2 <= 4)
  {
    if (v5 <= 1)
    {
      if (!v5)
      {
        v5 = 1;
        goto LABEL_24;
      }

      if (v5 == 1)
      {
        v5 = 2;
        goto LABEL_24;
      }
    }

    else
    {
      switch(v5)
      {
        case 2:
          v5 = 3;
          goto LABEL_24;
        case 3:
          v5 = 4;
          goto LABEL_24;
        case 4:
          v5 = 5;
          goto LABEL_24;
      }
    }

    goto LABEL_26;
  }

  if (v5 > 6)
  {
    switch(v5)
    {
      case 7:
        v5 = 8;
        goto LABEL_24;
      case 8:
        v5 = 10;
        goto LABEL_24;
      case 9:
LABEL_24:
        *a3 = v5;
        goto LABEL_25;
    }

LABEL_26:
    *a3 = 0;
    goto LABEL_25;
  }

  if (v5 != 5)
  {
    if (v5 == 6)
    {
      v5 = 7;
      goto LABEL_24;
    }

    goto LABEL_26;
  }

  *a3 = 6;
  *(a3 + 64) = [*(a1 + 32) tableDataWithFloatValues:*(a2 + 12) count:*(a2 + 4)];
LABEL_25:
  *(a3 + 16) = *(a2 + 8);
  *(a3 + 20) = *(a2 + 12);
  *(a3 + 24) = *(a2 + 16);
  *(a3 + 28) = *(a2 + 20);
  *(a3 + 32) = *(a2 + 24);
  *(a3 + 36) = *(a2 + 28);
  *(a3 + 40) = *(a2 + 32);
  result = *(a2 + 4);
  *(a3 + 44) = result;
  return result;
}

+ (id)tableDataWithFloatValues:(const float *)a3 count:(unint64_t)a4
{
  v4 = a4;
  v6 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:2 * a4];
  for (i = [v6 mutableBytes]; v4; --v4)
  {
    v8 = *a3++;
    _S0 = v8;
    __asm { FCVT            H0, S0 }

    *i++ = _S0;
  }

  return v6;
}

+ (BOOL)supportsSourceColorSpace:(CGColorSpace *)a3
{
  LODWORD(v3) = 1.0;
  LODWORD(v4) = 1.0;
  return [a1 getColorTRC:0 matrix:0 toneMapping:0 fromSourceSpace:a3 headroom:0 toEDR:0 space:v3 toneMappingMode:v4];
}

- (BOOL)getInputColorTransform:(id *)a3 toEDR:(float)a4 space:(CGColorSpace *)a5
{
  if (self->_flexGTCInfo && self->_toneMappingMode)
  {
    v9 = [objc_opt_class() curveDataFromFlexGTCInfo:self->_flexGTCInfo];
    if (v9)
    {
      v37 = 0;
      v10 = [objc_opt_class() getGainMapMin:&v37 + 4 max:&v37 fromFlexGTCInfo:self->_flexGTCInfo];
      flexGTCInfo = self->_flexGTCInfo;
      if (v10)
      {
        v12 = [(NSDictionary *)flexGTCInfo objectForKeyedSubscript:*MEMORY[0x1E695BBC8]];
        v13 = [v12 unsignedIntValue];

        if (!v13)
        {
          ExtendedLinearized = CGColorSpaceCreateExtendedLinearized([(HDRImage *)self colorSpace]);
          goto LABEL_16;
        }

        v14 = CGColorSpaceCreateFromCICP();
        v15 = v14;
        if (v14)
        {
          ExtendedLinearized = CGColorSpaceCreateExtendedLinearized(v14);
          CFRelease(v15);
LABEL_16:
          if ([objc_opt_class() getColorTRC:a3 matrix:&a3[1].var0.var1.var3 toneMapping:0 fromSourceSpace:-[HDRImage colorSpace](self toTargetSpace:"colorSpace") options:{ExtendedLinearized, &unk_1EF545558}])
          {
            LODWORD(a3->var1.var1.var7) = 5;
            v28 = log2f(a4);
            v29 = 1.0 - (v28 / log2f(self->_headroom));
            *&v30 = *(&v37 + 1) * v29;
            *&v31 = *&v37 * v29;
            *&a3[1].var0.var0 = [HDRImageConverter flexGTCTableDataFromCurveArray:v9 min:v30 max:v31];
            p_headroom = &self->_headroom;
            v33 = vld1q_dup_f32(p_headroom);
            *&a3->var1.var4.var1.var5 = vdivq_f32(xmmword_186205960, v33);
            a3->var1.var4.var1.var2 = 1.0 / self->_headroom;
            a3->var1.var4.var1.var3 = 1.0;
            v34 = objc_opt_class();
            *&v35 = a4;
            *&v36 = a4;
            v27 = [v34 getColorTRC:0 matrix:&a3[2] toneMapping:0 fromSourceSpace:ExtendedLinearized headroom:a5 toEDR:0 space:v35 toneMappingMode:v36];
          }

          else
          {
            v27 = 0;
          }

          CFRelease(ExtendedLinearized);

          return v27;
        }

        LogError("[HDRImage getInputColorTransform:toEDR:space:]", 1838, "Failed to create color space from CICP tag: '%u'", v13);
      }

      else
      {
        v26 = [(NSDictionary *)flexGTCInfo description];
        LogError("-[HDRImage getInputColorTransform:toEDR:space:]", 1828, "Failed to extract FlexGTC gainMap info: '%s'", [v26 UTF8String]);
      }
    }

    else
    {
      v25 = [(NSDictionary *)self->_flexGTCInfo description];
      LogError("-[HDRImage getInputColorTransform:toEDR:space:]", 1822, "Failed to extract FlexGTC curve data: '%s'", [v25 UTF8String]);
    }

    return 0;
  }

  v17 = objc_opt_class();
  v18 = [(HDRImage *)self colorSpace];
  [(HDRImage *)self headroom];
  v20 = v19;
  v21 = [(HDRImage *)self toneMappingMode];
  LODWORD(v22) = v20;
  *&v23 = a4;

  return [v17 getColorTRC:a3 matrix:&a3[2] toneMapping:&a3->var1.var1.var7 fromSourceSpace:v18 headroom:a5 toEDR:v21 space:v22 toneMappingMode:v23];
}

- (BOOL)getInputAlternateColorTransform:(id *)a3 toEDR:(float)a4 space:(CGColorSpace *)a5
{
  v9 = objc_opt_class();
  v10 = [(HDRImage *)self alternateColorSpace];
  [(HDRImage *)self alternateHeadroom];
  v12 = v11;
  v13 = [(HDRImage *)self alternateToneMappingMode];
  LODWORD(v14) = v12;
  *&v15 = a4;

  return [v9 getColorTRC:a3 matrix:&a3[2] toneMapping:&a3->var1.var1.var7 fromSourceSpace:v10 headroom:a5 toEDR:v13 space:v14 toneMappingMode:v15];
}

- (BOOL)getOutputColorTransform:(id *)a3 fromEDR:(float)a4 space:(CGColorSpace *)a5
{
  if ([(HDRImage *)self isImageReadOnly])
  {
    a3[1].var2.var1.var7 = 0.0;
    LOBYTE(a3->var1.var2) = 1;
    a3->var1.var4.var0 = 0;
    LOBYTE(a3[1].var1.var2) = 1;
    return 1;
  }

  else
  {
    v10 = objc_opt_class();
    v11 = [(HDRImage *)self colorSpace];
    *&v12 = a4;

    return [v10 getColorTRC:&a3[1].var2.var1.var7 matrix:a3 toneMapping:&a3->var1.var4 fromEDR:a5 space:v11 toTargetSpace:v12];
  }
}

- (BOOL)getInputImagePixelTransform:(id *)a3
{
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  v5 = [objc_opt_class() getInputPixelType:&v17 range:&v15 YCCMatrix:&v12 forBuffer:{-[HDRImage imageBuffer](self, "imageBuffer")}];
  v6 = v5;
  if (a3 && v5)
  {
    a3->var0 = v17;
    v7 = v16;
    *&a3[4].var0 = v15;
    *&a3[8].var0 = v7;
    v8 = v13;
    *&a3[12].var0 = v12;
    *&a3[16].var0 = v8;
    *&a3[20].var0 = v14;
    [(HDRImage *)self orientation];
    v19 = 0u;
    v20 = 0u;
    v18 = 0u;
    CGImageGetTransformForOrientationAndSize();
    v9 = vcvt_f32_f64(v19);
    v10 = vcvt_f32_f64(v20);
    *&a3[24].var0 = vcvt_f32_f64(v18);
    *&a3[26].var0 = v9;
    *&a3[28].var0 = v10;
  }

  return v6;
}

- (BOOL)getInputAlternateImagePixelTransform:(id *)a3
{
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  v5 = [objc_opt_class() getInputPixelType:&v17 range:&v15 YCCMatrix:&v12 forBuffer:{-[HDRImage alternateBuffer](self, "alternateBuffer")}];
  v6 = v5;
  if (a3 && v5)
  {
    a3->var0 = v17;
    v7 = v16;
    *&a3[4].var0 = v15;
    *&a3[8].var0 = v7;
    v8 = v13;
    *&a3[12].var0 = v12;
    *&a3[16].var0 = v8;
    *&a3[20].var0 = v14;
    [(HDRImage *)self orientation];
    v19 = 0u;
    v20 = 0u;
    v18 = 0u;
    CGImageGetTransformForOrientationAndSize();
    v9 = vcvt_f32_f64(v19);
    v10 = vcvt_f32_f64(v20);
    *&a3[24].var0 = vcvt_f32_f64(v18);
    *&a3[26].var0 = v9;
    *&a3[28].var0 = v10;
  }

  return v6;
}

- (BOOL)getOutputImagePixelTransform:(id *)a3
{
  if ([(HDRImage *)self isImageReadOnly])
  {
    a3->var0 = 0;
    LOBYTE(v5) = 1;
  }

  else
  {
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
    v9 = 0;
    v5 = [objc_opt_class() getOutputPixelType:&v15 range:&v13 YCCMatrix:&v10 chromaSubsampling:&v9 forBuffer:{-[HDRImage imageBuffer](self, "imageBuffer")}];
    if (a3 && v5)
    {
      a3->var0 = v15;
      v6 = v14;
      *&a3[4].var0 = v13;
      *&a3[8].var0 = v6;
      v7 = v11;
      *&a3[12].var0 = v10;
      *&a3[16].var0 = v7;
      *&a3[20].var0 = v12;
      LOWORD(v7) = 1;
      WORD3(v7) = 1;
      *(&v7 + 2) = v9;
      *&a3[24].var0 = v7;
    }
  }

  return v5;
}

- (BOOL)getInputGainMapPixelTransform:(id *)a3
{
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  v5 = [objc_opt_class() getInputPixelType:&v17 range:&v15 YCCMatrix:&v12 forBuffer:{-[HDRImage gainMapBuffer](self, "gainMapBuffer")}];
  v6 = v5;
  if (a3 && v5)
  {
    a3->var0 = v17;
    v7 = v16;
    *&a3[4].var0 = v15;
    *&a3[8].var0 = v7;
    v8 = v13;
    *&a3[12].var0 = v12;
    *&a3[16].var0 = v8;
    *&a3[20].var0 = v14;
    [(HDRImage *)self gainMapOrientation];
    v19 = 0u;
    v20 = 0u;
    v18 = 0u;
    CGImageGetTransformForOrientationAndSize();
    v9 = vcvt_f32_f64(v19);
    v10 = vcvt_f32_f64(v20);
    *&a3[24].var0 = vcvt_f32_f64(v18);
    *&a3[26].var0 = v9;
    *&a3[28].var0 = v10;
  }

  return v6;
}

- (BOOL)getOutputGainMapPixelTransform:(id *)a3
{
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  v17 = 0;
  v5 = [objc_opt_class() getOutputPixelType:&v23 range:&v21 YCCMatrix:&v18 chromaSubsampling:&v17 forBuffer:{-[HDRImage gainMapBuffer](self, "gainMapBuffer")}];
  result = 0;
  if (v5)
  {
    [(HDRImage *)self gainMapSize];
    v16 = v7;
    v8 = vand_s8(v7, 0xFFFF0000FFFFLL);
    [(HDRImage *)self imageSize];
    v10 = vceq_s32(v8, vand_s8(v9, 0xFFFF0000FFFFLL));
    if ((vminv_u16(vuzp1_s16(v10, v10)) & 0x8000) != 0 || (v15 = v9, [(HDRImage *)self isImageReadOnly]))
    {
      v11 = 1;
      if (!a3)
      {
        return 1;
      }
    }

    else
    {
      if ((vminv_u16(vceq_s16(vuzp1_s16(v16, v16), vshr_n_u16(vuzp1_s16(v15, v15), 1uLL))) & 0x8000) == 0)
      {
        LogError("[HDRImage getOutputGainMapPixelTransform:]", 2020, "Unsupported gain map size: %ux%u image size: %ux%u", v16.u16[0], v16.u16[2], v15.u16[0], v15.u16[2]);
        return 0;
      }

      v11 = 2;
      if (!a3)
      {
        return 1;
      }
    }

    v12 = v23;
    a3->var0 = v23;
    v13 = v22;
    *&a3[4].var0 = v21;
    *&a3[8].var0 = v13;
    v14 = v19;
    *&a3[12].var0 = v18;
    *&a3[16].var0 = v14;
    *&a3[20].var0 = v20;
    if ((v12 - 1) < 3)
    {
      goto LABEL_8;
    }

    if (v12 == 4)
    {
      LODWORD(v14) = v17;
      *&a3[24].var0 = vmul_s16(vext_s8(vext_s8(0x1000100010001, 0x1000100010001, 2uLL), *&v14, 6uLL), vdup_n_s16(v11));
      return 1;
    }

    if (v12 == 5)
    {
LABEL_8:
      *&a3[24].var0 = v11;
    }

    return 1;
  }

  return result;
}

- (BOOL)getInputGainMapColorMatrix:(id *)a3 targetSpace:(CGColorSpace *)a4
{
  v7 = [(HDRImage *)self hasGainMap];
  if (v7)
  {
    v8 = [(HDRImage *)self gainMapColorSpace];
    if (!v8 || (v9 = v8, CGColorSpaceGetModel(v8) != kCGColorSpaceModelRGB))
    {
      v9 = [(HDRImage *)self colorSpace];
    }

    v10 = CGColorSpaceCopyBaseColorSpace();
    v11 = v10;
    if (!v10)
    {
      v10 = v9;
    }

    Linearized = CGColorSpaceCreateLinearized(v10);
    if (!Linearized)
    {
      v13 = CFCopyDescription(v9);
      LogError("[HDRImage getInputGainMapColorMatrix:targetSpace:]", 2064, "Failed to linearized gain map space: %s, using sRGB Linear instead!", [(__CFString *)v13 UTF8String]);

      Linearized = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1B0]);
    }

    v14 = objc_opt_class();
    LODWORD(v15) = 1.0;
    LODWORD(v16) = 1.0;
    v17 = [v14 getColorTRC:0 matrix:a3 toneMapping:0 fromSourceSpace:Linearized headroom:a4 toEDR:0 space:v15 toneMappingMode:v16];
    CGColorSpaceRelease(Linearized);
    CGColorSpaceRelease(v11);
    LOBYTE(v7) = v17;
  }

  return v7;
}

- (BOOL)getOutputGainMapColorMatrix:(id *)a3 lumaWeights:isLuma:sourceSpace:
{
  v6 = v5;
  v7 = v4;
  v8 = v3;
  if (![(HDRImage *)self hasGainMap])
  {
    return 0;
  }

  v18 = 0;
  v17 = 0;
  v11 = [objc_opt_class() getPixelType:&v18 YCCMatrixString:&v17 chromaSubsampling:0 componentRange:0 bitDepth:0 isFloat:0 forBuffer:{-[HDRImage gainMapBuffer](self, "gainMapBuffer")}];
  v12 = v17;
  if (!v11)
  {
    goto LABEL_12;
  }

  v13 = [(HDRImage *)self gainMapColorSpace];
  if (!v13)
  {
    v13 = [(HDRImage *)self colorSpace];
  }

  v14 = objc_opt_class();
  [(HDRImage *)self headroom];
  if ([v14 getColorTRC:0 matrix:a3 toneMapping:0 fromEDR:v6 space:v13 toTargetSpace:?])
  {
    if (v18 == 5)
    {
      if (v8)
      {
        *v8 = xmmword_186205960;
      }

      v15 = 1;
      if (v7)
      {
        *v7 = 1;
      }
    }

    else
    {
      if (v7)
      {
        *v7 = 0;
      }

      if (v8)
      {
        *v8 = 0;
        *(v8 + 8) = 0;
      }

      v15 = 1;
    }
  }

  else
  {
LABEL_12:
    v15 = 0;
  }

  return v15;
}

- (BOOL)getInputGainMapTransform:(id *)a3 toEDR:(float)a4 space:(CGColorSpace *)a5 needsGainMap:(BOOL *)a6 baseIsSDR:(BOOL *)a7
{
  if ([(HDRImage *)self type]== 3)
  {
    v14 = 1;
    if (a4 > 1.0)
    {
      *v13.i32 = a4 + -1.0;
      if ((a4 + -1.0) < 0.0)
      {
        *v13.i32 = 0.0;
      }

      *&a3[10].var1.var1.var1 = 1;
      *&a3[12].var0.var0 = vdupq_n_s32(0x400CCCCDu);
      *&a3[13].var1.var0.var0 = vdupq_lane_s32(v13, 0);
      __asm { FMOV            V0.4S, #1.0 }

      *&a3[14].var1.var1.var1 = _Q0;
      *&a3[16].var0.var0 = 0u;
      *&a3[17].var1.var0.var0 = 0u;
      *&a3[18].var1.var1.var1 = 0u;
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  if ([(HDRImage *)self type]== 5)
  {
    [(HDRFlexRangeParameters *)self->_flexRangeParams baseHeadroom];
    v21 = exp2f(v20);
    v14 = v21 <= 1.0;
    if (v21 > 1.0)
    {
      v22 = v21 > a4;
    }

    else
    {
      v22 = a4 > 1.0;
    }

    if (v22)
    {
      v23 = v21;
      [(HDRFlexRangeParameters *)self->_flexRangeParams channelGammaRGB];
      v46 = v24;
      [(HDRFlexRangeParameters *)self->_flexRangeParams channelMinRGB];
      v45 = v25;
      [(HDRFlexRangeParameters *)self->_flexRangeParams channelMaxRGB];
      v44 = v26;
      [(HDRFlexRangeParameters *)self->_flexRangeParams channelBaseOffsetRGB];
      v43 = v27;
      [(HDRFlexRangeParameters *)self->_flexRangeParams channelAlternateOffsetRGB];
      v42 = v28;
      v29 = log2f(a4);
      [(HDRFlexRangeParameters *)self->_flexRangeParams baseHeadroom];
      v31 = v29 - v30;
      [(HDRFlexRangeParameters *)self->_flexRangeParams alternateHeadroom];
      v33 = v32;
      [(HDRFlexRangeParameters *)self->_flexRangeParams baseHeadroom];
      *v34.i32 = fminf(fmaxf(v31 / (v33 - *v34.i32), 0.0), 1.0);
      if (v23 >= a4)
      {
        *v34.i32 = -*v34.i32;
      }

      __asm { FMOV            V1.4S, #1.0 }

      *&a3[10].var1.var1.var1 = 2;
      *&a3[12].var0.var0 = vdivq_f32(_Q1, v46);
      *&a3[13].var1.var0.var0 = vsubq_f32(v44, v45);
      *&a3[14].var1.var1.var1 = v45;
      *&a3[16].var0.var0 = v43;
      *&a3[17].var1.var0.var0 = v42;
      *&a3[18].var1.var1.var1 = vdupq_lane_s32(v34, 0);
LABEL_14:
      [(HDRImage *)self getInputGainMapColorMatrix:&a3[20] targetSpace:a5];
      [(HDRImage *)self getInputGainMapPixelTransform:a3];
      v36 = 1;
      if (!a6)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

LABEL_16:
    v36 = 0;
    *&a3[10].var1.var1.var1 = 0;
    v37 = MEMORY[0x1E69E9B10];
    v38 = *(MEMORY[0x1E69E9B10] + 16);
    *&a3[20].var0.var0 = *MEMORY[0x1E69E9B10];
    *&a3[21].var1.var0.var0 = v38;
    *&a3[22].var1.var1.var1 = *(v37 + 32);
    LOBYTE(a3[24].var0.var0) = 1;
    if (!a6)
    {
LABEL_18:
      if (a7)
      {
        *a7 = v14;
      }

      return 1;
    }

LABEL_17:
    *a6 = v36;
    goto LABEL_18;
  }

  v40 = [(HDRImage *)self type];
  if (v40 > 6)
  {
    v41 = "???";
  }

  else
  {
    v41 = off_1E6EF8668[v40];
  }

  LogError("[HDRImage getInputGainMapTransform:toEDR:space:needsGainMap:baseIsSDR:]", 2180, "Unexpected HDR type: %s", v41);
  return 0;
}

- (BOOL)getOutputGainMapTransform:(id *)a3 fromEDR:(float)a4 space:(CGColorSpace *)a5 needsGainMap:(BOOL *)a6 baseIsSDR:(BOOL *)a7
{
  if ([(HDRImage *)self type]== 3)
  {
    __asm { FMOV            V0.2S, #1.0 }

    *&_D0.i32[1] = a4;
    *&a3[14].var1.var0 = _D0;
    v18 = 1;
    a3->var0.var0.var0 = 1;
    *v12.i32 = 1.0 / (a4 + -1.0);
    *_D0.i32 = -1.0 / (a4 + -1.0);
    *&a3[1].var0.var1.var1 = vdupq_n_s32(0x3EE8BA2Eu);
    *&a3[2].var1.var0 = vdupq_lane_s32(v12, 0);
    *&a3[4].var0.var0.var0 = vdupq_lane_s32(_D0, 0);
    *&a3[5].var0.var1.var1 = vdupq_n_s32(0x3A83126Fu);
    *&a3[6].var1.var0 = 0u;
    *&a3[8].var0.var0.var0 = 0u;
  }

  else
  {
    if ([(HDRImage *)self type]!= 5)
    {
      v32 = 0;
      result = 1;
      goto LABEL_7;
    }

    [(HDRFlexRangeParameters *)self->_flexRangeParams baseHeadroom];
    v37 = exp2f(v19);
    [(HDRFlexRangeParameters *)self->_flexRangeParams alternateHeadroom];
    v35 = exp2f(v20);
    [(HDRFlexRangeParameters *)self->_flexRangeParams channelGamma];
    v34 = v21;
    [(HDRFlexRangeParameters *)self->_flexRangeParams channelMin];
    v23 = v22;
    [(HDRFlexRangeParameters *)self->_flexRangeParams channelMax];
    v25 = v24;
    [(HDRFlexRangeParameters *)self->_flexRangeParams channelBaseOffset];
    v33 = v26;
    [(HDRFlexRangeParameters *)self->_flexRangeParams channelAlternateOffset];
    *v27.i32 = 1.0 / (v25 - v23);
    *v28.i32 = -v23 / (v25 - v23);
    *&a3[14].var1.var0 = __PAIR64__(LODWORD(v35), LODWORD(v37));
    a3->var0.var0.var0 = 2;
    *&a3[1].var0.var1.var1 = vdupq_lane_s32(v34, 0);
    *&a3[2].var1.var0 = vdupq_lane_s32(v27, 0);
    *&a3[4].var0.var0.var0 = vdupq_lane_s32(v28, 0);
    *&a3[5].var0.var1.var1 = vdupq_lane_s32(v33, 0);
    *&a3[6].var1.var0 = vdupq_lane_s32(v29, 0);
    *&a3[8].var0.var0.var0 = 0u;
    v18 = v37 < v35;
  }

  *a7 = v18;
  v38 = 0;
  v30 = [(HDRImage *)self getOutputGainMapColorMatrix:&a3[9].var0.var1 lumaWeights:&a3[16] isLuma:&v38 sourceSpace:a5];
  a3[17].var0.var1.var1 = v38;
  result = v30 & [(HDRImage *)self getOutputGainMapPixelTransform:&a3[18].var1];
  v32 = 1;
LABEL_7:
  *a6 = v32;
  return result;
}

- (BOOL)getInputImageTransform:(id *)a3 toEDR:(float)a4 space:(CGColorSpace *)a5
{
  v9 = [(HDRImage *)self getInputImagePixelTransform:?];
  *&v10 = a4;
  return v9 & [(HDRImage *)self getInputColorTransform:&a3->var1.var1.var4.var1.var3 toEDR:a5 space:v10];
}

- (BOOL)getInputAlternateImageTransform:(id *)a3 toEDR:(float)a4 space:(CGColorSpace *)a5
{
  v9 = [(HDRImage *)self getInputAlternateImagePixelTransform:?];
  *&v10 = a4;
  return v9 & [(HDRImage *)self getInputAlternateColorTransform:&a3->var1.var1.var4.var1.var3 toEDR:a5 space:v10];
}

- (BOOL)getOutputImageTransform:(id *)a3 fromEDR:(float)a4 space:(CGColorSpace *)a5
{
  v9 = [(HDRImage *)self getOutputImagePixelTransform:&a3[2].var0.var1.var2];
  *&v10 = a4;
  return v9 & [(HDRImage *)self getOutputColorTransform:a3 fromEDR:a5 space:v10];
}

- (BOOL)getInputTransform:(id *)a3 toEDR:(float)a4 space:(CGColorSpace *)a5
{
  if (!a3)
  {
    v29 = [MEMORY[0x1E696AAA8] currentHandler];
    [v29 handleFailureInMethod:a2 object:self file:@"HDRImage.mm" lineNumber:2283 description:{@"Invalid parameter not satisfying: %@", @"outTransform != NULL"}];
  }

  v33 = 0;
  if ([(HDRImage *)self hasGainMap])
  {
    *&v9 = a4;
    [(HDRImage *)self getInputGainMapTransform:&a3[2].var1.var1.var1.var4.var1.var5 toEDR:a5 space:&v33 + 1 needsGainMap:&v33 baseIsSDR:v9];
    if (HIBYTE(v33) == 1)
    {
      v11 = v33;
      if (v33)
      {
        v12 = 3;
      }

      else
      {
        v12 = 1;
      }

      a3->var0 = v12;
      a4 = 1.0;
      if ((v11 & 1) == 0)
      {
        [(HDRImage *)self headroom];
        a4 = *&v10;
      }

      goto LABEL_19;
    }

LABEL_18:
    a3->var0 = 0;
LABEL_19:
    *&v10 = a4;
    v16 = [(HDRImage *)self getInputImageTransform:&a3->var1.var1 toEDR:a5 space:v10];
    goto LABEL_20;
  }

  if (![(HDRImage *)self hasAlternateImage])
  {
    goto LABEL_18;
  }

  alternateHeadroom = self->_alternateHeadroom;
  LOBYTE(v33) = alternateHeadroom > 1.0;
  if (alternateHeadroom <= 1.0)
  {
    v14 = 4;
  }

  else
  {
    v14 = 6;
  }

  v15 = ((a4 <= 1.0) | ~v33) & ((a4 != 1.0) | v33) & 1;
  if (((a4 <= 1.0) | ~v33) & ((a4 != 1.0) | v33))
  {
    v14 = 0;
  }

  a3->var0 = v14;
  if (v15)
  {
    goto LABEL_19;
  }

  *&v10 = a4;
  v16 = [(HDRImage *)self getInputAlternateImageTransform:&a3->var1.var1 toEDR:a5 space:v10];
LABEL_20:
  v17 = v16;
  if (HIBYTE(v33) == 1 && (LOBYTE(a3[4].var1.var1.var0.var1.var7) & 1) == 0)
  {
    p_var3 = &a3[2].var1.var1.var1.var1.var3;
    if (LOBYTE(a3[2].var1.var1.var1.var4.var1.var1))
    {
      v38 = __invert_f3(*&a3[4].var0);
      LODWORD(a3[2].var1.var1.var1.var1.var5) = v38.columns[0].i32[2];
      *p_var3 = v38.columns[0].i64[0];
      LODWORD(a3[2].var1.var1.var1.var2) = v38.columns[1].i32[2];
      *&a3[2].var1.var1.var1.var1.var7 = v38.columns[1].i64[0];
      a3[2].var1.var1.var1.var4.var0 = v38.columns[2].i32[2];
      *&a3[2].var1.var1.var1.var3.var1 = v38.columns[2].i64[0];
      LOBYTE(a3[2].var1.var1.var1.var4.var1.var1) = 0;
    }

    else
    {
      v19 = *&a3[4].var0;
      v20 = vandq_s8(vandq_s8(vceqq_f32(*&a3[2].var1.var1.var1.var1.var7, v19.columns[1]), vceqq_f32(*&a3[2].var1.var1.var1.var1.var3, v19.columns[0])), vceqq_f32(*&a3[2].var1.var1.var1.var3.var1, v19.columns[2]));
      v20.i32[3] = v20.i32[2];
      if ((vminvq_u32(v20) & 0x80000000) != 0)
      {
        v25 = *MEMORY[0x1E69E9B10];
        v26 = *(MEMORY[0x1E69E9B10] + 32);
        *&a3[2].var1.var1.var1.var1.var7 = *(MEMORY[0x1E69E9B10] + 16);
        *&a3[2].var1.var1.var1.var3.var1 = v26;
        *p_var3 = v25;
        LOBYTE(a3[2].var1.var1.var1.var4.var1.var1) = 1;
      }

      else
      {
        v30 = *&a3[2].var1.var1.var1.var1.var3;
        v31 = *&a3[2].var1.var1.var1.var1.var7;
        v32 = *&a3[2].var1.var1.var1.var3.var1;
        v39 = __invert_f3(v19);
        v21 = 0;
        v34[0] = v30;
        v34[1] = v31;
        v34[2] = v32;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        do
        {
          *(&v35 + v21 * 16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v39.columns[0], COERCE_FLOAT(v34[v21])), v39.columns[1], *&v34[v21], 1), v39.columns[2], v34[v21], 2);
          ++v21;
        }

        while (v21 != 3);
        v22 = v35;
        v23 = v36;
        v24 = v37;
        a3[2].var1.var1.var1.var1.var5 = *(&v35 + 2);
        LODWORD(a3[2].var1.var1.var1.var2) = DWORD2(v23);
        *p_var3 = v22;
        *&a3[2].var1.var1.var1.var1.var7 = v23;
        a3[2].var1.var1.var1.var4.var0 = DWORD2(v24);
        *&a3[2].var1.var1.var1.var3.var1 = v24;
      }
    }
  }

  return v17;
}

- (BOOL)getOutputTransform:(id *)a3 fromEDR:(float)a4 space:(CGColorSpace *)a5
{
  if (!a3)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"HDRImage.mm" lineNumber:2346 description:{@"Invalid parameter not satisfying: %@", @"outTransform != NULL"}];
  }

  v17 = 0;
  if ([(HDRImage *)self hasGainMap]&& (*&v9 = a4, [(HDRImage *)self getOutputGainMapTransform:&a3[2].var1.var0.var2.var1.var1 fromEDR:a5 space:&v17 + 1 needsGainMap:&v17 baseIsSDR:v9], HIBYTE(v17) == 1))
  {
    if (v17)
    {
      v10 = 3;
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = [(HDRImage *)self isImageReadOnly];
  v13 = v10 | 8;
  if (!v11)
  {
    v13 = v10;
  }

  a3->var0 = v13;
  if (HIBYTE(v17) != 1 || (LODWORD(v12) = 1.0, (v17 & 1) == 0))
  {
    *&v12 = a4;
  }

  return [(HDRImage *)self getOutputImageTransform:&a3->var1.var0.var1 fromEDR:a5 space:v12];
}

- (id)inputTransformToEDR:(float)a3 space:(CGColorSpace *)a4
{
  v7 = objc_alloc_init(HDRInputTransform);
  v8 = [(HDRInputTransform *)v7 storage];
  *&v9 = a3;
  if ([(HDRImage *)self getInputTransform:v8 toEDR:a4 space:v9])
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  return v10;
}

- (id)outputTransformFromEDR:(float)a3 space:(CGColorSpace *)a4
{
  v7 = objc_alloc_init(HDROutputTransform);
  v8 = [(HDROutputTransform *)v7 storage];
  *&v9 = a3;
  if ([(HDRImage *)self getOutputTransform:v8 fromEDR:a4 space:v9])
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  return v10;
}

@end