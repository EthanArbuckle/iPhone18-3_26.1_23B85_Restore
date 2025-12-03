@interface CIPalettize
+ (id)customAttributes;
- (id)outputImage;
- (void)outputImage;
@end

@implementation CIPalettize

+ (id)customAttributes
{
  v7[4] = *MEMORY[0x1E69E9840];
  v6[0] = @"CIAttributeFilterCategories";
  v5[0] = @"CICategoryColorEffect";
  v5[1] = @"CICategoryVideo";
  v5[2] = @"CICategoryStillImage";
  v5[3] = @"CICategoryBuiltIn";
  v7[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:4];
  v7[1] = @"13";
  v6[1] = @"CIAttributeFilterAvailable_iOS";
  v6[2] = @"CIAttributeFilterAvailable_Mac";
  v7[2] = @"10.15";
  v6[3] = @"inputPerceptual";
  v3[0] = @"CIAttributeMin";
  v3[1] = @"CIAttributeMax";
  v4[0] = MEMORY[0x1E695E110];
  v4[1] = MEMORY[0x1E695E118];
  v3[2] = @"CIAttributeDefault";
  v3[3] = @"CIAttributeType";
  v4[2] = MEMORY[0x1E695E110];
  v4[3] = @"CIAttributeTypeBoolean";
  v7[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:4];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:4];
}

- (id)outputImage
{
  v34[3] = *MEMORY[0x1E69E9840];
  if (self->inputImage && (v3 = self->inputPaletteImage) != 0)
  {
    [(CIImage *)v3 extent];
    if (CGRectIsInfinite(v36) || ([(CIImage *)self->inputPaletteImage extent], v4 > 1.0))
    {
      v5 = ci_logger_api();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [(CIPalettize *)&self->inputPaletteImage outputImage];
      }

      return +[CIImage emptyImage];
    }

    else
    {
      inputImage = self->inputImage;
      [(CIImage *)self->inputPaletteImage extent];
      v9 = v8;
      inputPerceptual = self->inputPerceptual;
      if (inputPerceptual)
      {
        bOOLValue = [(NSNumber *)inputPerceptual BOOLValue];
      }

      else
      {
        bOOLValue = 0;
      }

      v12 = v9;
      [(CIImage *)self->inputImage extent];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;
      _kernelApplyPalette = [(CIPalettize *)self _kernelApplyPalette];
      inputPaletteImage = self->inputPaletteImage;
      [(CIImage *)inputPaletteImage extent];
      v24 = -v23;
      [(CIImage *)self->inputPaletteImage extent];
      CGAffineTransformMakeTranslation(&v33, v24, -v25);
      v26 = [(CIImage *)inputPaletteImage imageByApplyingTransform:&v33];
      if (bOOLValue)
      {
        inputImage = [(CIImage *)inputImage imageByApplyingFilter:@"CILinearToSRGBToneCurve"];
        v26 = [(CIImage *)v26 imageByApplyingFilter:@"CILinearToSRGBToneCurve"];
      }

      imageByUnpremultiplyingAlpha = [(CIImage *)inputImage imageByUnpremultiplyingAlpha];
      v28 = *MEMORY[0x1E695F040];
      v29 = *(MEMORY[0x1E695F040] + 8);
      v30 = *(MEMORY[0x1E695F040] + 16);
      v31 = *(MEMORY[0x1E695F040] + 24);
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __26__CIPalettize_outputImage__block_invoke;
      v32[3] = &__block_descriptor_40_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
      v32[4] = v12;
      v34[0] = imageByUnpremultiplyingAlpha;
      v34[1] = v26;
      v34[2] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v12];
      result = [objc_msgSend(objc_msgSend(_kernelApplyPalette applyWithExtent:v32 roiCallback:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v34, 3), v28, v29, v30, v31), "imageByCroppingToRect:", v14, v16, v18, v20), "imageByPremultiplyingAlpha"}];
      if (bOOLValue)
      {
        return [result imageByApplyingFilter:@"CISRGBToneCurveToLinear"];
      }
    }
  }

  else
  {

    return +[CIImage emptyImage];
  }

  return result;
}

double __26__CIPalettize_outputImage__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    return 0.0;
  }

  return result;
}

- (void)outputImage
{
  v13 = *MEMORY[0x1E69E9840];
  [*self extent];
  v5 = v4;
  [*self extent];
  v7 = 136446722;
  v8 = "[CIPalettize outputImage]";
  v9 = 2048;
  v10 = v5;
  v11 = 2048;
  v12 = v6;
  _os_log_error_impl(&dword_19CC36000, a2, OS_LOG_TYPE_ERROR, "%{public}s The input palette should be a K x 1 image but received %.1f x %.1f]", &v7, 0x20u);
}

@end