@interface CIGaborGradients
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIGaborGradients

+ (id)customAttributes
{
  v5[3] = *MEMORY[0x1E69E9840];
  v4[0] = @"CIAttributeFilterCategories";
  v3[0] = @"CICategoryStylize";
  v3[1] = @"CICategoryVideo";
  v3[2] = @"CICategoryStillImage";
  v3[3] = @"CICategoryHighDynamicRange";
  v3[4] = @"CICategoryBuiltIn";
  v5[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:5];
  v5[1] = @"13";
  v4[1] = @"CIAttributeFilterAvailable_iOS";
  v4[2] = @"CIAttributeFilterAvailable_Mac";
  v5[2] = @"10.15";
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:3];
}

- (id)outputImage
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = [CIKernel kernelWithInternalRepresentation:&CI::_gabor];
  v4 = [(CIImage *)self->inputImage imageByClampingToExtent];
  v5 = *MEMORY[0x1E695F040];
  v6 = *(MEMORY[0x1E695F040] + 8);
  v7 = *(MEMORY[0x1E695F040] + 16);
  v8 = *(MEMORY[0x1E695F040] + 24);
  v11[0] = v4;
  v9 = -[CIKernel applyWithExtent:roiCallback:arguments:](v3, "applyWithExtent:roiCallback:arguments:", &__block_literal_global_36, [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1], v5, v6, v7, v8);
  [(CIImage *)self->inputImage extent];
  return [(CIImage *)v9 imageByCroppingToRect:?];
}

@end