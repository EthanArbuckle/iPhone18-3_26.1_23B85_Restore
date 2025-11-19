@interface CIBlurmapSmoothing
+ (id)customAttributes;
- (id)outputImage;
- (id)performPass:(id)a3 reference:(id)a4 values:(id)a5 rect:(CGRect)a6;
@end

@implementation CIBlurmapSmoothing

+ (id)customAttributes
{
  v7[4] = *MEMORY[0x1E69E9840];
  v6[0] = @"CIAttributeFilterCategories";
  v5[0] = @"CICategoryColorAdjustment";
  v5[1] = @"CICategoryVideo";
  v5[2] = @"CICategoryStillImage";
  v5[3] = @"CICategoryBuiltIn";
  v5[4] = @"CICategoryApplePrivate";
  v7[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:5];
  v7[1] = @"11";
  v6[1] = @"CIAttributeFilterAvailable_iOS";
  v6[2] = @"CIAttributeFilterAvailable_Mac";
  v7[2] = @"10.13";
  v6[3] = @"inputDraftMode";
  v3[0] = @"CIAttributeType";
  v3[1] = @"CIAttributeSliderMin";
  v4[0] = @"CIAttributeTypeInteger";
  v4[1] = &unk_1F1082040;
  v3[2] = @"CIAttributeSliderMax";
  v3[3] = @"CIAttributeDefault";
  v4[2] = &unk_1F1082058;
  v4[3] = &unk_1F1082040;
  v7[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:4];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:4];
}

- (id)performPass:(id)a3 reference:(id)a4 values:(id)a5 rect:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v36[1] = *MEMORY[0x1E69E9840];
  [a3 extent];
  v38 = CGRectInset(v37, -4.0, 0.0);
  v14 = v38.origin.x;
  v15 = v38.origin.y;
  v16 = v38.size.width;
  v17 = v38.size.height;
  v18 = [(CIBlurmapSmoothing *)self _kernelH];
  v36[0] = [a3 imageByClampingToExtent];
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
  v34[0] = @"kCIKernelOutputFormat";
  v20 = [MEMORY[0x1E696AD98] numberWithInt:2054];
  v34[1] = @"kCIImageAlphaOne";
  v21 = MEMORY[0x1E695E118];
  v35[0] = v20;
  v35[1] = MEMORY[0x1E695E118];
  v22 = [v18 applyWithExtent:&__block_literal_global_58 roiCallback:v19 arguments:objc_msgSend(MEMORY[0x1E695DF20] options:{"dictionaryWithObjects:forKeys:count:", v35, v34, 2), v14, v15, v16, v17}];
  v39.origin.x = x;
  v39.origin.y = y;
  v39.size.width = width;
  v39.size.height = height;
  if (!CGRectIsInfinite(v39))
  {
    v22 = [v22 imageByCroppingToRect:{x, y, width, height}];
  }

  [v22 extent];
  v41 = CGRectInset(v40, 0.0, -4.0);
  v23 = v41.origin.x;
  v24 = v41.origin.y;
  v25 = v41.size.width;
  v26 = v41.size.height;
  v27 = [(CIBlurmapSmoothing *)self _kernelV];
  v33[0] = [v22 imageByClampingToExtent];
  v33[1] = a4;
  v33[2] = a5;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:3];
  v31[0] = @"kCIKernelOutputFormat";
  v31[1] = @"kCIImageAlphaOne";
  v32[0] = [MEMORY[0x1E696AD98] numberWithInt:2053];
  v32[1] = v21;
  v29 = [v27 applyWithExtent:&__block_literal_global_31 roiCallback:v28 arguments:objc_msgSend(MEMORY[0x1E695DF20] options:{"dictionaryWithObjects:forKeys:count:", v32, v31, 2), v23, v24, v25, v26}];
  v42.origin.x = x;
  v42.origin.y = y;
  v42.size.width = width;
  v42.size.height = height;
  if (!CGRectIsInfinite(v42))
  {
    return [v29 imageByCroppingToRect:{x, y, width, height}];
  }

  return v29;
}

double __56__CIBlurmapSmoothing_performPass_reference_values_rect___block_invoke_2(double result, double a2, double a3, double a4, uint64_t a5, int a6)
{
  if (!a6)
  {
    *&result = CGRectInset(*&result, 0.0, -4.0);
  }

  return result;
}

- (id)outputImage
{
  if (self->inputImage)
  {
    SDOFBlurmapSmoothingParameterValue(&cfstr_Niterations.isa, self->inputTuningParameters);
    v4 = v3;
    if (v3 <= 0)
    {
      return self->inputImage;
    }

    [(NSNumber *)self->inputScale floatValue];
    v5 = v4;
    if (v6 < 1.0)
    {
      [(NSNumber *)self->inputScale floatValue];
      if (ceilf(v7 * v4) >= 1.0)
      {
        [(NSNumber *)self->inputScale floatValue];
        v5 = vcvtps_s32_f32(v9 * v4);
      }

      else
      {
        v5 = 1;
      }
    }

    v10 = [CIDepthBlurEffect getDraftMode:[(CIBlurmapSmoothing *)self inputDraftMode]];
    if (v10 == 1)
    {
      return self->inputImage;
    }

    if (v10 != 2 && (v4 = v5, v5 <= 0))
    {
      return self->inputImage;
    }

    else
    {
      v11 = [(CIImage *)self->inputImage _imageByApplyingGamma:2.0];
      [(CIImage *)self->inputImage extent];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;
      SDOFBlurmapSmoothingParameterValue(&cfstr_Originalblurva.isa, self->inputTuningParameters);
      v21 = v20;
      SDOFBlurmapSmoothingParameterValue(&cfstr_Originalblurva_0.isa, self->inputTuningParameters);
      v23 = v22;
      SDOFBlurmapSmoothingParameterValue(&cfstr_Localminimumbl.isa, self->inputTuningParameters);
      v25 = v24;
      SDOFBlurmapSmoothingParameterValue(&cfstr_Localminimumbl_0.isa, self->inputTuningParameters);
      v27 = [CIVector vectorWithX:v21 Y:v23 Z:v25 W:v26];
      v28 = [v11 imageByClampingToExtent];
      v29 = v28;
      do
      {
        v29 = [(CIBlurmapSmoothing *)self performPass:v29 reference:v28 values:v27 rect:v13, v15, v17, v19];
        --v4;
      }

      while (v4);
      v31.origin.x = v13;
      v31.origin.y = v15;
      v31.size.width = v17;
      v31.size.height = v19;
      if (!CGRectIsInfinite(v31))
      {
        v29 = [v29 imageByCroppingToRect:{v13, v15, v17, v19}];
      }

      return [v29 _imageByApplyingGamma:0.5];
    }
  }

  else
  {

    return +[CIImage emptyImage];
  }
}

@end