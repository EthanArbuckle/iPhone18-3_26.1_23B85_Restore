@interface CIMirror
+ (id)customAttributes;
- (double)computeDOD:(float32x2_t)d@<D0> tst:(__n128)tst@<Q1> off:(int8x16_t)off@<Q2> mtx:(int8x16_t)mtx@<Q3>;
- (id)outputImage;
@end

@implementation CIMirror

+ (id)customAttributes
{
  v9[3] = *MEMORY[0x1E69E9840];
  v8[0] = @"CIAttributeFilterCategories";
  v7[0] = @"CICategoryTileEffect";
  v7[1] = @"CICategoryVideo";
  v7[2] = @"CICategoryStillImage";
  v7[3] = @"CICategoryBuiltIn";
  v7[4] = @"CICategoryApplePrivate";
  v9[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:5];
  v8[1] = @"inputPoint";
  v5[0] = @"CIAttributeDefault";
  v5[1] = @"CIAttributeType";
  v6[0] = [CIVector vectorWithX:150.0 Y:150.0];
  v6[1] = @"CIAttributeTypePosition";
  v9[1] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v8[2] = @"inputAngle";
  v3[0] = @"CIAttributeSliderMin";
  v3[1] = @"CIAttributeSliderMax";
  v4[0] = &unk_1F1084238;
  v4[1] = &unk_1F1084248;
  v3[2] = @"CIAttributeDefault";
  v3[3] = @"CIAttributeType";
  v4[2] = &unk_1F1084248;
  v4[3] = @"CIAttributeTypeAngle";
  v9[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:4];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];
}

- (double)computeDOD:(float32x2_t)d@<D0> tst:(__n128)tst@<Q1> off:(int8x16_t)off@<Q2> mtx:(int8x16_t)mtx@<Q3>
{
  [self[10] extent];
  x = v88.origin.x;
  y = v88.origin.y;
  width = v88.size.width;
  height = v88.size.height;
  if (CGRectIsInfinite(v88))
  {
    height = 1.79769313e308;
    x = -8.98846567e307;
    y = -8.98846567e307;
    width = 1.79769313e308;
  }

  else
  {
    v89.origin.x = x;
    v89.origin.y = y;
    v89.size.width = width;
    v89.size.height = height;
    if (CGRectIsNull(v89))
    {
      height = 0.0;
      x = INFINITY;
      y = INFINITY;
      width = 0.0;
    }
  }

  *a2 = vdupq_n_s64(0x7FF0000000000000uLL);
  a2[1].i64[0] = 0;
  a2[1].i64[1] = 0;
  [self[11] X];
  v13 = v12;
  [self[11] Y];
  v14 = v13;
  v69 = v14;
  v16 = v15;
  [self[12] doubleValue];
  v18 = v17;
  v67 = cos(v17);
  v19 = y + height;
  v72 = v16;
  if (fabs(v67) > 0.001)
  {
    v63 = fmin(y, v19);
    v20 = tan(v18);
    v21 = v69;
    v22.f64[0] = v69 + (v63 - v72) * v20;
    v23 = fmin(x, x + width);
    v24 = fmax(x, x + width);
    if (v22.f64[0] >= v23 && v22.f64[0] <= v24)
    {
      v22.f64[1] = v63;
      v64 = v20;
      v26 = a2[1];
      v85[0] = *a2;
      v85[1] = v26;
      extendDOD(v85, &v86, vcvt_f32_f64(v22), d, tst, off, mtx);
      v21 = v69;
      v20 = v64;
      v27 = v87;
      *a2 = v86;
      a2[1] = v27;
    }

    v28 = fmax(y, v19);
    v29.f64[0] = v21 + (v28 - v72) * v20;
    if (v29.f64[0] >= v23 && v29.f64[0] <= v24)
    {
      v29.f64[1] = v28;
      v31 = a2[1];
      v84[0] = *a2;
      v84[1] = v31;
      extendDOD(v84, &v86, vcvt_f32_f64(v29), d, tst, off, mtx);
      v32 = v87;
      *a2 = v86;
      a2[1] = v32;
    }
  }

  v33 = sin(v18);
  v34 = x + width;
  v35 = fmin(x, x + width);
  if (fabs(v33) <= 0.001)
  {
    v38 = fmin(y, v19);
    v39 = fmax(y, v19);
    v70 = fmax(x, v34);
  }

  else
  {
    v36 = v69;
    v37 = (v35 - v69) * v67 / v33 + v72;
    v38 = fmin(y, v19);
    v39 = fmax(y, v19);
    v40 = v37 < v38 || v37 > v39;
    v65 = v35;
    if (!v40)
    {
      v41.f64[0] = v35;
      v41.f64[1] = (v35 - v69) * v67 / v33 + v72;
      v42 = a2[1];
      v83[0] = *a2;
      v83[1] = v42;
      extendDOD(v83, &v86, vcvt_f32_f64(v41), d, tst, off, mtx);
      v35 = v65;
      v43 = v87;
      *a2 = v86;
      a2[1] = v43;
    }

    v44 = fmax(x, v34);
    v45 = (v44 - v36) * v67 / v33 + v72;
    v46 = v45 < v38 || v45 > v39;
    v70 = v44;
    if (!v46)
    {
      v47.f64[0] = v44;
      v47.f64[1] = (v44 - v36) * v67 / v33 + v72;
      v48 = a2[1];
      v82[0] = *a2;
      v82[1] = v48;
      extendDOD(v82, &v86, vcvt_f32_f64(v47), d, tst, off, mtx);
      v35 = v65;
      v49 = v87;
      *a2 = v86;
      a2[1] = v49;
    }
  }

  v50.f32[0] = v35;
  v66 = v50.i32[0];
  v51 = v38;
  v73 = LODWORD(v51);
  v50.f32[1] = v51;
  v52 = a2[1];
  v81[0] = *a2;
  v81[1] = v52;
  extendDOD(v81, &v86, v50, d, tst, off, mtx);
  v53 = v87;
  *a2 = v86;
  a2[1] = v53;
  *v53.i32 = v39;
  v68 = v53.i32[0];
  v54 = __PAIR64__(v53.u32[0], v66);
  v55 = a2[1];
  v80[0] = *a2;
  v80[1] = v55;
  extendDOD(v80, &v86, v54, d, tst, off, mtx);
  v56 = v87;
  *a2 = v86;
  a2[1] = v56;
  v57.f32[0] = v70;
  v71 = v57.i32[0];
  v57.i32[1] = v73;
  v58 = a2[1];
  v79[0] = *a2;
  v79[1] = v58;
  extendDOD(v79, &v86, v57, d, tst, off, mtx);
  v59 = v87;
  *a2 = v86;
  a2[1] = v59;
  v60 = a2[1];
  v78[0] = *a2;
  v78[1] = v60;
  extendDOD(v78, &v86, __PAIR64__(v68, v71), d, tst, off, mtx);
  result = *v86.i64;
  v62 = v87;
  *a2 = v86;
  a2[1] = v62;
  return result;
}

- (id)outputImage
{
  v74[4] = *MEMORY[0x1E69E9840];
  if (!self->inputImage)
  {
    return 0;
  }

  [(NSNumber *)self->inputAngle doubleValue];
  v4 = v3;
  [(CIImage *)self->inputImage extent];
  x = v75.origin.x;
  y = v75.origin.y;
  width = v75.size.width;
  height = v75.size.height;
  if (CGRectIsInfinite(v75))
  {
    height = 1.79769313e308;
    x = -8.98846567e307;
    y = -8.98846567e307;
    width = 1.79769313e308;
  }

  else
  {
    v76.origin.x = x;
    v76.origin.y = y;
    v76.size.width = width;
    v76.size.height = height;
    if (CGRectIsNull(v76))
    {
      height = 0.0;
      x = INFINITY;
      y = INFINITY;
      width = 0.0;
    }
  }

  [(CIVector *)self->inputPoint X];
  v11 = v10;
  [(CIVector *)self->inputPoint Y];
  *&v12 = v11;
  *&v14 = v13;
  v57 = *&v12;
  v59 = *&v14;
  *&v61 = COERCE_DOUBLE(__PAIR64__(v14, v12));
  v16 = __sincos_stret(v4);
  v17.f64[0] = v16.__sinval * v16.__sinval - v16.__cosval * v16.__cosval;
  v17.f64[1] = v16.__cosval * (v16.__sinval + v16.__sinval);
  *&v18 = vcvt_f32_f64(v17);
  v19 = v18;
  DWORD2(v19) = DWORD1(v18);
  v20 = v16.__cosval * v16.__cosval - v16.__sinval * v16.__sinval;
  v62 = v20;
  v63 = v19;
  v48 = v18;
  if (x != -8.98846567e307 || y != -8.98846567e307 || width != 1.79769313e308 || (v21 = *&v61, height != 1.79769313e308))
  {
    *&v21 = x + width * 0.5;
    v22 = y + height * 0.5;
    *(&v21 + 1) = v22;
  }

  v23 = *(&v21 + 1);
  v24 = -v16.__sinval * (v59 - *(&v21 + 1)) + (v57 - *&v21) * v16.__cosval;
  *&v15.__sinval = v16.__cosval;
  sinval = v16.__sinval;
  v26 = -sinval;
  v27 = v16.__sinval * v59 + -v57 * v16.__cosval;
  v54 = v26;
  v55 = *&v15.__sinval;
  v28 = v15;
  *(&v28.__sinval + 1) = v26;
  v53 = v27;
  *&v28.__cosval = v27;
  if (v24 <= 0.0)
  {
    v29 = v16.__cosval * (v24 * -2.0);
    v30 = v29;
  }

  else
  {
    v30 = 0.0;
  }

  v31 = v16.__sinval * (v24 + v24);
  if (v24 > 0.0)
  {
    v31 = 0.0;
  }

  *&v32 = v31;
  v33 = v24 + fabs(v24);
  *&v34 = v16.__cosval * v33;
  *&v35 = -(v33 * v16.__sinval);
  v51 = *&v32;
  v52 = v30;
  *&v36 = __PAIR64__(v32, LODWORD(v30));
  v49 = *&v35;
  v50 = *&v34;
  *(&v36 + 1) = __PAIR64__(v35, v34);
  v58 = v28;
  v60 = v21;
  v56 = v36;
  [CIMirror computeDOD:"computeDOD:tst:off:mtx:" tst:v21 off:v28.__sinval mtx:?];
  Rectangle::integralize(&v73, 0.0001, &v72);
  v73 = v72;
  _kernel = [(CIMirror *)self _kernel];
  v38 = v63;
  *(&v38 + 3) = v62;
  v64 = v38;
  v39 = vceqq_f64(*&v73.var2, vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL));
  v40 = vmvnq_s8(vuzp1q_s32(vceqq_f64(*&v73.var0, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL)), v39));
  if (vmaxv_u16(vmovn_s32(v40)))
  {
    v44 = *&v73.var2;
    v46 = *&v73.var0;
    var1 = v73.var1;
    var3 = v73.var3;
  }

  else
  {
    v39.i64[0] = *MEMORY[0x1E695F040];
    var1 = *(MEMORY[0x1E695F040] + 8);
    v40.i64[0] = *(MEMORY[0x1E695F040] + 16);
    var3 = *(MEMORY[0x1E695F040] + 24);
    v44 = v40;
    v46 = v39;
  }

  v65[0] = MEMORY[0x1E69E9820];
  v65[1] = 3221225472;
  v65[2] = __23__CIMirror_outputImage__block_invoke;
  v65[3] = &__block_descriptor_104_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
  v69 = v60;
  v70 = v61;
  v66 = v58;
  v67 = v56;
  v68 = v64;
  v71 = v4;
  inputImage = self->inputImage;
  v74[0] = [CIVector vectorWithX:*&v60 Y:v23, *&v44, *&v46];
  v74[1] = [CIVector vectorWithX:v55 Y:v54 Z:v53];
  v74[2] = [CIVector vectorWithX:v52 Y:v51 Z:v50 W:v49];
  v74[3] = [CIVector vectorWithX:*&v48 Y:*(&v48 + 1) Z:*(&v48 + 1) W:v62];
  return [_kernel applyWithExtent:v65 roiCallback:inputImage inputImage:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v74, 4), v47, var1, v45, var3}];
}

void __23__CIMirror_outputImage__block_invoke(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  if (CGRectIsInfinite(*&a2))
  {
    v10 = -8.98846567e307;
    v11 = 1.79769313e308;
    a5 = 1.79769313e308;
    v59 = -8.98846567e307;
  }

  else
  {
    v78.origin.x = a2;
    v78.origin.y = a3;
    v78.size.width = a4;
    v78.size.height = a5;
    IsNull = CGRectIsNull(v78);
    if (IsNull)
    {
      v11 = 0.0;
    }

    else
    {
      v11 = a4;
    }

    if (IsNull)
    {
      a5 = 0.0;
      v10 = INFINITY;
    }

    else
    {
      v10 = a3;
    }

    if (IsNull)
    {
      v13 = INFINITY;
    }

    else
    {
      v13 = a2;
    }

    v59 = v13;
  }

  v62 = *(a1 + 80);
  v57 = *(a1 + 88);
  v64 = *(a1 + 48);
  v65 = *(a1 + 32);
  v63 = *(a1 + 64);
  v14 = *(a1 + 96);
  v55 = cos(v14);
  v15 = a5 + v10;
  v53 = a5 + v10;
  if (fabs(v55) <= 0.001)
  {
    v27 = 0;
    v25 = 0x7FF0000000000000;
    v26 = 0;
    v22 = 0x7FF0000000000000;
  }

  else
  {
    v50 = fmin(v10, v15);
    v16 = tan(v14);
    v17 = *&v57;
    v18.f64[0] = *&v57 + (v50 - *(&v57 + 1)) * v16;
    v51 = v11;
    v19 = fmin(v59, v11 + v59);
    v20 = fmax(v59, v11 + v59);
    if (v18.f64[0] < v19 || v18.f64[0] > v20)
    {
      v27 = 0;
      v25 = 0x7FF0000000000000;
      v26 = 0;
      v24 = 0x7FF0000000000000;
    }

    else
    {
      v18.f64[1] = v50;
      v73 = vdupq_n_s64(0x7FF0000000000000uLL);
      v74 = 0;
      v75 = 0;
      v23 = v16;
      extendROI(&v73, &v76, vcvt_f32_f64(v18), v62, v65, v64, v63);
      v17 = *&v57;
      v16 = v23;
      v24 = *(&v76 + 1);
      v25 = v76;
      v27 = *(&v77 + 1);
      v26 = v77;
    }

    v28 = fmax(v10, v15);
    v29.f64[0] = v17 + (v28 - *(&v57 + 1)) * v16;
    if (v29.f64[0] < v19 || v29.f64[0] > v20)
    {
      v22 = v24;
    }

    else
    {
      v29.f64[1] = v28;
      v72[0] = v25;
      v72[1] = v24;
      v72[2] = v26;
      v72[3] = v27;
      extendROI(v72, &v76, vcvt_f32_f64(v29), v62, v65, v64, v63);
      v22 = *(&v76 + 1);
      v25 = v76;
      v27 = *(&v77 + 1);
      v26 = v77;
    }

    v11 = v51;
  }

  v31 = sin(v14);
  v32 = v59;
  v33 = v11 + v59;
  v34 = fmin(v59, v11 + v59);
  if (fabs(v31) <= 0.001)
  {
    v38 = fmin(v10, v53);
    v39 = fmax(v10, v53);
    v60 = fmax(v59, v33);
  }

  else
  {
    v35 = *&v57;
    v36 = *(&v57 + 1);
    v37 = (v34 - *&v57) * v55 / v31 + *(&v57 + 1);
    v38 = fmin(v10, v53);
    v39 = fmax(v10, v53);
    v40 = v37 < v38 || v37 > v39;
    v52 = v34;
    if (!v40)
    {
      v41.f64[0] = v34;
      v41.f64[1] = (v34 - *&v57) * v55 / v31 + *(&v57 + 1);
      v71[0] = v25;
      v71[1] = v22;
      v71[2] = v26;
      v71[3] = v27;
      extendROI(v71, &v76, vcvt_f32_f64(v41), v62, v65, v64, v63);
      v36 = *(&v57 + 1);
      v35 = *&v57;
      v32 = v59;
      v22 = *(&v76 + 1);
      v25 = v76;
      v27 = *(&v77 + 1);
      v26 = v77;
    }

    v42 = fmax(v32, v33);
    v43 = (v42 - v35) * v55 / v31 + v36;
    v44 = v43 < v38 || v43 > v39;
    v60 = v42;
    if (!v44)
    {
      v45.f64[0] = v42;
      v45.f64[1] = (v42 - v35) * v55 / v31 + v36;
      v70[0] = v25;
      v70[1] = v22;
      v70[2] = v26;
      v70[3] = v27;
      extendROI(v70, &v76, vcvt_f32_f64(v45), v62, v65, v64, v63);
      v22 = *(&v76 + 1);
      v25 = v76;
      v27 = *(&v77 + 1);
      v26 = v77;
    }

    v34 = v52;
  }

  v46.f32[0] = v34;
  v54 = v46.i32[0];
  v47 = v38;
  v58 = LODWORD(v47);
  v46.f32[1] = v47;
  v69[0] = v25;
  v69[1] = v22;
  v69[2] = v26;
  v69[3] = v27;
  extendROI(v69, &v76, v46, v62, v65, v64, v63);
  *&v48 = v39;
  v56 = v48;
  v68[0] = v76;
  v68[1] = v77;
  extendROI(v68, &v76, __PAIR64__(v48, v54), v62, v65, v64, v63);
  v49.f32[0] = v60;
  v61 = v49.i32[0];
  v49.i32[1] = v58;
  v67[0] = v76;
  v67[1] = v77;
  extendROI(v67, &v76, v49, v62, v65, v64, v63);
  v66[0] = v76;
  v66[1] = v77;
  extendROI(v66, &v76, __PAIR64__(v56, v61), v62, v65, v64, v63);
}

@end