@interface CILanczosScaleTransform
+ (id)customAttributes;
- (BOOL)_isIdentity;
- (id)outputImage;
@end

@implementation CILanczosScaleTransform

- (BOOL)_isIdentity
{
  [(NSNumber *)self->inputScale doubleValue];
  if (v3 != 1.0)
  {
    return 0;
  }

  [(NSNumber *)self->inputAspectRatio doubleValue];
  return v4 == 1.0;
}

- (id)outputImage
{
  v92 = *MEMORY[0x1E69E9840];
  if (!self->inputImage)
  {
    return 0;
  }

  if ([(CILanczosScaleTransform *)self _isIdentity])
  {
    v3 = self->inputImage;

    return v3;
  }

  [(NSNumber *)self->inputScale doubleValue];
  v6 = v5;
  [(NSNumber *)self->inputAspectRatio doubleValue];
  v8 = v6 * v7;
  [(NSNumber *)self->inputScale doubleValue];
  v10 = v9;
  inputImage = self->inputImage;
  if (v8 < 0.000000999999997 || v9 < 0.000000999999997)
  {
    CGAffineTransformMakeScale(&v87, v8, v9);
    return [(CIImage *)inputImage imageByApplyingTransform:&v87];
  }

  [(CIImage *)inputImage extent];
  x = v94.origin.x;
  y = v94.origin.y;
  width = v94.size.width;
  height = v94.size.height;
  if (CGRectIsInfinite(v94))
  {
    y = -8.98846567e307;
    width = 1.79769313e308;
    height = 1.79769313e308;
  }

  else
  {
    v95.origin.x = x;
    v95.origin.y = y;
    v95.size.width = width;
    v95.size.height = height;
    if (!CGRectIsNull(v95))
    {
      goto LABEL_15;
    }

    width = 0.0;
    y = INFINITY;
    height = 0.0;
  }

  x = y;
LABEL_15:
  v16 = fabs(y) == INFINITY;
  if (fabs(x) == INFINITY || v16)
  {
    *&v86.var0 = vdupq_n_s64(0x7FF0000000000000uLL);
    v86.var2 = 0.0;
    v86.var3 = 0.0;
  }

  else if (x == -8.98846567e307 && y == -8.98846567e307 && width == 1.79769313e308 && height == 1.79769313e308)
  {
    *&v86.var0 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
    *&v86.var2 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  }

  else
  {
    v86.var0 = v8 * x;
    v86.var1 = v10 * y;
    v86.var2 = v8 * width;
    v86.var3 = v10 * height;
  }

  Rectangle::integralize(&v86, 0.0001, &v87);
  *&v86.var0 = *&v87.a;
  *&v86.var2 = *&v87.c;
  while (v8 < 0.50001 && v10 < 0.50001)
  {
    v17 = downBy2H(inputImage);
    inputImage = downBy2V(v17);
    v8 = v8 + v8;
    v10 = v10 + v10;
  }

  while (v8 < 0.50001)
  {
    inputImage = downBy2H(inputImage);
    v8 = v8 + v8;
  }

  while (v10 < 0.50001)
  {
    inputImage = downBy2V(inputImage);
    v10 = v10 + v10;
  }

  if (v8 < 0.99999)
  {
    v18 = [CIVector vectorWithX:1.0 / v8 Y:1.0 Z:1.0 W:0.0];
    [(CIImage *)inputImage extent];
    v19 = v96.origin.x;
    v20 = v96.origin.y;
    v21 = v96.size.width;
    v22 = v96.size.height;
    if (CGRectIsInfinite(v96))
    {
      v23 = 1.79769313e308;
      v24 = -8.98846567e307;
      v25 = 1.79769313e308;
      v26 = -8.98846567e307;
    }

    else
    {
      v97.origin.x = v19;
      v97.origin.y = v20;
      v97.size.width = v21;
      v97.size.height = v22;
      IsNull = CGRectIsNull(v97);
      v25 = 0.0;
      v26 = INFINITY;
      if (IsNull)
      {
        v24 = INFINITY;
      }

      else
      {
        v24 = v20;
      }

      if (IsNull)
      {
        v23 = 0.0;
      }

      else
      {
        v23 = v21;
      }

      if (!IsNull)
      {
        v25 = v22;
        v26 = v19;
      }
    }

    v28 = fabs(v24) == INFINITY;
    if (fabs(v26) == INFINITY || v28)
    {
      *&v88.var0 = vdupq_n_s64(0x7FF0000000000000uLL);
      v88.var2 = 0.0;
      v88.var3 = 0.0;
    }

    else if (v26 == -8.98846567e307 && v24 == -8.98846567e307 && v23 == 1.79769313e308 && v25 == 1.79769313e308)
    {
      *&v88.var0 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
      *&v88.var2 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    }

    else
    {
      v88.var0 = v8 * v26;
      v88.var1 = v24;
      v88.var2 = v8 * v23;
      v88.var3 = v25;
    }

    Rectangle::inset(&v88, -3.0, -0.0, &v91);
    Rectangle::integralize(&v91, 0.0001, &v87);
    v70 = *&v87.c;
    v78 = *&v87.a;
    v29 = [CIKernel kernelWithInternalRepresentation:&CI::_lanczosDownH];
    if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v78, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL)), vceqq_f64(v70, vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL)))))))
    {
      v30 = v78.f64[1];
      v31 = v70.f64[1];
    }

    else
    {
      v30 = *(MEMORY[0x1E695F040] + 8);
      v31 = *(MEMORY[0x1E695F040] + 24);
      v70.f64[0] = *(MEMORY[0x1E695F040] + 16);
      v78.f64[0] = *MEMORY[0x1E695F040];
    }

    *&v87.a = MEMORY[0x1E69E9820];
    *&v87.b = 3221225472;
    *&v87.c = ___ZL5downHP7CIImaged_block_invoke;
    *&v87.d = &__block_descriptor_48_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
    v87.tx = 4.6968;
    v87.ty = v8;
    *&v91.var0 = inputImage;
    *&v91.var1 = v18;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v91 count:{2, *&v70.f64[0]}];
    inputImage = [(CIKernel *)v29 applyWithExtent:&v87 roiCallback:v32 arguments:v78.f64[0], v30, v71, v31];
    v8 = 1.0;
  }

  if (v10 < 0.99999)
  {
    v33 = [CIVector vectorWithX:1.0 Y:1.0 / v10 Z:0.0 W:1.0];
    [(CIImage *)inputImage extent];
    v34 = v98.origin.x;
    v35 = v98.origin.y;
    v36 = v98.size.width;
    v37 = v98.size.height;
    if (CGRectIsInfinite(v98))
    {
      v38 = 1.79769313e308;
      v39 = -8.98846567e307;
      v40 = 1.79769313e308;
      v41 = -8.98846567e307;
    }

    else
    {
      v99.origin.x = v34;
      v99.origin.y = v35;
      v99.size.width = v36;
      v99.size.height = v37;
      v42 = CGRectIsNull(v99);
      v40 = 0.0;
      v41 = INFINITY;
      if (v42)
      {
        v39 = INFINITY;
      }

      else
      {
        v39 = v35;
      }

      if (v42)
      {
        v38 = 0.0;
      }

      else
      {
        v38 = v36;
      }

      if (!v42)
      {
        v40 = v37;
        v41 = v34;
      }
    }

    v43 = fabs(v39) == INFINITY;
    if (fabs(v41) == INFINITY || v43)
    {
      *&v88.var0 = vdupq_n_s64(0x7FF0000000000000uLL);
      v88.var2 = 0.0;
      v88.var3 = 0.0;
    }

    else if (v41 == -8.98846567e307 && v39 == -8.98846567e307 && v38 == 1.79769313e308 && v40 == 1.79769313e308)
    {
      *&v88.var0 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
      *&v88.var2 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    }

    else
    {
      v88.var0 = v41;
      v88.var1 = v10 * v39;
      v88.var2 = v38;
      v88.var3 = v10 * v40;
    }

    Rectangle::inset(&v88, -0.0, -3.0, &v91);
    Rectangle::integralize(&v91, 0.0001, &v87);
    v72 = *&v87.c;
    v79 = *&v87.a;
    v44 = [CIKernel kernelWithInternalRepresentation:&CI::_lanczosDownV];
    if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v79, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL)), vceqq_f64(v72, vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL)))))))
    {
      v45 = v79.f64[1];
      v46 = v72.f64[1];
    }

    else
    {
      v45 = *(MEMORY[0x1E695F040] + 8);
      v46 = *(MEMORY[0x1E695F040] + 24);
      v72.f64[0] = *(MEMORY[0x1E695F040] + 16);
      v79.f64[0] = *MEMORY[0x1E695F040];
    }

    *&v87.a = MEMORY[0x1E69E9820];
    *&v87.b = 3221225472;
    *&v87.c = ___ZL5downVP7CIImaged_block_invoke;
    *&v87.d = &__block_descriptor_48_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
    v87.tx = 4.6968;
    v87.ty = v10;
    *&v91.var0 = inputImage;
    *&v91.var1 = v33;
    v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v91 count:{2, *&v72.f64[0]}];
    inputImage = [(CIKernel *)v44 applyWithExtent:&v87 roiCallback:v47 arguments:v79.f64[0], v45, v73, v46];
    v10 = 1.0;
  }

  if (v8 > 1.00001)
  {
    [(CIImage *)inputImage extent];
    v48 = v100.origin.x;
    v49 = v100.origin.y;
    v50 = v100.size.width;
    v51 = v100.size.height;
    if (CGRectIsInfinite(v100))
    {
      *&v87.a = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
      *&v87.c = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    }

    else
    {
      v101.origin.x = v48;
      v101.origin.y = v49;
      v101.size.width = v50;
      v101.size.height = v51;
      if (CGRectIsNull(v101))
      {
        *&v87.a = vdupq_n_s64(0x7FF0000000000000uLL);
        v87.c = 0.0;
        v87.d = 0.0;
      }

      else
      {
        v87.a = v48;
        v87.b = v49;
        v87.c = v50;
        v87.d = v51;
      }
    }

    Rectangle::inset(&v87, -2.0, -0.0, &v84);
    if (fabs(v84.f64[0]) == INFINITY || fabs(v84.f64[1]) == INFINITY)
    {
      *&v88.var0 = vdupq_n_s64(0x7FF0000000000000uLL);
      v88.var2 = 0.0;
      v88.var3 = 0.0;
    }

    else
    {
      v59 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      v60 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
      if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v84, v60), vceqq_f64(v85, v59))))))
      {
        v88.var0 = v8 * v84.f64[0];
        v88.var1 = v84.f64[1];
        v88.var2 = v8 * v85.f64[0];
        v88.var3 = v85.f64[1];
      }

      else
      {
        *&v88.var0 = v60;
        *&v88.var2 = v59;
      }
    }

    Rectangle::integralize(&v88, 0.0001, &v91);
    *&v87.a = *&v91.var0;
    *&v87.c = *&v91.var2;
    v52 = [CIKernel kernelWithInternalRepresentation:&CI::_lanczosUpH];
    if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(*&v87.a, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL)), vceqq_f64(*&v87.c, vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL)))))))
    {
      c = v87.c;
      a = v87.a;
      b = v87.b;
      d = v87.d;
    }

    else
    {
      b = *(MEMORY[0x1E695F040] + 8);
      d = *(MEMORY[0x1E695F040] + 24);
      c = *(MEMORY[0x1E695F040] + 16);
      a = *MEMORY[0x1E695F040];
    }

    v83[0] = MEMORY[0x1E69E9820];
    v83[1] = 3221225472;
    v83[2] = __38__CILanczosScaleTransform_outputImage__block_invoke;
    v83[3] = &__block_descriptor_40_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
    *&v83[4] = v8;
    v90[0] = inputImage;
    v90[1] = [MEMORY[0x1E696AD98] numberWithDouble:{1.0 / v8, *&c}];
    inputImage = -[CIKernel applyWithExtent:roiCallback:arguments:](v52, "applyWithExtent:roiCallback:arguments:", v83, [MEMORY[0x1E695DEC8] arrayWithObjects:v90 count:2], a, b, v75, d);
  }

  if (v10 > 1.00001)
  {
    [(CIImage *)inputImage extent];
    v55 = v102.origin.x;
    v56 = v102.origin.y;
    v57 = v102.size.width;
    v58 = v102.size.height;
    if (CGRectIsInfinite(v102))
    {
      *&v87.a = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
      *&v87.c = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    }

    else
    {
      v103.origin.x = v55;
      v103.origin.y = v56;
      v103.size.width = v57;
      v103.size.height = v58;
      if (CGRectIsNull(v103))
      {
        *&v87.a = vdupq_n_s64(0x7FF0000000000000uLL);
        v87.c = 0.0;
        v87.d = 0.0;
      }

      else
      {
        v87.a = v55;
        v87.b = v56;
        v87.c = v57;
        v87.d = v58;
      }
    }

    Rectangle::inset(&v87, -0.0, -2.0, &v84);
    if (fabs(v84.f64[0]) == INFINITY || fabs(v84.f64[1]) == INFINITY)
    {
      *&v88.var0 = vdupq_n_s64(0x7FF0000000000000uLL);
      v88.var2 = 0.0;
      v88.var3 = 0.0;
    }

    else
    {
      v68 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      v69 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
      if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v84, v69), vceqq_f64(v85, v68))))))
      {
        v88.var0 = v84.f64[0];
        v88.var1 = v10 * v84.f64[1];
        v88.var2 = v85.f64[0];
        v88.var3 = vmuld_lane_f64(v10, v85, 1);
      }

      else
      {
        *&v88.var0 = v69;
        *&v88.var2 = v68;
      }
    }

    Rectangle::integralize(&v88, 0.0001, &v91);
    *&v87.a = *&v91.var0;
    *&v87.c = *&v91.var2;
    v61 = [CIKernel kernelWithInternalRepresentation:&CI::_lanczosUpV];
    if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(*&v87.a, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL)), vceqq_f64(*&v87.c, vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL)))))))
    {
      v76 = v87.c;
      v81 = v87.a;
      v62 = v87.b;
      v63 = v87.d;
    }

    else
    {
      v62 = *(MEMORY[0x1E695F040] + 8);
      v63 = *(MEMORY[0x1E695F040] + 24);
      v76 = *(MEMORY[0x1E695F040] + 16);
      v81 = *MEMORY[0x1E695F040];
    }

    v82[0] = MEMORY[0x1E69E9820];
    v82[1] = 3221225472;
    v82[2] = __38__CILanczosScaleTransform_outputImage__block_invoke_2;
    v82[3] = &__block_descriptor_40_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
    *&v82[4] = v10;
    v89[0] = inputImage;
    v89[1] = [MEMORY[0x1E696AD98] numberWithDouble:{1.0 / v10, *&v76}];
    inputImage = -[CIKernel applyWithExtent:roiCallback:arguments:](v61, "applyWithExtent:roiCallback:arguments:", v82, [MEMORY[0x1E695DEC8] arrayWithObjects:v89 count:2], v81, v62, v77, v63);
  }

  var0 = v86.var0;
  var2 = v86.var2;
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(*&v86.var0, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL)), vceqq_f64(*&v86.var2, vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL)))))))
  {
    var1 = v86.var1;
    var3 = v86.var3;
  }

  else
  {
    var0 = *MEMORY[0x1E695F040];
    var1 = *(MEMORY[0x1E695F040] + 8);
    var2 = *(MEMORY[0x1E695F040] + 16);
    var3 = *(MEMORY[0x1E695F040] + 24);
  }

  return [(CIImage *)inputImage imageByCroppingToRect:var0, var1, var2, var3];
}

double __38__CILanczosScaleTransform_outputImage__block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v8 = 1.0 / *(a1 + 32);
  *&v9 = a2;
  v10 = a3;
  v44 = LODWORD(v9);
  v45 = v10;
  *(&v9 + 1) = v10;
  v11 = upsampleHRect(v9, v8);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  *&v12 = a3 + a5;
  v47 = LODWORD(v12);
  v53.origin.x = upsampleHRect(COERCE_DOUBLE(__PAIR64__(LODWORD(v12), v44)), v8);
  v53.origin.y = v18;
  v53.size.width = v19;
  v53.size.height = v20;
  v49.origin.x = v11;
  v49.origin.y = v13;
  v49.size.width = v15;
  v49.size.height = v17;
  v50 = CGRectUnion(v49, v53);
  x = v50.origin.x;
  y = v50.origin.y;
  width = v50.size.width;
  height = v50.size.height;
  *&v50.origin.x = a2 + a4;
  LODWORD(a4) = LODWORD(v50.origin.x);
  *(&v50.origin.x + 1) = v45;
  v54.origin.x = upsampleHRect(v50.origin.x, v8);
  v54.origin.y = v25;
  v54.size.width = v26;
  v54.size.height = v27;
  v51.origin.x = x;
  v51.origin.y = y;
  v51.size.width = width;
  v51.size.height = height;
  v52 = CGRectUnion(v51, v54);
  v28 = v52.origin.x;
  v29 = v52.origin.y;
  v30 = v52.size.width;
  v31 = v52.size.height;
  v32 = upsampleHRect(COERCE_DOUBLE(__PAIR64__(v47, LODWORD(a4))), v8);
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = v28;
  v40 = v29;
  v41 = v30;
  v42 = v31;

  *&result = CGRectUnion(*&v39, *&v32);
  return result;
}

double __38__CILanczosScaleTransform_outputImage__block_invoke_2(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v8 = 1.0 / *(a1 + 32);
  v9.f32[0] = a2;
  v10 = a3;
  v44 = v9.i32[0];
  v45 = v10;
  v9.f32[1] = v10;
  v11 = upsampleVRect(v9, v8);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  *&v12 = a3 + a5;
  v47 = LODWORD(v12);
  v53.origin.x = upsampleVRect(__PAIR64__(LODWORD(v12), v44), v8);
  v53.origin.y = v18;
  v53.size.width = v19;
  v53.size.height = v20;
  v49.origin.x = v11;
  v49.origin.y = v13;
  v49.size.width = v15;
  v49.size.height = v17;
  v50 = CGRectUnion(v49, v53);
  x = v50.origin.x;
  y = v50.origin.y;
  width = v50.size.width;
  height = v50.size.height;
  *&v50.origin.x = a2 + a4;
  LODWORD(a4) = LODWORD(v50.origin.x);
  *(&v50.origin.x + 1) = v45;
  v54.origin.x = upsampleVRect(*&v50.origin.x, v8);
  v54.origin.y = v25;
  v54.size.width = v26;
  v54.size.height = v27;
  v51.origin.x = x;
  v51.origin.y = y;
  v51.size.width = width;
  v51.size.height = height;
  v52 = CGRectUnion(v51, v54);
  v28 = v52.origin.x;
  v29 = v52.origin.y;
  v30 = v52.size.width;
  v31 = v52.size.height;
  v32 = upsampleVRect(__PAIR64__(v47, LODWORD(a4)), v8);
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = v28;
  v40 = v29;
  v41 = v30;
  v42 = v31;

  *&result = CGRectUnion(*&v39, *&v32);
  return result;
}

+ (id)customAttributes
{
  v9[5] = *MEMORY[0x1E69E9840];
  v8[0] = @"CIAttributeFilterCategories";
  v7[0] = @"CICategoryGeometryAdjustment";
  v7[1] = @"CICategoryVideo";
  v7[2] = @"CICategoryStillImage";
  v7[3] = @"CICategoryBuiltIn";
  v9[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:4];
  v9[1] = @"6";
  v8[1] = @"CIAttributeFilterAvailable_iOS";
  v8[2] = @"CIAttributeFilterAvailable_Mac";
  v9[2] = @"10.4";
  v8[3] = @"inputScale";
  v5[0] = @"CIAttributeMin";
  v5[1] = @"CIAttributeSliderMin";
  v6[0] = &unk_1F1083E68;
  v6[1] = &unk_1F1083E78;
  v5[2] = @"CIAttributeSliderMax";
  v5[3] = @"CIAttributeDefault";
  v6[2] = &unk_1F1083E88;
  v6[3] = &unk_1F1083E98;
  v5[4] = @"CIAttributeIdentity";
  v5[5] = @"CIAttributeType";
  v6[4] = &unk_1F1083E98;
  v6[5] = @"CIAttributeTypeScalar";
  v9[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:6];
  v8[4] = @"inputAspectRatio";
  v3[0] = @"CIAttributeMin";
  v3[1] = @"CIAttributeSliderMin";
  v4[0] = &unk_1F1083E68;
  v4[1] = &unk_1F1083EA8;
  v3[2] = @"CIAttributeSliderMax";
  v3[3] = @"CIAttributeDefault";
  v4[2] = &unk_1F1083EB8;
  v4[3] = &unk_1F1083E98;
  v3[4] = @"CIAttributeIdentity";
  v3[5] = @"CIAttributeType";
  v4[4] = &unk_1F1083E98;
  v4[5] = @"CIAttributeTypeScalar";
  v9[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:6];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:5];
}

@end