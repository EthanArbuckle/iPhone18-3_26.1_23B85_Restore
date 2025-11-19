@interface CIStarShineGenerator
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIStarShineGenerator

+ (id)customAttributes
{
  v19[10] = *MEMORY[0x1E69E9840];
  v18[0] = @"CIAttributeFilterCategories";
  v17[0] = @"CICategoryGenerator";
  v17[1] = @"CICategoryVideo";
  v17[2] = @"CICategoryStillImage";
  v17[3] = @"CICategoryHighDynamicRange";
  v17[4] = @"CICategoryBuiltIn";
  v19[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:5];
  v19[1] = @"6";
  v18[1] = @"CIAttributeFilterAvailable_iOS";
  v18[2] = @"CIAttributeFilterAvailable_Mac";
  v19[2] = @"10.4";
  v18[3] = @"inputColor";
  v15 = @"CIAttributeDefault";
  v16 = [CIColor colorWithRed:1.0 green:0.8 blue:0.6];
  v19[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v18[4] = @"inputRadius";
  v13[0] = @"CIAttributeMin";
  v13[1] = @"CIAttributeSliderMin";
  v14[0] = &unk_1F1084C28;
  v14[1] = &unk_1F1084C28;
  v13[2] = @"CIAttributeSliderMax";
  v13[3] = @"CIAttributeDefault";
  v14[2] = &unk_1F1084C38;
  v14[3] = &unk_1F1084C48;
  v13[4] = @"CIAttributeType";
  v14[4] = @"CIAttributeTypeDistance";
  v19[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:5];
  v18[5] = @"inputCrossScale";
  v11[0] = @"CIAttributeMin";
  v11[1] = @"CIAttributeSliderMin";
  v12[0] = &unk_1F1084C28;
  v12[1] = &unk_1F1084C28;
  v11[2] = @"CIAttributeSliderMax";
  v11[3] = @"CIAttributeDefault";
  v12[2] = &unk_1F1084C58;
  v12[3] = &unk_1F1084C68;
  v11[4] = @"CIAttributeIdentity";
  v11[5] = @"CIAttributeType";
  v12[4] = &unk_1F1084C68;
  v12[5] = @"CIAttributeTypeScalar";
  v19[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:6];
  v18[6] = @"inputCrossAngle";
  v9[0] = @"CIAttributeSliderMin";
  v9[1] = @"CIAttributeSliderMax";
  v10[0] = &unk_1F1084C78;
  v10[1] = &unk_1F1084C88;
  v9[2] = @"CIAttributeDefault";
  v9[3] = @"CIAttributeType";
  v10[2] = &unk_1F1084C98;
  v10[3] = @"CIAttributeTypeAngle";
  v19[6] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:4];
  v18[7] = @"inputCrossOpacity";
  v7[0] = @"CIAttributeMin";
  v7[1] = @"CIAttributeSliderMin";
  v8[0] = &unk_1F1084CA8;
  v8[1] = &unk_1F1084CA8;
  v7[2] = @"CIAttributeSliderMax";
  v7[3] = @"CIAttributeDefault";
  v8[2] = &unk_1F1084C28;
  v8[3] = &unk_1F1084CB8;
  v7[4] = @"CIAttributeIdentity";
  v7[5] = @"CIAttributeType";
  v8[4] = &unk_1F1084CB8;
  v8[5] = @"CIAttributeTypeScalar";
  v19[7] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:6];
  v18[8] = @"inputCrossWidth";
  v5[0] = @"CIAttributeMin";
  v5[1] = @"CIAttributeSliderMin";
  v6[0] = &unk_1F1084C28;
  v6[1] = &unk_1F1084CC8;
  v5[2] = @"CIAttributeSliderMax";
  v5[3] = @"CIAttributeDefault";
  v6[2] = &unk_1F1084CD8;
  v6[3] = &unk_1F1084CE8;
  v5[4] = @"CIAttributeType";
  v6[4] = @"CIAttributeTypeDistance";
  v19[8] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:5];
  v18[9] = @"inputEpsilon";
  v3[0] = @"CIAttributeMin";
  v3[1] = @"CIAttributeSliderMin";
  v4[0] = &unk_1F1084CA8;
  v4[1] = &unk_1F1084CA8;
  v3[2] = @"CIAttributeSliderMax";
  v3[3] = @"CIAttributeDefault";
  v4[2] = &unk_1F1084C28;
  v4[3] = &unk_1F1084CB8;
  v3[4] = @"CIAttributeIdentity";
  v3[5] = @"CIAttributeType";
  v4[4] = &unk_1F1084CB8;
  v4[5] = @"CIAttributeTypeScalar";
  v19[9] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:6];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:10];
}

- (id)outputImage
{
  v28[5] = *MEMORY[0x1E69E9840];
  [(NSNumber *)self->inputRadius floatValue];
  v4 = v3;
  [(NSNumber *)self->inputCrossScale floatValue];
  v6 = v5;
  [(NSNumber *)self->inputCrossAngle floatValue];
  v8 = v7;
  [(NSNumber *)self->inputCrossOpacity floatValue];
  v10 = __exp10(v9);
  [(NSNumber *)self->inputCrossWidth floatValue];
  v12 = v11;
  [(NSNumber *)self->inputEpsilon floatValue];
  v14 = __exp10(v13);
  v15 = __sincosf_stret(v8);
  v16 = [CIVector vectorWithX:v15.__cosval Y:v15.__sinval Z:-v15.__sinval W:?];
  v17 = [CIVector vectorWithX:v4 Y:(1.0 / (v4 * v6)) Z:v10 W:v14];
  v18 = 1.0 / v12;
  v19 = [(CIStarShineGenerator *)self _kernel];
  v20 = *MEMORY[0x1E695F040];
  v21 = *(MEMORY[0x1E695F040] + 8);
  v22 = *(MEMORY[0x1E695F040] + 16);
  v23 = *(MEMORY[0x1E695F040] + 24);
  *&v24 = v18;
  v25 = [MEMORY[0x1E696AD98] numberWithFloat:{v24, self->inputCenter, v16, v17}];
  inputColor = self->inputColor;
  v28[3] = v25;
  v28[4] = inputColor;
  return [v19 applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v28, 5), v20, v21, v22, v23}];
}

@end