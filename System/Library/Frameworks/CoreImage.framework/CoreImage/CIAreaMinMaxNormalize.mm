@interface CIAreaMinMaxNormalize
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIAreaMinMaxNormalize

+ (id)customAttributes
{
  v5[3] = *MEMORY[0x1E69E9840];
  v4[0] = @"CIAttributeFilterCategories";
  v3[0] = @"CICategoryColorAdjustment";
  v3[1] = @"CICategoryVideo";
  v3[2] = @"CICategoryStillImage";
  v3[3] = @"CICategoryBuiltIn";
  v3[4] = @"CICategoryHighDynamicRange";
  v3[5] = @"CICategoryApplePrivate";
  v5[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:6];
  v5[1] = @"11";
  v4[1] = @"CIAttributeFilterAvailable_iOS";
  v4[2] = @"CIAttributeFilterAvailable_Mac";
  v5[2] = @"10.13";
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:3];
}

- (id)outputImage
{
  v32[1] = *MEMORY[0x1E69E9840];
  [(CIImage *)self->inputImage extent];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(CIVector *)self->inputExtent CGRectValue];
  v36.origin.x = v11;
  v36.origin.y = v12;
  v36.size.width = v13;
  v36.size.height = v14;
  v34.origin.x = v4;
  v34.origin.y = v6;
  v34.size.width = v8;
  v34.size.height = v10;
  v35 = CGRectIntersection(v34, v36);
  if (CGRectIsEmpty(v35))
  {

    return +[CIImage emptyImage];
  }

  else
  {
    inputImage = self->inputImage;
    inputExtent = self->inputExtent;
    v31 = @"inputExtent";
    v32[0] = inputExtent;
    v18 = -[CIImage imageByUnpremultiplyingAlpha](-[CIImage imageByClampingToExtent](-[CIImage imageByApplyingFilter:withInputParameters:](inputImage, "imageByApplyingFilter:withInputParameters:", @"CIAreaMinimum", [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1]), "imageByClampingToExtent"), "imageByUnpremultiplyingAlpha");
    v19 = self->inputImage;
    v20 = self->inputExtent;
    v29 = @"inputExtent";
    v30 = v20;
    v21 = -[CIImage imageByUnpremultiplyingAlpha](-[CIImage imageByClampingToExtent](-[CIImage imageByApplyingFilter:withInputParameters:](v19, "imageByApplyingFilter:withInputParameters:", @"CIAreaMaximum", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1]), "imageByClampingToExtent"), "imageByUnpremultiplyingAlpha");
    v22 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_minMaxNormalize];
    imageByUnpremultiplyingAlpha = [(CIImage *)self->inputImage imageByUnpremultiplyingAlpha];
    [(CIImage *)imageByUnpremultiplyingAlpha extent];
    v28[0] = imageByUnpremultiplyingAlpha;
    v28[1] = v18;
    v28[2] = v21;
    return -[CIImage imageByPremultiplyingAlpha](-[CIColorKernel applyWithExtent:arguments:](v22, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:3], v24, v25, v26, v27), "imageByPremultiplyingAlpha");
  }
}

@end