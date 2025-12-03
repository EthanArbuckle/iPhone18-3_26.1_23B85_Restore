@interface CIFillHolesInRedMask
+ (id)customAttributes;
- (id)outputImage;
- (void)outputImage;
@end

@implementation CIFillHolesInRedMask

+ (id)customAttributes
{
  v9[5] = *MEMORY[0x1E69E9840];
  v8[0] = @"CIAttributeFilterCategories";
  v7[0] = @"CICategoryGradient";
  v7[1] = @"CICategoryVideo";
  v7[2] = @"CICategoryStillImage";
  v7[3] = @"CICategoryBuiltIn";
  v7[4] = @"CICategoryApplePrivate";
  v9[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:5];
  v9[1] = @"18";
  v8[1] = @"CIAttributeFilterAvailable_iOS";
  v8[2] = @"CIAttributeFilterAvailable_Mac";
  v9[2] = @"15.0";
  v8[3] = @"inputMaximumHoleSize";
  v5[0] = @"CIAttributeMin";
  v5[1] = @"CIAttributeSliderMin";
  v6[0] = &unk_1F1082958;
  v6[1] = &unk_1F1082968;
  v5[2] = @"CIAttributeSliderMax";
  v5[3] = @"CIAttributeDefault";
  v6[2] = &unk_1F1082978;
  v6[3] = &unk_1F1082988;
  v5[4] = @"CIAttributeMax";
  v5[5] = @"CIAttributeType";
  v6[4] = &unk_1F10829A8;
  v6[5] = @"CIAttributeTypeDistance";
  v9[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:6];
  v8[4] = @"inputRefinementPassCount";
  v3[0] = @"CIAttributeMin";
  v3[1] = @"CIAttributeSliderMin";
  v4[0] = &unk_1F1082968;
  v4[1] = &unk_1F1082968;
  v3[2] = @"CIAttributeSliderMax";
  v3[3] = @"CIAttributeDefault";
  v4[2] = &unk_1F10829B8;
  v4[3] = &unk_1F1082988;
  v3[4] = @"CIAttributeMax";
  v3[5] = @"CIAttributeType";
  v4[4] = &unk_1F10829C8;
  v4[5] = @"CIAttributeTypeCount";
  v9[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:6];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:5];
}

- (id)outputImage
{
  v40[1] = *MEMORY[0x1E69E9840];
  [(CIImage *)self->inputImage extent];
  IsEmpty = CGRectIsEmpty(v41);
  result = self->inputImage;
  if (!IsEmpty)
  {
    [result extent];
    x = v42.origin.x;
    y = v42.origin.y;
    width = v42.size.width;
    height = v42.size.height;
    if (CGRectIsInfinite(v42))
    {
      v9 = ci_logger_filter();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [CIDistanceGradientFromRedMask outputImage];
      }

      return 0;
    }

    [(NSNumber *)self->inputMaximumHoleSize floatValue];
    v11 = v10;
    if (v10 >= 1.0)
    {
      if (v10 > 500.0)
      {
        v12 = ci_logger_filter();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [CIFillHolesInRedMask outputImage];
        }

        return 0;
      }

      v34 = x;
      intValue = [(NSNumber *)self->inputRefinementPassCount intValue];
      if (intValue <= 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = intValue;
      }

      inputImage = self->inputImage;
      if (v15 >= 32)
      {
        v17 = 32;
      }

      else
      {
        v17 = v15;
      }

      v39 = @"inputMaximumDistance";
      *&v14 = v11;
      v40[0] = [MEMORY[0x1E696AD98] numberWithFloat:v14];
      v18 = -[CIImage imageByApplyingFilter:withInputParameters:](inputImage, "imageByApplyingFilter:withInputParameters:", @"CIDistanceGradientFromRedMask", [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:&v39 count:1]);
      [(CIImage *)self->inputImage extent];
      v44 = CGRectInset(v43, -v11, -v11);
      v45 = CGRectIntegral(v44);
      v19 = [(CIImage *)v18 imageByCroppingToRect:v45.origin.x, v45.origin.y, v45.size.width, v45.size.height];
      v20 = [CIKernel kernelWithInternalRepresentation:&CI::_holeFillRefine];
      do
      {
        [(CIImage *)v19 extent];
        v22 = v21;
        v24 = v23;
        v26 = v25;
        v28 = v27;
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v35[2] = __35__CIFillHolesInRedMask_outputImage__block_invoke;
        v35[3] = &__block_descriptor_36_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
        v36 = v11;
        v38[0] = v19;
        *&v21 = v11;
        v38[1] = [MEMORY[0x1E696AD98] numberWithFloat:v21];
        v19 = -[CIImage imageBySamplingNearest](-[CIKernel applyWithExtent:roiCallback:arguments:](v20, "applyWithExtent:roiCallback:arguments:", v35, [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2], v22, v24, v26, v28), "imageBySamplingNearest");
        --v17;
      }

      while (v17);
      v29 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_holeFillPost];
      [(CIImage *)v19 extent];
      v37 = v19;
      return -[CIImage imageByCroppingToRect:](-[CIColorKernel applyWithExtent:arguments:](v29, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1], v30, v31, v32, v33), "imageByCroppingToRect:", v34, y, width, height);
    }

    else
    {
      return self->inputImage;
    }
  }

  return result;
}

- (void)outputImage
{
  [objc_opt_class() description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_19CC36000, v0, v1, "%{public}@: inputMaximumHoleSize must be in the range 1...500.", v2, v3, v4, v5, v6);
}

@end