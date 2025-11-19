@interface CIRAWFilter
+ (CIRAWFilter)filterWithCVPixelBuffer:(CVPixelBufferRef)buffer properties:(NSDictionary *)properties;
+ (CIRAWFilter)filterWithImageData:(NSData *)data identifierHint:(NSString *)identifierHint;
+ (CIRAWFilter)filterWithImageURL:(NSURL *)url;
+ (CIRAWFilter)filterWithImageURL:(id)a3 options:(id)a4;
+ (NSArray)supportedCameraModels;
+ (id)customAttributes;
- (BOOL)isColorNoiseReductionSupported;
- (BOOL)isContrastSupported;
- (BOOL)isDetailSupported;
- (BOOL)isDraftModeEnabled;
- (BOOL)isLensCorrectionEnabled;
- (BOOL)isLensCorrectionSupported;
- (BOOL)isLocalToneMapSupported;
- (BOOL)isLuminanceNoiseReductionSupported;
- (BOOL)isMoireReductionSupported;
- (BOOL)isSharpnessSupported;
- (CGImagePropertyOrientation)orientation;
- (CGPoint)neutralChromaticity;
- (CGPoint)neutralLocation;
- (CGSize)nativeSize;
- (CIFilter)linearSpaceFilter;
- (CIImage)previewImage;
- (CIRAWDecoderVersion)decoderVersion;
- (CIRAWFilter)initWithCVPixelBuffer:(__CVBuffer *)a3 properties:(id)a4;
- (CIRAWFilter)initWithImageData:(id)a3 identifierHint:(id)a4;
- (CIRAWFilter)initWithImageURL:(id)a3;
- (NSArray)supportedDecoderVersions;
- (NSDictionary)properties;
- (float)baselineExposure;
- (float)boostAmount;
- (float)boostShadowAmount;
- (float)colorNoiseReductionAmount;
- (float)contrastAmount;
- (float)detailAmount;
- (float)exposure;
- (float)extendedDynamicRangeAmount;
- (float)localToneMapAmount;
- (float)luminanceNoiseReductionAmount;
- (float)moireReductionAmount;
- (float)neutralTemperature;
- (float)neutralTint;
- (float)scaleFactor;
- (float)shadowBias;
- (float)sharpnessAmount;
- (id)attributes;
- (id)auxImageWithKey:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)outputImage;
- (void)dealloc;
- (void)setBaselineExposure:(float)baselineExposure;
- (void)setBoostAmount:(float)boostAmount;
- (void)setBoostShadowAmount:(float)boostShadowAmount;
- (void)setColorNoiseReductionAmount:(float)colorNoiseReductionAmount;
- (void)setContrastAmount:(float)contrastAmount;
- (void)setDecoderVersion:(CIRAWDecoderVersion)decoderVersion;
- (void)setDetailAmount:(float)detailAmount;
- (void)setDraftModeEnabled:(BOOL)draftModeEnabled;
- (void)setExposure:(float)exposure;
- (void)setExtendedDynamicRangeAmount:(float)extendedDynamicRangeAmount;
- (void)setGamutMappingEnabled:(BOOL)gamutMappingEnabled;
- (void)setHighlightRecoveryEnabled:(BOOL)a3;
- (void)setLensCorrectionEnabled:(BOOL)lensCorrectionEnabled;
- (void)setLinearSpaceFilter:(CIFilter *)linearSpaceFilter;
- (void)setLocalToneMapAmount:(float)localToneMapAmount;
- (void)setLuminanceNoiseReductionAmount:(float)luminanceNoiseReductionAmount;
- (void)setMoireReductionAmount:(float)moireReductionAmount;
- (void)setNeutralChromaticity:(CGPoint)neutralChromaticity;
- (void)setNeutralLocation:(CGPoint)neutralLocation;
- (void)setNeutralTemperature:(float)neutralTemperature;
- (void)setNeutralTint:(float)neutralTint;
- (void)setOrientation:(CGImagePropertyOrientation)orientation;
- (void)setScaleFactor:(float)scaleFactor;
- (void)setShadowBias:(float)shadowBias;
- (void)setSharpnessAmount:(float)sharpnessAmount;
@end

@implementation CIRAWFilter

+ (id)customAttributes
{
  v5[3] = *MEMORY[0x1E69E9840];
  v4[0] = @"CIAttributeFilterCategories";
  v3[0] = @"CICategoryStillImage";
  v3[1] = @"CICategoryHighDynamicRange";
  v3[2] = @"CICategoryBuiltIn";
  v5[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:3];
  v5[1] = @"12.0";
  v4[1] = @"CIAttributeFilterAvailable_iOS";
  v4[2] = @"CIAttributeFilterAvailable_Mac";
  v5[2] = @"15.0";
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:3];
}

- (CGSize)nativeSize
{
  v2 = [(CIRAWFilterImpl *)[(CIRAWFilter *)self filterImplementation] valueForKey:@"outputNativeSize"];
  [v2 X];
  v4 = v3;
  [v2 Y];
  v6 = v5;
  v7 = v4;
  result.height = v6;
  result.width = v7;
  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_autoreleasePoolPush();
  v8.receiver = self;
  v8.super_class = CIRAWFilter;
  v6 = [(CIFilter *)&v8 copyWithZone:a3];
  [v6 setFilterImplementation:{-[CIRAWFilterImpl copy](self->filterImplementation, "copy")}];
  [v6 setImageURL:{-[NSURL copy](self->imageURL, "copy")}];
  [v6 setImageData:{-[NSData copy](self->imageData, "copy")}];
  [v6 setImageDataHint:{-[NSString copy](self->imageDataHint, "copy")}];
  objc_autoreleasePoolPop(v5);
  return v6;
}

- (id)outputImage
{
  v2 = [(CIRAWFilter *)self filterImplementation];

  return [(CIRAWFilterImpl *)v2 outputImage];
}

- (NSDictionary)properties
{
  v2 = [(CIRAWFilter *)self filterImplementation];

  return [(CIRAWFilterImpl *)v2 valueForKey:@"properties"];
}

- (CGImagePropertyOrientation)orientation
{
  v2 = [(CIRAWFilterImpl *)[(CIRAWFilter *)self filterImplementation] valueForKey:@"inputImageOrientation"];

  return [v2 intValue];
}

- (void)setOrientation:(CGImagePropertyOrientation)orientation
{
  v3 = *&orientation;
  v4 = [(CIRAWFilter *)self filterImplementation];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:v3];

  [(CIRAWFilterImpl *)v4 setValue:v5 forKey:@"inputImageOrientation"];
}

- (BOOL)isDraftModeEnabled
{
  v2 = [(CIRAWFilterImpl *)[(CIRAWFilter *)self filterImplementation] valueForKey:@"inputDraftMode"];

  return [v2 BOOLValue];
}

- (void)setDraftModeEnabled:(BOOL)draftModeEnabled
{
  v3 = draftModeEnabled;
  v4 = [(CIRAWFilter *)self filterImplementation];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:v3];

  [(CIRAWFilterImpl *)v4 setValue:v5 forKey:@"inputDraftMode"];
}

- (NSArray)supportedDecoderVersions
{
  v19[8] = *MEMORY[0x1E69E9840];
  v18[0] = @"9";
  v18[1] = @"9.dng";
  v19[0] = @"9";
  v19[1] = @"9.dng";
  v18[2] = @"8";
  v18[3] = @"8.dng";
  v19[2] = @"8";
  v19[3] = @"8.dng";
  v18[4] = @"7";
  v18[5] = @"7.dng";
  v19[4] = @"7";
  v19[5] = @"7.dng";
  v18[6] = @"6";
  v18[7] = @"6.dng";
  v19[6] = @"6";
  v19[7] = @"6.dng";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:8];
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = [(CIRAWFilterImpl *)[(CIRAWFilter *)self filterImplementation] valueForKey:@"supportedDecoderVersions"];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [v3 objectForKeyedSubscript:*(*(&v12 + 1) + 8 * v9)];
        if (v10)
        {
          [v4 addObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v7);
  }

  if ([v4 count])
  {
    return [MEMORY[0x1E695DEC8] arrayWithArray:v4];
  }

  v16 = @"None";
  return [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
}

- (CIRAWDecoderVersion)decoderVersion
{
  v2 = [(CIRAWFilter *)self filterImplementation];

  return [(CIRAWFilterImpl *)v2 valueForKey:@"inputDecoderVersion"];
}

- (void)setDecoderVersion:(CIRAWDecoderVersion)decoderVersion
{
  v4 = [(CIRAWFilter *)self filterImplementation];

  [(CIRAWFilterImpl *)v4 setValue:decoderVersion forKey:@"inputDecoderVersion"];
}

- (float)scaleFactor
{
  v2 = [(CIRAWFilterImpl *)[(CIRAWFilter *)self filterImplementation] valueForKey:@"inputScaleFactor"];

  [v2 floatValue];
  return result;
}

- (void)setScaleFactor:(float)scaleFactor
{
  v4 = [(CIRAWFilter *)self filterImplementation];
  *&v5 = scaleFactor;
  v6 = [MEMORY[0x1E696AD98] numberWithFloat:v5];

  [(CIRAWFilterImpl *)v4 setValue:v6 forKey:@"inputScaleFactor"];
}

- (float)exposure
{
  v2 = [(CIRAWFilterImpl *)[(CIRAWFilter *)self filterImplementation] valueForKey:@"inputEV"];

  [v2 floatValue];
  return result;
}

- (void)setExposure:(float)exposure
{
  v4 = [(CIRAWFilter *)self filterImplementation];
  *&v5 = exposure;
  v6 = [MEMORY[0x1E696AD98] numberWithFloat:v5];

  [(CIRAWFilterImpl *)v4 setValue:v6 forKey:@"inputEV"];
}

- (float)shadowBias
{
  v2 = [(CIRAWFilterImpl *)[(CIRAWFilter *)self filterImplementation] valueForKey:@"inputBias"];

  [v2 floatValue];
  return result;
}

- (void)setShadowBias:(float)shadowBias
{
  v4 = [(CIRAWFilter *)self filterImplementation];
  *&v5 = shadowBias;
  v6 = [MEMORY[0x1E696AD98] numberWithFloat:v5];

  [(CIRAWFilterImpl *)v4 setValue:v6 forKey:@"inputBias"];
}

- (float)baselineExposure
{
  v2 = [(CIRAWFilterImpl *)[(CIRAWFilter *)self filterImplementation] valueForKey:@"inputBaselineExposure"];

  [v2 floatValue];
  return result;
}

- (void)setBaselineExposure:(float)baselineExposure
{
  v4 = [(CIRAWFilter *)self filterImplementation];
  *&v5 = baselineExposure;
  v6 = [MEMORY[0x1E696AD98] numberWithFloat:v5];

  [(CIRAWFilterImpl *)v4 setValue:v6 forKey:@"inputBaselineExposure"];
}

- (float)boostAmount
{
  v2 = [(CIRAWFilterImpl *)[(CIRAWFilter *)self filterImplementation] valueForKey:@"inputBoost"];

  [v2 floatValue];
  return result;
}

- (void)setBoostAmount:(float)boostAmount
{
  v4 = [(CIRAWFilter *)self filterImplementation];
  *&v5 = boostAmount;
  v6 = [MEMORY[0x1E696AD98] numberWithFloat:v5];

  [(CIRAWFilterImpl *)v4 setValue:v6 forKey:@"inputBoost"];
}

- (float)boostShadowAmount
{
  v2 = [(CIRAWFilterImpl *)[(CIRAWFilter *)self filterImplementation] valueForKey:@"inputBoostShadowAmount"];

  [v2 floatValue];
  return result;
}

- (void)setBoostShadowAmount:(float)boostShadowAmount
{
  v4 = [(CIRAWFilter *)self filterImplementation];
  *&v5 = boostShadowAmount;
  v6 = [MEMORY[0x1E696AD98] numberWithFloat:v5];

  [(CIRAWFilterImpl *)v4 setValue:v6 forKey:@"inputBoostShadowAmount"];
}

- (void)setHighlightRecoveryEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(CIRAWFilter *)self filterImplementation];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:!v3];

  [(CIRAWFilterImpl *)v4 setValue:v5 forKey:@"inputDisableHighlightRecovery"];
}

- (void)setGamutMappingEnabled:(BOOL)gamutMappingEnabled
{
  v3 = gamutMappingEnabled;
  v4 = [(CIRAWFilter *)self filterImplementation];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:!v3];

  [(CIRAWFilterImpl *)v4 setValue:v5 forKey:@"inputDisableGamutMap"];
}

- (BOOL)isLensCorrectionSupported
{
  v2 = [(CIRAWFilterImpl *)[(CIRAWFilter *)self filterImplementation] valueForKey:@"activeKeys"];

  return [v2 containsObject:@"inputEnableVendorLensCorrection"];
}

- (BOOL)isLensCorrectionEnabled
{
  v2 = [(CIRAWFilterImpl *)[(CIRAWFilter *)self filterImplementation] valueForKey:@"inputEnableVendorLensCorrection"];

  return [v2 BOOLValue];
}

- (void)setLensCorrectionEnabled:(BOOL)lensCorrectionEnabled
{
  v3 = lensCorrectionEnabled;
  v4 = [(CIRAWFilter *)self filterImplementation];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:v3];

  [(CIRAWFilterImpl *)v4 setValue:v5 forKey:@"inputEnableVendorLensCorrection"];
}

- (BOOL)isLuminanceNoiseReductionSupported
{
  v2 = [(CIRAWFilterImpl *)[(CIRAWFilter *)self filterImplementation] valueForKey:@"activeKeys"];

  return [v2 containsObject:@"inputLuminanceNoiseReductionAmount"];
}

- (float)luminanceNoiseReductionAmount
{
  v2 = [(CIRAWFilterImpl *)[(CIRAWFilter *)self filterImplementation] valueForKey:@"inputLuminanceNoiseReductionAmount"];

  [v2 floatValue];
  return result;
}

- (void)setLuminanceNoiseReductionAmount:(float)luminanceNoiseReductionAmount
{
  v4 = [(CIRAWFilter *)self filterImplementation];
  *&v5 = luminanceNoiseReductionAmount;
  v6 = [MEMORY[0x1E696AD98] numberWithFloat:v5];

  [(CIRAWFilterImpl *)v4 setValue:v6 forKey:@"inputLuminanceNoiseReductionAmount"];
}

- (BOOL)isColorNoiseReductionSupported
{
  v2 = [(CIRAWFilterImpl *)[(CIRAWFilter *)self filterImplementation] valueForKey:@"activeKeys"];

  return [v2 containsObject:@"inputColorNoiseReductionAmount"];
}

- (float)colorNoiseReductionAmount
{
  v2 = [(CIRAWFilterImpl *)[(CIRAWFilter *)self filterImplementation] valueForKey:@"inputColorNoiseReductionAmount"];

  [v2 floatValue];
  return result;
}

- (void)setColorNoiseReductionAmount:(float)colorNoiseReductionAmount
{
  v4 = [(CIRAWFilter *)self filterImplementation];
  *&v5 = colorNoiseReductionAmount;
  v6 = [MEMORY[0x1E696AD98] numberWithFloat:v5];

  [(CIRAWFilterImpl *)v4 setValue:v6 forKey:@"inputColorNoiseReductionAmount"];
}

- (BOOL)isSharpnessSupported
{
  v2 = [(CIRAWFilterImpl *)[(CIRAWFilter *)self filterImplementation] valueForKey:@"activeKeys"];

  return [v2 containsObject:@"inputNoiseReductionSharpnessAmount"];
}

- (float)sharpnessAmount
{
  v2 = [(CIRAWFilterImpl *)[(CIRAWFilter *)self filterImplementation] valueForKey:@"inputNoiseReductionSharpnessAmount"];

  [v2 floatValue];
  return result;
}

- (void)setSharpnessAmount:(float)sharpnessAmount
{
  v4 = [(CIRAWFilter *)self filterImplementation];
  *&v5 = sharpnessAmount;
  v6 = [MEMORY[0x1E696AD98] numberWithFloat:v5];

  [(CIRAWFilterImpl *)v4 setValue:v6 forKey:@"inputNoiseReductionSharpnessAmount"];
}

- (BOOL)isContrastSupported
{
  v2 = [(CIRAWFilterImpl *)[(CIRAWFilter *)self filterImplementation] valueForKey:@"activeKeys"];

  return [v2 containsObject:@"inputNoiseReductionContrastAmount"];
}

- (float)contrastAmount
{
  v2 = [(CIRAWFilterImpl *)[(CIRAWFilter *)self filterImplementation] valueForKey:@"inputNoiseReductionContrastAmount"];

  [v2 floatValue];
  return result;
}

- (void)setContrastAmount:(float)contrastAmount
{
  v4 = [(CIRAWFilter *)self filterImplementation];
  *&v5 = contrastAmount;
  v6 = [MEMORY[0x1E696AD98] numberWithFloat:v5];

  [(CIRAWFilterImpl *)v4 setValue:v6 forKey:@"inputNoiseReductionContrastAmount"];
}

- (BOOL)isDetailSupported
{
  v2 = [(CIRAWFilterImpl *)[(CIRAWFilter *)self filterImplementation] valueForKey:@"activeKeys"];

  return [v2 containsObject:@"inputNoiseReductionDetailAmount"];
}

- (float)detailAmount
{
  v2 = [(CIRAWFilterImpl *)[(CIRAWFilter *)self filterImplementation] valueForKey:@"inputNoiseReductionDetailAmount"];

  [v2 floatValue];
  return result;
}

- (void)setDetailAmount:(float)detailAmount
{
  v4 = [(CIRAWFilter *)self filterImplementation];
  *&v5 = detailAmount;
  v6 = [MEMORY[0x1E696AD98] numberWithFloat:v5];

  [(CIRAWFilterImpl *)v4 setValue:v6 forKey:@"inputNoiseReductionDetailAmount"];
}

- (BOOL)isMoireReductionSupported
{
  v2 = [(CIRAWFilterImpl *)[(CIRAWFilter *)self filterImplementation] valueForKey:@"activeKeys"];

  return [v2 containsObject:@"inputMoireAmount"];
}

- (float)moireReductionAmount
{
  v2 = [(CIRAWFilterImpl *)[(CIRAWFilter *)self filterImplementation] valueForKey:@"inputMoireAmount"];

  [v2 floatValue];
  return result;
}

- (void)setMoireReductionAmount:(float)moireReductionAmount
{
  v4 = [(CIRAWFilter *)self filterImplementation];
  *&v5 = moireReductionAmount;
  v6 = [MEMORY[0x1E696AD98] numberWithFloat:v5];

  [(CIRAWFilterImpl *)v4 setValue:v6 forKey:@"inputMoireAmount"];
}

- (BOOL)isLocalToneMapSupported
{
  v2 = [(CIRAWFilterImpl *)[(CIRAWFilter *)self filterImplementation] valueForKey:@"activeKeys"];

  return [v2 containsObject:@"inputLocalToneMapAmount"];
}

- (float)localToneMapAmount
{
  v2 = [(CIRAWFilterImpl *)[(CIRAWFilter *)self filterImplementation] valueForKey:@"inputLocalToneMapAmount"];

  [v2 floatValue];
  return result;
}

- (void)setLocalToneMapAmount:(float)localToneMapAmount
{
  v4 = [(CIRAWFilter *)self filterImplementation];
  *&v5 = localToneMapAmount;
  v6 = [MEMORY[0x1E696AD98] numberWithFloat:v5];

  [(CIRAWFilterImpl *)v4 setValue:v6 forKey:@"inputLocalToneMapAmount"];
}

- (float)extendedDynamicRangeAmount
{
  v2 = [(CIRAWFilterImpl *)[(CIRAWFilter *)self filterImplementation] valueForKey:@"inputEnableEDRMode"];

  [v2 floatValue];
  return result;
}

- (void)setExtendedDynamicRangeAmount:(float)extendedDynamicRangeAmount
{
  v3 = fminf(fmaxf(extendedDynamicRangeAmount, 0.0), 2.0);
  v4 = [(CIRAWFilter *)self filterImplementation];
  *&v5 = v3;
  v6 = [MEMORY[0x1E696AD98] numberWithFloat:v5];

  [(CIRAWFilterImpl *)v4 setValue:v6 forKey:@"inputEnableEDRMode"];
}

- (CGPoint)neutralChromaticity
{
  [-[CIRAWFilterImpl valueForKey:](-[CIRAWFilter filterImplementation](self "filterImplementation")];
  v4 = v3;
  [-[CIRAWFilterImpl valueForKey:](-[CIRAWFilter filterImplementation](self "filterImplementation")];
  v6 = v5;
  v7 = v4;
  result.y = v6;
  result.x = v7;
  return result;
}

- (void)setNeutralChromaticity:(CGPoint)neutralChromaticity
{
  y = neutralChromaticity.y;
  x = neutralChromaticity.x;
  v6 = [(CIRAWFilter *)self filterImplementation];
  -[CIRAWFilterImpl setValue:forKey:](v6, "setValue:forKey:", [MEMORY[0x1E696AD98] numberWithDouble:x], @"inputNeutralChromaticityX");
  v7 = [(CIRAWFilter *)self filterImplementation];
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:y];

  [(CIRAWFilterImpl *)v7 setValue:v8 forKey:@"inputNeutralChromaticityY"];
}

- (CGPoint)neutralLocation
{
  v2 = [(CIRAWFilterImpl *)[(CIRAWFilter *)self filterImplementation] valueForKey:@"inputNeutralLocation"];
  [v2 X];
  v4 = v3;
  [v2 Y];
  v6 = v5;
  v7 = v4;
  result.y = v6;
  result.x = v7;
  return result;
}

- (void)setNeutralLocation:(CGPoint)neutralLocation
{
  v4 = [CIVector vectorWithX:neutralLocation.x Y:neutralLocation.y];
  v5 = [(CIRAWFilter *)self filterImplementation];

  [(CIRAWFilterImpl *)v5 setValue:v4 forKey:@"inputNeutralLocation"];
}

- (float)neutralTemperature
{
  v2 = [(CIRAWFilterImpl *)[(CIRAWFilter *)self filterImplementation] valueForKey:@"inputNeutralTemperature"];

  [v2 floatValue];
  return result;
}

- (void)setNeutralTemperature:(float)neutralTemperature
{
  v4 = [(CIRAWFilter *)self filterImplementation];
  *&v5 = neutralTemperature;
  v6 = [MEMORY[0x1E696AD98] numberWithFloat:v5];

  [(CIRAWFilterImpl *)v4 setValue:v6 forKey:@"inputNeutralTemperature"];
}

- (float)neutralTint
{
  v2 = [(CIRAWFilterImpl *)[(CIRAWFilter *)self filterImplementation] valueForKey:@"inputNeutralTint"];

  [v2 floatValue];
  return result;
}

- (void)setNeutralTint:(float)neutralTint
{
  v4 = [(CIRAWFilter *)self filterImplementation];
  *&v5 = neutralTint;
  v6 = [MEMORY[0x1E696AD98] numberWithFloat:v5];

  [(CIRAWFilterImpl *)v4 setValue:v6 forKey:@"inputNeutralTint"];
}

- (CIFilter)linearSpaceFilter
{
  v2 = [(CIRAWFilter *)self filterImplementation];

  return [(CIRAWFilterImpl *)v2 valueForKey:@"inputLinearSpaceFilter"];
}

- (void)setLinearSpaceFilter:(CIFilter *)linearSpaceFilter
{
  v4 = [(CIRAWFilter *)self filterImplementation];

  [(CIRAWFilterImpl *)v4 setValue:linearSpaceFilter forKey:@"inputLinearSpaceFilter"];
}

- (CIImage)previewImage
{
  v11[1] = *MEMORY[0x1E69E9840];
  if ([(CIRAWFilter *)self imageURL])
  {
    v3 = CGImageSourceCreateWithURL([(CIRAWFilter *)self imageURL], 0);
  }

  else
  {
    if (![(CIRAWFilter *)self imageData])
    {
      return 0;
    }

    if ([(CIRAWFilter *)self imageDataHint])
    {
      v10 = *MEMORY[0x1E696E118];
      v11[0] = [(CIRAWFilter *)self imageDataHint];
      v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    }

    else
    {
      v4 = 0;
    }

    v3 = CGImageSourceCreateWithData([(CIRAWFilter *)self imageData], v4);
  }

  v5 = v3;
  if (!v3)
  {
    return 0;
  }

  ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(v3, 0, 0);
  if (ThumbnailAtIndex)
  {
    v7 = ThumbnailAtIndex;
    v8 = [CIImage imageWithCGImage:ThumbnailAtIndex];
    CGImageRelease(v7);
  }

  else
  {
    v8 = 0;
  }

  CFRelease(v5);
  return v8;
}

- (id)auxImageWithKey:(id)a3
{
  v15[2] = *MEMORY[0x1E69E9840];
  if ([(CIRAWFilter *)self imageDataHint])
  {
    v15[0] = MEMORY[0x1E695E118];
    v5 = *MEMORY[0x1E696E118];
    v14[0] = a3;
    v14[1] = v5;
    v15[1] = [(CIRAWFilter *)self imageDataHint];
    v6 = MEMORY[0x1E695DF20];
    v7 = v15;
    v8 = v14;
    v9 = 2;
  }

  else
  {
    v12 = a3;
    v13 = MEMORY[0x1E695E118];
    v6 = MEMORY[0x1E695DF20];
    v7 = &v13;
    v8 = &v12;
    v9 = 1;
  }

  v10 = [v6 dictionaryWithObjects:v7 forKeys:v8 count:v9];
  if ([(CIRAWFilter *)self imageURL])
  {
    return [CIImage imageWithContentsOfURL:[(CIRAWFilter *)self imageURL] options:v10];
  }

  result = [(CIRAWFilter *)self imageData];
  if (result)
  {
    return [CIImage imageWithData:[(CIRAWFilter *)self imageData] options:v10];
  }

  return result;
}

- (CIRAWFilter)initWithImageURL:(id)a3
{
  if (self)
  {
    self->filterImplementation = [CIRAWFilterImpl filterWithImageURL:a3 options:0];
    self->imageURL = a3;
  }

  return self;
}

- (CIRAWFilter)initWithImageData:(id)a3 identifierHint:(id)a4
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (self)
  {
    if (a4)
    {
      v9 = *MEMORY[0x1E696E118];
      v10[0] = a4;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    }

    else
    {
      v7 = 0;
    }

    self->filterImplementation = [CIRAWFilterImpl filterWithImageData:a3 options:v7];
    self->imageData = a3;
    self->imageDataHint = a4;
  }

  return self;
}

- (CIRAWFilter)initWithCVPixelBuffer:(__CVBuffer *)a3 properties:(id)a4
{
  if (self)
  {
    self->filterImplementation = [CIRAWFilterImpl filterWithCVPixelBuffer:a3 properties:a4 options:0];
  }

  return self;
}

+ (NSArray)supportedCameraModels
{
  result = +[CIRAWFilterImpl supportedRawCameraModels];
  if (!result)
  {
    return MEMORY[0x1E695E0F0];
  }

  return result;
}

+ (CIRAWFilter)filterWithImageURL:(NSURL *)url
{
  v3 = [[a1 alloc] initWithImageURL:url];

  return v3;
}

+ (CIRAWFilter)filterWithImageURL:(id)a3 options:(id)a4
{
  v4 = [[a1 alloc] initWithImageURL:a3];

  return v4;
}

+ (CIRAWFilter)filterWithImageData:(NSData *)data identifierHint:(NSString *)identifierHint
{
  v4 = [[a1 alloc] initWithImageData:data identifierHint:identifierHint];

  return v4;
}

+ (CIRAWFilter)filterWithCVPixelBuffer:(CVPixelBufferRef)buffer properties:(NSDictionary *)properties
{
  v4 = [[a1 alloc] initWithCVPixelBuffer:buffer properties:properties];

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CIRAWFilter;
  [(CIFilter *)&v3 dealloc];
}

- (id)attributes
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __25__CIRAWFilter_attributes__block_invoke;
  block[3] = &unk_1E75C2AA0;
  block[4] = self;
  if (attributes_onceToken != -1)
  {
    dispatch_once(&attributes_onceToken, block);
  }

  return attributes_rawFilterAttributes;
}

void __25__CIRAWFilter_attributes__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) filterImplementation];
  v3 = [+[CIFilterClassAttributes classAttributesForClass:](CIFilterClassAttributes classAttributesForClass:{objc_opt_class()), "mutableCopy"}];
  v4.receiver = *(a1 + 32);
  v4.super_class = CIRAWFilter;
  [v3 addEntriesFromDictionary:{objc_msgSendSuper2(&v4, sel_attributes)}];
  attributes_rawFilterAttributes = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v3];

  objc_autoreleasePoolPop(v2);
}

@end