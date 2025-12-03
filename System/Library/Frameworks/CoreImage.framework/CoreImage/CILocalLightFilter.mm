@interface CILocalLightFilter
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CILocalLightFilter

+ (id)customAttributes
{
  v13[5] = *MEMORY[0x1E69E9840];
  v12[0] = @"CIAttributeFilterCategories";
  v11[0] = @"CICategoryColorAdjustment";
  v11[1] = @"CICategoryStillImage";
  v11[2] = @"CICategoryApplePrivate";
  v13[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:3];
  v12[1] = @"inputLocalLight";
  v9[0] = @"CIAttributeMin";
  v9[1] = @"CIAttributeSliderMin";
  v10[0] = &unk_1F10840C8;
  v10[1] = &unk_1F10840C8;
  v9[2] = @"CIAttributeSliderMax";
  v9[3] = @"CIAttributeMax";
  v10[2] = &unk_1F10840D8;
  v10[3] = &unk_1F10840E8;
  v9[4] = @"CIAttributeDefault";
  v9[5] = @"CIAttributeIdentity";
  v10[4] = &unk_1F10840B8;
  v10[5] = &unk_1F10840B8;
  v9[6] = @"CIAttributeType";
  v9[7] = @"CIAttributeClass";
  v10[6] = @"CIAttributeTypeScalar";
  v10[7] = @"NSNumber";
  v13[1] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:8];
  v12[2] = @"inputSmartShadows";
  v7[0] = @"CIAttributeMin";
  v7[1] = @"CIAttributeSliderMin";
  v8[0] = &unk_1F10840F8;
  v8[1] = &unk_1F10840F8;
  v7[2] = @"CIAttributeSliderMax";
  v7[3] = @"CIAttributeMax";
  v8[2] = &unk_1F10840E8;
  v8[3] = &unk_1F10840E8;
  v7[4] = @"CIAttributeDefault";
  v7[5] = @"CIAttributeIdentity";
  v8[4] = &unk_1F10840B8;
  v8[5] = &unk_1F10840B8;
  v7[6] = @"CIAttributeType";
  v8[6] = @"CIAttributeTypeScalar";
  v13[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:7];
  v12[3] = @"inputLightMapWidth";
  v5[0] = @"CIAttributeMin";
  v5[1] = @"CIAttributeDefault";
  v6[0] = &unk_1F10840B8;
  v6[1] = &unk_1F10840B8;
  v5[2] = @"CIAttributeType";
  v5[3] = @"CIAttributeClass";
  v6[2] = @"CIAttributeTypeDistance";
  v6[3] = @"NSNumber";
  v13[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:4];
  v12[4] = @"inputLightMapHeight";
  v3[0] = @"CIAttributeMin";
  v3[1] = @"CIAttributeDefault";
  v4[0] = &unk_1F10840B8;
  v4[1] = &unk_1F10840B8;
  v3[2] = @"CIAttributeType";
  v3[3] = @"CIAttributeClass";
  v4[2] = @"CIAttributeTypeDistance";
  v4[3] = @"NSNumber";
  v13[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:4];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:5];
}

- (id)outputImage
{
  v24[3] = *MEMORY[0x1E69E9840];
  if (!self->inputImage)
  {
    return 0;
  }

  [(NSNumber *)self->inputLocalLight doubleValue];
  if (fabs(v3) < 1.0e-10)
  {
    [(NSNumber *)self->inputSmartShadows doubleValue];
    if (fabs(v4) < 1.0e-10)
    {
      return self->inputImage;
    }
  }

  inputLightMap = self->inputLightMap;
  if (!inputLightMap && !self->inputLightMapImage)
  {
    return self->inputImage;
  }

  inputGuideImage = self->inputGuideImage;
  if (!inputGuideImage)
  {
    inputGuideImage = self->inputImage;
  }

  v7 = self->inputLightMapImage ? self->inputLightMapImage : _lightMapImageFromData(inputLightMap, self->inputLightMapWidth, self->inputLightMapHeight);
  v9 = _scaledLightMapImage(v7, inputGuideImage);
  if (!v9)
  {
    return self->inputImage;
  }

  _polyKernel = [(CILocalLightFilter *)self _polyKernel];
  inputImage = self->inputImage;
  [(NSNumber *)self->inputLocalLight doubleValue];
  if (fabs(v11) >= 1.0e-10)
  {
    [(CIImage *)self->inputImage extent];
    v24[0] = inputImage;
    v24[1] = v9;
    v24[2] = self->inputLocalLight;
    inputImage = [_polyKernel applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v24, 3), v12, v13, v14, v15}];
  }

  [(NSNumber *)self->inputSmartShadows doubleValue];
  if (fabs(v16) >= 1.0e-10)
  {
    _shadowKernel = [(CILocalLightFilter *)self _shadowKernel];
    [(CIImage *)self->inputImage extent];
    v23[0] = inputImage;
    v23[1] = v9;
    v23[2] = self->inputSmartShadows;
    return [_shadowKernel applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v23, 3), v18, v19, v20, v21}];
  }

  return inputImage;
}

@end