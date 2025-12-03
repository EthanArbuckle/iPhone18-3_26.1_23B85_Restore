@interface CIKMeans
+ (id)customAttributes;
- (id)_combine:(id)_combine;
- (id)defuse:(id)defuse seed:(int)seed;
- (id)outputImage;
- (void)outputImage;
@end

@implementation CIKMeans

+ (id)customAttributes
{
  v11[6] = *MEMORY[0x1E69E9840];
  v10[0] = @"CIAttributeFilterCategories";
  v9[0] = @"CICategoryReduction";
  v9[1] = @"CICategoryVideo";
  v9[2] = @"CICategoryStillImage";
  v9[3] = @"CICategoryHighDynamicRange";
  v9[4] = @"CICategoryBuiltIn";
  v11[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:5];
  v11[1] = @"13";
  v10[1] = @"CIAttributeFilterAvailable_iOS";
  v10[2] = @"CIAttributeFilterAvailable_Mac";
  v11[2] = @"10.15";
  v10[3] = @"inputCount";
  v7[0] = @"CIAttributeMin";
  v7[1] = @"CIAttributeMax";
  v8[0] = &unk_1F1082220;
  v8[1] = &unk_1F1082238;
  v7[2] = @"CIAttributeDefault";
  v7[3] = @"CIAttributeIdentity";
  v8[2] = &unk_1F1082250;
  v8[3] = &unk_1F1082220;
  v7[4] = @"CIAttributeType";
  v8[4] = @"CIAttributeTypeCount";
  v11[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:5];
  v10[4] = @"inputPasses";
  v5[0] = @"CIAttributeMin";
  v5[1] = @"CIAttributeMax";
  v6[0] = &unk_1F1082220;
  v6[1] = &unk_1F1082268;
  v5[2] = @"CIAttributeDefault";
  v5[3] = @"CIAttributeIdentity";
  v6[2] = &unk_1F1082280;
  v6[3] = &unk_1F1082220;
  v5[4] = @"CIAttributeType";
  v6[4] = @"CIAttributeTypeCount";
  v11[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:5];
  v10[5] = @"inputPerceptual";
  v3[0] = @"CIAttributeMin";
  v3[1] = @"CIAttributeMax";
  v4[0] = MEMORY[0x1E695E110];
  v4[1] = MEMORY[0x1E695E118];
  v3[2] = @"CIAttributeDefault";
  v3[3] = @"CIAttributeType";
  v4[2] = MEMORY[0x1E695E110];
  v4[3] = @"CIAttributeTypeBoolean";
  v11[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:4];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:6];
}

- (id)_combine:(id)_combine
{
  v4 = [_combine count];
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:v4];
  if (v4)
  {
    v6 = v5;
    for (i = 0; i != v4; ++i)
    {
      [_combine objectAtIndexedSubscript:i];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v9 = [_combine objectAtIndexedSubscript:i];
      if ((isKindOfClass & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [_combine objectAtIndexedSubscript:i];
        }

        else
        {
          [_combine objectAtIndexedSubscript:i];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            return 0;
          }

          v11 = [_combine objectAtIndexedSubscript:i];
          if ([v11 count] == 3)
          {
            [v11 X];
            v13 = v12;
            [v11 Y];
            v15 = v14;
            [v11 Z];
            v17 = [CIColor colorWithRed:v13 green:v15 blue:v16];
          }

          else
          {
            if ([v11 count] != 4)
            {
              return 0;
            }

            [v11 X];
            v19 = v18;
            [v11 Y];
            v21 = v20;
            [v11 Z];
            v23 = v22;
            [v11 W];
            v17 = [CIColor colorWithRed:v19 green:v21 blue:v23 alpha:v24];
          }

          v10 = v17;
        }

        v9 = [CIImage imageWithColor:v10];
      }

      if (!v9)
      {
        return 0;
      }

      [v6 setObject:v9 atIndexedSubscript:i];
    }

    v25 = +[CIImage emptyImage];
    for (j = 0; j != v4; ++j)
    {
      v25 = [objc_msgSend(objc_msgSend(objc_msgSend(v6 objectAtIndexedSubscript:{j), "imageByClampingToExtent"), "imageByCroppingToRect:", j, 0.0, 1.0, 1.0), "imageByCompositingOverImage:", v25}];
    }

    return v25;
  }

  else
  {

    return +[CIImage emptyImage];
  }
}

- (id)defuse:(id)defuse seed:(int)seed
{
  v15[4] = *MEMORY[0x1E69E9840];
  [defuse extent];
  v7 = v6;
  v8 = v6;
  v9 = [[CIFilter filterWithName:?]];
  CGAffineTransformMakeTranslation(&v14, seed, 0.0);
  v10 = [[(CIImage *)v9 imageByApplyingTransform:&v14] imageBySettingAlphaOneInExtent:0.0, 0.0, v8, 1.0];
  v11 = [CIKernel kernelWithInternalRepresentation:&CI::_KM_defuse];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __24__CIKMeans_defuse_seed___block_invoke;
  v13[3] = &__block_descriptor_64_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
  v13[4] = 0;
  v13[5] = 0;
  *&v13[6] = v8;
  v13[7] = 0x3FF0000000000000;
  v15[0] = defuse;
  v15[1] = v10;
  v15[2] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v7];
  v15[3] = &unk_1F1085478;
  return -[CIKernel applyWithExtent:roiCallback:arguments:](v11, "applyWithExtent:roiCallback:arguments:", v13, [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:4], 0.0, 0.0, v8, 1.0);
}

- (id)outputImage
{
  selfCopy = self;
  v57[4] = *MEMORY[0x1E69E9840];
  inputMeans = self->inputMeans;
  if (inputMeans)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v5 = selfCopy->inputMeans;
    if (isKindOfClass)
    {
      v6 = [(CIKMeans *)selfCopy _combine:selfCopy->inputMeans];
      if (!v6)
      {
        v13 = ci_logger_api();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [(CIKMeans *)v13 outputImage];
        }

        return +[CIImage emptyImage];
      }

      v7 = v6;
      unsignedIntegerValue = [(CIImage *)v5 count];
    }

    else
    {
      if (v5)
      {
        [(CIImage *)selfCopy->inputMeans extent];
        v11 = v10;
        unsignedIntegerValue = vcvtas_u32_f32(v11);
        [(CIImage *)selfCopy->inputMeans extent];
      }

      else
      {
        unsignedIntegerValue = [(NSNumber *)selfCopy->inputCount unsignedIntegerValue];
      }

      v7 = inputMeans;
    }

    [(CIImage *)v7 extent];
    if (CGRectIsInfinite(v59) || ([(CIImage *)v7 extent], v14 > 1.0))
    {
      [(CIImage *)v7 extent];
      if (!CGRectIsInfinite(v60))
      {
        v16 = MEMORY[0x1E696AEC0];
        [(CIImage *)v7 extent];
        v18 = v17;
        [(CIImage *)v7 extent];
        [v16 stringWithFormat:@"%.1f x %.1f", v18, v19];
      }

      v20 = ci_logger_filter();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [CIKMeans outputImage];
      }

      return +[CIImage emptyImage];
    }
  }

  else
  {
    inputCount = self->inputCount;
    if (!inputCount)
    {
      v12 = ci_logger_api();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(CIKMeans *)v12 outputImage];
      }

      return +[CIImage emptyImage];
    }

    unsignedIntegerValue = [(NSNumber *)inputCount unsignedIntegerValue];
    v7 = 0;
  }

  if (unsignedIntegerValue - 129 <= 0xFFFFFFFFFFFFFF7FLL)
  {

    return +[CIImage emptyImage];
  }

  inputExtent = selfCopy->super.inputExtent;
  if (!inputExtent)
  {
    inputImage = selfCopy->super.inputImage;
LABEL_35:
    [(CIImage *)inputImage extent];
    goto LABEL_36;
  }

  [(CIVector *)inputExtent CGRectValue];
  if (CGRectIsEmpty(v61))
  {
    v22 = ci_logger_filter();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [CIReductionFilter offsetAndCrop];
    }

    return 0;
  }

  v24 = selfCopy->super.inputExtent;
  inputImage = selfCopy->super.inputImage;
  if (!v24)
  {
    goto LABEL_35;
  }

  [(CIVector *)v24 CGRectValue];
LABEL_36:
  v29 = v25;
  v30 = v26;
  v31 = v27;
  v32 = v28;
  inputPerceptual = selfCopy->inputPerceptual;
  if (inputPerceptual)
  {
    bOOLValue = [(NSNumber *)inputPerceptual BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  inputPasses = selfCopy->inputPasses;
  if (inputPasses)
  {
    intValue = [(NSNumber *)inputPasses intValue];
  }

  else
  {
    intValue = 0;
  }

  _kernelKmeans = [(CIKMeans *)selfCopy _kernelKmeans];
  if (!inputMeans)
  {
    v56[0] = @"inputPoint0";
    v57[0] = [CIVector vectorWithX:0.0 Y:0.0];
    v56[1] = @"inputPoint1";
    v57[1] = [CIVector vectorWithX:(unsignedIntegerValue - 1) Y:0.0];
    v56[2] = @"inputColor0";
    v57[2] = +[CIColor magentaColor];
    v56[3] = @"inputColor1";
    v57[3] = +[CIColor greenColor];
    v7 = -[CIImage imageByCroppingToRect:](-[CIFilter outputImage](+[CIFilter filterWithName:withInputParameters:](CIFilter, "filterWithName:withInputParameters:", @"CILinearGradient", [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:v56 count:4]), "outputImage"), "imageByCroppingToRect:", 0.0, 0.0, unsignedIntegerValue, 1.0);
  }

  if (intValue)
  {
    v37 = bOOLValue;
  }

  else
  {
    v37 = 0;
  }

  if (v37)
  {
    inputImage = [(CIImage *)inputImage imageByApplyingFilter:@"CILinearToSRGBToneCurve"];
    v7 = [(CIImage *)v7 imageByApplyingFilter:@"CILinearToSRGBToneCurve"];
  }

  v38 = [MEMORY[0x1E695DF70] arrayWithCapacity:unsignedIntegerValue];
  if (intValue)
  {
    v39 = v38;
    v47 = _kernelKmeans;
    v40 = 0;
    v48 = selfCopy;
    do
    {
      v50 = v40;
      v51 = [(CIKMeans *)selfCopy defuse:v7 seed:?];
      v41 = 0;
      v42 = MEMORY[0x1E69E9820];
      do
      {
        v52[0] = v42;
        v52[1] = 3221225472;
        v52[2] = __23__CIKMeans_outputImage__block_invoke;
        v52[3] = &__block_descriptor_64_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
        v52[4] = 0;
        v52[5] = 0;
        *&v52[6] = unsignedIntegerValue;
        v52[7] = 0x3FF0000000000000;
        v55[0] = inputImage;
        v55[1] = v51;
        v55[2] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:unsignedIntegerValue];
        v55[3] = [MEMORY[0x1E696AD98] numberWithInt:v41];
        v43 = v39;
        v44 = [v47 applyWithExtent:v52 roiCallback:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v55, 4), v29, v30, v31, v32}];
        v53 = @"inputExtent";
        v54 = [CIVector vectorWithCGRect:v29, v30, v31, v32];
        v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
        v46 = v44;
        v39 = v43;
        [v43 setObject:objc_msgSend(objc_msgSend(v46 atIndexedSubscript:{"imageByApplyingFilter:withInputParameters:", @"CIAreaAverage", v45), "imageByUnpremultiplyingAlpha"), v41++}];
      }

      while (unsignedIntegerValue != v41);
      selfCopy = v48;
      v7 = [(CIKMeans *)v48 _combine:v43];
      v40 = v50 + 1;
    }

    while (v50 + 1 != intValue);
  }

  return [(CIImage *)v7 imageBySettingProperties:MEMORY[0x1E695E0F8]];
}

double __23__CIKMeans_outputImage__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    return *(a1 + 32);
  }

  return result;
}

- (void)outputImage
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = 136446466;
  v2 = "[CIKMeans outputImage]";
  v3 = 2114;
  v4 = @"Either inputMeans or inputCount should be specified.";
  _os_log_error_impl(&dword_19CC36000, log, OS_LOG_TYPE_ERROR, "%{public}s %{public}@", &v1, 0x16u);
}

@end