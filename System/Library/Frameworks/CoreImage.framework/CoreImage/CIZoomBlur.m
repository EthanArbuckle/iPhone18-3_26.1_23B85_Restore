@interface CIZoomBlur
+ (id)customAttributes;
- (BOOL)_isIdentity;
- (id)_blur:(id)a3 pass:(int)a4 weightsFactor:(float)a5;
- (id)outputImage;
- (id)valueForUndefinedKey:(id)a3;
- (void)setValue:(id)a3 forUndefinedKey:(id)a4;
@end

@implementation CIZoomBlur

+ (id)customAttributes
{
  v14[4] = *MEMORY[0x1E69E9840];
  v2 = dyld_program_sdk_at_least();
  v13[0] = @"CIAttributeFilterCategories";
  v12[0] = @"CICategoryBlur";
  v12[1] = @"CICategoryStillImage";
  v12[2] = @"CICategoryVideo";
  v12[3] = @"CICategoryBuiltIn";
  v14[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:4];
  v14[1] = @"8.3";
  v13[1] = @"CIAttributeFilterAvailable_iOS";
  v13[2] = @"CIAttributeFilterAvailable_Mac";
  v14[2] = @"10.4";
  v13[3] = @"inputAmount";
  if (v2)
  {
    v10[0] = @"CIAttributeSliderMin";
    v10[1] = @"CIAttributeSliderMax";
    v11[0] = &unk_1F1084398;
    v11[1] = &unk_1F10843A8;
    v10[2] = @"CIAttributeDefault";
    v10[3] = @"CIAttributeIdentity";
    v11[2] = &unk_1F1084388;
    v11[3] = &unk_1F1084368;
    v10[4] = @"CIAttributeType";
    v11[4] = @"CIAttributeTypeDistance";
    v3 = MEMORY[0x1E695DF20];
    v4 = v11;
    v5 = v10;
    v6 = 5;
  }

  else
  {
    v8[0] = @"CIAttributeMin";
    v8[1] = @"CIAttributeSliderMin";
    v9[0] = &unk_1F1084368;
    v9[1] = &unk_1F1084368;
    v8[2] = @"CIAttributeSliderMax";
    v8[3] = @"CIAttributeDefault";
    v9[2] = &unk_1F10843A8;
    v9[3] = &unk_1F1084388;
    v8[4] = @"CIAttributeIdentity";
    v8[5] = @"CIAttributeType";
    v9[4] = &unk_1F1084368;
    v9[5] = @"CIAttributeTypeDistance";
    v3 = MEMORY[0x1E695DF20];
    v4 = v9;
    v5 = v8;
    v6 = 6;
  }

  v14[3] = [v3 dictionaryWithObjects:v4 forKeys:v5 count:v6];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:4];
}

- (void)setValue:(id)a3 forUndefinedKey:(id)a4
{
  if ([a4 isEqualToString:@"inputRadius"])
  {

    [(CIZoomBlur *)self setInputAmount:a3];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CIZoomBlur;
    [(CIFilter *)&v7 setValue:a3 forUndefinedKey:a4];
  }
}

- (id)valueForUndefinedKey:(id)a3
{
  if ([a3 isEqualToString:@"inputRadius"])
  {

    return [(CIZoomBlur *)self inputAmount];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = CIZoomBlur;
    return [(CIFilter *)&v6 valueForUndefinedKey:a3];
  }
}

- (id)_blur:(id)a3 pass:(int)a4 weightsFactor:(float)a5
{
  v39[5] = *MEMORY[0x1E69E9840];
  v8 = pow(0.995, (1 << a4));
  [(CIVector *)self->inputCenter X];
  v10 = v9;
  [(CIVector *)self->inputCenter Y];
  v12 = v11;
  v13 = ((v8 * v8) * (v8 * v8));
  v14 = [CIVector vectorWithX:v8 Y:(v8 * v8) Z:((v8 * v8) * v8) W:v13];
  v15 = v10;
  v16 = v12;
  v17 = [CIVector vectorWithX:v15 Y:v12 Z:v13];
  v18 = [CIVector vectorWithX:a5 * 0.1 Y:a5 * 0.15 Z:a5 * 0.2 W:a5 * 0.25];
  v19 = [MEMORY[0x1E696AD98] numberWithDouble:(1.0 - a5) + a5 * 0.3];
  [a3 extent];
  x = v40.origin.x;
  y = v40.origin.y;
  width = v40.size.width;
  height = v40.size.height;
  if (CGRectIsInfinite(v40))
  {
    v24 = *MEMORY[0x1E695F040];
    v25 = *(MEMORY[0x1E695F040] + 8);
    v26 = *(MEMORY[0x1E695F040] + 16);
    v27 = *(MEMORY[0x1E695F040] + 24);
    goto LABEL_26;
  }

  v28 = y + height;
  v29 = (x - v15) / v13 + v15;
  v30 = (y - v16) / v13 + v16;
  v31 = (x + width - v15) / v13 + v15;
  if (v31 >= v29)
  {
    if (v31 <= v29)
    {
      v34 = (x - v15) / v13 + v15;
    }

    else
    {
      v34 = (x + width - v15) / v13 + v15;
    }

    v32 = (v28 - v16) / v13 + v16;
    v33 = (x - v15) / v13 + v15;
LABEL_10:
    if (v34 >= v29)
    {
      v29 = v34;
    }

    goto LABEL_12;
  }

  v32 = (v28 - v16) / v13 + v16;
  v33 = (x + width - v15) / v13 + v15;
  v34 = (x - v15) / v13 + v15;
  if (v31 <= v29)
  {
    goto LABEL_10;
  }

  v33 = (x - v15) / v13 + v15;
LABEL_12:
  if (v32 >= v30)
  {
    if (v32 <= v30)
    {
      v35 = (y - v16) / v13 + v16;
    }

    else
    {
      v35 = v32;
    }
  }

  else
  {
    v35 = (y - v16) / v13 + v16;
    v30 = v32;
  }

  if (v33 <= v31)
  {
    if (v29 < v31)
    {
      v29 = (x + width - v15) / v13 + v15;
    }
  }

  else
  {
    v33 = (x + width - v15) / v13 + v15;
  }

  if (v30 <= v32)
  {
    if (v35 < v32)
    {
      v35 = v32;
    }
  }

  else
  {
    v30 = v32;
  }

  v44.origin.x = v33;
  v44.origin.y = v30;
  v44.size.width = (v29 - v33);
  v44.size.height = (v35 - v30);
  v41.origin.x = x;
  v41.origin.y = y;
  v41.size.width = width;
  v41.size.height = height;
  v42 = CGRectUnion(v41, v44);
  v43 = CGRectIntegral(v42);
  v24 = v43.origin.x;
  v25 = v43.origin.y;
  v26 = v43.size.width;
  v27 = v43.size.height;
LABEL_26:
  v36 = [(CIZoomBlur *)self _kernel];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __39__CIZoomBlur__blur_pass_weightsFactor___block_invoke;
  v38[3] = &unk_1E75C24D8;
  v38[4] = v17;
  v39[0] = a3;
  v39[1] = self->inputCenter;
  v39[2] = v14;
  v39[3] = v18;
  v39[4] = v19;
  return [v36 applyWithExtent:v38 roiCallback:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v39, 5), v24, v25, v26, v27}];
}

double __39__CIZoomBlur__blur_pass_weightsFactor___block_invoke(uint64_t a1, double a2)
{
  v3 = *(a1 + 32);
  [v3 X];
  v5 = v4;
  [v3 Y];
  [v3 Z];
  *&v6 = v6;
  v7 = a2;
  v8 = v5 + (v7 - v5) * *&v6;
  if (v8 <= v7)
  {
    return v8;
  }

  else
  {
    return a2;
  }
}

- (BOOL)_isIdentity
{
  v3 = dyld_program_sdk_at_least();
  [(NSNumber *)self->inputAmount floatValue];
  v5 = fabsf(v4);
  if (v3)
  {
    v4 = v5;
  }

  return v4 < 0.001;
}

- (id)outputImage
{
  v53[3] = *MEMORY[0x1E69E9840];
  if (!self->inputImage)
  {
    return 0;
  }

  if ([(CIZoomBlur *)self _isIdentity])
  {
    v3 = self->inputImage;

    return v3;
  }

  else
  {
    v5 = dyld_program_sdk_at_least();
    [(NSNumber *)self->inputAmount floatValue];
    if (v5)
    {
      v7 = 1000.0;
      if (*&v6 <= 1000.0)
      {
        v7 = *&v6;
      }

      if (*&v6 >= -1000.0)
      {
        v8 = v7;
      }

      else
      {
        v8 = -1000.0;
      }

      inputCenter = self->inputCenter;
      [(CIVector *)inputCenter X];
      *&v10 = v10;
      v45 = *&v10;
      [(CIVector *)inputCenter Y];
      *&v12 = v11;
      v42 = v12;
      v44 = __PAIR64__(v12, LODWORD(v45));
      v13 = pow(0.98, v8);
      [(CIImage *)self->inputImage extent];
      width = v55.size.width;
      x = v55.origin.x;
      y = v55.origin.y;
      height = v55.size.height;
      if (CGRectIsInfinite(v55))
      {
        v14 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
        *&v52.var0 = v14;
        *&v52.var2 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
        v15 = 1.79769313e308;
        v16 = 1.79769313e308;
      }

      else
      {
        v56.size.width = width;
        v56.origin.x = x;
        v56.origin.y = y;
        v56.size.height = height;
        if (CGRectIsNull(v56))
        {
          v14 = vdupq_n_s64(0x7FF0000000000000uLL);
          *&v52.var0 = v14;
          v52.var2 = 0.0;
          v52.var3 = 0.0;
          v15 = 0.0;
          v16 = 0.0;
        }

        else
        {
          v16 = width;
          v14.f64[0] = x;
          v15 = height;
          v52.var0 = x;
          v52.var1 = y;
          v52.var2 = width;
          v52.var3 = height;
          v14.f64[1] = y;
        }
      }

      v25 = vdupq_n_s64(0x7FF0000000000000uLL);
      v26 = vmovn_s64(vceqq_f64(vabsq_f64(v14), v25));
      if ((v26.i32[0] | v26.i32[1]))
      {
        *&v48.var0 = v25;
        v48.var2 = 0.0;
        v48.var3 = 0.0;
      }

      else
      {
        v27.f64[0] = v16;
        v27.f64[1] = v15;
        v28 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
        v29 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
        if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v14, v28), vceqq_f64(v27, v29))))))
        {
          *&v48.var0 = vaddq_f64(v14, vcvtq_f64_f32(vneg_f32(v44)));
          v48.var2 = v16;
          v48.var3 = v15;
        }

        else
        {
          *&v48.var0 = v28;
          *&v48.var2 = v29;
        }
      }

      Rectangle::scale(&v48, 1.0 / v13, &v49);
      v30 = v45;
      v32.i64[1] = *(&v42 + 1);
      v31 = *&v42;
      v32.i64[0] = *&v49.f64[0];
      if (fabs(v49.f64[0]) == INFINITY || fabs(v49.f64[1]) == INFINITY)
      {
        v32 = vdupq_n_s64(0x7FF0000000000000uLL);
        *&v51.var0 = v32;
        v51.var2 = 0.0;
        v51.var3 = 0.0;
      }

      else
      {
        v36 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
        v37 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
        if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v49, v37), vceqq_f64(v50, v36))))))
        {
          *v32.i64 = v49.f64[0] + v30;
          v51.var0 = v49.f64[0] + v30;
          v51.var1 = v49.f64[1] + v31;
          *&v51.var2 = v50;
        }

        else
        {
          *&v51.var0 = v37;
          *&v51.var2 = v36;
        }
      }

      Rectangle::Union(&v51, &v52, &v49, v32);
      *&v51.var0 = v49;
      *&v51.var2 = v50;
      v33 = [(CIZoomBlur *)self _kernelNew];
      if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(*&v51.var0, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL)), vceqq_f64(*&v51.var2, vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL)))))))
      {
        var0 = v51.var0;
        var1 = v51.var1;
        var2 = v51.var2;
        var3 = v51.var3;
      }

      else
      {
        var1 = *(MEMORY[0x1E695F040] + 8);
        var0 = *MEMORY[0x1E695F040];
        var3 = *(MEMORY[0x1E695F040] + 24);
        var2 = *(MEMORY[0x1E695F040] + 16);
      }

      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __25__CIZoomBlur_outputImage__block_invoke;
      v47[3] = &__block_descriptor_48_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
      v47[4] = v44;
      *&v47[5] = v13;
      v53[0] = self->inputImage;
      v53[1] = [CIVector vectorWithX:v30 Y:v31, *&y];
      v53[2] = [MEMORY[0x1E696AD98] numberWithDouble:v13];
      return [v33 applyWithExtent:v47 roiCallback:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v53, 3), var0, var1, var2, var3}];
    }

    else
    {
      v17 = *&v6 * *&v6;
      v18 = 1.0833;
      v19 = 0;
      if (v17 <= 1.0833)
      {
        inputImage = self->inputImage;
        v24 = v17 / 1.0833;
      }

      else
      {
        v20 = 1.0;
        do
        {
          v21 = v18;
          v19 = (v19 + 1);
          v20 = v20 * 4.0;
          v18 = v18 + v20;
        }

        while (v17 > v18);
        v22 = 0;
        inputImage = self->inputImage;
        v24 = (v17 - v21) / (v18 - v21);
        do
        {
          LODWORD(v6) = 1.0;
          inputImage = [(CIZoomBlur *)self _blur:inputImage pass:v22 weightsFactor:v6];
          v22 = (v22 + 1);
        }

        while (v19 != v22);
      }

      *&v6 = v24;

      return [(CIZoomBlur *)self _blur:inputImage pass:v19 weightsFactor:v6];
    }
  }
}

float64_t __25__CIZoomBlur_outputImage__block_invoke(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  if (CGRectIsInfinite(*&a2))
  {
    v6 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
    *&v26.var0 = v6;
    *&v26.var2 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    v7 = 1.79769313e308;
    v8 = 1.79769313e308;
  }

  else
  {
    v27.size.height = a5;
    v27.origin.x = a2;
    v27.origin.y = a3;
    v27.size.width = a4;
    if (CGRectIsNull(v27))
    {
      v6 = vdupq_n_s64(0x7FF0000000000000uLL);
      *&v26.var0 = v6;
      v26.var2 = 0.0;
      v26.var3 = 0.0;
      v7 = 0.0;
      v8 = 0.0;
    }

    else
    {
      v7 = a5;
      v6.f64[0] = a2;
      v8 = a4;
      v26.var0 = a2;
      v26.var1 = a3;
      v26.var2 = a4;
      v26.var3 = a5;
      v6.f64[1] = a3;
    }
  }

  v9 = vdupq_n_s64(0x7FF0000000000000uLL);
  v10 = vmovn_s64(vceqq_f64(vabsq_f64(v6), v9));
  if ((v10.i32[0] | v10.i32[1]))
  {
    *&v22.var0 = v9;
    v22.var2 = 0.0;
    v22.var3 = 0.0;
  }

  else
  {
    v11.f64[0] = v8;
    v11.f64[1] = v7;
    v12 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
    v13 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v6, v12), vceqq_f64(v11, v13))))))
    {
      *&v22.var0 = vaddq_f64(v6, vcvtq_f64_f32(vneg_f32(*(a1 + 32))));
      v22.var2 = v8;
      v22.var3 = v7;
    }

    else
    {
      *&v22.var0 = v12;
      *&v22.var2 = v13;
    }
  }

  v14 = Rectangle::scale(&v22, *(a1 + 40), &v23);
  v14.f64[0] = v23.f64[0];
  if (fabs(v23.f64[0]) == INFINITY || fabs(v23.f64[1]) == INFINITY)
  {
    v14 = vdupq_n_s64(0x7FF0000000000000uLL);
    *&v25.var0 = v14;
    v25.var2 = 0.0;
    v25.var3 = 0.0;
  }

  else
  {
    v16 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    v17 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
    if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v23, v17), vceqq_f64(v24, v16))))))
    {
      v14.f64[1] = v23.f64[1];
      v14 = vaddq_f64(v14, vcvtq_f64_f32(*(a1 + 32)));
      *&v25.var0 = v14;
      *&v25.var2 = v24;
    }

    else
    {
      *&v25.var0 = v17;
      *&v25.var2 = v16;
    }
  }

  Rectangle::Union(&v25, &v26, &v23, v14);
  result = v23.f64[0];
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v23, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL)), vceqq_f64(v24, vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL)))))) & 1) == 0)
  {
    return *MEMORY[0x1E695F040];
  }

  return result;
}

@end