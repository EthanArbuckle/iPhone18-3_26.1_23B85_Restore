@interface CIPerspectiveCorrection
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIPerspectiveCorrection

+ (id)customAttributes
{
  v15[8] = *MEMORY[0x1E69E9840];
  v14[0] = @"CIAttributeFilterCategories";
  v13[0] = @"CICategoryGeometryAdjustment";
  v13[1] = @"CICategoryStillImage";
  v13[2] = @"CICategoryVideo";
  v13[3] = @"CICategoryBuiltIn";
  v15[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:4];
  v15[1] = @"8";
  v14[1] = @"CIAttributeFilterAvailable_iOS";
  v14[2] = @"CIAttributeFilterAvailable_Mac";
  v15[2] = @"10.10";
  v14[3] = @"inputBottomLeft";
  v11[0] = @"CIAttributeDefault";
  v11[1] = @"CIAttributeType";
  v12[0] = [CIVector vectorWithX:155.0 Y:153.0];
  v12[1] = @"CIAttributeTypePosition";
  v15[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v14[4] = @"inputBottomRight";
  v9[0] = @"CIAttributeDefault";
  v9[1] = @"CIAttributeType";
  v10[0] = [CIVector vectorWithX:548.0 Y:140.0];
  v10[1] = @"CIAttributeTypePosition";
  v15[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v14[5] = @"inputTopRight";
  v7[0] = @"CIAttributeDefault";
  v7[1] = @"CIAttributeType";
  v8[0] = [CIVector vectorWithX:646.0 Y:507.0];
  v8[1] = @"CIAttributeTypePosition";
  v15[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v14[6] = @"inputTopLeft";
  v5[0] = @"CIAttributeDefault";
  v5[1] = @"CIAttributeType";
  v6[0] = [CIVector vectorWithX:118.0 Y:484.0];
  v6[1] = @"CIAttributeTypePosition";
  v15[6] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v14[7] = @"inputCrop";
  v3[0] = @"CIAttributeDefault";
  v3[1] = @"CIAttributeMin";
  v4[0] = MEMORY[0x1E695E118];
  v4[1] = MEMORY[0x1E695E110];
  v3[2] = @"CIAttributeMax";
  v3[3] = @"CIAttributeType";
  v4[2] = MEMORY[0x1E695E118];
  v4[3] = @"CIAttributeTypeBoolean";
  v15[7] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:4];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:8];
}

- (id)outputImage
{
  v127[9] = *MEMORY[0x1E69E9840];
  if (!self->inputImage)
  {
    return 0;
  }

  [(CIVector *)self->inputBottomLeft X];
  v108 = v3;
  [(CIVector *)self->inputBottomLeft Y];
  v4.f64[0] = v108;
  v4.f64[1] = v5;
  v6 = vcvt_f32_f64(v4);
  [(CIVector *)self->inputBottomRight X];
  v109 = v7;
  [(CIVector *)self->inputBottomRight Y];
  v8.f64[0] = v109;
  v8.f64[1] = v9;
  v10 = vcvt_f32_f64(v8);
  [(CIVector *)self->inputTopLeft X];
  v110 = v11;
  [(CIVector *)self->inputTopLeft Y];
  v12.f64[0] = v110;
  v12.f64[1] = v13;
  v14 = vcvt_f32_f64(v12);
  [(CIVector *)self->inputTopRight X];
  v111 = v15;
  [(CIVector *)self->inputTopRight Y];
  _Q1.f64[0] = v111;
  _Q1.f64[1] = v17;
  v18 = vcvt_f32_f64(_Q1);
  v19 = vsub_f32(v6, v10);
  v20 = vmul_f32(v19, v19);
  *&_Q1.f64[0] = vsub_f32(v18, v14);
  *&_Q1.f64[0] = vmul_f32(*&_Q1.f64[0], *&_Q1.f64[0]);
  v21 = vsub_f32(v6, v14);
  v22 = vmul_f32(v21, v21);
  v23 = vsub_f32(v18, v10);
  v24 = vmul_f32(v23, v23);
  v25 = vsqrt_f32(vadd_f32(vzip1_s32(v22, v20), vzip2_s32(v22, v20)));
  *&_Q1.f64[0] = vsqrt_f32(vadd_f32(vzip1_s32(v24, *&_Q1.f64[0]), vzip2_s32(v24, *&_Q1.f64[0])));
  v26 = vrev64_s32(vmaxnm_f32(v25, *&_Q1.f64[0]));
  v27 = vdiv_f32(v25, *&_Q1.f64[0]);
  __asm { FMOV            V1.2S, #1.0 }

  v32 = vbsl_s8(vcgt_f32(v27, *&_Q1.f64[0]), v27, vdiv_f32(*&_Q1.f64[0], v27));
  v33 = v32.f32[1];
  if (v32.f32[0] > v32.f32[1])
  {
    v33 = v32.f32[0];
  }

  if (v33 <= 2.0)
  {
    v112 = v32;
  }

  else
  {
    v112 = vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(v32), 2.0 / v33));
  }

  computeHomogeneousPerspectiveTransformAndInverse(v126, v127, *&v6, v10, v18, v14);
  v35.f64[0] = v127[1];
  v36 = v127[6];
  v37 = v127[7];
  v38.f64[0] = v127[0];
  v38.f64[1] = v127[3];
  v39.f64[0] = v127[2];
  v35.f64[1] = v127[4];
  v97 = v35;
  v39.f64[1] = v127[5];
  v95 = v38;
  v96 = v39;
  v40 = v127[8];
  v35.f64[0] = v126[0];
  v35.f64[1] = v126[3];
  v41.f64[0] = v126[2];
  v105 = v35;
  v113 = vcvtq_f64_f32(vmul_f32(v26, v112));
  v35.f64[0] = v126[1];
  v35.f64[1] = v126[4];
  v43 = v126[6];
  v42 = v126[7];
  v41.f64[1] = v126[5];
  v100 = v35;
  v103 = v41;
  v44 = v126[8];
  [(CIImage *)self->inputImage extent];
  if (CGRectIsInfinite(v128))
  {
    goto LABEL_22;
  }

  *v46.f32 = vcvt_f32_f64(vmulq_n_f64(v105, v113.f64[0]));
  v47 = v43 * v113.f64[0];
  v46.f32[2] = v47;
  v106 = v46;
  *v46.f32 = vcvt_f32_f64(vmulq_laneq_f64(v100, v113, 1));
  v48 = vmuld_lane_f64(v42, v113, 1);
  v46.f32[2] = v48;
  v101 = v46;
  *v46.f32 = vcvt_f32_f64(v103);
  v49 = v44;
  v46.f32[2] = v49;
  v104 = v46;
  [(CIImage *)self->inputImage extent];
  x = v129.origin.x;
  y = v129.origin.y;
  width = v129.size.width;
  height = v129.size.height;
  if (CGRectIsInfinite(v129))
  {
    y = -8.98846567e307;
    v54 = 1.79769313e308;
    v55 = 1.79769313e308;
    v56 = -8.98846567e307;
  }

  else
  {
    v130.origin.x = x;
    v130.origin.y = y;
    v130.size.width = width;
    v130.size.height = height;
    IsNull = CGRectIsNull(v130);
    v54 = IsNull ? 0.0 : width;
    v55 = IsNull ? 0.0 : height;
    if (IsNull)
    {
      y = INFINITY;
      v56 = INFINITY;
    }

    else
    {
      v56 = x;
    }
  }

  *&v124.var0 = vdupq_n_s64(0x7FF0000000000000uLL);
  v124.var2 = 0.0;
  v124.var3 = 0.0;
  v58 = v56;
  v59 = y;
  __asm { FMOV            V1.4S, #1.0 }

  v98 = _Q1;
  _Q1.f32[0] = v58;
  v90 = _Q1;
  v92 = v59;
  v61 = _Q1;
  v61.f32[1] = v59;
  v62 = vmulq_f32(v106, v61);
  v63 = vmulq_f32(v101, v61);
  v64 = vmulq_f32(v104, v61);
  *v64.i64 = fmax((v64.f32[2] + vaddv_f32(*v64.f32)), 0.000001);
  v64.f32[0] = *v64.i64;
  v123 = vdiv_f32(vadd_f32(vzip1_s32(*&vextq_s8(v62, v62, 8uLL), *&vextq_s8(v63, v63, 8uLL)), vadd_f32(vzip1_s32(*v62.i8, *v63.i8), vzip2_s32(*v62.i8, *v63.i8))), vdup_lane_s32(*v64.f32, 0));
  Rectangle::Union(&v124, &v123, &v121);
  *&v124.var0 = v121;
  v65 = v54 + v56;
  v66 = v98;
  v66.f32[0] = v65;
  *&v124.var2 = v122;
  v99 = v66;
  v67 = v66;
  v67.f32[1] = v92;
  v68 = vmulq_f32(v106, v67);
  v69 = vmulq_f32(v101, v67);
  v70 = vmulq_f32(v104, v67);
  *v70.i64 = fmax((v70.f32[2] + vaddv_f32(*v70.f32)), 0.000001);
  v70.f32[0] = *v70.i64;
  v123 = vdiv_f32(vadd_f32(vzip1_s32(*&vextq_s8(v68, v68, 8uLL), *&vextq_s8(v69, v69, 8uLL)), vadd_f32(vzip1_s32(*v68.i8, *v69.i8), vzip2_s32(*v68.i8, *v69.i8))), vdup_lane_s32(*v70.f32, 0));
  Rectangle::Union(&v124, &v123, &v121);
  *&v124.var0 = v121;
  *&v124.var2 = v122;
  v71 = v55 + y;
  v72 = v90;
  v93 = v71;
  v72.f32[1] = v71;
  v73 = vmulq_f32(v106, v72);
  v74 = vmulq_f32(v101, v72);
  *v73.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v73, v73, 8uLL), *&vextq_s8(v74, v74, 8uLL)), vadd_f32(vzip1_s32(*v73.i8, *v74.i8), vzip2_s32(*v73.i8, *v74.i8)));
  v75 = vmulq_f32(v104, v72);
  *v75.i64 = fmax((v75.f32[2] + vaddv_f32(*v75.f32)), 0.000001);
  v75.f32[0] = *v75.i64;
  v123 = vdiv_f32(*v73.i8, vdup_lane_s32(*v75.f32, 0));
  Rectangle::Union(&v124, &v123, &v121);
  *&v124.var0 = v121;
  *&v124.var2 = v122;
  v76 = v99;
  v76.f32[1] = v93;
  v77 = vmulq_f32(v106, v76);
  v78 = vmulq_f32(v101, v76);
  *v77.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v77, v77, 8uLL), *&vextq_s8(v78, v78, 8uLL)), vadd_f32(vzip1_s32(*v77.i8, *v78.i8), vzip2_s32(*v77.i8, *v78.i8)));
  v79 = vmulq_f32(v104, v76);
  *v79.i64 = fmax((v79.f32[2] + vaddv_f32(*v79.f32)), 0.000001);
  v79.f32[0] = *v79.i64;
  v123 = vdiv_f32(*v77.i8, vdup_lane_s32(*v79.f32, 0));
  Rectangle::Union(&v124, &v123, &v121);
  v45 = vmvnq_s8(vuzp1q_s32(vceqq_f64(v121, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL)), vceqq_f64(v122, vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL))));
  if ((vmaxv_u16(vmovn_s32(v45)) & 1) == 0)
  {
LABEL_22:
    v80 = *(MEMORY[0x1E695F040] + 8);
    v81 = *(MEMORY[0x1E695F040] + 24);
    v94 = *MEMORY[0x1E695F040];
    _kernel = [(CIPerspectiveCorrection *)self _kernel:*(MEMORY[0x1E695F040] + 16)];
  }

  else
  {
    v80 = v121.f64[1];
    v94 = v121.f64[0];
    v81 = v122.f64[1];
    _kernel = [(CIPerspectiveCorrection *)self _kernel];
  }

  v83 = _kernel;
  v84 = v36;
  v85 = v37;
  v107 = v85;
  v86 = v85;
  v87 = v40;
  v114[1] = 3221225472;
  v102 = v87;
  v114[0] = MEMORY[0x1E69E9820];
  v114[2] = __38__CIPerspectiveCorrection_outputImage__block_invoke;
  v114[3] = &__block_descriptor_80_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
  v116 = v84;
  v118 = v86;
  v115 = vcvt_f32_f64(vdivq_f64(v95, v113));
  v117 = vcvt_f32_f64(vdivq_f64(v97, v113));
  v120 = v87;
  v119 = vcvt_f32_f64(vdivq_f64(v96, v113));
  inputImage = self->inputImage;
  v125[0] = [CIVector vectorWithX:v115.f32[0] Y:v115.f32[1] Z:v84];
  v125[1] = [CIVector vectorWithX:v117.f32[0] Y:v117.f32[1] Z:v107];
  v125[2] = [CIVector vectorWithX:v119.f32[0] Y:v119.f32[1] Z:v102];
  v34 = [v83 applyWithExtent:v114 roiCallback:inputImage inputImage:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v125, 3), v94, v80, v91, v81}];
  if ([(NSNumber *)self->inputCrop BOOLValue])
  {
    return [v34 imageByCroppingToRect:{0.0, 0.0, *&v113}];
  }

  return v34;
}

void __38__CIPerspectiveCorrection_outputImage__block_invoke(float32x4_t *a1, double a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v8 = a2;
  if (CGRectIsInfinite(*&a2))
  {
    a3 = -8.98846567e307;
    v10 = 1.79769313e308;
    v11 = 1.79769313e308;
    v8 = -8.98846567e307;
  }

  else
  {
    v50.origin.x = v8;
    v50.origin.y = a3;
    v50.size.width = a4;
    v50.size.height = a5;
    IsNull = CGRectIsNull(v50);
    if (IsNull)
    {
      v10 = 0.0;
    }

    else
    {
      v10 = a4;
    }

    if (IsNull)
    {
      v11 = 0.0;
    }

    else
    {
      v11 = a5;
    }

    if (IsNull)
    {
      a3 = INFINITY;
      v8 = INFINITY;
    }
  }

  v44 = a1[3];
  v45 = a1[2];
  v46 = a1[4];
  *&v49.var0 = vdupq_n_s64(0x7FF0000000000000uLL);
  v49.var2 = 0.0;
  v49.var3 = 0.0;
  v13 = v8;
  v14 = a3;
  __asm { FMOV            V3.4S, #1.0 }

  v42 = _Q3;
  _Q3.f32[0] = v13;
  v39 = v14;
  v41 = _Q3;
  v20 = _Q3;
  v20.f32[1] = v14;
  v21 = vmulq_f32(v45, v20);
  v22 = vmulq_f32(v44, v20);
  v23 = vmulq_f32(v46, v20);
  *v23.i64 = fmax((v23.f32[2] + vaddv_f32(*v23.f32)), 0.000001);
  v23.f32[0] = *v23.i64;
  v48 = vdiv_f32(vadd_f32(vzip1_s32(*&vextq_s8(v21, v21, 8uLL), *&vextq_s8(v22, v22, 8uLL)), vadd_f32(vzip1_s32(*v21.i8, *v22.i8), vzip2_s32(*v21.i8, *v22.i8))), vdup_lane_s32(*v23.f32, 0));
  Rectangle::Union(&v49, &v48, &v47);
  v24 = v10 + v8;
  v25 = v42;
  v25.f32[0] = v24;
  v43 = v25;
  v49 = v47;
  v26 = v25;
  v26.f32[1] = v39;
  v27 = vmulq_f32(v45, v26);
  v28 = vmulq_f32(v44, v26);
  v29 = vmulq_f32(v46, v26);
  *v29.i64 = fmax((v29.f32[2] + vaddv_f32(*v29.f32)), 0.000001);
  v29.f32[0] = *v29.i64;
  v48 = vdiv_f32(vadd_f32(vzip1_s32(*&vextq_s8(v27, v27, 8uLL), *&vextq_s8(v28, v28, 8uLL)), vadd_f32(vzip1_s32(*v27.i8, *v28.i8), vzip2_s32(*v27.i8, *v28.i8))), vdup_lane_s32(*v29.f32, 0));
  Rectangle::Union(&v49, &v48, &v47);
  v49 = v47;
  v30 = v11 + a3;
  v40 = v30;
  v31 = v41;
  v31.f32[1] = v30;
  v32 = vmulq_f32(v45, v31);
  v33 = vmulq_f32(v44, v31);
  *v32.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v32, v32, 8uLL), *&vextq_s8(v33, v33, 8uLL)), vadd_f32(vzip1_s32(*v32.i8, *v33.i8), vzip2_s32(*v32.i8, *v33.i8)));
  v34 = vmulq_f32(v46, v31);
  *v34.i64 = fmax((v34.f32[2] + vaddv_f32(*v34.f32)), 0.000001);
  v34.f32[0] = *v34.i64;
  v48 = vdiv_f32(*v32.i8, vdup_lane_s32(*v34.f32, 0));
  Rectangle::Union(&v49, &v48, &v47);
  v49 = v47;
  v35 = v43;
  v35.f32[1] = v40;
  v36 = vmulq_f32(v45, v35);
  v37 = vmulq_f32(v44, v35);
  *v36.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v36, v36, 8uLL), *&vextq_s8(v37, v37, 8uLL)), vadd_f32(vzip1_s32(*v36.i8, *v37.i8), vzip2_s32(*v36.i8, *v37.i8)));
  v38 = vmulq_f32(v46, v35);
  *v38.i64 = fmax((v38.f32[2] + vaddv_f32(*v38.f32)), 0.000001);
  v38.f32[0] = *v38.i64;
  v48 = vdiv_f32(*v36.i8, vdup_lane_s32(*v38.f32, 0));
  Rectangle::Union(&v49, &v48, &v47);
}

@end