@interface CIDepthDisparityConverter
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIDepthDisparityConverter

+ (id)customAttributes
{
  v5[3] = *MEMORY[0x1E69E9840];
  v4[0] = @"CIAttributeFilterCategories";
  v3[0] = @"CICategoryColorAdjustment";
  v3[1] = @"CICategoryVideo";
  v3[2] = @"CICategoryStillImage";
  v3[3] = @"CICategoryBuiltIn";
  v5[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:4];
  v5[1] = @"11";
  v4[1] = @"CIAttributeFilterAvailable_iOS";
  v4[2] = @"CIAttributeFilterAvailable_Mac";
  v5[2] = @"10.13";
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:3];
}

- (id)outputImage
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_convertDepthOrDisparity];
  [(CIImage *)self->inputImage extent];
  v9[0] = self->inputImage;
  return -[CIColorKernel applyWithExtent:arguments:](v3, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1], v4, v5, v6, v7);
}

@end