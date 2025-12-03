@interface CIRoundedRectangleStrokeGenerator
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIRoundedRectangleStrokeGenerator

+ (id)customAttributes
{
  v15[8] = *MEMORY[0x1E69E9840];
  v14[0] = @"CIAttributeFilterCategories";
  v13[0] = @"CICategoryGenerator";
  v13[1] = @"CICategoryStillImage";
  v13[2] = @"CICategoryHighDynamicRange";
  v13[3] = @"CICategoryBuiltIn";
  v15[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:4];
  v15[1] = @"17";
  v14[1] = @"CIAttributeFilterAvailable_iOS";
  v14[2] = @"CIAttributeFilterAvailable_Mac";
  v15[2] = @"14.0";
  v14[3] = @"inputExtent";
  v11[0] = @"CIAttributeDefault";
  v11[1] = @"CIAttributeType";
  v12[0] = [CIVector vectorWithX:0.0 Y:0.0 Z:100.0 W:100.0];
  v12[1] = @"CIAttributeTypeRectangle";
  v15[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v14[4] = @"inputRadius";
  v9[0] = @"CIAttributeMin";
  v9[1] = @"CIAttributeSliderMin";
  v10[0] = &unk_1F1084828;
  v10[1] = &unk_1F1084828;
  v9[2] = @"CIAttributeSliderMax";
  v9[3] = @"CIAttributeDefault";
  v10[2] = &unk_1F1084838;
  v10[3] = &unk_1F10821F0;
  v9[4] = @"CIAttributeType";
  v10[4] = @"CIAttributeTypeDistance";
  v15[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:5];
  v14[5] = @"inputSmoothness";
  v7[0] = @"CIAttributeMin";
  v7[1] = @"CIAttributeSliderMin";
  v8[0] = &unk_1F1084828;
  v8[1] = &unk_1F1084828;
  v7[2] = @"CIAttributeSliderMax";
  v7[3] = @"CIAttributeMax";
  v8[2] = &unk_1F1084848;
  v8[3] = &unk_1F1084848;
  v7[4] = @"CIAttributeDefault";
  v7[5] = @"CIAttributeType";
  v8[4] = &unk_1F1082208;
  v8[5] = @"CIAttributeTypeDistance";
  v15[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:6];
  v14[6] = @"inputColor";
  v5[0] = @"CIAttributeDefault";
  v5[1] = @"CIAttributeType";
  v6[0] = [CIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  v6[1] = @"CIAttributeTypeColor";
  v15[6] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v14[7] = @"inputWidth";
  v3[0] = @"CIAttributeMin";
  v3[1] = @"CIAttributeSliderMin";
  v4[0] = &unk_1F1084828;
  v4[1] = &unk_1F1084828;
  v3[2] = @"CIAttributeSliderMax";
  v3[3] = @"CIAttributeDefault";
  v4[2] = &unk_1F1084838;
  v4[3] = &unk_1F10821F0;
  v3[4] = @"CIAttributeType";
  v4[4] = @"CIAttributeTypeDistance";
  v15[7] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:5];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:8];
}

- (id)outputImage
{
  v47[3] = *MEMORY[0x1E69E9840];
  [(CIVector *)self->inputExtent CGRectValue];
  x = v49.origin.x;
  y = v49.origin.y;
  width = v49.size.width;
  height = v49.size.height;
  if (CGRectIsEmpty(v49) || ([(CIColor *)self->inputColor alpha], v5 == 0.0))
  {
LABEL_3:

    return +[CIImage emptyImage];
  }

  v50.origin.x = x;
  v50.origin.y = y;
  v50.size.width = width;
  v50.size.height = height;
  if (CGRectIsInfinite(v50))
  {
    inputColor = self->inputColor;

    return [CIImage imageWithColor:inputColor];
  }

  else
  {
    [(NSNumber *)self->inputWidth floatValue];
    v9 = fmaxf(v8, 0.0);
    if (v9 < 0.01)
    {
      goto LABEL_3;
    }

    v42 = v9;
    [(NSNumber *)self->inputRadius floatValue];
    v11 = width * 0.5;
    v12 = height * 0.5;
    v13 = fminf(fminf(fmaxf(v10, 0.0), v11), v12);
    [(NSNumber *)self->inputSmoothness floatValue];
    if (v13 >= 0.01 || (width * 0.5 > v42 ? (v15 = height * 0.5 > v42) : (v15 = 0), v15))
    {
      v17 = v14;
      v18 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_roundedstroke];
      v19 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_rectstroke];
      height = [CIVector vectorWithX:x Y:y Z:x + width W:y + height];
      if (v13 <= 0.5)
      {
        v47[0] = height;
        *&v21 = v9;
        v39 = [MEMORY[0x1E696AD98] numberWithFloat:v21];
        v40 = self->inputColor;
        v47[1] = v39;
        v47[2] = v40;
        v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:3];
        v38 = v19;
      }

      else
      {
        v23 = fminf(fmaxf(v17, 0.0), 1.0) * 0.707106781;
        *&v23 = v23;
        v24 = vdup_lane_s32(*&v23, 0);
        *&v21 = fmaxf(v13 - v9, 0.01);
        v25.f64[0] = width;
        v25.f64[1] = height;
        *v22.i32 = v13 + v13;
        v26 = vdiv_f32(vcvt_f32_f64(v25), vdup_lane_s32(v22, 0));
        __asm { FMOV            V4.2S, #-1.0 }

        v41 = vminnm_f32(v24, vadd_f32(v26, _D4));
        __asm { FMOV            V3.2D, #-2.0 }

        *&v21 = *&v21 + *&v21;
        v33 = COERCE_DOUBLE(vminnm_f32(v24, vadd_f32(vdiv_f32(vcvt_f32_f64(vmlaq_n_f64(v25, _Q3, v42)), vdup_lane_s32(*&v21, 0)), _D4)));
        v43 = v33;
        v46[0] = height;
        *&v33 = v13;
        v46[1] = [MEMORY[0x1E696AD98] numberWithFloat:v33];
        v46[2] = [CIVector vectorWithX:v41.f32[0] Y:v41.f32[1] Z:*&v43 W:*(&v43 + 1)];
        *&v34 = v9;
        v35 = [MEMORY[0x1E696AD98] numberWithFloat:v34];
        v36 = self->inputColor;
        v46[3] = v35;
        v46[4] = v36;
        v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:5];
        v38 = v18;
      }

      return [(CIColorKernel *)v38 applyWithExtent:v37 arguments:x, y, width, height];
    }

    else
    {
      v16 = [CIImage imageWithColor:self->inputColor];

      return [(CIImage *)v16 imageByCroppingToRect:x, y, width, height];
    }
  }
}

@end