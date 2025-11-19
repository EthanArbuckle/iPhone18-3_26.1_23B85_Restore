@interface CILineOverlay
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CILineOverlay

+ (id)customAttributes
{
  v15[8] = *MEMORY[0x1E69E9840];
  v14[0] = @"CIAttributeFilterCategories";
  v13[0] = @"CICategoryBuiltIn";
  v13[1] = @"CICategoryStillImage";
  v13[2] = @"CICategoryVideo";
  v13[3] = @"CICategoryStylize";
  v15[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:4];
  v15[1] = @"9";
  v14[1] = @"CIAttributeFilterAvailable_iOS";
  v14[2] = @"CIAttributeFilterAvailable_Mac";
  v15[2] = @"10.5";
  v14[3] = @"inputNRSharpness";
  v11[0] = @"CIAttributeMin";
  v11[1] = @"CIAttributeSliderMin";
  v12[0] = &unk_1F1083038;
  v12[1] = &unk_1F1083038;
  v11[2] = @"CIAttributeSliderMax";
  v11[3] = @"CIAttributeDefault";
  v12[2] = &unk_1F1083048;
  v12[3] = &unk_1F1083058;
  v11[4] = @"CIAttributeIdentity";
  v11[5] = @"CIAttributeClass";
  v12[4] = &unk_1F1083038;
  v12[5] = @"NSNumber";
  v11[6] = @"CIAttributeType";
  v12[6] = @"CIAttributeTypeScalar";
  v15[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:7];
  v14[4] = @"inputNRNoiseLevel";
  v9[0] = @"CIAttributeMin";
  v9[1] = @"CIAttributeSliderMin";
  v10[0] = &unk_1F1083038;
  v10[1] = &unk_1F1083038;
  v9[2] = @"CIAttributeSliderMax";
  v9[3] = @"CIAttributeDefault";
  v10[2] = &unk_1F1083068;
  v10[3] = &unk_1F1083078;
  v9[4] = @"CIAttributeIdentity";
  v9[5] = @"CIAttributeClass";
  v10[4] = &unk_1F1083038;
  v10[5] = @"NSNumber";
  v9[6] = @"CIAttributeType";
  v10[6] = @"CIAttributeTypeScalar";
  v15[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:7];
  v14[5] = @"inputEdgeIntensity";
  v7[0] = @"CIAttributeMin";
  v7[1] = @"CIAttributeSliderMin";
  v8[0] = &unk_1F1083038;
  v8[1] = &unk_1F1083038;
  v7[2] = @"CIAttributeSliderMax";
  v7[3] = @"CIAttributeDefault";
  v8[2] = &unk_1F1083088;
  v8[3] = &unk_1F1083098;
  v7[4] = @"CIAttributeIdentity";
  v7[5] = @"CIAttributeClass";
  v8[4] = &unk_1F1083038;
  v8[5] = @"NSNumber";
  v7[6] = @"CIAttributeType";
  v8[6] = @"CIAttributeTypeScalar";
  v15[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:7];
  v14[6] = @"inputThreshold";
  v5[0] = @"CIAttributeMin";
  v5[1] = @"CIAttributeSliderMin";
  v6[0] = &unk_1F1083038;
  v6[1] = &unk_1F1083038;
  v5[2] = @"CIAttributeSliderMax";
  v5[3] = @"CIAttributeDefault";
  v6[2] = &unk_1F1083098;
  v6[3] = &unk_1F1083068;
  v5[4] = @"CIAttributeIdentity";
  v5[5] = @"CIAttributeClass";
  v6[4] = &unk_1F1083038;
  v6[5] = @"NSNumber";
  v5[6] = @"CIAttributeType";
  v6[6] = @"CIAttributeTypeScalar";
  v15[6] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:7];
  v14[7] = @"inputContrast";
  v3[0] = @"CIAttributeMin";
  v3[1] = @"CIAttributeSliderMin";
  v4[0] = &unk_1F10830A8;
  v4[1] = &unk_1F10830A8;
  v3[2] = @"CIAttributeSliderMax";
  v3[3] = @"CIAttributeDefault";
  v4[2] = &unk_1F1083088;
  v4[3] = &unk_1F10830B8;
  v3[4] = @"CIAttributeIdentity";
  v3[5] = @"CIAttributeClass";
  v4[4] = &unk_1F1083098;
  v4[5] = @"NSNumber";
  v3[6] = @"CIAttributeType";
  v4[6] = @"CIAttributeTypeScalar";
  v15[7] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:7];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:8];
}

- (id)outputImage
{
  v30[4] = *MEMORY[0x1E69E9840];
  [(NSNumber *)self->inputNRSharpness floatValue];
  v4 = v3;
  [(NSNumber *)self->inputNRNoiseLevel floatValue];
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
  v12 = [(CILineOverlay *)self _CIComicNoiseReduction];
  [(CIImage *)self->inputImage extent];
  v30[0] = self->inputImage;
  v30[1] = v10;
  v30[2] = v11;
  v30[3] = v9;
  v17 = [v12 applyWithExtent:&__block_literal_global_13 roiCallback:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v30, 4), v13, v14, v15, v16}];
  v18 = [(CILineOverlay *)self _CISobelEdges];
  [v17 extent];
  v32 = CGRectInset(v31, -1.0, -1.0);
  inputEdgeIntensity = self->inputEdgeIntensity;
  v29[0] = v17;
  v29[1] = inputEdgeIntensity;
  v20 = [v18 applyWithExtent:&__block_literal_global_58_1 roiCallback:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v29, 2), v32.origin.x, v32.origin.y, v32.size.width, v32.size.height}];
  v21 = [(CILineOverlay *)self _CIColorControls];
  [v20 extent];
  inputThreshold = self->inputThreshold;
  v28[0] = v20;
  v28[1] = inputThreshold;
  v28[2] = self->inputContrast;
  return [v21 applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v28, 3), v23, v24, v25, v26}];
}

@end