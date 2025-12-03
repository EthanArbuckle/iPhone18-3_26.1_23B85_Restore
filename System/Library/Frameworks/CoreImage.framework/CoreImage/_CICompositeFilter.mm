@interface _CICompositeFilter
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation _CICompositeFilter

+ (id)customAttributes
{
  v5[3] = *MEMORY[0x1E69E9840];
  v4[0] = @"CIAttributeFilterCategories";
  v3[0] = @"CICategoryCompositeOperation";
  v3[1] = @"CICategoryVideo";
  v3[2] = @"CICategoryStillImage";
  v3[3] = @"CICategoryInterlaced";
  v3[4] = @"CICategoryNonSquarePixels";
  v3[5] = @"CICategoryHighDynamicRange";
  v3[6] = @"CICategoryBuiltIn";
  v5[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:7];
  v5[1] = @"5";
  v4[1] = @"CIAttributeFilterAvailable_iOS";
  v4[2] = @"CIAttributeFilterAvailable_Mac";
  v5[2] = @"10.4";
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:3];
}

- (id)outputImage
{
  if (!self->inputImage || !self->inputBackgroundImage)
  {
    return 0;
  }

  _kernel = [objc_opt_class() _kernel];
  inputImage = self->inputImage;
  inputBackgroundImage = self->inputBackgroundImage;

  return [_kernel applyWithForeground:inputImage background:inputBackgroundImage];
}

@end