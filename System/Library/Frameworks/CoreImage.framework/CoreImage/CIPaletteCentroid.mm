@interface CIPaletteCentroid
+ (id)customAttributes;
- (id)outputImage;
- (void)outputImage;
@end

@implementation CIPaletteCentroid

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
  v50[4] = *MEMORY[0x1E69E9840];
  if (!self->inputImage || (inputPaletteImage = self->inputPaletteImage) == 0)
  {

    return +[CIImage emptyImage];
  }

  [(CIImage *)inputPaletteImage extent];
  if (CGRectIsInfinite(v52) || ([(CIImage *)self->inputPaletteImage extent], v4 > 1.0))
  {
    v5 = ci_logger_api();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(CIPaletteCentroid *)&self->inputPaletteImage outputImage];
    }

    return +[CIImage emptyImage];
  }

  [(CIImage *)self->inputPaletteImage extent];
  v8 = v7;
  inputImage = self->inputImage;
  inputPerceptual = self->inputPerceptual;
  if (inputPerceptual)
  {
    bOOLValue = [(NSNumber *)inputPerceptual BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  [(CIImage *)self->inputImage extent];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  _kernelClusterMask = [(CIPaletteCentroid *)self _kernelClusterMask];
  v21 = self->inputPaletteImage;
  [(CIImage *)v21 extent];
  v23 = -v22;
  [(CIImage *)self->inputPaletteImage extent];
  CGAffineTransformMakeTranslation(&v47, v23, -v24);
  v25 = [(CIImage *)v21 imageByApplyingTransform:&v47];
  if (bOOLValue)
  {
    inputImage = [(CIImage *)inputImage imageByApplyingFilter:@"CILinearToSRGBToneCurve"];
    v25 = [(CIImage *)v25 imageByApplyingFilter:@"CILinearToSRGBToneCurve"];
  }

  imageByUnpremultiplyingAlpha = [(CIImage *)inputImage imageByUnpremultiplyingAlpha];
  v27 = +[CIImage emptyImage];
  if (v8)
  {
    v28 = 0;
    v45 = MEMORY[0x1E69E9820];
    v44 = __32__CIPaletteCentroid_outputImage__block_invoke;
    v29 = MEMORY[0x1E695F040];
    v43 = 3221225472;
    do
    {
      v30 = v17;
      v31 = v15;
      v32 = v13;
      v33 = *v29;
      v34 = v29[1];
      v35 = v29[2];
      v36 = v29[3];
      v50[0] = imageByUnpremultiplyingAlpha;
      v50[1] = v25;
      v50[2] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{v8, v43, v44, v45, v45, v43, v44, &__block_descriptor_40_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l, v8}];
      v50[3] = [MEMORY[0x1E696AD98] numberWithInt:v28];
      v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:4];
      v38 = v34;
      v13 = v32;
      v15 = v31;
      v17 = v30;
      v39 = _kernelClusterMask;
      v40 = [_kernelClusterMask applyWithExtent:&v46 roiCallback:v37 arguments:{v33, v38, v35, v36}];
      v48 = @"inputExtent";
      v49 = [CIVector vectorWithCGRect:v13, v15, v30, v19];
      v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
      v42 = v40;
      _kernelClusterMask = v39;
      v27 = [objc_msgSend(objc_msgSend(objc_msgSend(v42 imageByApplyingFilter:@"CIAreaRedCentroid" withInputParameters:{v41), "imageByClampingToExtent"), "imageByCroppingToRect:", v28++, 0.0, 1.0, 1.0), "imageByCompositingOverImage:", v27}];
    }

    while (v8 != v28);
  }

  return [(CIImage *)v27 imageBySettingProperties:MEMORY[0x1E695E0F8]];
}

double __32__CIPaletteCentroid_outputImage__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    return 0.0;
  }

  return result;
}

- (void)outputImage
{
  [*self extent];
  [*self extent];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

@end