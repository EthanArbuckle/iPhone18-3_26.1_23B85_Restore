@interface CISharpenLuminance
+ (id)customAttributes;
- (BOOL)_isIdentity;
- (id)outputImage;
@end

@implementation CISharpenLuminance

+ (id)customAttributes
{
  v9[5] = *MEMORY[0x1E69E9840];
  v8[0] = @"CIAttributeFilterCategories";
  v7[0] = @"CICategorySharpen";
  v7[1] = @"CICategoryVideo";
  v7[2] = @"CICategoryStillImage";
  v7[3] = @"CICategoryBuiltIn";
  v9[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:4];
  v9[1] = @"6";
  v8[1] = @"CIAttributeFilterAvailable_iOS";
  v8[2] = @"CIAttributeFilterAvailable_Mac";
  v9[2] = @"10.4";
  v8[3] = @"inputSharpness";
  v5[0] = @"CIAttributeSliderMin";
  v5[1] = @"CIAttributeSliderMax";
  v6[0] = &unk_1F1084A08;
  v6[1] = &unk_1F1084A18;
  v5[2] = @"CIAttributeDefault";
  v5[3] = @"CIAttributeIdentity";
  v6[2] = &unk_1F1084A28;
  v6[3] = &unk_1F1084A08;
  v5[4] = @"CIAttributeType";
  v6[4] = @"CIAttributeTypeScalar";
  v9[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:5];
  v8[4] = @"inputRadius";
  v3[0] = @"CIAttributeSliderMin";
  v3[1] = @"CIAttributeSliderMax";
  v4[0] = &unk_1F1084A08;
  v4[1] = &unk_1F1084A38;
  v3[2] = @"CIAttributeDefault";
  v3[3] = @"CIAttributeIdentity";
  v4[2] = &unk_1F1084A48;
  v4[3] = &unk_1F1084A08;
  v3[4] = @"CIAttributeType";
  v4[4] = @"CIAttributeTypeScalar";
  v9[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:5];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:5];
}

- (BOOL)_isIdentity
{
  [(NSNumber *)self->inputSharpness floatValue];
  if (fabsf(v3) <= 0.001)
  {
    return 1;
  }

  [(NSNumber *)self->inputRadius floatValue];
  return v4 < 0.16;
}

- (id)outputImage
{
  v16[3] = *MEMORY[0x1E69E9840];
  if (!self->inputImage)
  {
    return 0;
  }

  _isIdentity = [(CISharpenLuminance *)self _isIdentity];
  inputImage = self->inputImage;
  if (_isIdentity)
  {
    v5 = inputImage;

    return v5;
  }

  else
  {
    imageByClampingToExtent = [(CIImage *)inputImage imageByClampingToExtent];
    [(NSNumber *)self->inputRadius floatValue];
    v9 = [(CIImage *)imageByClampingToExtent imageByApplyingGaussianBlurWithSigma:v8];
    _kernel = [(CISharpenLuminance *)self _kernel];
    [(CIImage *)imageByClampingToExtent extent];
    v16[0] = imageByClampingToExtent;
    v16[1] = v9;
    v16[2] = self->inputSharpness;
    v15 = [_kernel applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v16, 3), v11, v12, v13, v14}];
    [(CIImage *)self->inputImage extent];
    return [v15 imageByCroppingToRect:?];
  }
}

@end