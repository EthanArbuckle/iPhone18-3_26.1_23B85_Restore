@interface CIColorMonochrome
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIColorMonochrome

+ (id)customAttributes
{
  v9[5] = *MEMORY[0x1E69E9840];
  v8[0] = @"CIAttributeFilterCategories";
  v7[0] = @"CICategoryColorEffect";
  v7[1] = @"CICategoryVideo";
  v7[2] = @"CICategoryInterlaced";
  v7[3] = @"CICategoryNonSquarePixels";
  v7[4] = @"CICategoryStillImage";
  v7[5] = @"CICategoryHighDynamicRange";
  v7[6] = @"CICategoryBuiltIn";
  v9[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:7];
  v9[1] = @"5";
  v8[1] = @"CIAttributeFilterAvailable_iOS";
  v8[2] = @"CIAttributeFilterAvailable_Mac";
  v9[2] = @"10.4";
  v8[3] = @"inputColor";
  v5[0] = @"CIAttributeDefault";
  v5[1] = @"CIAttributeType";
  v6[0] = [CIColor colorWithRed:0.6 green:0.45 blue:0.3];
  v6[1] = @"CIAttributeTypeOpaqueColor";
  v9[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v8[4] = @"inputIntensity";
  v3[0] = @"CIAttributeSliderMin";
  v3[1] = @"CIAttributeSliderMax";
  v4[0] = &unk_1F1082F58;
  v4[1] = &unk_1F1082F68;
  v3[2] = @"CIAttributeDefault";
  v3[3] = @"CIAttributeIdentity";
  v4[2] = &unk_1F1082F68;
  v4[3] = &unk_1F1082F58;
  v3[4] = @"CIAttributeType";
  v4[4] = @"CIAttributeTypeScalar";
  v9[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:5];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:5];
}

- (id)outputImage
{
  v14[3] = *MEMORY[0x1E69E9840];
  if (!self->inputImage || !self->inputColor)
  {
    return 0;
  }

  [(NSNumber *)self->inputIntensity floatValue];
  inputImage = self->inputImage;
  if (v3 >= 0.001)
  {
    v7 = [(CIImage *)inputImage imageByUnpremultiplyingAlpha];
    v8 = [(CIColorMonochrome *)self _kernel];
    [(CIImage *)self->inputImage extent];
    inputColor = self->inputColor;
    v14[0] = v7;
    v14[1] = inputColor;
    v14[2] = self->inputIntensity;
    return [objc_msgSend(v8 applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v14, 3), v10, v11, v12, v13), "imageByPremultiplyingAlpha"}];
  }

  else
  {
    v5 = inputImage;

    return v5;
  }
}

@end