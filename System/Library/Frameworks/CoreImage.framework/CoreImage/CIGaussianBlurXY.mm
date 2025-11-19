@interface CIGaussianBlurXY
+ (id)customAttributes;
- (BOOL)_isIdentity;
- (id)outputImage;
@end

@implementation CIGaussianBlurXY

+ (id)customAttributes
{
  v9[5] = *MEMORY[0x1E69E9840];
  v8[0] = @"CIAttributeFilterCategories";
  v7[0] = @"CICategoryBlur";
  v7[1] = @"CICategoryStillImage";
  v7[2] = @"CICategoryVideo";
  v7[3] = @"CICategoryBuiltIn";
  v7[4] = @"CICategoryApplePrivate";
  v9[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:5];
  v9[1] = @"10";
  v8[1] = @"CIAttributeFilterAvailable_iOS";
  v8[2] = @"CIAttributeFilterAvailable_Mac";
  v9[2] = @"10.12";
  v8[3] = @"inputSigmaX";
  v5[0] = @"CIAttributeMin";
  v5[1] = @"CIAttributeSliderMin";
  v6[0] = &unk_1F1083B78;
  v6[1] = &unk_1F1083B78;
  v5[2] = @"CIAttributeSliderMax";
  v5[3] = @"CIAttributeDefault";
  v6[2] = &unk_1F1083B88;
  v6[3] = &unk_1F1083B98;
  v5[4] = @"CIAttributeIdentity";
  v5[5] = @"CIAttributeType";
  v6[4] = &unk_1F1083B78;
  v6[5] = @"CIAttributeTypeScalar";
  v9[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:6];
  v8[4] = @"inputSigmaY";
  v3[0] = @"CIAttributeMin";
  v3[1] = @"CIAttributeSliderMin";
  v4[0] = &unk_1F1083B78;
  v4[1] = &unk_1F1083B78;
  v3[2] = @"CIAttributeSliderMax";
  v3[3] = @"CIAttributeDefault";
  v4[2] = &unk_1F1083B88;
  v4[3] = &unk_1F1083B98;
  v3[4] = @"CIAttributeIdentity";
  v3[5] = @"CIAttributeType";
  v4[4] = &unk_1F1083B78;
  v4[5] = @"CIAttributeTypeScalar";
  v9[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:6];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:5];
}

- (BOOL)_isIdentity
{
  [(NSNumber *)self->inputSigmaX doubleValue];
  if (v3 >= 0.16)
  {
    return 0;
  }

  [(NSNumber *)self->inputSigmaY doubleValue];
  return v4 < 0.16;
}

- (id)outputImage
{
  if (!self->inputImage)
  {
    return 0;
  }

  if ([(CIGaussianBlurXY *)self _isIdentity])
  {
    v3 = self->inputImage;

    return v3;
  }

  else
  {
    [(NSNumber *)self->inputSigmaX doubleValue];
    v6 = v5;
    [(NSNumber *)self->inputSigmaY doubleValue];
    inputImage = self->inputImage;

    return blurImage(inputImage, v6, v7);
  }
}

@end