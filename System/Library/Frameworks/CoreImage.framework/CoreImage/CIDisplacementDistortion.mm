@interface CIDisplacementDistortion
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIDisplacementDistortion

- (id)outputImage
{
  v12[3] = *MEMORY[0x1E69E9840];
  [(NSNumber *)self->inputScale floatValue];
  if (fabsf(v3) >= 0.001 && self->inputDisplacementImage)
  {
    v4 = [(CIDisplacementDistortion *)self _CIDisplaceFromImage];
    [(CIImage *)self->inputImage extent];
    inputDisplacementImage = self->inputDisplacementImage;
    v12[0] = self->inputImage;
    v12[1] = inputDisplacementImage;
    v12[2] = self->inputScale;
    return [v4 applyWithExtent:&__block_literal_global_20 roiCallback:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v12, 3), v6, v7, v8, v9}];
  }

  else
  {
    v11 = self->inputImage;

    return v11;
  }
}

+ (id)customAttributes
{
  v7[4] = *MEMORY[0x1E69E9840];
  v6[0] = @"CIAttributeFilterCategories";
  v5[0] = @"CICategoryDistortionEffect";
  v5[1] = @"CICategoryVideo";
  v5[2] = @"CICategoryStillImage";
  v5[3] = @"CICategoryBuiltIn";
  v7[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:4];
  v7[1] = @"9";
  v6[1] = @"CIAttributeFilterAvailable_iOS";
  v6[2] = @"CIAttributeFilterAvailable_Mac";
  v7[2] = @"10.4";
  v6[3] = @"inputScale";
  v3[0] = @"CIAttributeType";
  v3[1] = @"CIAttributeMin";
  v4[0] = @"CIAttributeTypeDistance";
  v4[1] = &unk_1F1083448;
  v3[2] = @"CIAttributeSliderMin";
  v3[3] = @"CIAttributeSliderMax";
  v4[2] = &unk_1F1083448;
  v4[3] = &unk_1F1083458;
  v3[4] = @"CIAttributeDefault";
  v3[5] = @"CIAttributeIdentity";
  v4[4] = &unk_1F1083468;
  v4[5] = &unk_1F1083448;
  v7[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:6];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:4];
}

@end