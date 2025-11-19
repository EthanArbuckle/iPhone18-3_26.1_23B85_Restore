@interface CITriangleKaleidoscope
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CITriangleKaleidoscope

+ (id)customAttributes
{
  v13[7] = *MEMORY[0x1E69E9840];
  v12[0] = @"CIAttributeFilterCategories";
  v11[0] = @"CICategoryTileEffect";
  v11[1] = @"CICategoryVideo";
  v11[2] = @"CICategoryStillImage";
  v11[3] = @"CICategoryBuiltIn";
  v13[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:4];
  v13[1] = @"6";
  v12[1] = @"CIAttributeFilterAvailable_iOS";
  v12[2] = @"CIAttributeFilterAvailable_Mac";
  v13[2] = @"10.10";
  v12[3] = @"inputPoint";
  v9[0] = @"CIAttributeDefault";
  v9[1] = @"CIAttributeType";
  v10[0] = [CIVector vectorWithX:150.0 Y:150.0];
  v10[1] = @"CIAttributeTypePosition";
  v13[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v12[4] = @"inputRotation";
  v7[0] = @"CIAttributeSliderMin";
  v7[1] = @"CIAttributeSliderMax";
  v8[0] = &unk_1F1084EC8;
  v8[1] = &unk_1F1084ED8;
  v7[2] = @"CIAttributeDefault";
  v7[3] = @"CIAttributeType";
  v8[2] = &unk_1F1084EE8;
  v8[3] = @"CIAttributeTypeAngle";
  v13[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:4];
  v12[5] = @"inputSize";
  v5[0] = @"CIAttributeSliderMin";
  v5[1] = @"CIAttributeSliderMax";
  v6[0] = &unk_1F1084EC8;
  v6[1] = &unk_1F1084EF8;
  v5[2] = @"CIAttributeDefault";
  v5[3] = @"CIAttributeType";
  v6[2] = &unk_1F1084F08;
  v6[3] = @"CIAttributeTypeScalar";
  v13[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:4];
  v12[6] = @"inputDecay";
  v3[0] = @"CIAttributeSliderMin";
  v3[1] = @"CIAttributeSliderMax";
  v4[0] = &unk_1F1084EC8;
  v4[1] = &unk_1F1084F18;
  v3[2] = @"CIAttributeDefault";
  v3[3] = @"CIAttributeType";
  v4[2] = &unk_1F1084F28;
  v4[3] = @"CIAttributeTypeScalar";
  v13[6] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:4];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:7];
}

- (id)outputImage
{
  v60[3] = *MEMORY[0x1E69E9840];
  if (!self->inputImage)
  {
    return 0;
  }

  [(NSNumber *)self->inputDecay floatValue];
  v55 = v3;
  [(CIVector *)self->inputPoint X];
  v53 = v4;
  [(CIVector *)self->inputPoint Y];
  v5.f64[0] = v53;
  v5.f64[1] = v6;
  v54 = vcvt_f32_f64(v5);
  [(NSNumber *)self->inputSize floatValue];
  v8 = fmax(v7, 0.01);
  v52 = v8;
  v9 = v8 * -1.5;
  v10 = v8 * 1.73205081;
  v11 = v10 / -6.0;
  [(NSNumber *)self->inputRotation floatValue];
  v13 = v12;
  v51 = v12;
  [(CIVector *)self->inputPoint X];
  v15 = v14;
  [(CIVector *)self->inputPoint Y];
  v17 = v16;
  v18 = __sincosf_stret(v13);
  v49 = ((v18.__cosval * v11) + (v18.__sinval * v9)) + v17;
  v50 = ((v18.__cosval * v9) - (v18.__sinval * v11)) + v15;
  v19 = __sincos_stret(v13 + -0.523598776);
  v20 = v10 * v19.__cosval;
  v21 = v10 * v19.__sinval;
  v22 = __sincos_stret(v13 + 0.523598776);
  v23 = v10 * v22.__cosval;
  *&v10 = v10 * v22.__sinval;
  v24 = 1.0 / ((v20 * *&v10) - (v21 * v23));
  v25 = v24 * *&v10;
  v26 = -(v21 * v24);
  v27 = -(v23 * v24);
  v28 = v24 * v20;
  v29 = [CIVector vectorWithX:v50 Y:v49];
  v30 = [CIVector vectorWithX:v25 Y:v27 Z:v26 W:v28];
  v31 = [CIVector vectorWithX:v20 Y:v23 Z:v21 W:*&v10];
  v32 = [(CITriangleKaleidoscope *)self _geomKernel];
  v33 = [(CITriangleKaleidoscope *)self _colorKernel];
  v34 = *MEMORY[0x1E695F040];
  v35 = *(MEMORY[0x1E695F040] + 8);
  v36 = *(MEMORY[0x1E695F040] + 16);
  v37 = *(MEMORY[0x1E695F040] + 24);
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __37__CITriangleKaleidoscope_outputImage__block_invoke;
  v56[3] = &__block_descriptor_48_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
  v56[4] = v54;
  inputImage = self->inputImage;
  v57 = v52;
  v58 = v51;
  v60[0] = v29;
  v60[1] = v30;
  v60[2] = v31;
  v39 = [v32 applyWithExtent:v56 roiCallback:inputImage inputImage:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v60, 3), v34, v35, v36, v37}];
  [v39 extent];
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v59[0] = v39;
  v59[1] = v29;
  v59[2] = v30;
  LODWORD(v40) = v55;
  v59[3] = [MEMORY[0x1E696AD98] numberWithFloat:v40];
  return [v33 applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v59, 4), v41, v43, v45, v47}];
}

double __37__CITriangleKaleidoscope_outputImage__block_invoke(float32x2_t *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v9 = a1[4];
  v94 = a1[5].f32[0];
  v88 = a1[5].f32[1];
  v10 = __sincos_stret(v88);
  v93 = vmulq_f64(v10, xmmword_19CF2A5F0);
  v11 = vextq_s8(v10, v10, 8uLL);
  __asm { FMOV            V2.2D, #-0.5 }

  v89 = vadd_f32(v9, vmul_n_f32(vcvt_f32_f64(vmlaq_f64(vmulq_f64(v10, xmmword_19CF2A600), 0, v11)), v94));
  v16 = vcvtq_f64_f32(vadd_f32(v9, vmul_n_f32(vcvt_f32_f64(vmlaq_f64(v93, _Q2, v11)), v94)));
  y = v16.y;
  v18 = a2;
  v11.f64[0] = a3;
  _Q2.f64[0] = a4;
  v19 = a5;
  v20 = v16.y;
  point = v16.x;
  if (CGRectContainsPoint(*(&v11 - 8), v16))
  {
    v21.f32[0] = v93.f64[0] + v10.__cosval * 0.5;
    v22 = v93.f64[1] + v10.__sinval * 0.5;
    v21.f32[1] = v22;
    v23 = vcvtq_f64_f32(vadd_f32(v9, vmul_n_f32(v21, v94)));
    v24 = v23.y;
    v96.origin.x = a2;
    v96.origin.y = a3;
    v96.size.width = a4;
    v96.size.height = a5;
    v25 = v23.y;
    x = v23.x;
    if (CGRectContainsPoint(v96, v23))
    {
      v26 = vcvtq_f64_f32(v89);
      v27 = v26.y;
      v97.origin.x = a2;
      v97.origin.y = a3;
      v97.size.width = a4;
      v97.size.height = a5;
      if (CGRectContainsPoint(v97, v26))
      {
LABEL_42:
        v101.size.width = 0.0;
        v101.size.height = 0.0;
        v103.size.width = 0.0;
        v103.size.height = 0.0;
        v103.origin.x = x;
        v101.origin.x = point;
        v101.origin.y = y;
        v103.origin.y = v24;
        v102 = CGRectUnion(v101, v103);
        v104.origin.x = v89.f32[0];
        v104.origin.y = v89.f32[1];
        v104.size.width = 0.0;
        v104.size.height = 0.0;
        *&v42 = CGRectUnion(v102, v104);
        return v42;
      }
    }
  }

  v81 = y;
  v28.f32[0] = a2;
  v29 = a3;
  v84 = v28.i32[0];
  v85 = v29;
  v28.f32[1] = v29;
  v83 = vdup_n_s32(0x405DB3D7u);
  v30 = vmul_f32(vsub_f32(v28, v9), v83);
  v86 = a4;
  v87 = a5;
  v91 = v9;
  v31 = v30.f32[0];
  v32 = v30.f32[1];
  v30.f32[0] = v10.__cosval * v30.f32[1] + v10.__sinval * v30.f32[0];
  v82 = v30.f32[0];
  v33 = -v94;
  v34 = __sincos_stret(v88 + 2.0943951);
  v35 = a2;
  v36 = a3;
  v38 = __sincos_stret(v88 + -2.0943951);
  if (v82 >= -v94)
  {
    v37 = v34.__cosval * v32 + v34.__sinval * v31;
    _NF = v37 < v33;
  }

  else
  {
    _NF = 1;
  }

  v41 = v36;
  v42 = v35;
  if (_NF)
  {
    v43 = 1;
  }

  else
  {
    v39 = v38.__cosval * v32 + v38.__sinval * v31;
    v43 = v39 < v33;
  }

  *&v44 = v41 + v87;
  v45 = vmul_f32(vsub_f32(__PAIR64__(v44, v84), v91), v83);
  v46 = v45.f32[0];
  v47 = v45.f32[1];
  v48 = v10.__cosval * v47 + v10.__sinval * v46;
  v49 = v34.__cosval * v47 + v34.__sinval * v46;
  v50 = v38.__cosval * v47 + v38.__sinval * v46;
  v53 = v43 || v48 < v33 || v49 < v33 || v50 < v33;
  v54.f32[0] = v35 + v86;
  v55 = vmul_f32(vsub_f32(__PAIR64__(LODWORD(v85), v54.u32[0]), v91), v83);
  v56 = v55.f32[0];
  v57 = v55.f32[1];
  v58 = v10.__cosval * v57 + v10.__sinval * v56;
  v59 = v34.__cosval * v57 + v34.__sinval * v56;
  v60 = v38.__cosval * v57 + v38.__sinval * v56;
  v63 = v53 || v58 < v33 || v59 < v33 || v60 < v33;
  v54.f32[1] = v41 + v87;
  v64 = vmul_f32(vsub_f32(v54, v91), v83);
  v65 = v64.f32[0];
  v66 = v64.f32[1];
  if (v63)
  {
    v70 = 1;
  }

  else
  {
    v67 = v10.__cosval * v66 + v10.__sinval * v65;
    v70 = v67 < v33;
  }

  if (v70)
  {
    v71 = 1;
  }

  else
  {
    v68 = v34.__cosval * v66 + v34.__sinval * v65;
    v71 = v68 < v33;
  }

  if (v71)
  {
    v72 = 1;
  }

  else
  {
    v69 = v38.__cosval * v66 + v38.__sinval * v65;
    v72 = v69 < v33;
  }

  if (v72)
  {
    v98.origin.x = v35;
    v98.origin.y = v41;
    v98.size.width = v86;
    v98.size.height = v87;
    v95.x = point;
    y = v81;
    v95.y = v81;
    v73 = CGRectContainsPoint(v98, v95);
    v74.f32[0] = v93.f64[0] + v10.__cosval * 0.5;
    v75 = v93.f64[1] + v10.__sinval * 0.5;
    v74.f32[1] = v75;
    v76 = vcvtq_f64_f32(vadd_f32(v91, vmul_n_f32(v74, v94)));
    v24 = v76.y;
    x = v76.x;
    if (!v73)
    {
      v99.origin.x = v42;
      v99.origin.y = v41;
      v99.size.width = v86;
      v99.size.height = v87;
      v77 = v76.y;
      if (!CGRectContainsPoint(v99, v76))
      {
        v78 = vcvtq_f64_f32(v89);
        v79 = v78.y;
        v100.origin.x = v42;
        v100.origin.y = v41;
        v100.size.width = v86;
        v100.size.height = v87;
        CGRectContainsPoint(v100, v78);
      }
    }

    goto LABEL_42;
  }

  return v42;
}

@end