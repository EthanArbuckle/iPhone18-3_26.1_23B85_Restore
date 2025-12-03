@interface CIUnsharpMask
+ (id)customAttributes;
- (BOOL)_isIdentity;
- (id)outputImage;
@end

@implementation CIUnsharpMask

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
  v8[3] = @"inputIntensity";
  v5[0] = @"CIAttributeMin";
  v5[1] = @"CIAttributeSliderMin";
  v6[0] = &unk_1F1084FD8;
  v6[1] = &unk_1F1084FD8;
  v5[2] = @"CIAttributeSliderMax";
  v5[3] = @"CIAttributeDefault";
  v6[2] = &unk_1F1084FE8;
  v6[3] = &unk_1F1084FF8;
  v5[4] = @"CIAttributeIdentity";
  v5[5] = @"CIAttributeType";
  v6[4] = &unk_1F1084FD8;
  v6[5] = @"CIAttributeTypeScalar";
  v9[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:6];
  v8[4] = @"inputRadius";
  v3[0] = @"CIAttributeMin";
  v3[1] = @"CIAttributeSliderMin";
  v4[0] = &unk_1F1084FD8;
  v4[1] = &unk_1F1084FD8;
  v3[2] = @"CIAttributeSliderMax";
  v3[3] = @"CIAttributeDefault";
  v4[2] = &unk_1F1085008;
  v4[3] = &unk_1F1085018;
  v3[4] = @"CIAttributeIdentity";
  v3[5] = @"CIAttributeType";
  v4[4] = &unk_1F1084FD8;
  v4[5] = @"CIAttributeTypeDistance";
  v9[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:6];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:5];
}

- (BOOL)_isIdentity
{
  [(NSNumber *)self->inputRadius doubleValue];
  if (v3 < 0.16)
  {
    return 1;
  }

  [(NSNumber *)self->inputIntensity doubleValue];
  return v5 < 0.001;
}

- (id)outputImage
{
  v13[3] = *MEMORY[0x1E69E9840];
  if (!self->inputImage)
  {
    return 0;
  }

  _isIdentity = [(CIUnsharpMask *)self _isIdentity];
  inputImage = self->inputImage;
  if (_isIdentity)
  {
    v5 = inputImage;

    return v5;
  }

  else
  {
    [(NSNumber *)self->inputRadius doubleValue];
    v7 = [(CIImage *)inputImage imageByApplyingGaussianBlurWithSigma:?];
    _kernel = [(CIUnsharpMask *)self _kernel];
    [(CIImage *)self->inputImage extent];
    v13[0] = self->inputImage;
    v13[1] = v7;
    v13[2] = self->inputIntensity;
    return [_kernel applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v13, 3), v9, v10, v11, v12}];
  }
}

@end