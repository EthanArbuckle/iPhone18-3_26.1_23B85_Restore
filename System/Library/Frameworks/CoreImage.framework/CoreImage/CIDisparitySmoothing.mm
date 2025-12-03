@interface CIDisparitySmoothing
+ (id)customAttributes;
- (id)outputImage;
- (id)outputImageMetal;
@end

@implementation CIDisparitySmoothing

+ (id)customAttributes
{
  v7[4] = *MEMORY[0x1E69E9840];
  v6[0] = @"CIAttributeFilterCategories";
  v5[0] = @"CICategoryBlur";
  v5[1] = @"CICategoryVideo";
  v5[2] = @"CICategoryStillImage";
  v5[3] = @"CICategoryBuiltIn";
  v5[4] = @"CICategoryApplePrivate";
  v7[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:5];
  v7[1] = @"11";
  v6[1] = @"CIAttributeFilterAvailable_iOS";
  v6[2] = @"CIAttributeFilterAvailable_Mac";
  v7[2] = @"10.13";
  v6[3] = @"inputNumIterations";
  v3[0] = @"CIAttributeType";
  v3[1] = @"CIAttributeMin";
  v3[2] = @"CIAttributeSliderMin";
  v3[3] = @"CIAttributeSliderMax";
  v4[0] = @"CIAttributeTypeInteger";
  v4[1] = &unk_1F1081AD0;
  v4[2] = &unk_1F1081AD0;
  v4[3] = &unk_1F1081AE8;
  v3[4] = @"CIAttributeDefault";
  v4[4] = &unk_1F1081B00;
  v7[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:5];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:4];
}

- (id)outputImageMetal
{
  v17[1] = *MEMORY[0x1E69E9840];
  integerValue = [(NSNumber *)self->inputNumIterations integerValue];
  inputImage = self->inputImage;
  if (integerValue)
  {
    v5 = integerValue;
    [(CIImage *)inputImage extent];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    inputImage = [(CIImage *)inputImage imageByClampingToExtent];
    v16 = 0;
    if (v5 >= 1)
    {
      v14 = MEMORY[0x1E695E0F8];
      do
      {
        v17[0] = inputImage;
        inputImage = +[CIImageProcessorKernel applyWithExtent:inputs:arguments:error:](CIDisparitySmoothingProcessor, "applyWithExtent:inputs:arguments:error:", [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1], v14, &v16, v7, v9, v11, v13);
        --v5;
      }

      while (v5);
    }

    v18.origin.x = v7;
    v18.origin.y = v9;
    v18.size.width = v11;
    v18.size.height = v13;
    if (!CGRectIsInfinite(v18))
    {
      return [(CIImage *)inputImage imageByCroppingToRect:v7, v9, v11, v13];
    }
  }

  return inputImage;
}

- (id)outputImage
{
  v26[1] = *MEMORY[0x1E69E9840];
  integerValue = [(NSNumber *)self->inputNumIterations integerValue];
  inputImage = self->inputImage;
  if (integerValue)
  {
    v5 = integerValue;
    saveImage(self->inputImage, @"/tmp/inputToBoxBlur.tiff", 1);
    [(CIImage *)inputImage extent];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    imageByClampingToExtent = [(CIImage *)inputImage imageByClampingToExtent];
    if (v5 >= 1)
    {
      v15 = MEMORY[0x1E695E118];
      do
      {
        _customBoxBlur5Kernel = [(CIDisparitySmoothing *)self _customBoxBlur5Kernel];
        [(CIImage *)imageByClampingToExtent extent];
        v28 = CGRectInset(v27, -2.0, -2.0);
        x = v28.origin.x;
        y = v28.origin.y;
        width = v28.size.width;
        height = v28.size.height;
        v26[0] = imageByClampingToExtent;
        v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
        v22 = [MEMORY[0x1E696AD98] numberWithInt:{2053, @"kCIKernelOutputFormat"}];
        v24[1] = @"kCIImageAlphaOne";
        v25[0] = v22;
        v25[1] = v15;
        imageByClampingToExtent = [_customBoxBlur5Kernel applyWithExtent:&__block_literal_global_19 roiCallback:v21 arguments:objc_msgSend(MEMORY[0x1E695DF20] options:{"dictionaryWithObjects:forKeys:count:", v25, v24, 2), x, y, width, height}];
        --v5;
      }

      while (v5);
    }

    inputImage = [(CIImage *)imageByClampingToExtent imageByCroppingToRect:v7, v9, v11, v13];
    saveImage(inputImage, @"/tmp/outputFromBoxBlur.tiff", 1);
  }

  return inputImage;
}

@end