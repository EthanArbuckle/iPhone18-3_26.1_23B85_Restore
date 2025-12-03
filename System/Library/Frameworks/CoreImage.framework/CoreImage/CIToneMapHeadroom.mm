@interface CIToneMapHeadroom
+ (id)customAttributes;
- (id)outputImage;
- (id)outputValue:(id)value;
@end

@implementation CIToneMapHeadroom

+ (id)customAttributes
{
  v9[5] = *MEMORY[0x1E69E9840];
  v8[0] = @"CIAttributeFilterCategories";
  v7[0] = @"CICategoryColorAdjustment";
  v7[1] = @"CICategoryVideo";
  v7[2] = @"CICategoryInterlaced";
  v7[3] = @"CICategoryHighDynamicRange";
  v7[4] = @"CICategoryNonSquarePixels";
  v7[5] = @"CICategoryStillImage";
  v7[6] = @"CICategoryBuiltIn";
  v9[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:7];
  v9[1] = @"18";
  v8[1] = @"CIAttributeFilterAvailable_iOS";
  v8[2] = @"CIAttributeFilterAvailable_Mac";
  v9[2] = @"15.0";
  v8[3] = @"inputSourceHeadroom";
  v5[0] = @"CIAttributeMin";
  v5[1] = @"CIAttributeSliderMin";
  v6[0] = &unk_1F1081758;
  v6[1] = &unk_1F1081758;
  v5[2] = @"CIAttributeSliderMax";
  v5[3] = @"CIAttributeMax";
  v6[2] = &unk_1F1081770;
  v6[3] = &unk_1F1081788;
  v5[4] = @"CIAttributeType";
  v6[4] = @"CIAttributeTypeScalar";
  v9[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:5];
  v8[4] = @"inputTargetHeadroom";
  v3[0] = @"CIAttributeMin";
  v3[1] = @"CIAttributeSliderMin";
  v4[0] = &unk_1F1081758;
  v4[1] = &unk_1F1081758;
  v3[2] = @"CIAttributeSliderMax";
  v3[3] = @"CIAttributeMax";
  v4[2] = &unk_1F1081770;
  v4[3] = &unk_1F1081788;
  v3[4] = @"CIAttributeDefault";
  v3[5] = @"CIAttributeType";
  v4[4] = &unk_1F1081758;
  v4[5] = @"CIAttributeTypeScalar";
  v9[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:6];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:5];
}

- (id)outputValue:(id)value
{
  v5 = objc_opt_new();
  [v5 setDefaults];
  [v5 setInputImage:self->inputImage];
  if (self->inputSourceHeadroom)
  {
    inputSourceHeadroom = self->inputSourceHeadroom;
  }

  else
  {
    inputSourceHeadroom = &unk_1F10817B8;
  }

  [v5 setInputSourceHeadroom:inputSourceHeadroom];
  if (self->inputTargetHeadroom)
  {
    inputTargetHeadroom = self->inputTargetHeadroom;
  }

  else
  {
    inputTargetHeadroom = &unk_1F10817B8;
  }

  [v5 setInputTargetHeadroom:inputTargetHeadroom];
  v8 = [v5 outputValue:value];

  return v8;
}

- (id)outputImage
{
  [(CIImage *)self->inputImage extent];
  if (CGRectIsEmpty(v8))
  {
    return self->inputImage;
  }

  v4 = objc_opt_new();
  [v4 setDefaults];
  [v4 setInputImage:self->inputImage];
  if (self->inputSourceHeadroom)
  {
    inputSourceHeadroom = self->inputSourceHeadroom;
  }

  else
  {
    inputSourceHeadroom = &unk_1F10817B8;
  }

  [v4 setInputSourceHeadroom:inputSourceHeadroom];
  if (self->inputTargetHeadroom)
  {
    inputTargetHeadroom = self->inputTargetHeadroom;
  }

  else
  {
    inputTargetHeadroom = &unk_1F10817B8;
  }

  [v4 setInputTargetHeadroom:inputTargetHeadroom];
  outputImage = [v4 outputImage];

  return outputImage;
}

@end