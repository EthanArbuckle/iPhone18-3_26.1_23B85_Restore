@interface CIColorAbsoluteDifference
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIColorAbsoluteDifference

+ (id)customAttributes
{
  v5[3] = *MEMORY[0x1E69E9840];
  v4[0] = @"CIAttributeFilterCategories";
  v3[0] = @"CICategoryColorAdjustment";
  v3[1] = @"CICategoryVideo";
  v3[2] = @"CICategoryInterlaced";
  v3[3] = @"CICategoryNonSquarePixels";
  v3[4] = @"CICategoryStillImage";
  v3[5] = @"CICategoryHighDynamicRange";
  v3[6] = @"CICategoryBuiltIn";
  v5[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:7];
  v5[1] = @"14";
  v4[1] = @"CIAttributeFilterAvailable_iOS";
  v4[2] = @"CIAttributeFilterAvailable_Mac";
  v5[2] = @"11.0";
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:3];
}

- (id)outputImage
{
  v24[2] = *MEMORY[0x1E69E9840];
  inputImage = self->inputImage;
  if (inputImage && self->inputImage2 && ([(CIImage *)inputImage extent], v5 = v4, v7 = v6, v9 = v8, v11 = v10, [(CIImage *)self->inputImage2 extent], v28.origin.x = v12, v28.origin.y = v13, v28.size.width = v14, v28.size.height = v15, v26.origin.x = v5, v26.origin.y = v7, v26.size.width = v9, v26.size.height = v11, v27 = CGRectIntersection(v26, v28), x = v27.origin.x, y = v27.origin.y, width = v27.size.width, height = v27.size.height, !CGRectIsEmpty(v27)))
  {
    v21 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_colorAbsDiff];
    v22 = [(CIImage *)self->inputImage imageByUnpremultiplyingAlpha];
    v23 = [(CIImage *)self->inputImage2 imageByUnpremultiplyingAlpha];
    v24[0] = v22;
    v24[1] = v23;
    return -[CIImage imageByPremultiplyingAlpha](-[CIColorKernel applyWithExtent:arguments:](v21, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2], x, y, width, height), "imageByPremultiplyingAlpha");
  }

  else
  {

    return +[CIImage emptyImage];
  }
}

@end