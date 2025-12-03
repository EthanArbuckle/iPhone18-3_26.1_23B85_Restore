@interface CIMaskedVariableBlur
+ (id)customAttributes;
- (id)downTwo:(id)two;
- (id)outputImage;
- (id)upCubic:(id)cubic scale:(float)scale;
@end

@implementation CIMaskedVariableBlur

+ (id)customAttributes
{
  v7[4] = *MEMORY[0x1E69E9840];
  v6[0] = @"CIAttributeFilterCategories";
  v5[0] = @"CICategoryBlur";
  v5[1] = @"CICategoryStillImage";
  v5[2] = @"CICategoryVideo";
  v5[3] = @"CICategoryBuiltIn";
  v7[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:4];
  v7[1] = @"8";
  v6[1] = @"CIAttributeFilterAvailable_iOS";
  v6[2] = @"CIAttributeFilterAvailable_Mac";
  v7[2] = @"10.10";
  v6[3] = @"inputRadius";
  v3[0] = @"CIAttributeMin";
  v3[1] = @"CIAttributeSliderMin";
  v3[2] = @"CIAttributeSliderMax";
  v3[3] = @"CIAttributeDefault";
  v4[2] = &unk_1F1084178;
  v4[3] = &unk_1F1084188;
  v3[4] = @"CIAttributeIdentity";
  v3[5] = @"CIAttributeType";
  v4[0] = &unk_1F1084168;
  v4[1] = &unk_1F1084168;
  v4[4] = &unk_1F1084168;
  v4[5] = @"CIAttributeTypeScalar";
  v7[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:6];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:4];
}

- (id)downTwo:(id)two
{
  v24[1] = *MEMORY[0x1E69E9840];
  [two extent];
  x = v25.origin.x;
  y = v25.origin.y;
  width = v25.size.width;
  height = v25.size.height;
  if (CGRectIsInfinite(v25))
  {
    *&v23.var0 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
    *&v23.var2 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  }

  else
  {
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    if (CGRectIsNull(v26))
    {
      *&v23.var0 = vdupq_n_s64(0x7FF0000000000000uLL);
      v23.var2 = 0.0;
      v23.var3 = 0.0;
    }

    else
    {
      v23.var0 = x;
      v23.var1 = y;
      v23.var2 = width;
      v23.var3 = height;
    }
  }

  Rectangle::inset(&v23, -1.0, -1.0, &v20);
  Rectangle::scale(&v20, 0.5, &v21);
  Rectangle::integralize(&v21, 0.0001, &v22);
  v23 = v22;
  _kernelD2 = [(CIMaskedVariableBlur *)self _kernelD2];
  v10 = vceqq_f64(*&v23.var2, vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL));
  v11 = vmvnq_s8(vuzp1q_s32(vceqq_f64(*&v23.var0, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL)), v10));
  if (vmaxv_u16(vmovn_s32(v11)))
  {
    v16 = *&v23.var2;
    v18 = *&v23.var0;
    var1 = v23.var1;
    var3 = v23.var3;
  }

  else
  {
    v10.i64[0] = *MEMORY[0x1E695F040];
    var1 = *(MEMORY[0x1E695F040] + 8);
    v11.i64[0] = *(MEMORY[0x1E695F040] + 16);
    var3 = *(MEMORY[0x1E695F040] + 24);
    v16 = v11;
    v18 = v10;
  }

  v24[0] = two;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:{1, *&v16, *&v18}];
  return [_kernelD2 applyWithExtent:&__block_literal_global_47 roiCallback:v14 arguments:{v19, var1, v17, var3}];
}

void __32__CIMaskedVariableBlur_downTwo___block_invoke(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  if (CGRectIsInfinite(*&a1))
  {
    *&v11.var0 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
    *&v11.var2 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  }

  else
  {
    v12.origin.x = a1;
    v12.origin.y = a2;
    v12.size.width = a3;
    v12.size.height = a4;
    if (CGRectIsNull(v12))
    {
      *&v11.var0 = vdupq_n_s64(0x7FF0000000000000uLL);
      v11.var2 = 0.0;
      v11.var3 = 0.0;
    }

    else
    {
      v11.var0 = a1;
      v11.var1 = a2;
      v11.var2 = a3;
      v11.var3 = a4;
    }
  }

  Rectangle::scale(&v11, 2.0, &v8);
  Rectangle::inset(&v8, -1.0, -1.0, &v9);
  Rectangle::integralize(&v9, 0.0001, &v10);
}

- (id)upCubic:(id)cubic scale:(float)scale
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"inputScale";
  v7[0] = [MEMORY[0x1E696AD98] numberWithFloat:?];
  return [cubic imageByApplyingFilter:@"CISoftCubicUpsample" withInputParameters:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v7, &v6, 1)}];
}

- (id)outputImage
{
  v28[9] = *MEMORY[0x1E69E9840];
  if (!self->inputImage)
  {
    return 0;
  }

  [(CIImage *)self->inputMask extent];
  if (CGRectIsEmpty(v30) || [(CIMaskedVariableBlur *)self _isIdentity]|| ([(CIImage *)self->inputMask extent], CGRectIsEmpty(v31)))
  {
    v3 = self->inputImage;

    return v3;
  }

  else
  {
    [(NSNumber *)self->inputRadius doubleValue];
    *&v5 = v5;
    v6 = floorf(fmaxf(log2f((*&v5 * 4.0) / 3.0), 0.0));
    if (v6 <= 0.5)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    if (v6 > 1.5)
    {
      v7 = 3;
    }

    if (v6 > 2.5)
    {
      v7 = 4;
    }

    if (v6 > 3.5)
    {
      v7 = 5;
    }

    if (v6 > 4.5)
    {
      v8 = 6;
    }

    else
    {
      v8 = v7;
    }

    v9 = [(CIMaskedVariableBlur *)self downTwo:self->inputImage];
    v10 = [(CIMaskedVariableBlur *)self downTwo:v9];
    v11 = [(CIMaskedVariableBlur *)self downTwo:v10];
    v12 = [(CIMaskedVariableBlur *)self downTwo:v11];
    v13 = [(CIMaskedVariableBlur *)self downTwo:v12];
    v14 = [(CIMaskedVariableBlur *)self downTwo:v13];
    if (v8 >= 2)
    {
      v16 = v10;
    }

    else
    {
      v16 = v9;
    }

    if (v8 < 3)
    {
      v11 = v16;
    }

    if (v8 < 4)
    {
      v12 = v11;
    }

    if (v8 < 5)
    {
      v13 = v12;
    }

    if (v6 > 4.5)
    {
      v17 = v14;
    }

    else
    {
      v17 = v13;
    }

    LODWORD(v15) = 1115684864;
    [-[CIMaskedVariableBlur upCubic:scale:](self upCubic:v14 scale:{v15), "extent"}];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    _kernelCombine = [(CIMaskedVariableBlur *)self _kernelCombine];
    inputImage = self->inputImage;
    v28[0] = self->inputMask;
    v28[1] = inputImage;
    v28[2] = v9;
    v28[3] = v16;
    v28[4] = v11;
    v28[5] = v12;
    v28[6] = v13;
    v28[7] = v17;
    v28[8] = self->inputRadius;
    return [_kernelCombine applyWithExtent:&__block_literal_global_29 roiCallback:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v28, 9), v19, v21, v23, v25}];
  }
}

void __35__CIMaskedVariableBlur_outputImage__block_invoke(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, unsigned int a6)
{
  if (a6 > 1)
  {
    v18 = flt_19CF27D1C[a6];
    if (CGRectIsInfinite(*&a1))
    {
      *&v20.var0 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
      *&v20.var2 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    }

    else
    {
      v22.origin.x = a1;
      v22.size.width = a3;
      v22.origin.y = a2;
      v22.size.height = a4;
      if (CGRectIsNull(v22))
      {
        *&v20.var0 = vdupq_n_s64(0x7FF0000000000000uLL);
        v20.var2 = 0.0;
        v20.var3 = 0.0;
      }

      else
      {
        v20.var0 = a1;
        v20.var1 = a2;
        v20.var2 = a3;
        v20.var3 = a4;
      }
    }

    Rectangle::inset(&v20, 0.5, 0.5, v21);
    _Q1 = vaddq_f64(v21[0], v21[1]);
    __asm { FMOV            V5.2S, #-1.0 }

    v14 = vadd_f32(vadd_f32(vrndm_f32(vadd_f32(vmul_n_f32(vcvt_f32_f64(vminnmq_f64(v21[0], _Q1)), v18), 0xBF000000BF000000)), 0x3F0000003F000000), _D5);
    v15 = vadd_f32(vrndm_f32(vadd_f32(vmul_n_f32(vcvt_f32_f64(vmaxnmq_f64(v21[0], _Q1)), v18), 0xBF000000BF000000)), 0x3F0000003F000000);
    __asm { FMOV            V1.2S, #1.0 }

    *&v20.var0 = vcvtq_f64_f32(v14);
    *&v20.var2 = vcvtq_f64_f32(vsub_f32(vadd_f32(v15, *&_Q1.f64[0]), v14));
    Rectangle::integralize(&v20, 0.0001, &v19);
  }
}

@end