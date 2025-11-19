@interface CIStretchCrop
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIStretchCrop

- (id)outputImage
{
  v108[3] = *MEMORY[0x1E69E9840];
  [(NSNumber *)self->inputCropAmount doubleValue];
  v4 = v3;
  [(NSNumber *)self->inputCenterStretchAmount doubleValue];
  v6 = v5;
  [(CIVector *)self->inputSize X];
  v8 = v7;
  [(CIVector *)self->inputSize Y];
  inputImage = self->inputImage;
  if (!inputImage)
  {
    return 0;
  }

  v11 = v9;
  [(CIImage *)inputImage extent];
  if (CGRectIsInfinite(v109))
  {
    return 0;
  }

  v12 = self->inputImage;
  [(CIImage *)self->inputImage extent];
  v16 = v15;
  v18 = v17;
  if (fabs(v13) >= 1.0e-10 || fabs(v14) >= 1.0e-10)
  {
    CGAffineTransformMakeTranslation(&v106, -v13, -v14);
    v12 = [(CIImage *)v12 imageByApplyingTransform:&v106];
  }

  v19 = fmax(v8, 0.0);
  v20 = fmax(v11, 0.0);
  if (vabdd_f64(v16, v19) >= 1.0e-10 || vabdd_f64(v18, v20) >= 1.0e-10)
  {
    v21 = fmin(fmax(v4, 0.0), 1.0);
    v100 = v20;
    if (v21 <= 0.0)
    {
      v22 = v19 / v20;
    }

    else
    {
      v22 = v19 / v20;
      v23 = v16 / v18 <= v19 / v20;
      v24 = v21 * (v20 * v16 / v19) + v18 * (1.0 - v21);
      v25 = (v18 - v24) * 0.5;
      v26 = v21 * (v19 * v18 / v20) + v16 * (1.0 - v21);
      v27 = (v16 - v26) * 0.5;
      if (v16 / v18 <= v22)
      {
        v18 = v24;
      }

      if (v23)
      {
        v28 = v25;
      }

      else
      {
        v16 = v26;
        v28 = 0.0;
      }

      if (v23)
      {
        v29 = 0.0;
      }

      else
      {
        v29 = v27;
      }

      CGAffineTransformMakeTranslation(&v106, -v29, -v28);
      v12 = [(CIImage *)v12 imageByApplyingTransform:&v106];
    }

    if (v16 / v18 <= v22)
    {
      v30 = v100 / v18;
    }

    else
    {
      v30 = v19 / v16;
    }

    CGAffineTransformMakeScale(&v106, v30, v30);
    v31 = [(CIImage *)v12 imageByApplyingTransform:&v106];
    v32 = v31;
    v33 = v16 * v30;
    v34 = v18 * v30;
    if (vabdd_f64(v33, v19) < 1.0e-10 && vabdd_f64(v34, v100) < 1.0e-10)
    {
      return [v32 imageByCroppingToRect:{0.0, 0.0, v19, v100}];
    }

    v35 = fmin(fmax(v6, 0.0), 1.0);
    v36 = v33 / v34;
    if (v35 == 1.0)
    {
      v23 = v36 <= v22;
      v37 = v22 / v36;
      v38 = v36 / v22;
      if (v23)
      {
        v38 = 1.0;
      }

      else
      {
        v37 = 1.0;
      }

      CGAffineTransformMakeScale(&v106, v37, v38);
      v39 = [v32 imageByApplyingTransform:&v106];
      goto LABEL_63;
    }

    v40 = v36 <= v22;
    v41 = 1.0 - v35 + v35 * (v22 / v36);
    v42 = (v22 / v36 - v41 + v22 / v36 - v41) / (v22 / v36);
    v43 = v41;
    v44 = v42;
    v45 = v36 / v22;
    v46 = 1.0 - v35 + v35 * v45;
    v47 = (v45 - v46 + v45 - v46) / v45;
    v48 = v46;
    v49 = v47;
    if (v40)
    {
      v48 = 1.0;
    }

    v99 = v48;
    if (v40)
    {
      v50 = v44;
    }

    else
    {
      v50 = 0.0;
    }

    v98 = v50;
    if (v40)
    {
      v51 = 0.0;
    }

    else
    {
      v51 = v49;
    }

    v97 = v51;
    if (v40)
    {
      v52 = v43;
    }

    else
    {
      v52 = 1.0;
    }

    v96 = v52;
    [(CIImage *)v31 extent];
    x = v110.origin.x;
    y = v110.origin.y;
    width = v110.size.width;
    height = v110.size.height;
    IsInfinite = CGRectIsInfinite(v110);
    v111.origin.x = x;
    v111.origin.y = y;
    v111.size.width = width;
    v111.size.height = height;
    v58 = CGRectIsInfinite(v111);
    v59.f32[0] = v33;
    v60 = v34;
    v91 = v59.f32[0];
    v92 = v60;
    v59.f32[1] = v60;
    v95 = v59;
    v59.f32[0] = v19 * 0.5;
    v61 = v100 * 0.5;
    v89 = v61;
    v90 = v59.f32[0];
    v59.f32[1] = v61;
    v94 = v59;
    v62.i64[0] = __PAIR64__(LODWORD(v99), LODWORD(v96));
    v62.i64[1] = __PAIR64__(LODWORD(v97), LODWORD(v98));
    v93 = v62;
    if (IsInfinite)
    {
      if (v58)
      {
        *&v105.var0 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
        *&v105.var2 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
        y = -8.98846567e307;
        height = 1.79769313e308;
        width = 1.79769313e308;
LABEL_57:
        x = -8.98846567e307;
        if (y == -8.98846567e307 && width == 1.79769313e308 && height == 1.79769313e308)
        {
          p_var3 = (MEMORY[0x1E695F040] + 24);
          p_var1 = (MEMORY[0x1E695F040] + 8);
          p_var2 = (MEMORY[0x1E695F040] + 16);
          x = *MEMORY[0x1E695F040];
LABEL_62:
          v83 = *p_var3;
          v84 = *p_var1;
          v85 = *p_var2;
          v86 = [(CIStretchCrop *)self _kernel];
          v101[0] = MEMORY[0x1E69E9820];
          v101[1] = 3221225472;
          v101[2] = __28__CIStretchCrop_outputImage__block_invoke;
          v101[3] = &__block_descriptor_64_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
          v103 = v95;
          v104 = v94;
          v102 = v93;
          v108[0] = [CIVector vectorWithX:v91 Y:v92];
          v108[1] = [CIVector vectorWithX:v90 Y:v89];
          v108[2] = [CIVector vectorWithX:v96 Y:v99 Z:v98 W:v97];
          v39 = [v86 applyWithExtent:v101 roiCallback:v32 inputImage:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v108, 3), x, v84, v85, v83}];
LABEL_63:
          v32 = v39;
          return [v32 imageByCroppingToRect:{0.0, 0.0, v19, v100}];
        }

LABEL_61:
        p_var1 = &v105.var1;
        p_var2 = &v105.var2;
        p_var3 = &v105.var3;
        goto LABEL_62;
      }

      v112.origin.x = x;
      v112.origin.y = y;
      v112.size.width = width;
      v112.size.height = height;
      if (CGRectIsNull(v112))
      {
        *&v105.var0 = vdupq_n_s64(0x7FF0000000000000uLL);
        v105.var2 = 0.0;
        v105.var3 = 0.0;
        x = INFINITY;
        goto LABEL_61;
      }

      v105.var0 = x;
      v105.var1 = y;
      v105.var2 = width;
      v105.var3 = height;
    }

    else
    {
      if (v58)
      {
        y = -8.98846567e307;
        v63 = 1.79769313e308;
        v64 = 1.79769313e308;
        x = -8.98846567e307;
      }

      else
      {
        v113.origin.x = x;
        v113.origin.y = y;
        v113.size.width = width;
        v113.size.height = height;
        IsNull = CGRectIsNull(v113);
        v64 = 0.0;
        if (IsNull)
        {
          v63 = 0.0;
        }

        else
        {
          v63 = width;
        }

        if (IsNull)
        {
          y = INFINITY;
          x = INFINITY;
        }

        else
        {
          v64 = height;
        }
      }

      *&v105.var0 = vdupq_n_s64(0x7FF0000000000000uLL);
      v66 = v63 + x;
      v67.f32[0] = fmin(x, v63 + x);
      v68 = v64 + y;
      v69 = fmin(y, v64 + y);
      v67.f32[1] = v69;
      v105.var2 = 0.0;
      v105.var3 = 0.0;
      v70 = vadd_f32(vdiv_f32(v67, v95), 0xBF000000BF000000);
      v88 = vextq_s8(v93, v93, 8uLL);
      v71 = vdup_n_s32(0x3F7FF972u);
      __asm { FMOV            V15.2S, #1.0 }

      v107 = vadd_f32(v94, vmul_f32(v95, vdiv_f32(vmul_f32(__PAIR64__(LODWORD(v99), LODWORD(v96)), v70), vsub_f32(_D15, vminnm_f32(vmul_f32(*v88.i8, vabs_f32(v70)), v71)))));
      Rectangle::Union(&v105, &v107, &v106);
      *&v105.var0 = *&v106.a;
      v77.f32[0] = fmax(x, v66);
      v78 = fmax(y, v68);
      v77.f32[1] = v78;
      *&v105.var2 = *&v106.c;
      v79 = vadd_f32(vdiv_f32(v77, v95), 0xBF000000BF000000);
      v107 = vadd_f32(v94, vmul_f32(v95, vdiv_f32(vmul_f32(__PAIR64__(LODWORD(v99), LODWORD(v96)), v79), vsub_f32(_D15, vminnm_f32(vmul_f32(*v88.i8, vabs_f32(v79)), v71)))));
      Rectangle::Union(&v105, &v107, &v106);
      x = v106.a;
      y = v106.b;
      v105.var0 = v106.a;
      v105.var1 = v106.b;
      width = v106.c;
      height = v106.d;
      v105.var2 = v106.c;
      v105.var3 = v106.d;
    }

    if (x != -8.98846567e307)
    {
      goto LABEL_61;
    }

    goto LABEL_57;
  }

  return v12;
}

void __28__CIStretchCrop_outputImage__block_invoke(uint64_t a1, double a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v8 = a2;
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v24 = *(a1 + 32);
  if (CGRectIsInfinite(*&a2))
  {
    v11 = -8.98846567e307;
    v12 = 1.79769313e308;
    v13 = 1.79769313e308;
    v8 = -8.98846567e307;
  }

  else
  {
    v28.origin.x = v8;
    v28.origin.y = a3;
    v28.size.width = a4;
    v28.size.height = a5;
    IsNull = CGRectIsNull(v28);
    v13 = 0.0;
    if (IsNull)
    {
      v12 = 0.0;
    }

    else
    {
      v12 = a4;
    }

    if (IsNull)
    {
      v11 = INFINITY;
    }

    else
    {
      v13 = a5;
      v11 = a3;
    }

    if (IsNull)
    {
      v8 = INFINITY;
    }
  }

  *&v27.var0 = vdupq_n_s64(0x7FF0000000000000uLL);
  v15 = v12 + v8;
  v16.f32[0] = fmin(v8, v12 + v8);
  v17 = v13 + v11;
  v18 = fmin(v11, v13 + v11);
  v16.f32[1] = v18;
  v27.var2 = 0.0;
  v27.var3 = 0.0;
  v23 = vextq_s8(v24, v24, 8uLL).u64[0];
  v19 = vdiv_f32(vsub_f32(v16, v10), v9);
  v25 = vmul_f32(v9, vadd_f32(vdiv_f32(v19, vadd_f32(*v24.i8, vmul_f32(v23, vabs_f32(v19)))), 0x3F0000003F000000));
  Rectangle::Union(&v27, &v25, &v26);
  v27 = v26;
  v20.f32[0] = fmax(v8, v15);
  v21 = fmax(v11, v17);
  v20.f32[1] = v21;
  v22 = vdiv_f32(vsub_f32(v20, v10), v9);
  v25 = vmul_f32(v9, vadd_f32(vdiv_f32(v22, vadd_f32(*v24.i8, vmul_f32(v23, vabs_f32(v22)))), 0x3F0000003F000000));
  Rectangle::Union(&v27, &v25, &v26);
}

+ (id)customAttributes
{
  v11[6] = *MEMORY[0x1E69E9840];
  v10[0] = @"CIAttributeFilterCategories";
  v9[0] = @"CICategoryDistortionEffect";
  v9[1] = @"CICategoryVideo";
  v9[2] = @"CICategoryStillImage";
  v9[3] = @"CICategoryBuiltIn";
  v11[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];
  v11[1] = @"9";
  v10[1] = @"CIAttributeFilterAvailable_iOS";
  v10[2] = @"CIAttributeFilterAvailable_Mac";
  v11[2] = @"10.6";
  v10[3] = @"inputSize";
  v7[0] = @"CIAttributeType";
  v7[1] = @"CIAttributeDefault";
  v8[0] = @"CIAttributeTypePosition";
  v8[1] = [CIVector vectorWithX:1280.0 Y:720.0];
  v11[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v10[4] = @"inputCropAmount";
  v5[0] = @"CIAttributeType";
  v5[1] = @"CIAttributeMin";
  v6[0] = @"CIAttributeTypeScalar";
  v6[1] = &unk_1F1084CF8;
  v5[2] = @"CIAttributeMax";
  v5[3] = @"CIAttributeSliderMin";
  v6[2] = &unk_1F1084D08;
  v6[3] = &unk_1F1084CF8;
  v5[4] = @"CIAttributeSliderMax";
  v5[5] = @"CIAttributeDefault";
  v6[4] = &unk_1F1084D08;
  v6[5] = &unk_1F1084D18;
  v11[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:6];
  v10[5] = @"inputCenterStretchAmount";
  v3[0] = @"CIAttributeType";
  v3[1] = @"CIAttributeMin";
  v4[0] = @"CIAttributeTypeScalar";
  v4[1] = &unk_1F1084CF8;
  v3[2] = @"CIAttributeMax";
  v3[3] = @"CIAttributeSliderMin";
  v4[2] = &unk_1F1084D08;
  v4[3] = &unk_1F1084CF8;
  v3[4] = @"CIAttributeSliderMax";
  v3[5] = @"CIAttributeDefault";
  v4[4] = &unk_1F1084D08;
  v4[5] = &unk_1F1084D18;
  v11[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:6];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:6];
}

@end