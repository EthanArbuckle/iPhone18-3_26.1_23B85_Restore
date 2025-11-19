@interface CIDepthEffectApplyBlurMapBackground
+ (id)customAttributes;
- (id)outputImage;
- (id)unifiedRenderingOutputImage:(CGImageMetadata *)a3;
@end

@implementation CIDepthEffectApplyBlurMapBackground

+ (id)customAttributes
{
  v3.receiver = a1;
  v3.super_class = &OBJC_METACLASS___CIDepthEffectApplyBlurMapBackground;
  return objc_msgSendSuper2(&v3, sel_customAttributes);
}

- (id)unifiedRenderingOutputImage:(CGImageMetadata *)a3
{
  if (!a3)
  {
    return 0;
  }

  TypeID = CGImageMetadataGetTypeID();
  if (TypeID != CFGetTypeID(a3))
  {
    return 0;
  }

  inputImage = self->super.inputImage;
  RenderingParametersFromCGImageMetadata = getRenderingParametersFromCGImageMetadata(a3);
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
  v19 = [MEMORY[0x1E695DF90] dictionary];
  [v19 setObject:MEMORY[0x1E695E0F8] forKeyedSubscript:@"options"];
  [v19 setObject:v8 forKeyedSubscript:@"metadata"];
  LODWORD(v20) = v10;
  [v19 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v20), @"simulatedAperture"}];
  LODWORD(v21) = 1022739087;
  [v19 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v21), @"maxBlur"}];
  LODWORD(v22) = v12;
  [v19 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v22), @"inputScale"}];
  LODWORD(v23) = v14;
  [v19 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v23), @"lumaNoiseAmplitude"}];
  [v19 setObject:inputBlurMap forKeyedSubscript:@"inputBlurMap"];
  [v19 setObject:inputMatteImage forKeyedSubscript:@"inputAlpha"];
  [v19 setObject:inputImage forKeyedSubscript:@"inputImage"];
  [v19 setObject:0 forKeyedSubscript:@"inputImageLuma"];
  [v19 setObject:0 forKeyedSubscript:@"inputImageChroma"];
  [v19 setObject:inputGainMap forKeyedSubscript:@"inputGainMap"];
  if (inputCaptureFolderMiscPath)
  {
    [v19 setObject:inputCaptureFolderMiscPath forKeyedSubscript:@"captureFolderMiscPath"];
  }

  v24 = [objc_alloc(envCCApplyBlurMapArgsClass()) initWithDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithDictionary:", v19)}];
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
    v11 = [v9 unsignedIntegerValue];
  }

  else
  {
    v11 = 1;
  }

  v12 = [v10 numberWithUnsignedInteger:v11];
  v13 = [v12 intValue];
  if (v13 < +[CIFilter minSDOFRenderingVersionSupported])
  {
    return 0;
  }

  v14 = [v12 intValue];
  if (v14 > +[CIFilter maxSDOFRenderingVersionSupported])
  {
    return 0;
  }

  v16 = self->super.inputAuxDataMetadata;

  return [(CIDepthEffectApplyBlurMapBackground *)self unifiedRenderingOutputImage:v16];
}

@end