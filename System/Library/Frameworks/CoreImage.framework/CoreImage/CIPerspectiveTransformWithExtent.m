@interface CIPerspectiveTransformWithExtent
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIPerspectiveTransformWithExtent

+ (id)customAttributes
{
  v15[8] = *MEMORY[0x1E69E9840];
  v14[0] = @"CIAttributeFilterCategories";
  v13[0] = @"CICategoryGeometryAdjustment";
  v13[1] = @"CICategoryVideo";
  v13[2] = @"CICategoryStillImage";
  v13[3] = @"CICategoryBuiltIn";
  v15[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:4];
  v15[1] = @"6";
  v14[1] = @"CIAttributeFilterAvailable_iOS";
  v14[2] = @"CIAttributeFilterAvailable_Mac";
  v15[2] = @"10.4";
  v14[3] = @"inputExtent";
  v11[0] = @"CIAttributeType";
  v11[1] = @"CIAttributeDefault";
  v12[0] = @"CIAttributeTypeRectangle";
  v12[1] = [CIVector vectorWithX:0.0 Y:0.0 Z:300.0 W:300.0];
  v15[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v14[4] = @"inputBottomLeft";
  v9[0] = @"CIAttributeDefault";
  v9[1] = @"CIAttributeType";
  v10[0] = [CIVector vectorWithX:155.0 Y:153.0];
  v10[1] = @"CIAttributeTypePosition";
  v15[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v14[5] = @"inputBottomRight";
  v7[0] = @"CIAttributeDefault";
  v7[1] = @"CIAttributeType";
  v8[0] = [CIVector vectorWithX:548.0 Y:140.0];
  v8[1] = @"CIAttributeTypePosition";
  v15[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v14[6] = @"inputTopRight";
  v5[0] = @"CIAttributeDefault";
  v5[1] = @"CIAttributeType";
  v6[0] = [CIVector vectorWithX:646.0 Y:507.0];
  v6[1] = @"CIAttributeTypePosition";
  v15[6] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v14[7] = @"inputTopLeft";
  v3[0] = @"CIAttributeDefault";
  v3[1] = @"CIAttributeType";
  v4[0] = [CIVector vectorWithX:118.0 Y:484.0];
  v4[1] = @"CIAttributeTypePosition";
  v15[7] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:2];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:8];
}

- (id)outputImage
{
  v81[9] = *MEMORY[0x1E69E9840];
  if (!self->inputImage)
  {
    return 0;
  }

  result = self->inputExtent;
  if (result)
  {
    [result CGRectValue];
    v5 = v4;
    v7 = v6;
    v8 = [CIVector vectorWithX:"vectorWithX:Y:" Y:?];
    [(CIVector *)v8 X];
    v59 = v9;
    [(CIVector *)v8 Y];
    v58 = v10;
    [(CIVector *)self->inputBottomLeft X];
    v60 = v11;
    [(CIVector *)self->inputBottomLeft Y];
    v12.f64[0] = v60;
    v12.f64[1] = v13;
    v78 = COERCE_DOUBLE(vcvt_f32_f64(v12));
    [(CIVector *)self->inputBottomRight X];
    v61 = v14;
    [(CIVector *)self->inputBottomRight Y];
    v15.f64[0] = v61;
    v15.f64[1] = v16;
    v77 = vcvt_f32_f64(v15);
    [(CIVector *)self->inputTopLeft X];
    v62 = v17;
    [(CIVector *)self->inputTopLeft Y];
    v18.f64[0] = v62;
    v18.f64[1] = v19;
    v76 = vcvt_f32_f64(v18);
    [(CIVector *)self->inputTopRight X];
    v63 = v20;
    [(CIVector *)self->inputTopRight Y];
    v21.f64[0] = v63;
    v21.f64[1] = v22;
    v75 = vcvt_f32_f64(v21);
    computeHomogeneousPerspectiveTransformAndInverse(v80, v81, v78, v77, v75, v76);
    v23 = [CIVector vectorWithX:v5 * v80[0] Y:v5 * v80[3] Z:v5 * v80[6]];
    v24 = [CIVector vectorWithX:v7 * v80[1] Y:v7 * v80[4] Z:v7 * v80[7]];
    v25 = [CIVector vectorWithX:v80[2] Y:v80[5] Z:v80[8]];
    [(CIVector *)v23 X];
    v64 = v26;
    [(CIVector *)v23 Y];
    v56 = v27;
    [(CIVector *)v23 Z];
    v29 = v28;
    [(CIVector *)v24 X];
    v57 = v30;
    [(CIVector *)v24 Y];
    v54 = v31;
    [(CIVector *)v24 Z];
    v33 = v32;
    [(CIVector *)v25 X];
    v55 = v34;
    [(CIVector *)v25 Y];
    v53 = v35;
    [(CIVector *)v25 Z];
    v37 = v36;
    [(CIImage *)self->inputImage extent];
    if (CGRectIsInfinite(v82) || (*&v74.var0 = vdupq_n_s64(0x7FF0000000000000uLL), v74.var2 = 0.0, v74.var3 = 0.0, Rectangle::Union(&v74, &v78, &v72), *&v74.var0 = v72, *&v74.var2 = v73, Rectangle::Union(&v74, &v77, &v72), *&v74.var0 = v72, *&v74.var2 = v73, Rectangle::Union(&v74, &v75, &v72), *&v74.var0 = v72, *&v74.var2 = v73, Rectangle::Union(&v74, &v76, &v72), *&v74.var0 = v72, *&v74.var2 = v73, Rectangle::integralize(&v74, 0.0001, &v72), v39 = vceqq_f64(v73, vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL)), v38 = vmvnq_s8(vuzp1q_s32(vceqq_f64(v72, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL)), v39)), (vmaxv_u16(vmovn_s32(v38)) & 1) == 0))
    {
      v40 = *(MEMORY[0x1E695F040] + 8);
      v41 = *(MEMORY[0x1E695F040] + 24);
      v42 = [(CIPerspectiveTransformWithExtent *)self _kernel:*(MEMORY[0x1E695F040] + 16)];
    }

    else
    {
      v40 = v72.f64[1];
      v41 = v73.f64[1];
      v42 = [(CIPerspectiveTransformWithExtent *)self _kernel:*&v73];
    }

    v43.f64[0] = v59;
    v43.f64[1] = v58;
    v44.f64[0] = v64;
    v44.f64[1] = v56;
    *&v44.f64[0] = vcvt_f32_f64(v44);
    v45 = v29;
    *&v44.f64[1] = v45;
    v46.f64[0] = v57;
    v46.f64[1] = v54;
    *&v46.f64[0] = vcvt_f32_f64(v46);
    v47 = v33;
    *&v46.f64[1] = v47;
    v48.f64[0] = v55;
    v48.f64[1] = v53;
    v49 = v37;
    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = __47__CIPerspectiveTransformWithExtent_outputImage__block_invoke;
    v65[3] = &__block_descriptor_88_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
    v66 = LODWORD(v44.f64[1]);
    v68 = LODWORD(v46.f64[1]);
    v65[4] = *&v44.f64[0];
    v67 = v46.f64[0];
    v70 = v49;
    v69 = vcvt_f32_f64(v48);
    v71 = vcvt_f32_f64(v43);
    inputImage = self->inputImage;
    v79[0] = v23;
    v79[1] = v24;
    v79[2] = v25;
    v79[3] = v8;
    return [v42 applyWithExtent:v65 roiCallback:inputImage inputImage:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v79, 4), v52, v40, v51, v41}];
  }

  return result;
}

void __47__CIPerspectiveTransformWithExtent_outputImage__block_invoke(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  if (CGRectIsInfinite(*&a2))
  {
    v10 = -8.98846567e307;
    v11 = 1.79769313e308;
    v12 = 1.79769313e308;
    v13 = -8.98846567e307;
  }

  else
  {
    v55.origin.x = a2;
    v55.origin.y = a3;
    v55.size.width = a4;
    v55.size.height = a5;
    IsNull = CGRectIsNull(v55);
    v12 = 0.0;
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
      v10 = INFINITY;
    }

    else
    {
      v12 = a5;
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
  }

  v49 = *(a1 + 48);
  v50 = *(a1 + 32);
  v51 = *(a1 + 64);
  v15 = *(a1 + 80);
  *&v54.var0 = vdupq_n_s64(0x7FF0000000000000uLL);
  v16 = v11 + v13;
  v17 = fmin(v13, v11 + v13);
  v18 = v12 + v10;
  v19 = fmin(v10, v12 + v10);
  __asm { FMOV            V2.4S, #1.0 }

  v46 = v19;
  v47 = _Q2;
  _Q2.f32[0] = v17;
  v44 = _Q2;
  v25 = _Q2;
  v25.f32[1] = v19;
  v54.var2 = 0.0;
  v54.var3 = 0.0;
  v26 = vmulq_f32(v50, v25);
  v27 = vmulq_f32(v49, v25);
  v28 = vmulq_f32(v51, v25);
  v28.f32[0] = 1.0 / fmax((v28.f32[2] + vaddv_f32(*v28.f32)), 0.000001);
  v52 = vadd_f32(v15, vmul_n_f32(vadd_f32(vzip1_s32(*&vextq_s8(v26, v26, 8uLL), *&vextq_s8(v27, v27, 8uLL)), vadd_f32(vzip1_s32(*v26.i8, *v27.i8), vzip2_s32(*v26.i8, *v27.i8))), v28.f32[0]));
  Rectangle::Union(&v54, &v52, &v53);
  v54 = v53;
  v29 = fmax(v10, v18);
  v45 = v29;
  v30 = v44;
  v30.f32[1] = v29;
  v31 = vmulq_f32(v50, v30);
  v32 = vmulq_f32(v49, v30);
  *v31.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v31, v31, 8uLL), *&vextq_s8(v32, v32, 8uLL)), vadd_f32(vzip1_s32(*v31.i8, *v32.i8), vzip2_s32(*v31.i8, *v32.i8)));
  v33 = vmulq_f32(v51, v30);
  v33.f32[0] = 1.0 / fmax((v33.f32[2] + vaddv_f32(*v33.f32)), 0.000001);
  v52 = vadd_f32(v15, vmul_n_f32(*v31.i8, v33.f32[0]));
  Rectangle::Union(&v54, &v52, &v53);
  v34 = fmax(v13, v16);
  v35 = v47;
  v35.f32[0] = v34;
  v48 = v35;
  v54 = v53;
  v36 = v35;
  v36.f32[1] = v46;
  v37 = vmulq_f32(v50, v36);
  v38 = vmulq_f32(v49, v36);
  v39 = vmulq_f32(v51, v36);
  v39.f32[0] = 1.0 / fmax((v39.f32[2] + vaddv_f32(*v39.f32)), 0.000001);
  v52 = vadd_f32(v15, vmul_n_f32(vadd_f32(vzip1_s32(*&vextq_s8(v37, v37, 8uLL), *&vextq_s8(v38, v38, 8uLL)), vadd_f32(vzip1_s32(*v37.i8, *v38.i8), vzip2_s32(*v37.i8, *v38.i8))), v39.f32[0]));
  Rectangle::Union(&v54, &v52, &v53);
  v54 = v53;
  v40 = v48;
  v40.f32[1] = v45;
  v41 = vmulq_f32(v50, v40);
  v42 = vmulq_f32(v49, v40);
  *v41.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v41, v41, 8uLL), *&vextq_s8(v42, v42, 8uLL)), vadd_f32(vzip1_s32(*v41.i8, *v42.i8), vzip2_s32(*v41.i8, *v42.i8)));
  v43 = vmulq_f32(v51, v40);
  v43.f32[0] = 1.0 / fmax((v43.f32[2] + vaddv_f32(*v43.f32)), 0.000001);
  v52 = vadd_f32(v15, vmul_n_f32(*v41.i8, v43.f32[0]));
  Rectangle::Union(&v54, &v52, &v53);
}

@end