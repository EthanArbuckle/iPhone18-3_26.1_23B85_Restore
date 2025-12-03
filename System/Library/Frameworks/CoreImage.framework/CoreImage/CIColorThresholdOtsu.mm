@interface CIColorThresholdOtsu
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIColorThresholdOtsu

+ (id)customAttributes
{
  v5[3] = *MEMORY[0x1E69E9840];
  v4[0] = @"CIAttributeFilterCategories";
  v3[0] = @"CICategoryColorAdjustment";
  v3[1] = @"CICategoryVideo";
  v3[2] = @"CICategoryInterlaced";
  v3[3] = @"CICategoryNonSquarePixels";
  v3[4] = @"CICategoryStillImage";
  v3[5] = @"CICategoryBuiltIn";
  v5[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:6];
  v5[1] = @"14";
  v4[1] = @"CIAttributeFilterAvailable_iOS";
  v4[2] = @"CIAttributeFilterAvailable_Mac";
  v5[2] = @"11.0";
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:3];
}

- (id)outputImage
{
  v32[2] = *MEMORY[0x1E69E9840];
  inputImage = self->inputImage;
  if (!inputImage || ([(CIImage *)inputImage extent], CGRectIsEmpty(v34)) || ([(CIImage *)self->inputImage extent], CGRectIsInfinite(v35)))
  {

    return +[CIImage emptyImage];
  }

  else
  {
    v5 = self->inputImage;
    [(CIImage *)v5 extent];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    *&v8 = 1024.0 / v10;
    *&v6 = 1024.0 / v12;
    v14 = fminf(fminf(*&v8, *&v6), 1.0);
    imageByUnpremultiplyingAlpha = [(CIImage *)v5 imageByUnpremultiplyingAlpha];
    memset(&v28, 0, sizeof(v28));
    CGAffineTransformMakeScale(&v28, v14, v14);
    imageByClampingToExtent = [(CIImage *)imageByUnpremultiplyingAlpha imageByClampingToExtent];
    v27 = v28;
    v17 = [(CIImage *)imageByClampingToExtent imageByApplyingTransform:&v27];
    v27 = v28;
    v36.origin.x = v7;
    v36.origin.y = v9;
    v36.size.width = v11;
    v36.size.height = v13;
    v37 = CGRectApplyAffineTransform(v36, &v27);
    v38 = CGRectInset(v37, 0.001, 0.001);
    v39 = CGRectIntegral(v38);
    v31[0] = @"inputExtent";
    v18 = [CIVector vectorWithCGRect:v39.origin.x, v39.origin.y, v39.size.width, v39.size.height];
    v31[1] = @"inputCount";
    v32[0] = v18;
    v32[1] = &unk_1F1081980;
    v19 = -[CIImage imageByApplyingFilter:withInputParameters:](v17, "imageByApplyingFilter:withInputParameters:", @"CIAreaHistogram", [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:2]);
    v20 = [CIKernel kernelWithInternalRepresentation:&CI::_otsu];
    v21 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_otsuThresh];
    v30[0] = v19;
    v30[1] = &unk_1F1081980;
    v22 = -[CIImage imageByClampingToExtent](-[CIKernel applyWithExtent:roiCallback:arguments:](v20, "applyWithExtent:roiCallback:arguments:", &__block_literal_global_12, [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2], 0.0, 0.0, 1.0, 1.0), "imageByClampingToExtent");
    [(CIImage *)imageByUnpremultiplyingAlpha extent];
    v29[0] = imageByUnpremultiplyingAlpha;
    v29[1] = v22;
    return -[CIImage imageByPremultiplyingAlpha](-[CIColorKernel applyWithExtent:arguments:](v21, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2], v23, v24, v25, v26), "imageByPremultiplyingAlpha");
  }
}

@end