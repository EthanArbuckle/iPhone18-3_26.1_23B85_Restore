@interface CIRadialGradient
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIRadialGradient

+ (id)customAttributes
{
  v15[8] = *MEMORY[0x1E69E9840];
  v14[0] = @"CIAttributeFilterCategories";
  v13[0] = @"CICategoryGradient";
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
  v14[4] = @"inputRadius0";
  v9[0] = @"CIAttributeMin";
  v9[1] = @"CIAttributeSliderMin";
  v10[0] = &unk_1F1083BE8;
  v10[1] = &unk_1F1083BE8;
  v9[2] = @"CIAttributeSliderMax";
  v9[3] = @"CIAttributeDefault";
  v10[2] = &unk_1F1083BF8;
  v10[3] = &unk_1F1083C08;
  v9[4] = @"CIAttributeType";
  v10[4] = @"CIAttributeTypeDistance";
  v15[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:5];
  v14[5] = @"inputRadius1";
  v7[0] = @"CIAttributeMin";
  v7[1] = @"CIAttributeSliderMin";
  v8[0] = &unk_1F1083BE8;
  v8[1] = &unk_1F1083BE8;
  v7[2] = @"CIAttributeSliderMax";
  v7[3] = @"CIAttributeDefault";
  v8[2] = &unk_1F1083BF8;
  v8[3] = &unk_1F1083C18;
  v7[4] = @"CIAttributeType";
  v8[4] = @"CIAttributeTypeDistance";
  v15[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:5];
  v14[6] = @"inputColor0";
  v5[0] = @"CIAttributeDefault";
  v5[1] = @"CIAttributeType";
  v6[0] = [CIColor colorWithRed:1.0 green:1.0 blue:1.0];
  v6[1] = @"CIAttributeTypeColor";
  v15[6] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v14[7] = @"inputColor1";
  v3[1] = @"CIAttributeType";
  v4[0] = [CIColor colorWithRed:0.0 green:0.0 blue:0.0, @"CIAttributeDefault"];
  v4[1] = @"CIAttributeTypeColor";
  v15[7] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:2];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:8];
}

- (id)outputImage
{
  v29[3] = *MEMORY[0x1E69E9840];
  p_inputColor0 = &self->inputColor0;
  [(CIColor *)self->inputColor0 alpha];
  if (v4 == 0.0)
  {
    [(CIColor *)self->inputColor1 alpha];
    if (v5 == 0.0)
    {
      return 0;
    }
  }

  [(NSNumber *)self->inputRadius0 floatValue];
  v8 = v7;
  [(NSNumber *)self->inputRadius1 floatValue];
  v10 = v9;
  if (vabds_f32(v8, v9) < 0.001)
  {
    if (v8 <= v9)
    {
      v8 = v8 + -0.001;
    }

    else
    {
      v10 = v9 + -0.001;
    }
  }

  p_inputColor1 = p_inputColor0;
  if (v8 <= v10)
  {
    p_inputColor1 = &self->inputColor1;
  }

  [(CIColor *)*p_inputColor1 alpha];
  v13 = v12;
  [(CIVector *)self->inputCenter X];
  v15 = v14;
  [(CIVector *)self->inputCenter Y];
  v17 = [CIVector vectorWithX:v15 Y:v16 Z:(1.0 / (v10 - v8)) W:(-v8 / (v10 - v8))];
  if (v13 == 0.0)
  {
    v18 = fmaxf(fmaxf(v8, v10), 0.0);
    [(CIVector *)self->inputCenter X];
    v20 = v19;
    [(CIVector *)self->inputCenter Y];
    v21 = v18;
    v22 = v20 - v18;
    v24 = v23 - v21;
    v25 = v21 + v21;
  }

  else
  {
    v25 = 1.79769313e308;
    v22 = -8.98846567e307;
    v24 = -8.98846567e307;
  }

  v26 = [(CIRadialGradient *)self _kernel];
  if (v25 == 1.79769313e308 && v22 == -8.98846567e307)
  {
    v27 = v25;
    if (v24 == -8.98846567e307)
    {
      v25 = *(MEMORY[0x1E695F040] + 16);
      v27 = *(MEMORY[0x1E695F040] + 24);
      v22 = *MEMORY[0x1E695F040];
      v24 = *(MEMORY[0x1E695F040] + 8);
    }
  }

  else
  {
    v27 = v25;
  }

  v28 = *p_inputColor0;
  v29[0] = v17;
  v29[1] = v28;
  v29[2] = self->inputColor1;
  return [v26 applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v29, 3), v22, v24, v25, v27}];
}

@end