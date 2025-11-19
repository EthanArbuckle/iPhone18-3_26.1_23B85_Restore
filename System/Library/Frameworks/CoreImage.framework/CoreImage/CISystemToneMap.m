@interface CISystemToneMap
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CISystemToneMap

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
  v9[1] = @"19";
  v8[1] = @"CIAttributeFilterAvailable_iOS";
  v8[2] = @"CIAttributeFilterAvailable_Mac";
  v9[2] = @"16.0";
  v8[3] = @"inputDisplayHeadroom";
  v5[0] = @"CIAttributeMin";
  v5[1] = @"CIAttributeSliderMin";
  v5[2] = @"CIAttributeSliderMax";
  v5[3] = @"CIAttributeMax";
  v6[2] = &unk_1F1081770;
  v6[3] = &unk_1F1081788;
  v5[4] = @"CIAttributeDefault";
  v5[5] = @"CIAttributeType";
  v6[0] = &unk_1F1081758;
  v6[1] = &unk_1F1081758;
  v6[4] = &unk_1F1081758;
  v6[5] = @"CIAttributeTypeScalar";
  v9[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:6];
  v8[4] = @"inputPreferredDynamicRange";
  v3 = @"CIAttributeClass";
  v4 = @"NSString";
  v9[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v4 forKeys:&v3 count:1];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:5];
}

- (id)outputImage
{
  [(CIImage *)self->inputImage extent];
  if (CGRectIsEmpty(v7))
  {
    return self->inputImage;
  }

  v4 = objc_opt_new();
  [v4 setDefaults];
  [v4 setInputImage:self->inputImage];
  if (self->inputDisplayHeadroom)
  {
    inputDisplayHeadroom = self->inputDisplayHeadroom;
  }

  else
  {
    inputDisplayHeadroom = &unk_1F10817B8;
  }

  [v4 setInputTargetHeadroom:inputDisplayHeadroom];
  [v4 setInputPreferredDynamicRange:self->inputPreferredDynamicRange];
  v6 = [v4 outputImage];

  return v6;
}

@end