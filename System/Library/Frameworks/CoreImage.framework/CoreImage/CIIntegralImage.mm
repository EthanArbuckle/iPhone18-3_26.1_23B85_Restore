@interface CIIntegralImage
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIIntegralImage

+ (id)customAttributes
{
  v5[3] = *MEMORY[0x1E69E9840];
  v4[0] = @"CIAttributeFilterCategories";
  v3[0] = @"CICategoryStylize";
  v3[1] = @"CICategoryVideo";
  v3[2] = @"CICategoryStillImage";
  v3[3] = @"CICategoryBuiltIn";
  v3[4] = @"CICategoryApplePrivate";
  v5[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:5];
  v5[1] = @"10";
  v4[1] = @"CIAttributeFilterAvailable_iOS";
  v4[2] = @"CIAttributeFilterAvailable_Mac";
  v5[2] = @"10.12";
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:3];
}

- (id)outputImage
{
  v15[1] = *MEMORY[0x1E69E9840];
  inputImage = self->inputImage;
  if (!inputImage)
  {
    return 0;
  }

  [(CIImage *)inputImage extent];
  x = v16.origin.x;
  y = v16.origin.y;
  width = v16.size.width;
  height = v16.size.height;
  if (CGRectIsEmpty(v16))
  {
    return 0;
  }

  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  if (CGRectIsInfinite(v17))
  {
    return 0;
  }

  v10 = self->inputImage;
  v15[0] = v10;
  v8 = +[CIImageProcessorKernel applyWithExtent:inputs:arguments:error:](CIIntegralImageProcessorCPU, "applyWithExtent:inputs:arguments:error:", [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1], 0, 0, x, y, width, height);
  if (CI_ENABLE_MPS())
  {
    v11 = CI_FLIP_IMAGE_PROCESSOR();
    if (v11)
    {
      v10 = [(CIImage *)v10 imageByApplyingOrientation:4];
    }

    v14 = v10;
    v12 = +[CIImageProcessorKernel applyWithExtent:inputs:arguments:error:](CIIntegralImageProcessorGPU, "applyWithExtent:inputs:arguments:error:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1], 0, 0, x, y, width, height);
    v13 = v12;
    if (v11)
    {
      v13 = [(CIImage *)v12 imageByApplyingOrientation:4];
    }

    return [CIImage imageForRenderingWithMPS:v13 orNonMPS:v8];
  }

  return v8;
}

@end