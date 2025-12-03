@interface CIDepthEffectApplyBlurMap
+ (id)customAttributes;
- (id)alterBlurmap;
- (id)outputImage;
- (id)unifiedRenderingOutputImage:(CGImageMetadata *)image;
@end

@implementation CIDepthEffectApplyBlurMap

+ (id)customAttributes
{
  v19[10] = *MEMORY[0x1E69E9840];
  v18[0] = @"CIAttributeFilterCategories";
  v17[0] = @"CICategoryColorAdjustment";
  v17[1] = @"CICategoryVideo";
  v17[2] = @"CICategoryStillImage";
  v17[3] = @"CICategoryBuiltIn";
  v17[4] = @"CICategoryApplePrivate";
  v19[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:5];
  v19[1] = @"11";
  v18[1] = @"CIAttributeFilterAvailable_iOS";
  v18[2] = @"CIAttributeFilterAvailable_Mac";
  v19[2] = @"10.13";
  v18[3] = @"inputAperture";
  v15[0] = @"CIAttributeSliderMin";
  v15[1] = @"CIAttributeSliderMax";
  v16[0] = &unk_1F1085148;
  v16[1] = &unk_1F1085158;
  v15[2] = @"CIAttributeMin";
  v15[3] = @"CIAttributeMax";
  v16[2] = &unk_1F1085138;
  v16[3] = &unk_1F1085158;
  v15[4] = @"CIAttributeDefault";
  v15[5] = @"CIAttributeType";
  v16[4] = &unk_1F1085138;
  v16[5] = @"CIAttributeTypeScalar";
  v19[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:6];
  v18[4] = @"inputLumaNoiseScale";
  v13[0] = @"CIAttributeSliderMin";
  v13[1] = @"CIAttributeSliderMax";
  v14[0] = &unk_1F1085138;
  v14[1] = &unk_1F1085188;
  v13[2] = @"CIAttributeMin";
  v13[3] = @"CIAttributeMax";
  v14[2] = &unk_1F1085138;
  v14[3] = &unk_1F1085188;
  v13[4] = @"CIAttributeDefault";
  v13[5] = @"CIAttributeType";
  v14[4] = &unk_1F1085138;
  v14[5] = @"CIAttributeTypeScalar";
  v19[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:6];
  v18[5] = @"inputScale";
  v11[0] = @"CIAttributeType";
  v11[1] = @"CIAttributeSliderMin";
  v12[0] = @"CIAttributeTypeScalar";
  v12[1] = &unk_1F1085168;
  v11[2] = @"CIAttributeSliderMax";
  v11[3] = @"CIAttributeDefault";
  v12[2] = &unk_1F1085148;
  v12[3] = &unk_1F1085148;
  v19[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:4];
  v18[6] = @"inputAuxDataMetadata";
  v9 = @"CIAttributeClass";
  v10 = @"CGImageMetadataRef";
  v19[6] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v18[7] = @"inputShape";
  v7 = @"CIAttributeClass";
  v8 = @"NSString";
  v19[7] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v18[8] = @"inputDraftMode";
  v5[0] = @"CIAttributeType";
  v5[1] = @"CIAttributeSliderMin";
  v6[0] = @"CIAttributeTypeInteger";
  v6[1] = &unk_1F10823A0;
  v5[2] = @"CIAttributeSliderMax";
  v5[3] = @"CIAttributeDefault";
  v6[2] = &unk_1F10823B8;
  v6[3] = &unk_1F10823A0;
  v19[8] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:4];
  v18[9] = @"inputBestHairQuality";
  v3[0] = @"CIAttributeMin";
  v3[1] = @"CIAttributeSliderMin";
  v4[0] = MEMORY[0x1E695E110];
  v4[1] = MEMORY[0x1E695E110];
  v3[2] = @"CIAttributeSliderMax";
  v3[3] = @"CIAttributeMax";
  v4[2] = MEMORY[0x1E695E118];
  v4[3] = MEMORY[0x1E695E118];
  v3[4] = @"CIAttributeDefault";
  v3[5] = @"CIAttributeType";
  v4[4] = MEMORY[0x1E695E118];
  v4[5] = @"CIAttributeTypeBoolean";
  v19[9] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:6];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:10];
}

- (id)alterBlurmap
{
  v12[1] = *MEMORY[0x1E69E9840];
  inputBlurMap = self->inputBlurMap;
  inputBestHairQuality = self->inputBestHairQuality;
  v4 = inputBestHairQuality == MEMORY[0x1E695E110] || inputBestHairQuality == &unk_1F10823A0;
  if (v4 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) != 0 && ![(NSNumber *)inputBestHairQuality BOOLValue]))
  {
    v5 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_onlyRG_];
    [(CIImage *)inputBlurMap extent];
    v12[0] = inputBlurMap;
    return -[CIColorKernel applyWithExtent:arguments:](v5, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1], v6, v7, v8, v9);
  }

  return inputBlurMap;
}

- (id)unifiedRenderingOutputImage:(CGImageMetadata *)image
{
  if (image)
  {
    TypeID = CGImageMetadataGetTypeID();
    if (TypeID == CFGetTypeID(image))
    {
      inputImage = self->inputImage;
      RenderingParametersFromCGImageMetadata = getRenderingParametersFromCGImageMetadata(image);
      if (RenderingParametersFromCGImageMetadata)
      {
        v8 = RenderingParametersFromCGImageMetadata;
        alterBlurmap = [(CIDepthEffectApplyBlurMap *)self alterBlurmap];
        [(NSNumber *)self->inputAperture floatValue];
        v11 = v10;
        [(NSNumber *)self->inputScale floatValue];
        v13 = v12;
        [(NSNumber *)self->inputLumaNoiseScale floatValue];
        v15 = v14;
        inputMatteImage = self->inputMatteImage;
        inputGainMap = self->inputGainMap;
        inputCaptureFolderMiscPath = self->inputCaptureFolderMiscPath;
        v19 = +[CIImage emptyImage];
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
        if (v25)
        {
          v26 = v25;
          v27 = [objc_alloc(envCCApplyBlurMapClass()) initWithMetalQueue:0];
          if (v27)
          {
            v28 = v27;
            v19 = [v27 imageUsingArgs:v26];
          }
        }

        if (v19)
        {
          return v19;
        }
      }
    }
  }

  return +[CIImage emptyImage];
}

- (id)outputImage
{
  v36[7] = *MEMORY[0x1E69E9840];
  result = self->inputImage;
  if (result)
  {
    if (!self->inputBlurMap)
    {
      return result;
    }

    [result extent];
    if (CGRectIsInfinite(v38) || ([(CIImage *)self->inputBlurMap extent], CGRectIsInfinite(v39)))
    {
      v4 = ci_logger_api();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *v34 = 0;
        _os_log_impl(&dword_19CC36000, v4, OS_LOG_TYPE_INFO, "input image(s) to CIDepthBlurEffect apply is of inifite extent; returning input image", v34, 2u);
      }

      return self->inputImage;
    }

    v5 = metadataFromValue(self->inputAuxDataMetadata);
    if (v5)
    {
      v6 = tuningParametersFromMetaData(v5);
    }

    else
    {
      v6 = tuningParametersFromImage(self->inputBlurMap);
    }

    inputAuxDataMetadata = v6;
    if (self->inputAuxDataMetadata)
    {
      TypeID = CFDictionaryGetTypeID();
      if (TypeID == CFGetTypeID(self->inputAuxDataMetadata))
      {
        inputAuxDataMetadata = self->inputAuxDataMetadata;
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
    v14 = +[CIFilter minSDOFRenderingVersionSupported];
    intValue2 = [v12 intValue];
    if (intValue < v14)
    {
      if (intValue2)
      {
        v16 = [(CIImage *)self->inputImage imageByColorMatchingWorkingSpaceToColorSpace:linearP3ColorSpace()];
        inputBlurMap = self->inputBlurMap;
        v35[0] = @"inputBlurmapImage";
        v35[1] = @"inputLumaNoiseScale";
        inputLumaNoiseScale = self->inputLumaNoiseScale;
        v36[0] = inputBlurMap;
        v36[1] = inputLumaNoiseScale;
        inputScale = self->inputScale;
        v35[2] = @"inputScale";
        v35[3] = @"inputAperture";
        inputAperture = self->inputAperture;
        v36[2] = inputScale;
        v36[3] = inputAperture;
        v35[4] = @"inputImage";
        v35[5] = @"inputShape";
        inputShape = self->inputShape;
        if (!inputShape)
        {
          inputShape = &stru_1F1040378;
        }

        v36[4] = v16;
        v36[5] = inputShape;
        v35[6] = @"inputDraftMode";
        v36[6] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{+[CIDepthBlurEffect getDraftMode:](CIDepthBlurEffect, "getDraftMode:", -[CIDepthEffectApplyBlurMap inputDraftMode](self, "inputDraftMode"))}];
        v22 = +[CIFilter filterWithName:withInputParameters:](CIFilter, "filterWithName:withInputParameters:", @"CIPortraitBlur", [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:7]);
        v23 = self->inputAuxDataMetadata;
        v24 = MEMORY[0x1E695F060];
        integerValue = *MEMORY[0x1E695F060];
        integerValue2 = *(MEMORY[0x1E695F060] + 8);
        if (v23)
        {
          v27 = CFGetTypeID(v23);
          if (CGImageMetadataGetTypeID() == v27)
          {
            v28 = CGImageMetadataCopyTagWithPath(v23, 0, @"depthData:IntrinsicMatrixReferenceWidth");
            v29 = CGImageMetadataCopyTagWithPath(v23, 0, @"depthData:IntrinsicMatrixReferenceHeight");
            if (v28)
            {
              integerValue = [CGImageMetadataTagCopyValue(v28) integerValue];
              CFRelease(v28);
            }

            if (v29)
            {
              integerValue2 = [CGImageMetadataTagCopyValue(v29) integerValue];
              CFRelease(v29);
            }
          }
        }

        if (integerValue != *v24 || integerValue2 != v24[1])
        {
          inputAuxDataMetadata = [MEMORY[0x1E695DF90] dictionaryWithDictionary:inputAuxDataMetadata];
          [inputAuxDataMetadata setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", integerValue), @"SensorWidth"}];
          [inputAuxDataMetadata setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", integerValue2), @"SensorHeight"}];
        }

        if (inputAuxDataMetadata)
        {
          [(CIFilter *)v22 setValue:inputAuxDataMetadata forKey:@"inputTuningParameters"];
        }

        inputMatteImage = self->inputMatteImage;
        if (inputMatteImage)
        {
          [(CIImage *)inputMatteImage extent];
          if (v31 > 1.0)
          {
            [(CIImage *)self->inputMatteImage extent];
            if (v32 > 1.0)
            {
              [(CIFilter *)v22 setValue:self->inputMatteImage forKey:@"inputMatteImage"];
            }
          }
        }

        return [(CIImage *)[(CIFilter *)v22 outputImage] imageByColorMatchingColorSpaceToWorkingSpace:linearP3ColorSpace()];
      }

      return self->inputImage;
    }

    if (intValue2 > +[CIFilter maxSDOFRenderingVersionSupported])
    {
      return self->inputImage;
    }

    v33 = self->inputAuxDataMetadata;

    return [(CIDepthEffectApplyBlurMap *)self unifiedRenderingOutputImage:v33];
  }

  else
  {

    return +[CIImage emptyImage];
  }
}

@end