@interface CIStripesGenerator
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIStripesGenerator

+ (id)customAttributes
{
  v13[7] = *MEMORY[0x1E69E9840];
  v12[0] = @"CIAttributeFilterCategories";
  v11[0] = @"CICategoryGenerator";
  v11[1] = @"CICategoryVideo";
  v11[2] = @"CICategoryStillImage";
  v11[3] = @"CICategoryHighDynamicRange";
  v11[4] = @"CICategoryBuiltIn";
  v13[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:5];
  v13[1] = @"5";
  v12[1] = @"CIAttributeFilterAvailable_iOS";
  v12[2] = @"CIAttributeFilterAvailable_Mac";
  v13[2] = @"10.4";
  v12[3] = @"inputWidth";
  v9[0] = @"CIAttributeSliderMin";
  v9[1] = @"CIAttributeSliderMax";
  v10[0] = &unk_1F1084D28;
  v10[1] = &unk_1F1084D38;
  v9[2] = @"CIAttributeDefault";
  v9[3] = @"CIAttributeType";
  v10[2] = &unk_1F1084D48;
  v10[3] = @"CIAttributeTypeDistance";
  v13[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:4];
  v12[4] = @"inputSharpness";
  v7[0] = @"CIAttributeMin";
  v7[1] = @"CIAttributeMax";
  v8[0] = &unk_1F1084D28;
  v8[1] = &unk_1F1084D58;
  v7[2] = @"CIAttributeSliderMin";
  v7[3] = @"CIAttributeSliderMax";
  v8[2] = &unk_1F1084D28;
  v8[3] = &unk_1F1084D58;
  v7[4] = @"CIAttributeDefault";
  v7[5] = @"CIAttributeType";
  v8[4] = &unk_1F1084D58;
  v8[5] = @"CIAttributeTypeScalar";
  v13[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:6];
  v12[5] = @"inputColor0";
  v5 = @"CIAttributeDefault";
  v6 = [CIColor colorWithRed:1.0 green:1.0 blue:1.0];
  v13[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v12[6] = @"inputColor1";
  v4 = [CIColor colorWithRed:0.0 green:0.0 blue:0.0, @"CIAttributeDefault"];
  v13[6] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v4 forKeys:&v3 count:1];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:7];
}

- (id)outputImage
{
  v19[4] = *MEMORY[0x1E69E9840];
  [(NSNumber *)self->inputWidth floatValue];
  v4 = v3;
  if (fabsf(v3) <= 0.000001)
  {
    inputColor0 = self->inputColor0;

    return [CIImage imageWithColor:inputColor0];
  }

  else
  {
    v5 = self->inputColor0;
    if (!v5)
    {
      v5 = [CIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
    }

    inputColor1 = self->inputColor1;
    if (!inputColor1)
    {
      inputColor1 = [CIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
    }

    [(NSNumber *)self->inputSharpness floatValue];
    v8 = 1.0 / (1.00001 - fminf(fmaxf(v7, 0.0), 1.0));
    v9 = 1.0 / (v4 + v4);
    inputCenter = self->inputCenter;
    if (!inputCenter)
    {
      inputCenter = [CIVector vectorWithX:0.0 Y:0.0];
    }

    v11 = [CIVector vectorWithX:v9 Y:(v8 + v8) Z:((1.0 - v8) * 0.5)];
    v12 = [(CIStripesGenerator *)self _kernel];
    v13 = *MEMORY[0x1E695F040];
    v14 = *(MEMORY[0x1E695F040] + 8);
    v15 = *(MEMORY[0x1E695F040] + 16);
    v16 = *(MEMORY[0x1E695F040] + 24);
    v19[0] = inputCenter;
    v19[1] = v5;
    v19[2] = inputColor1;
    v19[3] = v11;
    return [v12 applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v19, 4), v13, v14, v15, v16}];
  }
}

@end