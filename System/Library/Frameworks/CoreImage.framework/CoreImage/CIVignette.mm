@interface CIVignette
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIVignette

+ (id)customAttributes
{
  v9[5] = *MEMORY[0x1E69E9840];
  v8[0] = @"CIAttributeFilterCategories";
  v7[0] = @"CICategoryColorEffect";
  v7[1] = @"CICategoryVideo";
  v7[2] = @"CICategoryInterlaced";
  v7[3] = @"CICategoryStillImage";
  v7[4] = @"CICategoryHighDynamicRange";
  v7[5] = @"CICategoryBuiltIn";
  v9[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:6];
  v9[1] = @"5";
  v8[1] = @"CIAttributeFilterAvailable_iOS";
  v8[2] = @"CIAttributeFilterAvailable_Mac";
  v9[2] = @"10.9";
  v8[3] = @"inputIntensity";
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
  v6[4] = &unk_1F1085088;
  v6[5] = &unk_1F1085088;
  v5[6] = @"CIAttributeType";
  v6[6] = @"CIAttributeTypeScalar";
  v9[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:7];
  v8[4] = @"inputRadius";
  v3[0] = @"CIAttributeSliderMin";
  v3[1] = @"CIAttributeSliderMax";
  v4[0] = &unk_1F1085088;
  v4[1] = &unk_1F1085098;
  v3[2] = @"CIAttributeMin";
  v3[3] = @"CIAttributeMax";
  v4[2] = &unk_1F1085088;
  v4[3] = &unk_1F1085098;
  v3[4] = @"CIAttributeDefault";
  v3[5] = @"CIAttributeType";
  v4[4] = &unk_1F1085078;
  v4[5] = @"CIAttributeTypeScalar";
  v9[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:6];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:5];
}

- (id)outputImage
{
  v23[2] = *MEMORY[0x1E69E9840];
  if (!self->inputImage)
  {
    return 0;
  }

  [(NSNumber *)self->inputIntensity doubleValue];
  v4 = v3;
  inputImage = self->inputImage;
  if (fabs(v3) >= 0.01)
  {
    [(CIImage *)inputImage extent];
    x = v25.origin.x;
    y = v25.origin.y;
    width = v25.size.width;
    height = v25.size.height;
    if (!CGRectIsInfinite(v25))
    {
      [(NSNumber *)self->inputRadius doubleValue];
      v13 = fmin(fmax(v12, 0.0), 2.0);
      v14 = fmin(width, height);
      v15 = 1.0 / (v14 * 0.5 * (4.0 - v13) * (v14 * 0.5 * (4.0 - v13)));
      v26.origin.x = x;
      v26.origin.y = y;
      v26.size.width = width;
      v26.size.height = height;
      MidX = CGRectGetMidX(v26);
      v27.origin.x = x;
      v27.origin.y = y;
      v27.size.width = width;
      v27.size.height = height;
      v17 = [CIVector vectorWithX:MidX Y:CGRectGetMidY(v27) Z:v4 + v4 W:v15];
      _kernel = [(CIVignette *)self _kernel];
      [(CIImage *)self->inputImage extent];
      v23[0] = self->inputImage;
      v23[1] = v17;
      return [_kernel applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v23, 2), v19, v20, v21, v22}];
    }

    v6 = self->inputImage;
  }

  else
  {
    v6 = inputImage;
  }

  return v6;
}

@end