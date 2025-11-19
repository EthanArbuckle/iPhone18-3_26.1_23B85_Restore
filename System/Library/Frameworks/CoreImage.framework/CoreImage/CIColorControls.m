@interface CIColorControls
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIColorControls

+ (id)customAttributes
{
  v11[6] = *MEMORY[0x1E69E9840];
  v10[0] = @"CIAttributeFilterCategories";
  v9[0] = @"CICategoryColorAdjustment";
  v9[1] = @"CICategoryVideo";
  v9[2] = @"CICategoryStillImage";
  v9[3] = @"CICategoryInterlaced";
  v9[4] = @"CICategoryNonSquarePixels";
  v9[5] = @"CICategoryHighDynamicRange";
  v9[6] = @"CICategoryBuiltIn";
  v11[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:7];
  v11[1] = @"5";
  v10[1] = @"CIAttributeFilterAvailable_iOS";
  v10[2] = @"CIAttributeFilterAvailable_Mac";
  v11[2] = @"10.4";
  v10[3] = @"inputSaturation";
  v7[0] = @"CIAttributeMin";
  v7[1] = @"CIAttributeSliderMin";
  v8[0] = &unk_1F1082ED8;
  v8[1] = &unk_1F1082ED8;
  v7[2] = @"CIAttributeSliderMax";
  v7[3] = @"CIAttributeDefault";
  v8[2] = &unk_1F1082EE8;
  v8[3] = &unk_1F1082EF8;
  v7[4] = @"CIAttributeIdentity";
  v7[5] = @"CIAttributeType";
  v8[4] = &unk_1F1082EF8;
  v8[5] = @"CIAttributeTypeScalar";
  v11[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:6];
  v10[4] = @"inputBrightness";
  v5[0] = @"CIAttributeMin";
  v5[1] = @"CIAttributeSliderMin";
  v6[0] = &unk_1F1082F08;
  v6[1] = &unk_1F1082F08;
  v5[2] = @"CIAttributeSliderMax";
  v5[3] = @"CIAttributeDefault";
  v6[2] = &unk_1F1082EF8;
  v6[3] = &unk_1F1082ED8;
  v5[4] = @"CIAttributeIdentity";
  v5[5] = @"CIAttributeType";
  v6[4] = &unk_1F1082ED8;
  v6[5] = @"CIAttributeTypeScalar";
  v11[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:6];
  v10[5] = @"inputContrast";
  v3[0] = @"CIAttributeMin";
  v3[1] = @"CIAttributeSliderMin";
  v4[0] = &unk_1F1082ED8;
  v4[1] = &unk_1F1082F18;
  v3[2] = @"CIAttributeSliderMax";
  v3[3] = @"CIAttributeDefault";
  v4[2] = &unk_1F1082F28;
  v4[3] = &unk_1F1082EF8;
  v3[4] = @"CIAttributeIdentity";
  v3[5] = @"CIAttributeType";
  v4[4] = &unk_1F1082EF8;
  v4[5] = @"CIAttributeTypeScalar";
  v11[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:6];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:6];
}

- (id)outputImage
{
  if (!self->inputImage)
  {
    return 0;
  }

  [(NSNumber *)self->inputSaturation floatValue];
  v4 = v3;
  [(NSNumber *)self->inputContrast floatValue];
  v6 = v5;
  [(NSNumber *)self->inputBrightness floatValue];
  v10 = v4 == 1.0 && v6 == 1.0;
  if (v10 && v7 == 0.0)
  {
    v11 = self->inputImage;

    return v11;
  }

  else
  {
    *&v8 = v6 - (v4 * v6);
    *&v9 = (v7 + 0.5) + (v6 * -0.5);
    return _imageByApplyingColorMatrix(self->inputImage, (v4 * v6) + (*&v8 * 0.2125), *&v8 * 0.7154, *&v8 * 0.0721, *&v8 * 0.2125, (v4 * v6) + (*&v8 * 0.7154), *&v8 * 0.0721, v8, v9, *&v8 * 0.2125, *&v8 * 0.7154, (v4 * v6) + (*&v8 * 0.0721), *&v9, *&v9, *&v9);
  }
}

@end