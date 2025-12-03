@interface CISoftCubicUpsample
+ (id)customAttributes;
- (id)outputImage;
- (int32x2_t)_scale;
@end

@implementation CISoftCubicUpsample

+ (id)customAttributes
{
  v7[2] = *MEMORY[0x1E69E9840];
  v6[0] = @"CIAttributeFilterCategories";
  v5[0] = @"CICategoryGeometryAdjustment";
  v5[1] = @"CICategoryVideo";
  v5[2] = @"CICategoryStillImage";
  v5[3] = @"CICategoryBuiltIn";
  v5[4] = @"CICategoryApplePrivate";
  v7[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:5];
  v6[1] = @"inputScale";
  v3[0] = @"CIAttributeMin";
  v3[1] = @"CIAttributeSliderMin";
  v3[2] = @"CIAttributeSliderMax";
  v3[3] = @"CIAttributeDefault";
  v4[2] = &unk_1F1084B48;
  v4[3] = &unk_1F1084B98;
  v3[4] = @"CIAttributeIdentity";
  v3[5] = @"CIAttributeType";
  v4[0] = &unk_1F1084B58;
  v4[1] = &unk_1F1084B58;
  v4[4] = &unk_1F1084B58;
  v4[5] = @"CIAttributeTypeDistance";
  v7[1] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:6];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];
}

- (int32x2_t)_scale
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(self + 88) doubleValue];
    v3 = fmax(v2, 1.0);
    *&v3 = v3;
    return vdup_lane_s32(*&v3, 0);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = *(self + 88);
      [v5 X];
      v14 = v6;
      [v5 Y];
      v7.f64[0] = v14;
      v7.f64[1] = v8;
      __asm { FMOV            V0.2D, #1.0 }

      return vcvt_f32_f64(vmaxnmq_f64(v7, _Q0));
    }

    else
    {
      __asm { FMOV            V0.2S, #1.0 }
    }
  }

  return result;
}

- (id)outputImage
{
  v61[2] = *MEMORY[0x1E69E9840];
  if (!self->inputImage)
  {
    return 0;
  }

  if ([(CISoftCubicUpsample *)self _isIdentity])
  {
    v3 = self->inputImage;

    return v3;
  }

  [(CISoftCubicUpsample *)self _scale];
  v6 = v5;
  __asm { FMOV            V13.2S, #1.0 }

  v50 = vdiv_f32(_D13, v5);
  [(CIImage *)self->inputImage extent];
  x = v63.origin.x;
  y = v63.origin.y;
  width = v63.size.width;
  height = v63.size.height;
  if (CGRectIsInfinite(v63))
  {
    *&v58.var0 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
    *&v58.var2 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    v16 = vceq_f32(v6, _D13);
    v17 = vbic_s8(0x4000000040000000, v16);
    v18 = v16.i8[4];
    v19 = v16.i8[0];
    y = -8.98846567e307;
    height = 1.79769313e308;
    width = 1.79769313e308;
LABEL_12:
    x = -8.98846567e307;
    if (y == -8.98846567e307 && width == 1.79769313e308 && height == 1.79769313e308)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v64.origin.x = x;
  v64.origin.y = y;
  v64.size.width = width;
  v64.size.height = height;
  if (CGRectIsNull(v64))
  {
    *&v58.var0 = vdupq_n_s64(0x7FF0000000000000uLL);
    v58.var2 = 0.0;
    v58.var3 = 0.0;
    v20 = vceq_f32(v6, _D13);
    v18 = v20.i8[4];
    v17 = vbic_s8(0x4000000040000000, v20);
    v19 = v20.i8[0];
    width = 0.0;
    y = INFINITY;
    height = 0.0;
    x = INFINITY;
  }

  else
  {
    v58.var0 = x;
    v58.var1 = y;
    v58.var2 = width;
    v58.var3 = height;
    v21 = vceq_f32(v6, _D13);
    v17 = vbic_s8(0x4000000040000000, v21);
    v18 = v21.i8[4];
    v19 = v21.i8[0];
    if (x == -8.98846567e307)
    {
      goto LABEL_12;
    }
  }

LABEL_15:
  v46 = v17;
  v65.origin.x = x;
  v65.origin.y = y;
  v65.size.width = width;
  v65.size.height = height;
  if (!CGRectIsInfinite(v65))
  {
    Rectangle::inset(&v58, -*v46.i32, -*&v46.i32[1], &v54);
    if (fabs(v54.f64[0]) == INFINITY || fabs(v54.f64[1]) == INFINITY)
    {
      *&v56.var0 = vdupq_n_s64(0x7FF0000000000000uLL);
      v56.var2 = 0.0;
      v56.var3 = 0.0;
    }

    else
    {
      v37 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      v38 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
      if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v54, v38), vceqq_f64(v55, v37))))))
      {
        v39 = vcvtq_f64_f32(v6);
        v56.var0 = v54.f64[0] * v39.f64[0];
        v56.var1 = vmuld_lane_f64(v54.f64[1], v39, 1);
        *&v56.var2 = vmulq_f64(v55, v39);
      }

      else
      {
        *&v56.var0 = v38;
        *&v56.var2 = v37;
      }
    }

    Rectangle::integralize(&v56, 0.0001, v57);
    v22 = v57[0];
    v23 = v57[1];
    goto LABEL_21;
  }

LABEL_16:
  v22 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
  v23 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
LABEL_21:
  *&v58.var0 = v22;
  *&v58.var2 = v23;
  if (v19)
  {
    v24 = [CIKernel kernelWithInternalRepresentation:&CI::_cubicUpsample10v];
    v25 = vmvnq_s8(vuzp1q_s32(vceqq_f64(*&v58.var0, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL)), vceqq_f64(*&v58.var2, vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL))));
    if (vmaxv_u16(vmovn_s32(v25)))
    {
      v40 = *&v58.var2;
      var0 = v58.var0;
      var1 = v58.var1;
      var3 = v58.var3;
    }

    else
    {
      var1 = *(MEMORY[0x1E695F040] + 8);
      v25.i64[0] = *(MEMORY[0x1E695F040] + 16);
      var3 = *(MEMORY[0x1E695F040] + 24);
      v40 = v25;
      var0 = *MEMORY[0x1E695F040];
    }

    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __34__CISoftCubicUpsample_outputImage__block_invoke;
    v53[3] = &__block_descriptor_40_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
    HIDWORD(v36) = v50.i32[1];
    v53[4] = v50;
    v61[0] = self->inputImage;
    LODWORD(v36) = v50.i32[1];
    v61[1] = [MEMORY[0x1E696AD98] numberWithFloat:{v36, *&v40}];
    return -[CIKernel applyWithExtent:roiCallback:arguments:](v24, "applyWithExtent:roiCallback:arguments:", v53, [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:2], var0, var1, v43, var3);
  }

  else if (v18)
  {
    v28 = [CIKernel kernelWithInternalRepresentation:&CI::_cubicUpsample10h];
    v29 = vmvnq_s8(vuzp1q_s32(vceqq_f64(*&v58.var0, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL)), vceqq_f64(*&v58.var2, vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL))));
    if (vmaxv_u16(vmovn_s32(v29)))
    {
      v41 = *&v58.var2;
      v48 = v58.var0;
      v30 = v58.var1;
      v31 = v58.var3;
    }

    else
    {
      v30 = *(MEMORY[0x1E695F040] + 8);
      v29.i64[0] = *(MEMORY[0x1E695F040] + 16);
      v31 = *(MEMORY[0x1E695F040] + 24);
      v41 = v29;
      v48 = *MEMORY[0x1E695F040];
    }

    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __34__CISoftCubicUpsample_outputImage__block_invoke_2;
    v52[3] = &__block_descriptor_40_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
    v52[4] = v50;
    v60[0] = self->inputImage;
    v60[1] = [MEMORY[0x1E696AD98] numberWithFloat:*&v41];
    return -[CIKernel applyWithExtent:roiCallback:arguments:](v28, "applyWithExtent:roiCallback:arguments:", v52, [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:2], v48, v30, v44, v31);
  }

  else
  {
    v32 = [CIKernel kernelWithInternalRepresentation:&CI::_cubicUpsample10];
    v33 = vmvnq_s8(vuzp1q_s32(vceqq_f64(*&v58.var0, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL)), vceqq_f64(*&v58.var2, vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL))));
    if (vmaxv_u16(vmovn_s32(v33)))
    {
      v42 = *&v58.var2;
      v49 = v58.var0;
      v34 = v58.var1;
      v35 = v58.var3;
    }

    else
    {
      v34 = *(MEMORY[0x1E695F040] + 8);
      v33.i64[0] = *(MEMORY[0x1E695F040] + 16);
      v35 = *(MEMORY[0x1E695F040] + 24);
      v42 = v33;
      v49 = *MEMORY[0x1E695F040];
    }

    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __34__CISoftCubicUpsample_outputImage__block_invoke_3;
    v51[3] = &__block_descriptor_40_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
    v51[4] = v50;
    v59[0] = self->inputImage;
    v59[1] = [CIVector vectorWithX:v50.f32[0] Y:v50.f32[1], *&v42];
    return -[CIKernel applyWithExtent:roiCallback:arguments:](v32, "applyWithExtent:roiCallback:arguments:", v51, [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:2], v49, v34, v45, v35);
  }
}

@end