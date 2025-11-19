@interface CISkyAndGrassAdjust
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CISkyAndGrassAdjust

+ (id)customAttributes
{
  v9[3] = *MEMORY[0x1E69E9840];
  v8[0] = @"CIAttributeFilterCategories";
  v7[0] = @"CICategoryColorAdjustment";
  v7[1] = @"CICategoryVideo";
  v7[2] = @"CICategoryStillImage";
  v7[3] = @"CICategoryInterlaced";
  v7[4] = @"CICategoryNonSquarePixels";
  v7[5] = @"CICategoryBuiltIn";
  v7[6] = @"CICategoryApplePrivate";
  v9[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:7];
  v8[1] = @"inputSkyAmount";
  v5[0] = @"CIAttributeMin";
  v5[1] = @"CIAttributeMax";
  v6[0] = &unk_1F1084A58;
  v6[1] = &unk_1F1084A68;
  v5[2] = @"CIAttributeSliderMin";
  v5[3] = @"CIAttributeSliderMax";
  v6[2] = &unk_1F1084A58;
  v6[3] = &unk_1F1084A68;
  v5[4] = @"CIAttributeDefault";
  v5[5] = @"CIAttributeIdentity";
  v6[4] = &unk_1F1084A78;
  v6[5] = &unk_1F1084A78;
  v5[6] = @"CIAttributeType";
  v6[6] = @"CIAttributeTypeScalar";
  v9[1] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:7];
  v8[2] = @"inputGrassAmount";
  v3[0] = @"CIAttributeMin";
  v3[1] = @"CIAttributeMax";
  v4[0] = &unk_1F1084A78;
  v4[1] = &unk_1F1084A88;
  v3[2] = @"CIAttributeSliderMin";
  v3[3] = @"CIAttributeSliderMax";
  v4[2] = &unk_1F1084A78;
  v4[3] = &unk_1F1084A88;
  v3[4] = @"CIAttributeDefault";
  v3[5] = @"CIAttributeIdentity";
  v4[4] = &unk_1F1084A68;
  v4[5] = &unk_1F1084A68;
  v3[6] = @"CIAttributeType";
  v4[6] = @"CIAttributeTypeScalar";
  v9[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:7];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];
}

- (id)outputImage
{
  v16[2] = *MEMORY[0x1E69E9840];
  if (!self->inputImage)
  {
    return 0;
  }

  [(NSNumber *)self->inputSkyAmount doubleValue];
  v4 = fmin(fmax(v3, -1.0), 1.0);
  [(NSNumber *)self->inputGrassAmount doubleValue];
  v6 = fmin(fmax(v5, 0.0), 4.0);
  if (fabs(v4) >= 0.05 || v6 <= 0.95 || v6 >= 1.05)
  {
    v9 = [CIVector vectorWithX:v6 Y:v4];
    v10 = [(CIImage *)self->inputImage imageByUnpremultiplyingAlpha];
    v11 = [(CISkyAndGrassAdjust *)self _kernel];
    [(CIImage *)v10 extent];
    v16[0] = v10;
    v16[1] = v9;
    return [objc_msgSend(v11 applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v16, 2), v12, v13, v14, v15), "imageByPremultiplyingAlpha"}];
  }

  else
  {
    v7 = self->inputImage;

    return v7;
  }
}

@end