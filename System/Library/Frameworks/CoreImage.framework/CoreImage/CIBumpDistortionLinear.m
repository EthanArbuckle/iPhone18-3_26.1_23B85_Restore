@interface CIBumpDistortionLinear
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIBumpDistortionLinear

+ (id)customAttributes
{
  v13[7] = *MEMORY[0x1E69E9840];
  v12[0] = @"CIAttributeFilterCategories";
  v11[0] = @"CICategoryDistortionEffect";
  v11[1] = @"CICategoryVideo";
  v11[2] = @"CICategoryStillImage";
  v11[3] = @"CICategoryBuiltIn";
  v13[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:4];
  v13[1] = @"6";
  v12[1] = @"CIAttributeFilterAvailable_iOS";
  v12[2] = @"CIAttributeFilterAvailable_Mac";
  v13[2] = @"10.5";
  v12[3] = @"inputCenter";
  v10[0] = @"CIAttributeTypePosition";
  v9[0] = @"CIAttributeType";
  v9[1] = @"CIAttributeDefault";
  v10[1] = [CIVector vectorWithX:150.0 Y:150.0];
  v13[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v12[4] = @"inputRadius";
  v7[0] = @"CIAttributeMin";
  v7[1] = @"CIAttributeSliderMin";
  v8[0] = &unk_1F1082C48;
  v8[1] = &unk_1F1082C48;
  v7[2] = @"CIAttributeSliderMax";
  v7[3] = @"CIAttributeDefault";
  v8[2] = &unk_1F1082C58;
  v8[3] = &unk_1F1082C68;
  v7[4] = @"CIAttributeIdentity";
  v7[5] = @"CIAttributeType";
  v8[4] = &unk_1F1082C48;
  v8[5] = @"CIAttributeTypeDistance";
  v13[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:6];
  v12[5] = @"inputScale";
  v5[0] = @"CIAttributeMin";
  v5[1] = @"CIAttributeSliderMin";
  v6[0] = &unk_1F1082C78;
  v6[1] = &unk_1F1082C48;
  v5[2] = @"CIAttributeSliderMax";
  v5[3] = @"CIAttributeDefault";
  v6[2] = &unk_1F1082C88;
  v6[3] = &unk_1F1082C98;
  v5[4] = @"CIAttributeIdentity";
  v5[5] = @"CIAttributeType";
  v6[4] = &unk_1F1082C88;
  v6[5] = @"CIAttributeTypeScalar";
  v13[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:6];
  v12[6] = @"inputAngle";
  v3[0] = @"CIAttributeSliderMin";
  v3[1] = @"CIAttributeSliderMax";
  v4[0] = &unk_1F1082C48;
  v4[1] = &unk_1F1082CA8;
  v3[2] = @"CIAttributeDefault";
  v3[3] = @"CIAttributeType";
  v4[2] = &unk_1F1082C48;
  v4[3] = @"CIAttributeTypeAngle";
  v13[6] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:4];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:7];
}

- (id)outputImage
{
  v42[2] = *MEMORY[0x1E69E9840];
  [(NSNumber *)self->inputAngle floatValue];
  v4 = v3;
  [(NSNumber *)self->inputRadius floatValue];
  v6 = fmaxf(v5, 0.0);
  [(NSNumber *)self->inputScale floatValue];
  v8 = v7;
  if (fabsf(v6) >= 0.001 && fabsf(v7 + -1.0) >= 0.001)
  {
    [(CIVector *)self->inputCenter X];
    v12 = v11;
    [(CIVector *)self->inputCenter Y];
    v14 = v13;
    [(CIVector *)self->inputCenter X];
    v16 = v15;
    v17 = __sincosf_stret(v4);
    *&v16 = v16 + v17.__cosval * 10.0;
    [(CIVector *)self->inputCenter Y];
    *&v18 = v18 + v17.__sinval * 10.0;
    v19 = (*&v18 - v14);
    v20 = 1.0 / sqrt(v19 * v19 + (*&v16 - v12) * (*&v16 - v12));
    v21 = 1.0 / v6;
    v22.f64[0] = -v19;
    v22.f64[1] = (*&v16 - v12);
    v37 = vcvt_f32_f64(vmulq_n_f64(vmulq_n_f64(v22, v20), v21));
    v23 = v21 * (v20 * ((v12 * *&v18) - (v14 * *&v16)));
    v24 = [CIVector vectorWithX:v37.f32[0] Y:v37.f32[1] Z:v23 W:0.0];
    v25 = [CIVector vectorWithX:-(v17.__sinval * v6) Y:(v17.__cosval * v6) Z:v8 + -1.0 W:0.0];
    [(CIVector *)v25 X];
    v36 = v26;
    [(CIVector *)v25 Y];
    v27.f64[0] = v36;
    v27.f64[1] = v28;
    v29 = vcvt_f32_f64(v27);
    v30 = [(CIBumpDistortionLinear *)self _kernel];
    [(CIImage *)self->inputImage extent];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __37__CIBumpDistortionLinear_outputImage__block_invoke;
    v38[3] = &__block_descriptor_60_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
    v39 = v23;
    v38[4] = v37;
    v40 = v29;
    v41 = v8;
    inputImage = self->inputImage;
    v42[0] = v24;
    v42[1] = v25;
    return [v30 applyWithExtent:v38 roiCallback:inputImage inputImage:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v42, 2), v32, v33, v34, v35}];
  }

  else
  {
    v9 = self->inputImage;

    return v9;
  }
}

double __37__CIBumpDistortionLinear_outputImage__block_invoke(uint64_t a1, double result, double a3, double a4, double a5)
{
  v5 = *(a1 + 32);
  v6 = COERCE_FLOAT(HIDWORD(*(a1 + 32)));
  v7 = COERCE_FLOAT(*(a1 + 40));
  v8 = a3 * v6 + v5.f32[0] * result + v7;
  v9 = a3 * v6 + v5.f32[0] * (result + a4) + v7;
  v10 = (a3 + a5) * v6;
  v11 = v10 + v5.f32[0] * result + v7;
  v12 = v10 + v5.f32[0] * (result + a4) + v7;
  if (v8 > -1.0 || v9 > -1.0 || v11 > -1.0 || v12 > -1.0)
  {
    _NF = v8 < 1.0 || v9 < 1.0;
    v17 = _NF || v11 < 1.0;
    if (v17 || v12 < 1.0)
    {
      v19 = *(a1 + 48);
      v20 = *(a1 + 56) + -1.0;
      if (v8 <= 1.0)
      {
        v21 = v8;
      }

      else
      {
        v21 = 1.0;
      }

      if (v8 >= -1.0)
      {
        v22 = v21;
      }

      else
      {
        v22 = -1.0;
      }

      if (v9 <= 1.0)
      {
        v23 = v9;
      }

      else
      {
        v23 = 1.0;
      }

      if (v9 >= -1.0)
      {
        v24 = v23;
      }

      else
      {
        v24 = -1.0;
      }

      if (v11 <= 1.0)
      {
        v25 = v11;
      }

      else
      {
        v25 = 1.0;
      }

      if (v11 >= -1.0)
      {
        v26 = v25;
      }

      else
      {
        v26 = -1.0;
      }

      if (v12 <= 1.0)
      {
        v27 = v12;
      }

      else
      {
        v27 = 1.0;
      }

      v28.f32[0] = result;
      v29 = a3;
      __asm { FMOV            V7.4S, #1.0 }

      v34.i64[1] = _Q7.i64[1];
      v34.i32[0] = v28.i32[0];
      if (_NF)
      {
        v35 = -1.0;
      }

      else
      {
        v35 = v27;
      }

      v34.f32[1] = a3;
      v36 = vmulq_f32(v34, v5);
      v37 = v36.f32[2] + vaddv_f32(*v36.f32);
      v38 = 1.0 - fabsf(v37);
      if (v38 <= 1.0)
      {
        v39 = v38;
      }

      else
      {
        v39 = 1.0;
      }

      v40 = 0.0;
      if (v38 >= 0.0)
      {
        v41 = v39;
      }

      else
      {
        v41 = 0.0;
      }

      v42 = (v41 * -2.0 + 3.0) * v41 * v41;
      v43 = v20;
      *&v42 = v42 * v20 + 1.0;
      *&v42 = (*&v42 + -1.0) * v37;
      v44 = vadd_f32(__PAIR64__(LODWORD(v29), v28.u32[0]), vmul_n_f32(v19, *&v42));
      if ((v22 * v26) == 1.0)
      {
        v48 = v44;
      }

      else
      {
        v45 = 9;
        v46 = 0.1;
        v47 = _Q7;
        v48 = v44;
        do
        {
          v49 = v46;
          v50 = a3 + a5 * v49;
          v47.f32[0] = result;
          v51 = v47;
          v51.f32[1] = v50;
          v52 = vmulq_f32(v5, v51);
          v53 = v52.f32[2] + vaddv_f32(*v52.f32);
          v54 = 1.0 - fabsf(v53);
          if (v54 <= 1.0)
          {
            v55 = v54;
          }

          else
          {
            v55 = 1.0;
          }

          if (v54 >= 0.0)
          {
            v56 = v55;
          }

          else
          {
            v56 = 0.0;
          }

          v57.f32[0] = result;
          v58 = (v56 * -2.0 + 3.0) * v56 * v56 * v43 + 1.0;
          v57.f32[1] = a3 + a5 * v49;
          v59 = (v58 + -1.0) * v53;
          v60 = vadd_f32(v57, vmul_n_f32(v19, v59));
          v44 = vminnm_f32(v44, v60);
          v48 = vmaxnm_f32(v48, v60);
          v46 = v49 + 0.1;
          --v45;
        }

        while (v45);
      }

      v61 = a3 + a5;
      v62.i64[1] = _Q7.i64[1];
      v62.f32[0] = result;
      v28.f32[1] = v61;
      v62.f32[1] = v61;
      v63 = vmulq_f32(v62, v5);
      v64 = v63.f32[2] + vaddv_f32(*v63.f32);
      v65 = 1.0 - fabsf(v64);
      if (v65 <= 1.0)
      {
        v66 = v65;
      }

      else
      {
        v66 = 1.0;
      }

      if (v65 >= 0.0)
      {
        v40 = v66;
      }

      v67 = (v40 * -2.0 + 3.0) * v40 * v40 * v43 + 1.0;
      v68 = (v67 + -1.0) * v64;
      v69 = vadd_f32(v28, vmul_n_f32(v19, v68));
      v70 = vminnm_f32(v44, v69);
      v71 = vmaxnm_f32(v48, v69);
      if ((v26 * v35) != 1.0)
      {
        v72 = 9;
        v73 = 0.1;
        do
        {
          v74 = v73;
          v75.f32[0] = result + a4 * v74;
          v76.i64[1] = _Q7.i64[1];
          v76.i32[0] = v75.i32[0];
          v76.f32[1] = a3 + a5;
          v77 = vmulq_f32(v5, v76);
          v78 = v77.f32[2] + vaddv_f32(*v77.f32);
          v79 = 1.0 - fabsf(v78);
          if (v79 <= 1.0)
          {
            v80 = v79;
          }

          else
          {
            v80 = 1.0;
          }

          if (v79 >= 0.0)
          {
            v81 = v80;
          }

          else
          {
            v81 = 0.0;
          }

          v82 = (v81 * -2.0 + 3.0) * v81 * v81 * v43 + 1.0;
          v75.f32[1] = a3 + a5;
          v83 = (v82 + -1.0) * v78;
          v84 = vadd_f32(v75, vmul_n_f32(v19, v83));
          v70 = vminnm_f32(v70, v84);
          v71 = vmaxnm_f32(v71, v84);
          v73 = v74 + 0.1;
          --v72;
        }

        while (v72);
      }

      v85.f32[0] = result + a4;
      v86.i32[0] = v85.i32[0];
      v87.i64[1] = _Q7.i64[1];
      v87.i32[0] = v85.i32[0];
      v87.f32[1] = a3 + a5;
      v88 = vmulq_f32(v87, v5);
      v89 = v88.f32[2] + vaddv_f32(*v88.f32);
      v90 = 1.0 - fabsf(v89);
      if (v90 <= 1.0)
      {
        v91 = v90;
      }

      else
      {
        v91 = 1.0;
      }

      if (v90 < 0.0)
      {
        v91 = 0.0;
      }

      v92 = (v91 * -2.0 + 3.0) * v91 * v91 * v43 + 1.0;
      v93 = (v92 + -1.0) * v89;
      v86.f32[1] = a3 + a5;
      v94 = vadd_f32(v86, vmul_n_f32(v19, v93));
      v95 = vminnm_f32(v70, v94);
      v96 = vmaxnm_f32(v71, v94);
      if ((v35 * v24) != 1.0)
      {
        v97 = 9;
        v98 = 0.1;
        v99 = _Q7;
        do
        {
          v100 = v98;
          v101 = a3 + a5 * v100;
          v99.f32[0] = result + a4;
          v102 = v99;
          v102.f32[1] = v101;
          v103 = vmulq_f32(v5, v102);
          v104 = v103.f32[2] + vaddv_f32(*v103.f32);
          v105 = 1.0 - fabsf(v104);
          if (v105 <= 1.0)
          {
            v106 = v105;
          }

          else
          {
            v106 = 1.0;
          }

          if (v105 >= 0.0)
          {
            v107 = v106;
          }

          else
          {
            v107 = 0.0;
          }

          v108.f32[0] = result + a4;
          v109 = (v107 * -2.0 + 3.0) * v107 * v107 * v43 + 1.0;
          v108.f32[1] = a3 + a5 * v100;
          v110 = (v109 + -1.0) * v104;
          v111 = vadd_f32(v108, vmul_n_f32(v19, v110));
          v95 = vminnm_f32(v95, v111);
          v96 = vmaxnm_f32(v96, v111);
          v98 = v100 + 0.1;
          --v97;
        }

        while (v97);
      }

      v112.i64[1] = _Q7.i64[1];
      v112.f32[0] = result + a4;
      v85.f32[1] = v29;
      v112.f32[1] = v29;
      v113 = vmulq_f32(v112, v5);
      v114 = v113.f32[2] + vaddv_f32(*v113.f32);
      v115 = 1.0 - fabsf(v114);
      if (v115 <= 1.0)
      {
        v116 = v115;
      }

      else
      {
        v116 = 1.0;
      }

      if (v115 >= 0.0)
      {
        v117 = v116;
      }

      else
      {
        v117 = 0.0;
      }

      v118 = (v117 * -2.0 + 3.0) * v117 * v117 * v43 + 1.0;
      v119 = (v118 + -1.0) * v114;
      v120 = vadd_f32(v85, vmul_n_f32(v19, v119));
      v121 = vminnm_f32(v95, v120);
      v122 = vmaxnm_f32(v96, v120);
      if ((v24 * v22) != 1.0)
      {
        v123 = 9;
        v124 = 0.1;
        do
        {
          v125 = v124;
          v126.f32[0] = result + a4 * v125;
          v127.i64[1] = _Q7.i64[1];
          v127.i64[0] = __PAIR64__(LODWORD(v29), v126.u32[0]);
          v128 = vmulq_f32(v5, v127);
          v129 = v128.f32[2] + vaddv_f32(*v128.f32);
          v130 = 1.0 - fabsf(v129);
          if (v130 <= 1.0)
          {
            v131 = v130;
          }

          else
          {
            v131 = 1.0;
          }

          if (v130 >= 0.0)
          {
            v132 = v131;
          }

          else
          {
            v132 = 0.0;
          }

          v133 = (v132 * -2.0 + 3.0) * v132 * v132 * v43 + 1.0;
          v126.f32[1] = v29;
          v134 = (v133 + -1.0) * v129;
          v135 = vadd_f32(v126, vmul_n_f32(v19, v134));
          v121 = vminnm_f32(v121, v135);
          v122 = vmaxnm_f32(v122, v135);
          v124 = v125 + 0.1;
          --v123;
        }

        while (v123);
      }

      return v121.f32[0];
    }
  }

  return result;
}

@end