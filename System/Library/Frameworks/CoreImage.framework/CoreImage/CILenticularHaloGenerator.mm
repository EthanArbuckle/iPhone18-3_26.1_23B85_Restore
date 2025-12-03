@interface CILenticularHaloGenerator
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CILenticularHaloGenerator

- (id)outputImage
{
  v34[9] = *MEMORY[0x1E69E9840];
  [(NSNumber *)self->inputHaloRadius floatValue];
  v4 = v3;
  [(NSNumber *)self->inputHaloWidth floatValue];
  v6 = v5;
  [(NSNumber *)self->inputHaloOverlap floatValue];
  v8 = v7;
  [(NSNumber *)self->inputStriationStrength floatValue];
  v10 = v9;
  [(NSNumber *)self->inputStriationContrast floatValue];
  v12 = v11;
  [(NSNumber *)self->inputTime floatValue];
  v14 = (v13 + v13) * 3.14159265;
  v15 = +[CIImage noiseImage];
  v16 = __sincosf_stret(v14);
  v17 = [CIVector vectorWithX:v16.__cosval * 30.0 + 128.0 Y:v16.__sinval * 30.0 + 128.0];
  v18 = v10 * v12;
  v19 = v10 * 0.5 * (1.0 - v12);
  v20 = (1.0 - v8) * v6;
  v21 = v4 + v20 * 2.0;
  v22 = [CIVector vectorWithX:v21 Y:(v4 + v20) Z:?];
  v23 = v21 + v6;
  _CILenticularHalo = [(CILenticularHaloGenerator *)self _CILenticularHalo];
  [(CIVector *)self->inputCenter X];
  v25 = v23;
  v27 = v26 - v23;
  [(CIVector *)self->inputCenter Y];
  v29 = v28 - v25;
  LODWORD(v28) = 1112014848;
  v34[3] = [MEMORY[0x1E696AD98] numberWithFloat:{v28, v15, self->inputCenter, v17}];
  *&v30 = 1.0 / v6;
  v34[4] = [MEMORY[0x1E696AD98] numberWithFloat:v30];
  *&v31 = v18;
  v34[5] = [MEMORY[0x1E696AD98] numberWithFloat:v31];
  *&v32 = v19;
  v34[6] = [MEMORY[0x1E696AD98] numberWithFloat:v32];
  v34[7] = v22;
  v34[8] = self->inputColor;
  return [_CILenticularHalo applyWithExtent:&__block_literal_global_45 roiCallback:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v34, 9), v27, v29, v25 + v25, v25 + v25}];
}

double __40__CILenticularHaloGenerator_outputImage__block_invoke(uint64_t a1, int a2)
{
  if (a2 < 1)
  {
    return 0.0;
  }

  NSLog(&cfstr_Cilenticularha_0.isa, v2, v3);
  return *MEMORY[0x1E695F050];
}

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
  v19[1] = @"9";
  v18[1] = @"CIAttributeFilterAvailable_iOS";
  v18[2] = @"CIAttributeFilterAvailable_Mac";
  v19[2] = @"10.4";
  v18[3] = @"inputColor";
  v15 = @"CIAttributeDefault";
  v16 = [CIColor colorWithRed:1.0 green:0.9 blue:0.8];
  v19[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v18[4] = @"inputHaloRadius";
  v13[0] = @"CIAttributeMin";
  v13[1] = @"CIAttributeSliderMin";
  v14[0] = &unk_1F1083F68;
  v14[1] = &unk_1F1083F68;
  v13[2] = @"CIAttributeSliderMax";
  v13[3] = @"CIAttributeDefault";
  v14[2] = &unk_1F1083F78;
  v14[3] = &unk_1F1083F88;
  v13[4] = @"CIAttributeType";
  v14[4] = @"CIAttributeTypeDistance";
  v19[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:5];
  v18[5] = @"inputHaloWidth";
  v11[0] = @"CIAttributeMin";
  v11[1] = @"CIAttributeSliderMin";
  v12[0] = &unk_1F1083F68;
  v12[1] = &unk_1F1083F68;
  v11[2] = @"CIAttributeSliderMax";
  v11[3] = @"CIAttributeDefault";
  v12[2] = &unk_1F1083F98;
  v12[3] = &unk_1F1083FA8;
  v11[4] = @"CIAttributeType";
  v12[4] = @"CIAttributeTypeDistance";
  v19[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:5];
  v18[6] = @"inputHaloOverlap";
  v9[0] = @"CIAttributeMin";
  v9[1] = @"CIAttributeSliderMin";
  v10[0] = &unk_1F1083F68;
  v10[1] = &unk_1F1083F68;
  v9[2] = @"CIAttributeSliderMax";
  v9[3] = @"CIAttributeDefault";
  v10[2] = &unk_1F1083FB8;
  v10[3] = &unk_1F1083FC8;
  v9[4] = @"CIAttributeType";
  v10[4] = @"CIAttributeTypeScalar";
  v19[6] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:5];
  v18[7] = @"inputStriationStrength";
  v7[0] = @"CIAttributeMin";
  v7[1] = @"CIAttributeSliderMin";
  v8[0] = &unk_1F1083F68;
  v8[1] = &unk_1F1083F68;
  v7[2] = @"CIAttributeSliderMax";
  v7[3] = @"CIAttributeDefault";
  v8[2] = &unk_1F1083FD8;
  v8[3] = &unk_1F1083FE8;
  v7[4] = @"CIAttributeType";
  v8[4] = @"CIAttributeTypeScalar";
  v19[7] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:5];
  v18[8] = @"inputStriationContrast";
  v5[0] = @"CIAttributeMin";
  v5[1] = @"CIAttributeSliderMin";
  v6[0] = &unk_1F1083F68;
  v6[1] = &unk_1F1083F68;
  v5[2] = @"CIAttributeSliderMax";
  v5[3] = @"CIAttributeDefault";
  v6[2] = &unk_1F1083FF8;
  v6[3] = &unk_1F1083FB8;
  v5[4] = @"CIAttributeType";
  v6[4] = @"CIAttributeTypeScalar";
  v19[8] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:5];
  v18[9] = @"inputTime";
  v3[0] = @"CIAttributeMin";
  v3[1] = @"CIAttributeSliderMin";
  v4[0] = &unk_1F1083F68;
  v4[1] = &unk_1F1083F68;
  v3[2] = @"CIAttributeSliderMax";
  v3[3] = @"CIAttributeDefault";
  v4[2] = &unk_1F1083FB8;
  v4[3] = &unk_1F1083F68;
  v3[4] = @"CIAttributeIdentity";
  v3[5] = @"CIAttributeType";
  v4[4] = &unk_1F1083F68;
  v4[5] = @"CIAttributeTypeScalar";
  v19[9] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:6];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:10];
}

@end