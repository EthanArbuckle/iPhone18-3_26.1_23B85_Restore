@interface CIHueSaturationValueGradient
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIHueSaturationValueGradient

+ (id)customAttributes
{
  v17[8] = *MEMORY[0x1E69E9840];
  v2 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  v16[0] = @"CIAttributeFilterCategories";
  v15[0] = @"CICategoryGradient";
  v15[1] = @"CICategoryVideo";
  v15[2] = @"CICategoryStillImage";
  v15[3] = @"CICategoryBuiltIn";
  v17[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:4];
  v17[1] = @"10";
  v16[1] = @"CIAttributeFilterAvailable_iOS";
  v16[2] = @"CIAttributeFilterAvailable_Mac";
  v17[2] = @"10.12";
  v16[3] = @"inputRadius";
  v13[0] = @"CIAttributeMin";
  v13[1] = @"CIAttributeSliderMin";
  v14[0] = &unk_1F1083BE8;
  v14[1] = &unk_1F1083BE8;
  v13[2] = @"CIAttributeSliderMax";
  v13[3] = @"CIAttributeDefault";
  v14[2] = &unk_1F1083BF8;
  v14[3] = &unk_1F1083C28;
  v13[4] = @"CIAttributeType";
  v14[4] = @"CIAttributeTypeDistance";
  v17[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:5];
  v16[4] = @"inputValue";
  v11[0] = @"CIAttributeMin";
  v11[1] = @"CIAttributeSliderMin";
  v12[0] = &unk_1F1083BE8;
  v12[1] = &unk_1F1083BE8;
  v11[2] = @"CIAttributeSliderMax";
  v11[3] = @"CIAttributeDefault";
  v12[2] = &unk_1F1083C38;
  v12[3] = &unk_1F1083C38;
  v11[4] = @"CIAttributeType";
  v12[4] = @"CIAttributeTypeScalar";
  v17[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:5];
  v16[5] = @"inputSoftness";
  v9[0] = @"CIAttributeMin";
  v9[1] = @"CIAttributeSliderMin";
  v10[0] = &unk_1F1083BE8;
  v10[1] = &unk_1F1083BE8;
  v9[2] = @"CIAttributeSliderMax";
  v9[3] = @"CIAttributeDefault";
  v10[2] = &unk_1F1083C38;
  v10[3] = &unk_1F1083C38;
  v9[4] = @"CIAttributeType";
  v10[4] = @"CIAttributeTypeScalar";
  v17[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:5];
  v16[6] = @"inputDither";
  v7[0] = @"CIAttributeMin";
  v7[1] = @"CIAttributeSliderMin";
  v8[0] = &unk_1F1083BE8;
  v8[1] = &unk_1F1083BE8;
  v7[2] = @"CIAttributeSliderMax";
  v7[3] = @"CIAttributeDefault";
  v8[2] = &unk_1F1083C48;
  v8[3] = &unk_1F1083C38;
  v7[4] = @"CIAttributeType";
  v8[4] = @"CIAttributeTypeScalar";
  v17[6] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:5];
  v16[7] = @"inputColorSpace";
  v5 = @"CIAttributeDefault";
  v6 = v2;
  v17[7] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:8];
  CGColorSpaceRelease(v2);
  return v3;
}

- (id)outputImage
{
  v18[1] = *MEMORY[0x1E69E9840];
  [(NSNumber *)self->inputRadius doubleValue];
  if (v3 >= 0.01)
  {
    v5 = v3;
    [(NSNumber *)self->inputValue doubleValue];
    v7 = fmin(fmax(v6, 0.0), 1.0);
    [(NSNumber *)self->inputDither doubleValue];
    v9 = v8;
    [(NSNumber *)self->inputSoftness doubleValue];
    v11 = [CIVector vectorWithX:v7 Y:v5 Z:1.0 / v5 W:v10];
    v12 = ceil(v5 + v5);
    if (v9 >= 0.01)
    {
      v13 = [(CIHueSaturationValueGradient *)self _kernelD];
      v17[1] = [MEMORY[0x1E696AD98] numberWithDouble:{v9 * 0.00390625, v11}];
      v14 = MEMORY[0x1E695DEC8];
      v15 = v17;
      v16 = 2;
    }

    else
    {
      v13 = [(CIHueSaturationValueGradient *)self _kernel];
      v18[0] = v11;
      v14 = MEMORY[0x1E695DEC8];
      v15 = v18;
      v16 = 1;
    }

    result = [v13 applyWithExtent:objc_msgSend(v14 arguments:{"arrayWithObjects:count:", v15, v16), 0.0, 0.0, v12, v12}];
    if (self->inputColorSpace)
    {
      return [result imageByColorMatchingColorSpaceToWorkingSpace:?];
    }
  }

  else
  {

    return +[CIImage emptyImage];
  }

  return result;
}

@end