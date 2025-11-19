@interface CISepiaTone
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CISepiaTone

+ (id)customAttributes
{
  v5[3] = *MEMORY[0x1E69E9840];
  v4[0] = @"CIAttributeFilterCategories";
  v3[0] = @"CICategoryColorEffect";
  v3[1] = @"CICategoryVideo";
  v3[2] = @"CICategoryInterlaced";
  v3[3] = @"CICategoryNonSquarePixels";
  v3[4] = @"CICategoryStillImage";
  v3[5] = @"CICategoryHighDynamicRange";
  v3[6] = @"CICategoryBuiltIn";
  v3[7] = @"CICategoryXMPSerializable";
  v5[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:8];
  v5[1] = @"5";
  v4[1] = @"CIAttributeFilterAvailable_iOS";
  v4[2] = @"CIAttributeFilterAvailable_Mac";
  v5[2] = @"10.4";
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:3];
}

- (id)outputImage
{
  v11[2] = *MEMORY[0x1E69E9840];
  if (!self->inputImage)
  {
    return 0;
  }

  if ([(CISepiaTone *)self _isIdentity])
  {
    v3 = self->inputImage;

    return v3;
  }

  else
  {
    v5 = [(CISepiaTone *)self _kernel];
    [(CIImage *)self->inputImage extent];
    inputIntensity = self->inputIntensity;
    v11[0] = self->inputImage;
    v11[1] = inputIntensity;
    return [v5 applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v11, 2), v7, v8, v9, v10}];
  }
}

@end