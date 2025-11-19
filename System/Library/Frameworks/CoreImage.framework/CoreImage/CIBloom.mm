@interface CIBloom
+ (id)customAttributes;
- (BOOL)_isIdentity;
- (id)outputImage;
@end

@implementation CIBloom

+ (id)customAttributes
{
  v9[5] = *MEMORY[0x1E69E9840];
  v8[0] = @"CIAttributeFilterCategories";
  v7[0] = @"CICategoryStylize";
  v7[1] = @"CICategoryVideo";
  v7[2] = @"CICategoryStillImage";
  v7[3] = @"CICategoryHighDynamicRange";
  v7[4] = @"CICategoryBuiltIn";
  v9[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:5];
  v9[1] = @"6";
  v8[1] = @"CIAttributeFilterAvailable_iOS";
  v8[2] = @"CIAttributeFilterAvailable_Mac";
  v9[2] = @"10.4";
  v8[3] = @"inputIntensity";
  v5[0] = @"CIAttributeMin";
  v5[1] = @"CIAttributeSliderMin";
  v6[0] = &unk_1F1082BC8;
  v6[1] = &unk_1F1082BC8;
  v5[2] = @"CIAttributeDefault";
  v5[3] = @"CIAttributeType";
  v6[2] = &unk_1F1082BD8;
  v6[3] = @"CIAttributeTypeScalar";
  v9[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:4];
  v8[4] = @"inputRadius";
  v3[0] = @"CIAttributeMin";
  v3[1] = @"CIAttributeSliderMin";
  v4[0] = &unk_1F1082BC8;
  v4[1] = &unk_1F1082BC8;
  v3[2] = @"CIAttributeSliderMax";
  v3[3] = @"CIAttributeDefault";
  v4[2] = &unk_1F1082BE8;
  v4[3] = &unk_1F1082BF8;
  v3[4] = @"CIAttributeIdentity";
  v3[5] = @"CIAttributeType";
  v4[4] = &unk_1F1082BC8;
  v4[5] = @"CIAttributeTypeDistance";
  v9[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:6];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:5];
}

- (BOOL)_isIdentity
{
  [(NSNumber *)self->inputRadius doubleValue];
  if (v3 < 0.16)
  {
    return 1;
  }

  [(NSNumber *)self->inputIntensity doubleValue];
  return v5 < 0.001;
}

- (id)outputImage
{
  v25[3] = *MEMORY[0x1E69E9840];
  if (!self->inputImage)
  {
    return 0;
  }

  v3 = [(CIBloom *)self _isIdentity];
  inputImage = self->inputImage;
  if (v3)
  {
    v5 = inputImage;

    return v5;
  }

  else
  {
    [(NSNumber *)self->inputRadius doubleValue];
    v7 = [(CIImage *)inputImage imageByApplyingGaussianBlurWithSigma:?];
    [(CIImage *)v7 extent];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    [(CIImage *)self->inputImage extent];
    v29.origin.x = v16;
    v29.origin.y = v17;
    v29.size.width = v18;
    v29.size.height = v19;
    v27.origin.x = v9;
    v27.origin.y = v11;
    v27.size.width = v13;
    v27.size.height = v15;
    v28 = CGRectUnion(v27, v29);
    x = v28.origin.x;
    y = v28.origin.y;
    width = v28.size.width;
    height = v28.size.height;
    v24 = [(CIBloom *)self _kernel];
    v25[0] = self->inputImage;
    v25[1] = v7;
    v25[2] = self->inputIntensity;
    return [v24 applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v25, 3), x, y, width, height}];
  }
}

@end