@interface CUIShapeEffectBlur1
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CUIShapeEffectBlur1

+ (id)customAttributes
{
  v22[8] = *MEMORY[0x1E69E9840];
  v21[0] = @"inputOffset";
  v19[0] = @"CIAttributeDefault";
  v19[1] = @"CIAttributeType";
  v20[0] = [CIVector vectorWithX:0.0 Y:0.0];
  v20[1] = @"CIAttributeTypeOffset";
  v22[0] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v21[1] = @"inputRadius";
  v17[0] = @"CIAttributeMin";
  v17[1] = @"CIAttributeSliderMin";
  v18[0] = &unk_1F10851B8;
  v18[1] = &unk_1F10851B8;
  v17[2] = @"CIAttributeSliderMax";
  v17[3] = @"CIAttributeMax";
  v18[2] = &unk_1F10851C8;
  v18[3] = &unk_1F10851F8;
  v17[4] = @"CIAttributeDefault";
  v17[5] = @"CIAttributeType";
  v18[4] = &unk_1F1085208;
  v18[5] = @"CIAttributeTypeScalar";
  v22[1] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:6];
  v21[2] = @"inputGlowColorInner";
  v15[0] = @"CIAttributeDefault";
  v15[1] = @"CIAttributeType";
  v16[0] = [CIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
  v16[1] = @"CIAttributeTypeColor";
  v22[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v21[3] = @"inputGlowOuterOuter";
  v13[0] = @"CIAttributeDefault";
  v13[1] = @"CIAttributeType";
  v14[0] = [CIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
  v14[1] = @"CIAttributeTypeColor";
  v22[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v21[4] = @"inputShadowColorInner";
  v11[0] = @"CIAttributeDefault";
  v11[1] = @"CIAttributeType";
  v12[0] = [CIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
  v12[1] = @"CIAttributeTypeColor";
  v22[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v21[5] = @"inputShadowOuterOuter";
  v9[0] = @"CIAttributeDefault";
  v9[1] = @"CIAttributeType";
  v10[0] = [CIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
  v10[1] = @"CIAttributeTypeColor";
  v22[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v21[6] = @"inputShadowBlurInner";
  v2 = MEMORY[0x1E695E118];
  v7[0] = @"CIAttributeDefault";
  v7[1] = @"CIAttributeMin";
  v3 = MEMORY[0x1E695E110];
  v8[0] = MEMORY[0x1E695E118];
  v8[1] = MEMORY[0x1E695E110];
  v7[2] = @"CIAttributeMax";
  v7[3] = @"CIAttributeType";
  v8[2] = MEMORY[0x1E695E118];
  v8[3] = @"CIAttributeTypeBoolean";
  v22[6] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:4];
  v21[7] = @"inputShadowBlurOuter";
  v5[0] = @"CIAttributeDefault";
  v5[1] = @"CIAttributeMin";
  v6[0] = v2;
  v6[1] = v3;
  v5[2] = @"CIAttributeMax";
  v5[3] = @"CIAttributeType";
  v6[2] = v2;
  v6[3] = @"CIAttributeTypeBoolean";
  v22[7] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:4];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:8];
}

- (id)outputImage
{
  v33[10] = *MEMORY[0x1E69E9840];
  [(NSNumber *)self->inputRadius doubleValue];
  result = self->inputImage;
  if (result)
  {
    if (self->inputFill)
    {
      v5 = fmin(fmax(v3, 0.0), 50.0);
      v6 = _CUIMappedBlurImageWithSize(result, vcvtms_u32_f32(v5 / 2.853), 0);
      inputImage = self->inputImage;
      [(CIVector *)self->inputOffset X];
      if (v8 == 0.0 && ([(CIVector *)self->inputOffset Y], v9 == 0.0))
      {
        v13 = v6;
      }

      else
      {
        memset(&v32, 0, sizeof(v32));
        [(CIVector *)self->inputOffset X];
        v11 = -v10;
        [(CIVector *)self->inputOffset Y];
        CGAffineTransformMakeTranslation(&v32, v11, -v12);
        v31 = v32;
        v13 = [(CIImage *)v6 imageByApplyingTransform:&v31];
        v14 = self->inputImage;
        v31 = v32;
        inputImage = [(CIImage *)v14 imageByApplyingTransform:&v31];
      }

      v15 = [CIVector vectorWithX:[(NSNumber *)self->inputShadowBlurInner intValue] Y:[(NSNumber *)self->inputShadowBlurOuter intValue]];
      _kernel = [(CUIShapeEffectBlur1 *)self _kernel];
      [(CIImage *)v6 extent];
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;
      [(CIImage *)v13 extent];
      v36.origin.x = v25;
      v36.origin.y = v26;
      v36.size.width = v27;
      v36.size.height = v28;
      v34.origin.x = v18;
      v34.origin.y = v20;
      v34.size.width = v22;
      v34.size.height = v24;
      v35 = CGRectUnion(v34, v36);
      v33[0] = self->inputImage;
      v33[1] = inputImage;
      v33[2] = v6;
      v33[3] = v13;
      inputGlowColorInner = self->inputGlowColorInner;
      v33[4] = self->inputFill;
      v33[5] = inputGlowColorInner;
      inputShadowColorInner = self->inputShadowColorInner;
      v33[6] = self->inputGlowColorOuter;
      v33[7] = inputShadowColorInner;
      v33[8] = self->inputShadowColorOuter;
      v33[9] = v15;
      return [_kernel applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v33, 10), v35.origin.x, v35.origin.y, v35.size.width, v35.size.height}];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

@end