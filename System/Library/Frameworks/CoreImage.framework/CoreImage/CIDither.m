@interface CIDither
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIDither

+ (id)customAttributes
{
  v7[4] = *MEMORY[0x1E69E9840];
  v6[0] = @"CIAttributeFilterCategories";
  v5[0] = @"CICategoryColorEffect";
  v5[1] = @"CICategoryVideo";
  v5[2] = @"CICategoryStillImage";
  v5[3] = @"CICategoryHighDynamicRange";
  v5[4] = @"CICategoryBuiltIn";
  v7[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:5];
  v7[1] = @"12";
  v6[1] = @"CIAttributeFilterAvailable_iOS";
  v6[2] = @"CIAttributeFilterAvailable_Mac";
  v7[2] = @"10.14";
  v6[3] = @"inputIntensity";
  v3[0] = @"CIAttributeMin";
  v3[1] = @"CIAttributeMax";
  v4[0] = &unk_1F1082F58;
  v4[1] = &unk_1F1082F78;
  v3[2] = @"CIAttributeSliderMin";
  v3[3] = @"CIAttributeSliderMax";
  v4[2] = &unk_1F1082F58;
  v4[3] = &unk_1F1082F68;
  v3[4] = @"CIAttributeDefault";
  v3[5] = @"CIAttributeType";
  v4[4] = &unk_1F1082F88;
  v4[5] = @"CIAttributeTypeScalar";
  v7[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:6];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:4];
}

- (id)outputImage
{
  v12[3] = *MEMORY[0x1E69E9840];
  if (!self->inputImage)
  {
    return 0;
  }

  [(NSNumber *)self->inputIntensity floatValue];
  if (v3 < 0.0001)
  {
    return self->inputImage;
  }

  v5 = [[CIFilter filterWithName:?]];
  v6 = [(CIImage *)self->inputImage imageByUnpremultiplyingAlpha];
  v7 = +[CIDither _kernelDither];
  [(CIImage *)v6 extent];
  v12[0] = v6;
  v12[1] = v5;
  v12[2] = self->inputIntensity;
  return [objc_msgSend(v7 applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v12, 3), v8, v9, v10, v11), "imageByPremultiplyingAlpha"}];
}

@end