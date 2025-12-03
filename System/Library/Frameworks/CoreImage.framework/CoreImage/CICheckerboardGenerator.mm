@interface CICheckerboardGenerator
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CICheckerboardGenerator

+ (id)customAttributes
{
  v15[8] = *MEMORY[0x1E69E9840];
  v14[0] = @"CIAttributeFilterCategories";
  v13[0] = @"CICategoryGenerator";
  v13[1] = @"CICategoryVideo";
  v13[2] = @"CICategoryStillImage";
  v13[3] = @"CICategoryHighDynamicRange";
  v13[4] = @"CICategoryBuiltIn";
  v15[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:5];
  v15[1] = @"5";
  v14[1] = @"CIAttributeFilterAvailable_iOS";
  v14[2] = @"CIAttributeFilterAvailable_Mac";
  v15[2] = @"10.4";
  v14[3] = @"inputCenter";
  v11[0] = @"CIAttributeDefault";
  v11[1] = @"CIAttributeType";
  v12[0] = [CIVector vectorWithX:150.0 Y:150.0];
  v12[1] = @"CIAttributeTypePosition";
  v15[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v14[4] = @"inputWidth";
  v9[0] = @"CIAttributeSliderMin";
  v9[1] = @"CIAttributeSliderMax";
  v10[0] = &unk_1F1082DA8;
  v10[1] = &unk_1F1082DB8;
  v9[2] = @"CIAttributeDefault";
  v9[3] = @"CIAttributeType";
  v10[2] = &unk_1F1082DC8;
  v10[3] = @"CIAttributeTypeDistance";
  v15[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:4];
  v14[5] = @"inputSharpness";
  v7[0] = @"CIAttributeMin";
  v7[1] = @"CIAttributeMax";
  v8[0] = &unk_1F1082DA8;
  v8[1] = &unk_1F1082DD8;
  v7[2] = @"CIAttributeSliderMin";
  v7[3] = @"CIAttributeSliderMax";
  v8[2] = &unk_1F1082DA8;
  v8[3] = &unk_1F1082DD8;
  v7[4] = @"CIAttributeDefault";
  v7[5] = @"CIAttributeType";
  v8[4] = &unk_1F1082DD8;
  v8[5] = @"CIAttributeTypeScalar";
  v15[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:6];
  v14[6] = @"inputColor0";
  v5 = @"CIAttributeDefault";
  v6 = [CIColor colorWithRed:1.0 green:1.0 blue:1.0];
  v15[6] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v14[7] = @"inputColor1";
  v4 = [CIColor colorWithRed:0.0 green:0.0 blue:0.0, @"CIAttributeDefault"];
  v15[7] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v4 forKeys:&v3 count:1];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:8];
}

- (id)outputImage
{
  v24[4] = *MEMORY[0x1E69E9840];
  [(NSNumber *)self->inputWidth floatValue];
  v4 = v3;
  v5 = &OBJC_IVAR___CICheckerboardGenerator_inputColor1;
  v6 = fabsf(v3);
  if (v6 <= 0.000001)
  {
    v5 = &OBJC_IVAR___CICheckerboardGenerator_inputColor0;
  }

  v7 = *(&self->super.super.isa + *v5);
  [(NSNumber *)self->inputSharpness floatValue];
  if (v6 > 0.000001)
  {
    v9 = (1.0 / (v4 + v4));
  }

  else
  {
    v9 = 500000.0;
  }

  v10 = 1.0 / (1.00001 - fminf(fmaxf(v8, 0.0), 1.0));
  v11 = [CIVector vectorWithX:v9 Y:(v10 + v10) Z:((1.0 - v10) * 0.5)];
  [(CIVector *)self->inputCenter X];
  v12 = 0.25 / v9;
  v14 = 0.25 / v9 + v13;
  [(CIVector *)self->inputCenter Y];
  v16 = [CIVector vectorWithX:v14 Y:v12 + v15];
  _kernel = [(CICheckerboardGenerator *)self _kernel];
  v18 = *MEMORY[0x1E695F040];
  v19 = *(MEMORY[0x1E695F040] + 8);
  v20 = *(MEMORY[0x1E695F040] + 16);
  v21 = *(MEMORY[0x1E695F040] + 24);
  inputColor0 = self->inputColor0;
  v24[0] = v16;
  v24[1] = inputColor0;
  v24[2] = v7;
  v24[3] = v11;
  return [_kernel applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v24, 4), v18, v19, v20, v21}];
}

@end