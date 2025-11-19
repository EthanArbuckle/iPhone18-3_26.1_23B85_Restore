@interface CIModTransition
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIModTransition

+ (id)customAttributes
{
  v15[8] = *MEMORY[0x1E69E9840];
  v14[0] = @"CIAttributeFilterCategories";
  v13[0] = @"CICategoryTransition";
  v13[1] = @"CICategoryVideo";
  v13[2] = @"CICategoryStillImage";
  v13[3] = @"CICategoryBuiltIn";
  v15[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:4];
  v15[1] = @"6";
  v14[1] = @"CIAttributeFilterAvailable_iOS";
  v14[2] = @"CIAttributeFilterAvailable_Mac";
  v15[2] = @"10.4";
  v14[3] = @"inputColor";
  v11[0] = @"CIAttributeDefault";
  v11[1] = @"CIAttributeType";
  v12[0] = [CIVector vectorWithX:150.0 Y:150.0];
  v12[1] = @"CIAttributeTypePosition";
  v15[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v14[4] = @"inputTime";
  v9[0] = @"CIAttributeMin";
  v9[1] = @"CIAttributeSliderMin";
  v10[0] = &unk_1F1084258;
  v10[1] = &unk_1F1084258;
  v9[2] = @"CIAttributeSliderMax";
  v9[3] = @"CIAttributeDefault";
  v10[2] = &unk_1F1084268;
  v10[3] = &unk_1F1084258;
  v9[4] = @"CIAttributeType";
  v10[4] = @"CIAttributeTypeTime";
  v15[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:5];
  v14[5] = @"inputAngle";
  v7[0] = @"CIAttributeSliderMin";
  v7[1] = @"CIAttributeSliderMax";
  v8[0] = &unk_1F1084278;
  v8[1] = &unk_1F1084288;
  v7[2] = @"CIAttributeDefault";
  v7[3] = @"CIAttributeType";
  v8[2] = &unk_1F1084298;
  v8[3] = @"CIAttributeTypeAngle";
  v15[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:4];
  v14[6] = @"inputRadius";
  v5[0] = @"CIAttributeMin";
  v5[1] = @"CIAttributeSliderMin";
  v6[0] = &unk_1F1084268;
  v6[1] = &unk_1F1084268;
  v5[2] = @"CIAttributeSliderMax";
  v5[3] = @"CIAttributeDefault";
  v6[2] = &unk_1F10842A8;
  v6[3] = &unk_1F10842B8;
  v5[4] = @"CIAttributeType";
  v6[4] = @"CIAttributeTypeDistance";
  v15[6] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:5];
  v14[7] = @"inputCompression";
  v3[0] = @"CIAttributeMin";
  v3[1] = @"CIAttributeSliderMin";
  v4[0] = &unk_1F1084268;
  v4[1] = &unk_1F10842C8;
  v3[2] = @"CIAttributeSliderMax";
  v3[3] = @"CIAttributeDefault";
  v4[2] = &unk_1F10842D8;
  v4[3] = &unk_1F10842E8;
  v3[4] = @"CIAttributeType";
  v4[4] = @"CIAttributeTypeDistance";
  v15[7] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:5];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:8];
}

- (id)outputImage
{
  v46[7] = *MEMORY[0x1E69E9840];
  if (!self->inputImage || !self->inputTargetImage)
  {
    return 0;
  }

  [(NSNumber *)self->inputAngle floatValue];
  v4 = v3;
  [(NSNumber *)self->inputRadius floatValue];
  v6 = v5;
  [(NSNumber *)self->inputCompression floatValue];
  v8 = v7;
  [(NSNumber *)self->inputTime floatValue];
  v10 = v9;
  [(CIImage *)self->inputImage extent];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [(CIImage *)self->inputTargetImage extent];
  v49.origin.x = v19;
  v49.origin.y = v20;
  v49.size.width = v21;
  v49.size.height = v22;
  v47.origin.x = v12;
  v47.origin.y = v14;
  v47.size.width = v16;
  v47.size.height = v18;
  v48 = CGRectUnion(v47, v49);
  y = v48.origin.y;
  x = v48.origin.x;
  height = v48.size.height;
  width = v48.size.width;
  *&v18 = (v10 * (v4 + -0.7854)) + 0.7854;
  v23 = 1.0 / sqrtf(tanf(0.62785));
  v24 = v23;
  v25 = v10 * 1.47303709;
  v40 = ((1.0 / v23) - v23) + ((1.0 / v23) - v23);
  v26 = (v23 - (1.0 / v23));
  *&v16 = 1.0 / (v26 + v26);
  v27 = 1.0 / ((v24 + v24) * ((1.0 / v23) - v23));
  v28 = v26 + v26;
  v41 = v28;
  v29 = (1.0 / v23);
  v30 = -(v23 - v29 * 2.0);
  v39 = v30;
  *&v12 = -1.0 / (v26 + v26);
  *&v14 = (v23 + v29 * -0.5) / v26;
  v31 = [CIVector vectorWithX:(17.0 / v25) Y:-16.5 Z:1.0 / v8 W:(v23 * v8)];
  v32 = __sincosf_stret(*&v18);
  v33 = [CIVector vectorWithX:(v32.__cosval / v6) Y:(v32.__sinval / v6) Z:(-v32.__sinval / v6) W:?];
  v34 = [CIVector vectorWithX:v40 Y:v24 Z:*&v16 W:v27];
  v35 = [CIVector vectorWithX:v41 Y:v39 Z:*&v12 W:*&v14];
  v36 = [(CIModTransition *)self _kernel];
  inputTargetImage = self->inputTargetImage;
  v46[0] = self->inputImage;
  v46[1] = inputTargetImage;
  v46[2] = self->inputCenter;
  v46[3] = v31;
  v46[4] = v33;
  v46[5] = v34;
  v46[6] = v35;
  return [v36 applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v46, 7), x, y, width, height}];
}

@end