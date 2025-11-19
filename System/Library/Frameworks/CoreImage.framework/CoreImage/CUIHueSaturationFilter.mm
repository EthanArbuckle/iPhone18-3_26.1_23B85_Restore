@interface CUIHueSaturationFilter
+ (id)customAttributes;
- (CGColor)_newColorByProcessingColor:(CGColor *)a3;
- (HSV)tintColorToHSV;
- (float)angleWidthDegrees;
- (float)centerAngleDegrees;
- (id)outputImage;
@end

@implementation CUIHueSaturationFilter

- (float)centerAngleDegrees
{
  [(NSNumber *)self->inputCenterAngle floatValue];
  result = v2 * 57.2957795;
  if (result < 0.0)
  {
    result = result + 360.0;
  }

  if (result > 360.0)
  {
    return result + -360.0;
  }

  return result;
}

- (float)angleWidthDegrees
{
  [(NSNumber *)self->inputAngleWidth floatValue];
  result = v2 * 57.2957795;
  if (result < 0.0)
  {
    result = 0.0;
  }

  if (result > 360.0)
  {
    return 360.0;
  }

  return result;
}

- (HSV)tintColorToHSV
{
  [(CIColor *)self->inputTintColor red];
  v4 = v3;
  [(CIColor *)self->inputTintColor green];
  v6 = v5;
  [(CIColor *)self->inputTintColor blue];
  v8 = v7;
  [(CIColor *)self->inputTintColor alpha];
  v9 = v4;
  v10 = v6;
  v11 = v8;
  v12 = fminf(v9, fminf(v10, v11));
  v13 = fmaxf(v9, fmaxf(v10, v11));
  v14 = v13 - v12;
  v15 = v14 / v13;
  v16 = 0.0;
  if (v13 == 0.0)
  {
    v15 = 0.0;
  }

  if (v15 != 0.0)
  {
    v17 = v14;
    if (v4 == v13)
    {
      v18 = (v6 - v8) / v17;
    }

    else
    {
      v19 = (v4 - v6) / v17 + 4.0;
      v18 = (v8 - v4) / v17 + 2.0;
      if (v6 != v13)
      {
        v18 = v19;
      }
    }

    v20 = v18;
    v16 = v20 / 6.0;
    if (v16 < 0.0)
    {
      v16 = v16 + 1.0;
    }
  }

  v21 = v16 * 360.0;
  if (v21 < 0.0)
  {
    v21 = v21 + 360.0;
  }

  if (v21 > 360.0)
  {
    v21 = v21 + -360.0;
  }

  v22 = 1.0 - (v15 + v15);
  v23 = 1.0 - (v13 + v13);
  result.var2 = v23;
  result.var1 = v22;
  result.var0 = v21;
  return result;
}

- (CGColor)_newColorByProcessingColor:(CGColor *)a3
{
  v49 = *MEMORY[0x1E69E9840];
  [(CUIHueSaturationFilter *)self centerAngleDegrees];
  v6 = v5;
  [(CUIHueSaturationFilter *)self angleWidthDegrees];
  v8 = v7;
  [(CUIHueSaturationFilter *)self tintColorToHSV];
  v10 = v9;
  v45 = v12;
  v46 = v11;
  ColorSpace = CGColorGetColorSpace(a3);
  v14 = CGColorGetComponents(a3);
  NumberOfComponents = CGColorGetNumberOfComponents(a3);
  if (NumberOfComponents > 1)
  {
    if (NumberOfComponents == 2)
    {
      _Q1 = *v14;
      v21 = vdupq_lane_s64(*v14, 0);
      goto LABEL_11;
    }

    if (NumberOfComponents == 3)
    {
      v21 = *v14;
      __asm { FMOV            V1.2D, #1.0 }

      *&_Q1.f64[0] = v14[2];
      goto LABEL_11;
    }

LABEL_8:
    v21 = *v14;
    _Q1 = *(v14 + 1);
    goto LABEL_11;
  }

  if (!NumberOfComponents)
  {
    _Q1 = xmmword_19CF26650;
    v21 = 0uLL;
    goto LABEL_11;
  }

  if (NumberOfComponents != 1)
  {
    goto LABEL_8;
  }

  __asm { FMOV            V1.2D, #1.0 }

  *&_Q1.f64[0] = *v14;
  v21 = vdupq_lane_s64(*v14, 0);
LABEL_11:
  v22 = vcvt_hight_f32_f64(vcvt_f32_f64(v21), _Q1);
  if (v8 > 0.0)
  {
    *_Q1.f64 = fminf(v22.f32[0], fminf(v22.f32[1], v22.f32[2]));
    v23 = fmaxf(v22.f32[0], fmaxf(v22.f32[1], v22.f32[2]));
    v24 = v23 - *_Q1.f64;
    v25 = (v23 - *_Q1.f64) / v23;
    v26 = 0.0;
    if (v23 == 0.0)
    {
      v25 = 0.0;
    }

    if (v25 != 0.0)
    {
      v27 = ((v22.f32[0] - v22.f32[1]) / v24) + 4.0;
      if (v23 == v22.f32[1])
      {
        v27 = ((v22.f32[2] - v22.f32[0]) / v24) + 2.0;
      }

      v28 = (v22.f32[1] - v22.f32[2]) / v24;
      if (v23 != v22.f32[0])
      {
        v28 = v27;
      }

      v26 = v28 / 6.0;
      if ((v28 / 6.0) < 0.0)
      {
        v26 = v26 + 1.0;
      }
    }

    v29 = ((v26 * 360.0) - v6) / 6.0;
    v30 = v29 + 360.0;
    if (v29 >= 0.0)
    {
      v30 = ((v26 * 360.0) - v6) / 6.0;
    }

    if (v8 * 0.5 > v30)
    {
      if (v25 == 0.0)
      {
        v31.i64[0] = 0;
        v31.i32[2] = 0;
        v31.i32[3] = v22.i32[3];
LABEL_44:
        v41 = vsub_f32(*v31.i8, vdup_lane_s32(*&_Q1.f64[0], 0));
        v42 = vmls_lane_f32(*v31.i8, v41, v45, 0);
        v43 = *&v31.i32[2] - ((*&v31.i32[2] - *_Q1.f64) * v45.f32[0]);
        *v41.i32 = (v43 + vaddv_f32(v42)) / 3.0;
        *v22.f32 = vmls_lane_f32(v42, vsub_f32(v42, vdup_lane_s32(v41, 0)), v46, 0);
        v22.i32[3] = vextq_s8(v31, v31, 8uLL).i32[1];
        v22.f32[2] = v43 - ((v43 - *v41.i32) * v46.f32[0]);
        goto LABEL_45;
      }

      v32 = v23;
      v33.f64[0] = v25;
      v34 = v10 + v30;
      if (v34 < 0.0)
      {
        v34 = v34 + 360.0;
      }

      if (v34 > 360.0)
      {
        v34 = v34 + -360.0;
      }

      v35 = v34 / 60.0;
      v36 = v35;
      v37 = v35 - floorf(v35);
      v33.f64[1] = (v25 * v37);
      __asm { FMOV            V3.2D, #1.0 }

      v39 = vmulq_n_f64(vsubq_f64(_Q3, v33), v32);
      *&v39.f64[0] = vcvt_f32_f64(v39);
      v40 = (1.0 - v33.f64[0] * (1.0 - v37)) * v32;
      if (v36 > 1)
      {
        switch(v36)
        {
          case 2:
            HIDWORD(v39.f64[1]) = vextq_s8(*&v22, *&v22, 8uLL).i32[1];
            *(v39.f64 + 1) = v23;
            *&v39.f64[1] = v40;
            break;
          case 3:
            HIDWORD(v39.f64[1]) = vextq_s8(*&v22, *&v22, 8uLL).i32[1];
            *&v39.f64[1] = v23;
            break;
          case 4:
            v22.i64[0] = __PAIR64__(LODWORD(v39.f64[0]), LODWORD(v40));
            v22.f32[2] = v23;
LABEL_43:
            v31 = v22;
            goto LABEL_44;
          default:
            goto LABEL_42;
        }

        v31 = v39;
        goto LABEL_44;
      }

      if (!v36)
      {
        v22.i64[0] = __PAIR64__(LODWORD(v40), LODWORD(v23));
        v22.i32[2] = LODWORD(v39.f64[0]);
        goto LABEL_43;
      }

      if (v36 == 1)
      {
        v31 = vtrn2q_s32(v39, v22);
        *&v31.i32[1] = v23;
        v31.i32[2] = LODWORD(v39.f64[0]);
        goto LABEL_44;
      }

LABEL_42:
      v22.i64[0] = __PAIR64__(LODWORD(v39.f64[0]), LODWORD(v23));
      v22.i32[2] = HIDWORD(v39.f64[0]);
      goto LABEL_43;
    }
  }

LABEL_45:
  *components = vcvtq_f64_f32(*v22.f32);
  v48 = vcvt_hight_f64_f32(v22);
  return CGColorCreate(ColorSpace, components);
}

+ (id)customAttributes
{
  v10[3] = *MEMORY[0x1E69E9840];
  v9[0] = @"inputCenterAngle";
  v7[0] = @"CIAttributeMin";
  v7[1] = @"CIAttributeSliderMin";
  v8[0] = &unk_1F10851B8;
  v8[1] = &unk_1F10851B8;
  v7[2] = @"CIAttributeSliderMax";
  v7[3] = @"CIAttributeMax";
  v8[2] = &unk_1F1085228;
  v8[3] = &unk_1F1085228;
  v7[4] = @"CIAttributeDefault";
  v7[5] = @"CIAttributeType";
  v8[4] = &unk_1F1085258;
  v8[5] = @"CIAttributeTypeAngle";
  v10[0] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:6];
  v9[1] = @"inputAngleWidth";
  v5[0] = @"CIAttributeMin";
  v5[1] = @"CIAttributeSliderMin";
  v6[0] = &unk_1F10851B8;
  v6[1] = &unk_1F10851B8;
  v5[2] = @"CIAttributeSliderMax";
  v5[3] = @"CIAttributeMax";
  v6[2] = &unk_1F1085228;
  v6[3] = &unk_1F1085268;
  v5[4] = @"CIAttributeDefault";
  v5[5] = @"CIAttributeType";
  v6[4] = &unk_1F1085238;
  v6[5] = @"CIAttributeTypeAngle";
  v10[1] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:6];
  v9[2] = @"inputTintColor";
  v3[1] = @"CIAttributeType";
  v4[0] = +[CIColor redColor];
  v4[1] = @"CIAttributeTypeColor";
  v10[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:2];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];
}

- (id)outputImage
{
  v28[6] = *MEMORY[0x1E69E9840];
  [(CUIHueSaturationFilter *)self centerAngleDegrees];
  v4 = v3;
  [(CUIHueSaturationFilter *)self angleWidthDegrees];
  v6 = v5;
  [(CIImage *)self->inputImage extent];
  if (CGRectIsEmpty(v29))
  {
    return self->inputImage;
  }

  if (v6 == 0.0)
  {
    return self->inputImage;
  }

  [(CUIHueSaturationFilter *)self tintColorToHSV];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_cui_hueSaturation];
  if (!v13)
  {
    return self->inputImage;
  }

  v14 = v13;
  [(CIImage *)self->inputImage extent];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v27 = v21;
  v28[0] = self->inputImage;
  LODWORD(v15) = v4;
  v28[1] = [MEMORY[0x1E696AD98] numberWithFloat:v15];
  *&v22 = v6;
  v28[2] = [MEMORY[0x1E696AD98] numberWithFloat:v22];
  LODWORD(v23) = v8;
  v28[3] = [MEMORY[0x1E696AD98] numberWithFloat:v23];
  LODWORD(v24) = v10;
  v28[4] = [MEMORY[0x1E696AD98] numberWithFloat:v24];
  LODWORD(v25) = v12;
  v28[5] = [MEMORY[0x1E696AD98] numberWithFloat:v25];
  return -[CIColorKernel applyWithExtent:arguments:](v14, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:6], v16, v18, v20, v27);
}

@end