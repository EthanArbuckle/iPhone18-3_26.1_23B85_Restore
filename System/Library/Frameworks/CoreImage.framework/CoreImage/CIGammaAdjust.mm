@interface CIGammaAdjust
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIGammaAdjust

+ (id)customAttributes
{
  v7[4] = *MEMORY[0x1E69E9840];
  v6[0] = @"CIAttributeFilterCategories";
  v5[0] = @"CICategoryColorAdjustment";
  v5[1] = @"CICategoryVideo";
  v5[2] = @"CICategoryStillImage";
  v5[3] = @"CICategoryInterlaced";
  v5[4] = @"CICategoryNonSquarePixels";
  v5[5] = @"CICategoryHighDynamicRange";
  v5[6] = @"CICategoryBuiltIn";
  v7[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:7];
  v7[1] = @"5";
  v6[1] = @"CIAttributeFilterAvailable_iOS";
  v6[2] = @"CIAttributeFilterAvailable_Mac";
  v7[2] = @"10.4";
  v6[3] = @"inputPower";
  v3[0] = @"CIAttributeSliderMin";
  v3[1] = @"CIAttributeSliderMax";
  v4[0] = &unk_1F1083B48;
  v4[1] = &unk_1F1083B58;
  v3[2] = @"CIAttributeDefault";
  v3[3] = @"CIAttributeIdentity";
  v4[2] = &unk_1F1083B68;
  v4[3] = &unk_1F1083B68;
  v3[4] = @"CIAttributeType";
  v4[4] = @"CIAttributeTypeScalar";
  v7[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:5];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:4];
}

- (id)outputImage
{
  if (!self->inputImage)
  {
    return 0;
  }

  _isIdentity = [(CIGammaAdjust *)self _isIdentity];
  inputImage = self->inputImage;
  if (_isIdentity)
  {
    v5 = inputImage;

    return v5;
  }

  else
  {
    [(NSNumber *)self->inputPower doubleValue];

    return [(CIImage *)inputImage _imageByApplyingGamma:?];
  }
}

@end