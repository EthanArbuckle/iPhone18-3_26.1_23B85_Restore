@interface CUIInnerGlowOrShadowFilter
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CUIInnerGlowOrShadowFilter

+ (id)customAttributes
{
  v12[4] = *MEMORY[0x1E69E9840];
  v11[0] = @"inputOffset";
  v9[0] = @"CIAttributeDefault";
  v9[1] = @"CIAttributeType";
  v10[0] = [CIVector vectorWithX:0.0 Y:0.0];
  v10[1] = @"CIAttributeTypeOffset";
  v12[0] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v11[1] = @"inputRange";
  v7[0] = @"CIAttributeMin";
  v7[1] = @"CIAttributeSliderMin";
  v8[0] = &unk_1F10851B8;
  v8[1] = &unk_1F10851B8;
  v7[2] = @"CIAttributeSliderMax";
  v7[3] = @"CIAttributeMax";
  v8[2] = &unk_1F10851E8;
  v8[3] = &unk_1F10851E8;
  v7[4] = @"CIAttributeDefault";
  v7[5] = @"CIAttributeType";
  v8[4] = &unk_1F10851E8;
  v8[5] = @"CIAttributeTypeScalar";
  v12[1] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:6];
  v11[2] = @"inputRadius";
  v5[0] = @"CIAttributeMin";
  v5[1] = @"CIAttributeSliderMin";
  v6[0] = &unk_1F10851B8;
  v6[1] = &unk_1F10851B8;
  v5[2] = @"CIAttributeSliderMax";
  v5[3] = @"CIAttributeMax";
  v6[2] = &unk_1F10851C8;
  v6[3] = &unk_1F10851F8;
  v5[4] = @"CIAttributeDefault";
  v5[5] = @"CIAttributeType";
  v6[4] = &unk_1F1085208;
  v6[5] = @"CIAttributeTypeScalar";
  v12[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:6];
  v11[3] = @"inputColor";
  v3[0] = @"CIAttributeDefault";
  v3[1] = @"CIAttributeType";
  v4[0] = [CIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
  v4[1] = @"CIAttributeTypeColor";
  v12[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:2];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:4];
}

- (id)outputImage
{
  v29[3] = *MEMORY[0x1E69E9840];
  [(NSNumber *)self->inputRange doubleValue];
  v4 = v3;
  [(NSNumber *)self->inputRadius doubleValue];
  if (!self->inputImage)
  {
    return 0;
  }

  v6 = fmin(fmax(v5, 0.0), 50.0);
  if (v6 <= 0.0)
  {
    [(CIVector *)self->inputOffset Y];
    if (fabs(v7) < 0.5)
    {
      return 0;
    }
  }

  [(CIColor *)self->inputColor alpha];
  if (v8 <= 0.0)
  {
    return 0;
  }

  v9 = fmin(fmax(v4, 0.01), 1.0);
  v10 = v6;
  v11 = _CUIMappedBlurImageWithSize(self->inputImage, vcvtms_u32_f32(v10 / 2.853), 0);
  [(CIVector *)self->inputOffset X];
  if (v12 != 0.0 || ([(CIVector *)self->inputOffset Y], v13 != 0.0))
  {
    [(CIVector *)self->inputOffset X];
    v15 = v14;
    [(CIVector *)self->inputOffset Y];
    CGAffineTransformMakeTranslation(&v28, v15, v16);
    v11 = [(CIImage *)v11 imageByApplyingTransform:&v28];
  }

  _kernel = [(CUIInnerGlowOrShadowFilter *)self _kernel];
  [(CIImage *)v11 extent];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  inputColor = self->inputColor;
  v29[0] = v11;
  v29[1] = inputColor;
  v29[2] = [MEMORY[0x1E696AD98] numberWithDouble:v9];
  return [_kernel applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v29, 3), v19, v21, v23, v25}];
}

@end