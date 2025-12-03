@interface CIHistogramDisplayFilter
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIHistogramDisplayFilter

+ (id)customAttributes
{
  v11[6] = *MEMORY[0x1E69E9840];
  v10[0] = @"CIAttributeFilterCategories";
  v9[0] = @"CICategoryReduction";
  v9[1] = @"CICategoryVideo";
  v9[2] = @"CICategoryStillImage";
  v9[3] = @"CICategoryBuiltIn";
  v11[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];
  v11[1] = @"8";
  v10[1] = @"CIAttributeFilterAvailable_iOS";
  v10[2] = @"CIAttributeFilterAvailable_Mac";
  v11[2] = @"10.?";
  v10[3] = @"inputHeight";
  v7[0] = @"CIAttributeMin";
  v7[1] = @"CIAttributeMax";
  v8[0] = &unk_1F1083DA8;
  v8[1] = &unk_1F1083DB8;
  v7[2] = @"CIAttributeSliderMin";
  v7[3] = @"CIAttributeSliderMax";
  v8[2] = &unk_1F1083DA8;
  v8[3] = &unk_1F1083DC8;
  v7[4] = @"CIAttributeDefault";
  v7[5] = @"CIAttributeClass";
  v8[4] = &unk_1F1083DC8;
  v8[5] = @"NSNumber";
  v7[6] = @"CIAttributeType";
  v8[6] = @"CIAttributeTypeScalar";
  v11[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:7];
  v10[4] = @"inputLowLimit";
  v5[0] = @"CIAttributeMin";
  v5[1] = @"CIAttributeMax";
  v6[0] = &unk_1F1083DD8;
  v6[1] = &unk_1F1083DA8;
  v5[2] = @"CIAttributeSliderMin";
  v5[3] = @"CIAttributeSliderMax";
  v6[2] = &unk_1F1083DD8;
  v6[3] = &unk_1F1083DA8;
  v5[4] = @"CIAttributeDefault";
  v5[5] = @"CIAttributeClass";
  v6[4] = &unk_1F1083DD8;
  v6[5] = @"NSNumber";
  v5[6] = @"CIAttributeType";
  v6[6] = @"CIAttributeTypeScalar";
  v11[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:7];
  v10[5] = @"inputHighLimit";
  v3[0] = @"CIAttributeMin";
  v3[1] = @"CIAttributeMax";
  v4[0] = &unk_1F1083DD8;
  v4[1] = &unk_1F1083DA8;
  v3[2] = @"CIAttributeSliderMin";
  v3[3] = @"CIAttributeSliderMax";
  v4[2] = &unk_1F1083DD8;
  v4[3] = &unk_1F1083DA8;
  v3[4] = @"CIAttributeDefault";
  v3[5] = @"CIAttributeClass";
  v4[4] = &unk_1F1083DA8;
  v4[5] = @"NSNumber";
  v3[6] = @"CIAttributeType";
  v4[6] = @"CIAttributeTypeScalar";
  v11[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:7];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:6];
}

- (id)outputImage
{
  v14[3] = *MEMORY[0x1E69E9840];
  result = self->inputImage;
  if (result)
  {
    [result extent];
    Width = CGRectGetWidth(v15);
    [(NSNumber *)self->inputHeight floatValue];
    v6 = fmin(fmax(v5, 1.0), 200.0);
    [(NSNumber *)self->inputLowLimit doubleValue];
    v8 = Width;
    v9 = fmin(fmax(v7, 0.0), 1.0) * v8;
    [(NSNumber *)self->inputHighLimit doubleValue];
    v11 = fmin(fmax(v10, 0.0), 1.0) * v8;
    _kernel = [(CIHistogramDisplayFilter *)self _kernel];
    *&v13 = v6;
    v14[1] = [MEMORY[0x1E696AD98] numberWithFloat:{v13, self->inputImage}];
    v14[2] = [CIVector vectorWithX:v9 Y:v11];
    return [_kernel applyWithExtent:&__block_literal_global_39 roiCallback:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v14, 3), 0.0, 0.0, v8, v6}];
  }

  return result;
}

@end