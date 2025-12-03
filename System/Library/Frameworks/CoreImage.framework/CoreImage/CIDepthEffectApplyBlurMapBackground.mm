@interface CIDepthEffectApplyBlurMapBackground
+ (id)customAttributes;
- (id)outputImage;
- (id)unifiedRenderingOutputImage:(CGImageMetadata *)image;
@end

@implementation CIDepthEffectApplyBlurMapBackground

+ (id)customAttributes
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___CIDepthEffectApplyBlurMapBackground;
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
  [(NSNumber *)self->super.inputAperture floatValue];
  v10 = v9;
  [(NSNumber *)self->super.inputScale floatValue];
  v12 = v11;
  [(NSNumber *)self->super.inputLumaNoiseScale floatValue];
  v14 = v13;
  inputBlurMap = self->super.inputBlurMap;
  inputMatteImage = self->super.inputMatteImage;
  inputGainMap = self->super.inputGainMap;
  inputCaptureFolderMiscPath = self->super.inputCaptureFolderMiscPath;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:MEMORY[0x1E695E0F8] forKeyedSubscript:@"options"];
  [dictionary setObject:v8 forKeyedSubscript:@"metadata"];
  LODWORD(v20) = v10;
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v20), @"simulatedAperture"}];
  LODWORD(v21) = 1022739087;
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v21), @"maxBlur"}];
  LODWORD(v22) = v12;
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v22), @"inputScale"}];
  LODWORD(v23) = v14;
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v23), @"lumaNoiseAmplitude"}];
  [dictionary setObject:inputBlurMap forKeyedSubscript:@"inputBlurMap"];
  [dictionary setObject:inputMatteImage forKeyedSubscript:@"inputAlpha"];
  [dictionary setObject:inputImage forKeyedSubscript:@"inputImage"];
  [dictionary setObject:0 forKeyedSubscript:@"inputImageLuma"];
  [dictionary setObject:0 forKeyedSubscript:@"inputImageChroma"];
  [dictionary setObject:inputGainMap forKeyedSubscript:@"inputGainMap"];
  if (inputCaptureFolderMiscPath)
  {
    [dictionary setObject:inputCaptureFolderMiscPath forKeyedSubscript:@"captureFolderMiscPath"];
  }

  v24 = [objc_alloc(envCCApplyBlurMapArgsClass()) initWithDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithDictionary:", dictionary)}];
  if (v24)
  {
    v25 = v24;
    v26 = [objc_alloc(envCCApplyBlurMapClass()) initWithMetalQueue:0];
    if (v26)
    {
      v27 = v26;
      if (objc_opt_respondsToSelector())
      {
        v28 = [v27 backgroundImageUsingArgs:v25];
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
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (id)outputImage
{
  inputImage = self->super.inputImage;
  if (!inputImage || !self->super.inputBlurMap)
  {
    return 0;
  }

  [(CIImage *)inputImage extent];
  if (CGRectIsInfinite(v19) || ([(CIImage *)self->super.inputBlurMap extent], CGRectIsInfinite(v20)))
  {
    v4 = ci_logger_api();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v17 = 0;
      _os_log_impl(&dword_19CC36000, v4, OS_LOG_TYPE_INFO, "input image(s) to CIDepthBlurEffect apply is of inifite extent; returning nil image", v17, 2u);
    }

    return 0;
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
  if (v9)
  {
    unsignedIntegerValue = [v9 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 1;
  }

  v12 = [v10 numberWithUnsignedInteger:unsignedIntegerValue];
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

  v16 = self->super.inputAuxDataMetadata;

  return [(CIDepthEffectApplyBlurMapBackground *)self unifiedRenderingOutputImage:v16];
}

@end