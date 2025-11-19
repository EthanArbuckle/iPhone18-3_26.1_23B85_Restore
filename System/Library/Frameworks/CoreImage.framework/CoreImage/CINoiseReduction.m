@interface CINoiseReduction
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CINoiseReduction

- (id)outputImage
{
  v27[4] = *MEMORY[0x1E69E9840];
  [(NSNumber *)self->inputSharpness floatValue];
  v4 = v3;
  [(NSNumber *)self->inputNoiseLevel floatValue];
  if (v5 <= 0.0)
  {
    v7 = -v4;
    v8 = 0.0;
  }

  else
  {
    v6 = (v4 + 1.0) / -0.0199999996;
    v7 = -(v4 + (v6 * v5));
    v8 = v6 / 3.0;
  }

  v9 = [CIVector vectorWithX:v7 Y:v8 Z:-v4];
  v10 = [CIVector vectorWithX:1.2912 Y:1.2921];
  v11 = [CIVector vectorWithX:0.109088909 Y:0.114934928 Z:0.103904704];
  [(CIImage *)self->inputImage extent];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [(CIImage *)self->inputImage imageByClampingToExtent];
  v21 = [(CINoiseReduction *)self _CINoiseReduction];
  v22 = *MEMORY[0x1E695F040];
  v23 = *(MEMORY[0x1E695F040] + 8);
  v24 = *(MEMORY[0x1E695F040] + 16);
  v25 = *(MEMORY[0x1E695F040] + 24);
  v27[0] = v20;
  v27[1] = v10;
  v27[2] = v11;
  v27[3] = v9;
  return [objc_msgSend(v21 applyWithExtent:&__block_literal_global_64 roiCallback:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v27, 4), v22, v23, v24, v25), "imageByCroppingToRect:", v13, v15, v17, v19}];
}

+ (id)customAttributes
{
  v9[5] = *MEMORY[0x1E69E9840];
  v8[0] = @"CIAttributeFilterCategories";
  v7[0] = @"CICategoryBlur";
  v7[1] = @"CICategoryVideo";
  v7[2] = @"CICategoryStillImage";
  v7[3] = @"CICategoryBuiltIn";
  v9[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:4];
  v9[1] = @"9";
  v8[1] = @"CIAttributeFilterAvailable_iOS";
  v8[2] = @"CIAttributeFilterAvailable_Mac";
  v9[2] = @"10.4";
  v8[3] = @"inputSharpness";
  v5[0] = @"CIAttributeType";
  v5[1] = @"CIAttributeMin";
  v6[0] = @"CIAttributeTypeScalar";
  v6[1] = &unk_1F1084968;
  v5[2] = @"CIAttributeSliderMin";
  v5[3] = @"CIAttributeSliderMax";
  v6[2] = &unk_1F1084968;
  v6[3] = &unk_1F1084978;
  v5[4] = @"CIAttributeDefault";
  v5[5] = @"CIAttributeIdentity";
  v6[4] = &unk_1F1084988;
  v6[5] = &unk_1F1084968;
  v9[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:6];
  v8[4] = @"inputNoiseLevel";
  v3[0] = @"CIAttributeType";
  v3[1] = @"CIAttributeMin";
  v4[0] = @"CIAttributeTypeScalar";
  v4[1] = &unk_1F1084968;
  v3[2] = @"CIAttributeSliderMin";
  v3[3] = @"CIAttributeSliderMax";
  v4[2] = &unk_1F1084968;
  v4[3] = &unk_1F1084998;
  v3[4] = @"CIAttributeDefault";
  v3[5] = @"CIAttributeIdentity";
  v4[4] = &unk_1F10849A8;
  v4[5] = &unk_1F1084968;
  v9[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:6];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:5];
}

@end