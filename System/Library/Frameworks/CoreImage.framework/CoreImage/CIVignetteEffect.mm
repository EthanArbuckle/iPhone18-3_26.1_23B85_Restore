@interface CIVignetteEffect
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIVignetteEffect

+ (id)customAttributes
{
  v11[6] = *MEMORY[0x1E69E9840];
  v10[0] = @"CIAttributeFilterCategories";
  v9[0] = @"CICategoryColorEffect";
  v9[1] = @"CICategoryVideo";
  v9[2] = @"CICategoryInterlaced";
  v9[3] = @"CICategoryStillImage";
  v9[4] = @"CICategoryHighDynamicRange";
  v9[5] = @"CICategoryBuiltIn";
  v11[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:6];
  v11[1] = @"7";
  v10[1] = @"CIAttributeFilterAvailable_iOS";
  v10[2] = @"CIAttributeFilterAvailable_Mac";
  v11[2] = @"10.9";
  v10[3] = @"inputRadius";
  v7[0] = @"CIAttributeSliderMin";
  v7[1] = @"CIAttributeSliderMax";
  v8[0] = &unk_1F1085088;
  v8[1] = &unk_1F10850A8;
  v7[2] = @"CIAttributeMin";
  v7[3] = @"CIAttributeDefault";
  v8[2] = &unk_1F1085088;
  v8[3] = &unk_1F10850B8;
  v7[4] = @"CIAttributeType";
  v8[4] = @"CIAttributeTypeDistance";
  v11[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:5];
  v10[4] = @"inputIntensity";
  v5[0] = @"CIAttributeSliderMin";
  v5[1] = @"CIAttributeSliderMax";
  v6[0] = &unk_1F1085068;
  v6[1] = &unk_1F1085078;
  v5[2] = @"CIAttributeMin";
  v5[3] = @"CIAttributeMax";
  v6[2] = &unk_1F1085068;
  v6[3] = &unk_1F1085078;
  v5[4] = @"CIAttributeDefault";
  v5[5] = @"CIAttributeIdentity";
  v6[4] = &unk_1F1085078;
  v6[5] = &unk_1F1085088;
  v5[6] = @"CIAttributeType";
  v6[6] = @"CIAttributeTypeScalar";
  v11[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:7];
  v10[5] = @"inputFalloff";
  v3[0] = @"CIAttributeSliderMin";
  v3[1] = @"CIAttributeSliderMax";
  v4[0] = &unk_1F1085088;
  v4[1] = &unk_1F1085078;
  v3[2] = @"CIAttributeMin";
  v3[3] = @"CIAttributeMax";
  v4[2] = &unk_1F1085088;
  v4[3] = &unk_1F1085078;
  v3[4] = @"CIAttributeDefault";
  v3[5] = @"CIAttributeType";
  v4[4] = &unk_1F10850C8;
  v4[5] = @"CIAttributeTypeScalar";
  v11[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:6];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:6];
}

- (id)outputImage
{
  v27[3] = *MEMORY[0x1E69E9840];
  if (!self->inputImage)
  {
    return 0;
  }

  if ([(CIVignetteEffect *)self _isIdentity])
  {
    v3 = self->inputImage;

    return v3;
  }

  else
  {
    [(NSNumber *)self->inputIntensity doubleValue];
    v6 = fmin(fmax(v5, -1.0), 1.0);
    [(NSNumber *)self->inputFalloff doubleValue];
    [(NSNumber *)self->inputRadius doubleValue];
    v8 = [CIVector vectorWithX:"vectorWithX:Y:Z:W:" Y:1.0 / fmax(v7 Z:0.001) W:?];
    if (v6 >= 0.0)
    {
      _poskernel = [(CIVignetteEffect *)self _poskernel];
      [(CIImage *)self->inputImage extent];
      v11 = v21;
      v13 = v22;
      v15 = v23;
      v17 = v24;
      inputCenter = self->inputCenter;
      v27[0] = self->inputImage;
      v27[1] = inputCenter;
      v27[2] = v8;
      v19 = MEMORY[0x1E695DEC8];
      v20 = v27;
    }

    else
    {
      _poskernel = [(CIVignetteEffect *)self _negkernel];
      [(CIImage *)self->inputImage extent];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v18 = self->inputCenter;
      v26[0] = self->inputImage;
      v26[1] = v18;
      v26[2] = v8;
      v19 = MEMORY[0x1E695DEC8];
      v20 = v26;
    }

    return [_poskernel applyWithExtent:objc_msgSend(v19 arguments:{"arrayWithObjects:count:", v20, 3), v11, v13, v15, v17}];
  }
}

@end