@interface CUIOuterGlowOrShadowFilter
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CUIOuterGlowOrShadowFilter

+ (id)customAttributes
{
  v16[6] = *MEMORY[0x1E69E9840];
  v15[0] = @"inputOffset";
  v13[0] = @"CIAttributeDefault";
  v13[1] = @"CIAttributeType";
  v14[0] = [CIVector vectorWithX:0.0 Y:0.0];
  v14[1] = @"CIAttributeTypeOffset";
  v16[0] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v15[1] = @"inputRange";
  v11[0] = @"CIAttributeMin";
  v11[1] = @"CIAttributeSliderMin";
  v12[0] = &unk_1F10851B8;
  v12[1] = &unk_1F10851B8;
  v11[2] = @"CIAttributeSliderMax";
  v11[3] = @"CIAttributeMax";
  v12[2] = &unk_1F10851E8;
  v12[3] = &unk_1F10851E8;
  v11[4] = @"CIAttributeDefault";
  v11[5] = @"CIAttributeType";
  v12[4] = &unk_1F10851E8;
  v12[5] = @"CIAttributeTypeScalar";
  v16[1] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:6];
  v15[2] = @"inputRadius";
  v9[0] = @"CIAttributeMin";
  v9[1] = @"CIAttributeSliderMin";
  v10[0] = &unk_1F10851B8;
  v10[1] = &unk_1F10851B8;
  v9[2] = @"CIAttributeSliderMax";
  v9[3] = @"CIAttributeMax";
  v10[2] = &unk_1F10851C8;
  v10[3] = &unk_1F10851F8;
  v9[4] = @"CIAttributeDefault";
  v9[5] = @"CIAttributeType";
  v10[4] = &unk_1F1085208;
  v10[5] = @"CIAttributeTypeScalar";
  v16[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:6];
  v15[3] = @"inputSize";
  v7[0] = @"CIAttributeMin";
  v7[1] = @"CIAttributeSliderMin";
  v8[0] = &unk_1F10851B8;
  v8[1] = &unk_1F10851B8;
  v7[2] = @"CIAttributeSliderMax";
  v7[3] = @"CIAttributeMax";
  v8[2] = &unk_1F10851C8;
  v8[3] = &unk_1F10851F8;
  v7[4] = @"CIAttributeDefault";
  v7[5] = @"CIAttributeType";
  v8[4] = &unk_1F1085208;
  v8[5] = @"CIAttributeTypeScalar";
  v16[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:6];
  v15[4] = @"inputSpread";
  v5[0] = @"CIAttributeMin";
  v5[1] = @"CIAttributeSliderMin";
  v6[0] = &unk_1F10851B8;
  v6[1] = &unk_1F10851B8;
  v5[2] = @"CIAttributeSliderMax";
  v5[3] = @"CIAttributeMax";
  v6[2] = &unk_1F10851D8;
  v6[3] = &unk_1F10851D8;
  v5[4] = @"CIAttributeDefault";
  v5[5] = @"CIAttributeType";
  v6[4] = &unk_1F10851B8;
  v6[5] = @"CIAttributeTypeScalar";
  v16[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:6];
  v15[5] = @"inputColor";
  v3[1] = @"CIAttributeType";
  v4[0] = [CIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0, @"CIAttributeDefault"];
  v4[1] = @"CIAttributeTypeColor";
  v16[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:2];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:6];
}

- (id)outputImage
{
  v44[3] = *MEMORY[0x1E69E9840];
  [(NSNumber *)self->inputRange doubleValue];
  v4 = v3;
  [(NSNumber *)self->inputRadius doubleValue];
  v6 = v5;
  if ([(NSNumber *)self->inputSize unsignedIntValue]> 0x31)
  {
    unsignedIntValue = 50;
  }

  else
  {
    unsignedIntValue = [(NSNumber *)self->inputSize unsignedIntValue];
  }

  if ([(NSNumber *)self->inputSpread unsignedIntValue]> 0x63)
  {
    unsignedIntValue2 = 100;
  }

  else
  {
    unsignedIntValue2 = [(NSNumber *)self->inputSpread unsignedIntValue];
  }

  if (!self->inputImage)
  {
    return 0;
  }

  v9 = fmin(fmax(v6, 0.0), 50.0);
  if (v9 <= 0.0 || unsignedIntValue == 0)
  {
    [(CIVector *)self->inputOffset Y];
    if (fabs(v11) < 0.5)
    {
      return 0;
    }
  }

  [(CIColor *)self->inputColor alpha];
  if (v12 <= 0.0)
  {
    return 0;
  }

  inputSize = self->inputSize;
  v14 = vcvtmd_u64_f64(v9 * 2.85299993);
  v15 = fmin(fmax(v4, 0.01), 1.0);
  if (inputSize)
  {
    v16 = unsignedIntValue2;
  }

  else
  {
    v16 = 0;
  }

  if (inputSize)
  {
    v17 = unsignedIntValue;
  }

  else
  {
    v17 = v14;
  }

  v18 = _CUIMappedBlurImageWithSize(self->inputImage, v17, v16);
  [(CIVector *)self->inputOffset X];
  if (v19 != 0.0 || ([(CIVector *)self->inputOffset Y], v20 != 0.0))
  {
    [(CIVector *)self->inputOffset X];
    v22 = v21;
    [(CIVector *)self->inputOffset Y];
    CGAffineTransformMakeTranslation(&v43, v22, v23);
    v18 = [(CIImage *)v18 imageByApplyingTransform:&v43];
  }

  _kernel = [(CUIOuterGlowOrShadowFilter *)self _kernel];
  [(CIImage *)self->inputImage extent];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  [(CIImage *)v18 extent];
  v47.origin.x = v33;
  v47.origin.y = v34;
  v47.size.width = v35;
  v47.size.height = v36;
  v45.origin.x = v26;
  v45.origin.y = v28;
  v45.size.width = v30;
  v45.size.height = v32;
  v46 = CGRectUnion(v45, v47);
  x = v46.origin.x;
  y = v46.origin.y;
  width = v46.size.width;
  height = v46.size.height;
  inputColor = self->inputColor;
  v44[0] = v18;
  v44[1] = inputColor;
  v44[2] = [MEMORY[0x1E696AD98] numberWithDouble:v15];
  return [_kernel applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v44, 3), x, y, width, height}];
}

@end