@interface CIDepthEffectApplyBlurMapRemainder
+ (id)customAttributes;
- (id)outputImage;
- (id)unifiedRenderingOutputImage:(CGImageMetadata *)image;
@end

@implementation CIDepthEffectApplyBlurMapRemainder

+ (id)customAttributes
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___CIDepthEffectApplyBlurMapRemainder;
  return objc_msgSendSuper2(&v3, sel_customAttributes);
}

- (id)unifiedRenderingOutputImage:(CGImageMetadata *)image
{
  if (!image)
  {
    return 0;
  }

  TypeID = CGImageMetadataGetTypeID();
  if (TypeID != CFGetTypeID(image))
  {
    return 0;
  }

  inputImage = self->super.inputImage;
  RenderingParametersFromCGImageMetadata = getRenderingParametersFromCGImageMetadata(image);
  if (!RenderingParametersFromCGImageMetadata)
  {
    return 0;
  }

  v8 = RenderingParametersFromCGImageMetadata;
  alterBlurmap = [(CIDepthEffectApplyBlurMap *)self alterBlurmap];
  [(NSNumber *)self->super.inputAperture floatValue];
  v11 = v10;
  [(NSNumber *)self->super.inputScale floatValue];
  v13 = v12;
  [(NSNumber *)self->super.inputLumaNoiseScale floatValue];
  v15 = v14;
  inputMatteImage = self->super.inputMatteImage;
  inputBackground = self->inputBackground;
  inputGainMap = self->super.inputGainMap;
  inputCaptureFolderMiscPath = self->super.inputCaptureFolderMiscPath;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:MEMORY[0x1E695E0F8] forKeyedSubscript:@"options"];
  [dictionary setObject:v8 forKeyedSubscript:@"metadata"];
  LODWORD(v21) = v11;
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v21), @"simulatedAperture"}];
  LODWORD(v22) = 1022739087;
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v22), @"maxBlur"}];
  LODWORD(v23) = v13;
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v23), @"inputScale"}];
  LODWORD(v24) = v15;
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v24), @"lumaNoiseAmplitude"}];
  [dictionary setObject:alterBlurmap forKeyedSubscript:@"inputBlurMap"];
  [dictionary setObject:inputMatteImage forKeyedSubscript:@"inputAlpha"];
  [dictionary setObject:inputImage forKeyedSubscript:@"inputImage"];
  [dictionary setObject:0 forKeyedSubscript:@"inputImageLuma"];
  [dictionary setObject:0 forKeyedSubscript:@"inputImageChroma"];
  [dictionary setObject:inputGainMap forKeyedSubscript:@"inputGainMap"];
  if (inputCaptureFolderMiscPath)
  {
    [dictionary setObject:inputCaptureFolderMiscPath forKeyedSubscript:@"captureFolderMiscPath"];
  }

  v25 = [objc_alloc(envCCApplyBlurMapArgsClass()) initWithDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithDictionary:", dictionary)}];
  if (v25 && (v26 = [objc_alloc(envCCApplyBlurMapClass()) initWithMetalQueue:0]) != 0)
  {
    v27 = v26;
    if (objc_opt_respondsToSelector())
    {
      v28 = [v27 imageUsingArgs:v25 backgroundBlur:inputBackground];
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (id)outputImage
{
  result = self->super.inputImage;
  if (!result)
  {
    return result;
  }

  if (!self->super.inputBlurMap || !self->inputBackground)
  {
    return 0;
  }

  [result extent];
  if (CGRectIsInfinite(v18) || ([(CIImage *)self->super.inputBlurMap extent], CGRectIsInfinite(v19)))
  {
    v4 = ci_logger_api();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v16 = 0;
      _os_log_impl(&dword_19CC36000, v4, OS_LOG_TYPE_INFO, "input image(s) to CIDepthBlurEffect apply is of inifite extent; returning input image", v16, 2u);
    }

    return self->super.inputImage;
  }

  v5 = metadataFromValue(self->super.inputAuxDataMetadata);
  if (v5)
  {
    v6 = tuningParametersFromMetaData(v5);
  }

  else
  {
    v6 = tuningParametersFromImage(self->super.inputBlurMap);
  }

  inputAuxDataMetadata = v6;
  if (self->super.inputAuxDataMetadata)
  {
    TypeID = CFDictionaryGetTypeID();
    if (TypeID == CFGetTypeID(self->super.inputAuxDataMetadata))
    {
      inputAuxDataMetadata = self->super.inputAuxDataMetadata;
    }
  }

  v9 = [inputAuxDataMetadata objectForKeyedSubscript:@"Version"];
  v10 = MEMORY[0x1E696AD98];
  v11 = v9 ? [v9 unsignedIntegerValue] : 1;
  v12 = [v10 numberWithUnsignedInteger:v11];
  intValue = [v12 intValue];
  if (intValue < +[CIFilter minSDOFRenderingVersionSupported])
  {
    return 0;
  }

  intValue2 = [v12 intValue];
  if (intValue2 > +[CIFilter maxSDOFRenderingVersionSupported])
  {
    return 0;
  }

  v15 = self->super.inputAuxDataMetadata;

  return [(CIDepthEffectApplyBlurMapRemainder *)self unifiedRenderingOutputImage:v15];
}

@end