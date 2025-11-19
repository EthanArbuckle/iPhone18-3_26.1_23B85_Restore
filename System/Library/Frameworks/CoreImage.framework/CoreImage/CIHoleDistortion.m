@interface CIHoleDistortion
+ (id)customAttributes;
- (CGRect)computeDOD;
- (id)outputImage;
@end

@implementation CIHoleDistortion

+ (id)customAttributes
{
  v9[5] = *MEMORY[0x1E69E9840];
  v8[0] = @"CIAttributeFilterCategories";
  v7[0] = @"CICategoryDistortionEffect";
  v7[1] = @"CICategoryVideo";
  v7[2] = @"CICategoryStillImage";
  v7[3] = @"CICategoryBuiltIn";
  v9[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:4];
  v9[1] = @"6";
  v8[1] = @"CIAttributeFilterAvailable_iOS";
  v8[2] = @"CIAttributeFilterAvailable_Mac";
  v9[2] = @"10.4";
  v8[3] = @"inputRadius";
  v5[0] = @"CIAttributeMin";
  v5[1] = @"CIAttributeSliderMin";
  v6[0] = &unk_1F1083DE8;
  v6[1] = &unk_1F1083DE8;
  v5[2] = @"CIAttributeSliderMax";
  v5[3] = @"CIAttributeDefault";
  v6[2] = &unk_1F1083DF8;
  v6[3] = &unk_1F1083E08;
  v5[4] = @"CIAttributeIdentity";
  v5[5] = @"CIAttributeType";
  v6[4] = &unk_1F1083E18;
  v6[5] = @"CIAttributeTypeDistance";
  v9[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:6];
  v8[4] = @"inputCenter";
  v3[0] = @"CIAttributeDefault";
  v3[1] = @"CIAttributeType";
  v4[0] = [CIVector vectorWithX:150.0 Y:150.0];
  v4[1] = @"CIAttributeTypePosition";
  v9[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:2];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:5];
}

- (CGRect)computeDOD
{
  v3 = *MEMORY[0x1E695F050];
  v110 = *(MEMORY[0x1E695F050] + 8);
  v4 = *(MEMORY[0x1E695F050] + 24);
  v106 = *(MEMORY[0x1E695F050] + 16);
  [(CIImage *)self->inputImage extent];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(CIVector *)self->inputCenter X];
  v14 = v13;
  [(CIVector *)self->inputCenter Y];
  v16 = v15;
  [(NSNumber *)self->inputRadius floatValue];
  v109 = v17;
  v112.origin.x = v6;
  v112.origin.y = v8;
  v112.size.width = v10;
  v112.size.height = v12;
  if (CGRectIsInfinite(v112))
  {
    v18 = v6;
  }

  else
  {
    v105 = v10;
    v108 = v12;
    v20.f32[0] = v14;
    v19 = v16;
    v98 = v20.f32[0];
    v99 = v19;
    v20.f32[1] = v19;
    v22.f32[0] = v6;
    v21 = v8;
    v103 = v22.i32[0];
    v101 = v21;
    v22.f32[1] = v21;
    v23 = vsub_f32(v22, v20);
    v24 = vaddv_f32(vmul_f32(v23, v23));
    if (v24 >= 0.00001)
    {
      v25 = sqrt((v109 * v109) * 4.0 / v24 + 1.0) + 1.0;
      v22 = vadd_f32(v20, vmul_n_f32(vmul_f32(v23, 0x3F0000003F000000), v25));
    }

    v26 = v110;
    v111 = v20;
    v28 = unionPointWithRect(*&v22, v3, v26, v106, v4);
    v30 = v29;
    v32 = v31;
    *&v29 = v8 + v12;
    v33 = __PAIR64__(LODWORD(v29), v103);
    v100 = LODWORD(v29);
    v34 = vsub_f32(__PAIR64__(LODWORD(v29), v103), v111);
    v35 = vaddv_f32(vmul_f32(v34, v34));
    if (v35 >= 0.00001)
    {
      v36 = sqrt((v109 * v109) * 4.0 / v35 + 1.0) + 1.0;
      v33 = vadd_f32(v111, vmul_n_f32(vmul_f32(v34, 0x3F0000003F000000), v36));
    }

    v38 = unionPointWithRect(*&v33, v28, v30, v32, v27);
    v40 = v39;
    v42 = v41;
    v43 = v10;
    v44.f32[0] = v6 + v10;
    v102 = v44.i32[0];
    v44.f32[1] = v101;
    v45 = vsub_f32(v44, v111);
    v46 = vaddv_f32(vmul_f32(v45, v45));
    if (v46 >= 0.00001)
    {
      v47 = sqrt((v109 * v109) * 4.0 / v46 + 1.0) + 1.0;
      v44 = vadd_f32(v111, vmul_n_f32(vmul_f32(v45, 0x3F0000003F000000), v47));
    }

    v107 = v8;
    v49 = unionPointWithRect(*&v44, v38, v40, v42, v37);
    v51 = v50;
    v53 = v52;
    v54 = __PAIR64__(v100, v102);
    v55 = vsub_f32(__PAIR64__(v100, v102), v111);
    v56 = vaddv_f32(vmul_f32(v55, v55));
    if (v56 >= 0.00001)
    {
      v57 = sqrt((v109 * v109) * 4.0 / v56 + 1.0) + 1.0;
      v54 = vadd_f32(v111, vmul_n_f32(vmul_f32(v55, 0x3F0000003F000000), v57));
    }

    v104 = unionPointWithRect(*&v54, v49, v51, v53, v48);
    v8 = v58;
    v10 = v59;
    v12 = v60;
    v113.origin.x = v6;
    v113.origin.y = v107;
    v113.size.width = v105;
    v113.size.height = v108;
    if (CGRectGetMinX(v113) < v98)
    {
      v114.origin.x = v6;
      v114.origin.y = v107;
      v114.size.width = v105;
      v114.size.height = v108;
      if (CGRectGetMaxX(v114) <= v98)
      {
        v43 = v105;
      }

      else
      {
        v61 = __PAIR64__(LODWORD(v101), v111.u32[0]);
        v62 = vsub_f32(__PAIR64__(LODWORD(v101), v111.u32[0]), v111);
        v63 = vaddv_f32(vmul_f32(v62, v62));
        if (v63 >= 0.00001)
        {
          v64 = sqrt((v109 * v109) * 4.0 / v63 + 1.0) + 1.0;
          v61 = vadd_f32(v111, vmul_n_f32(vmul_f32(v62, 0x3F0000003F000000), v64));
        }

        v66 = unionPointWithRect(*&v61, v104, v8, v10, v12);
        v68 = v67;
        v70 = v69;
        v71 = __PAIR64__(v100, v111.u32[0]);
        v72 = vsub_f32(__PAIR64__(v100, v111.u32[0]), v111);
        v73 = vaddv_f32(vmul_f32(v72, v72));
        v43 = v105;
        if (v73 >= 0.00001)
        {
          v74 = sqrt((v109 * v109) * 4.0 / v73 + 1.0) + 1.0;
          v71 = vadd_f32(v111, vmul_n_f32(vmul_f32(v72, 0x3F0000003F000000), v74));
        }

        v104 = unionPointWithRect(*&v71, v66, v68, v70, v65);
        v8 = v75;
        v10 = v76;
        v12 = v77;
      }
    }

    v115.origin.x = v6;
    v115.origin.y = v107;
    v115.size.width = v43;
    v115.size.height = v108;
    if (CGRectGetMinY(v115) >= v99 || (v116.origin.x = v6, v116.origin.y = v107, v116.size.width = v43, v116.size.height = v108, CGRectGetMaxY(v116) <= v99))
    {
      v18 = v104;
    }

    else
    {
      v78 = __PAIR64__(v111.u32[1], v103);
      v79 = vsub_f32(__PAIR64__(v111.u32[1], v103), v111);
      v80 = vaddv_f32(vmul_f32(v79, v79));
      if (v80 >= 0.00001)
      {
        v81 = sqrt((v109 * v109) * 4.0 / v80 + 1.0) + 1.0;
        v78 = vadd_f32(v111, vmul_n_f32(vmul_f32(v79, 0x3F0000003F000000), v81));
      }

      v83 = unionPointWithRect(*&v78, v104, v8, v10, v12);
      v85 = v84;
      v87 = v86;
      v88 = __PAIR64__(v111.u32[1], v102);
      v89 = vsub_f32(__PAIR64__(v111.u32[1], v102), v111);
      v90 = vaddv_f32(vmul_f32(v89, v89));
      if (v90 >= 0.00001)
      {
        v91 = sqrt((v109 * v109) * 4.0 / v90 + 1.0) + 1.0;
        v88 = vadd_f32(v111, vmul_n_f32(vmul_f32(v89, 0x3F0000003F000000), v91));
      }

      v18 = unionPointWithRect(*&v88, v83, v85, v87, v82);
      v8 = v92;
      v10 = v93;
      v12 = v94;
    }
  }

  v95 = v8;
  v96 = v10;
  v97 = v12;
  result.size.height = v97;
  result.size.width = v96;
  result.origin.y = v95;
  result.origin.x = v18;
  return result;
}

- (id)outputImage
{
  v23[2] = *MEMORY[0x1E69E9840];
  [(NSNumber *)self->inputRadius doubleValue];
  v4 = v3;
  if (v3 <= 0.1)
  {
    v19 = self->inputImage;

    return v19;
  }

  else
  {
    [(CIVector *)self->inputCenter X];
    v20 = v5;
    [(CIVector *)self->inputCenter Y];
    v6.f64[0] = v20;
    v6.f64[1] = v7;
    v8 = vcvt_f32_f64(v6);
    inputCenter = self->inputCenter;
    if (!inputCenter)
    {
      inputCenter = [CIVector vectorWithX:0.0 Y:0.0];
    }

    [(CIHoleDistortion *)self computeDOD];
    v26 = CGRectIntegral(v25);
    x = v26.origin.x;
    y = v26.origin.y;
    width = v26.size.width;
    height = v26.size.height;
    v14 = [(CIHoleDistortion *)self _geomKernel];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __31__CIHoleDistortion_outputImage__block_invoke;
    v21[3] = &__block_descriptor_48_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
    v21[4] = v8;
    *&v21[5] = v4;
    inputImage = self->inputImage;
    v23[0] = inputCenter;
    v23[1] = [MEMORY[0x1E696AD98] numberWithDouble:v4 * v4];
    v16 = [v14 applyWithExtent:v21 roiCallback:inputImage inputImage:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v23, 2), x, y, width, height}];
    v17 = [(CIHoleDistortion *)self _colorKernel];
    v22[0] = v16;
    v22[1] = inputCenter;
    v22[2] = [MEMORY[0x1E696AD98] numberWithDouble:v4];
    return [v17 applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v22, 3), x, y, width, height}];
  }
}

double __31__CIHoleDistortion_outputImage__block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v7 = *(a1 + 32);
  v9.f32[0] = a2;
  v10 = a3 + a5;
  *&v11 = a3 + a5;
  v12 = a2 + a4;
  v13.f32[0] = a2 + a4;
  v107 = v11;
  v108 = v13.i32[0];
  v109 = v9.i32[0];
  v110 = __PAIR64__(v11, v13.u32[0]);
  v14 = a3;
  v9.f32[1] = v14;
  v106 = v14;
  v13.f32[1] = v14;
  v112 = v9;
  v115 = v13;
  v15 = vsub_f32(__PAIR64__(v11, v9.u32[0]), v7);
  v16 = sqrtf(vaddv_f32(vmul_f32(v15, v15)));
  v17 = 1.0 / v16;
  if (v16 == 0.0)
  {
    v17 = 0.0;
  }

  v18 = vmul_n_f32(v15, v17);
  v8 = *(a1 + 40);
  v118 = -(v8 * v8);
  v120 = *(a1 + 32);
  v19 = v16 + (v118 * v17);
  if (v19 <= 0.0)
  {
    v19 = 0.0;
  }

  v21 = unionPointWithRect(COERCE_DOUBLE(vadd_f32(v7, vmul_n_f32(v18, v19))), *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24));
  v23 = v22;
  v25 = v24;
  v26 = vsub_f32(v110, v120);
  v27 = sqrtf(vaddv_f32(vmul_f32(v26, v26)));
  v28 = 1.0 / v27;
  if (v27 == 0.0)
  {
    v28 = 0.0;
  }

  v29 = vmul_n_f32(v26, v28);
  v30 = v27 + (v118 * v28);
  if (v30 <= 0.0)
  {
    v30 = 0.0;
  }

  v32 = unionPointWithRect(COERCE_DOUBLE(vadd_f32(v120, vmul_n_f32(v29, v30))), v21, v23, v25, v20);
  v34 = v33;
  v36 = v35;
  v37 = vsub_f32(v112, v120);
  v38 = sqrtf(vaddv_f32(vmul_f32(v37, v37)));
  v39 = 1.0 / v38;
  if (v38 == 0.0)
  {
    v39 = 0.0;
  }

  v40 = vmul_n_f32(v37, v39);
  v41 = v38 + (v118 * v39);
  if (v41 <= 0.0)
  {
    v41 = 0.0;
  }

  v43 = unionPointWithRect(COERCE_DOUBLE(vadd_f32(v120, vmul_n_f32(v40, v41))), v32, v34, v36, v31);
  v45 = v44;
  v47 = v46;
  v48 = vsub_f32(v115, v120);
  v49 = sqrtf(vaddv_f32(vmul_f32(v48, v48)));
  v50 = 1.0 / v49;
  if (v49 == 0.0)
  {
    v50 = 0.0;
  }

  v51 = vmul_n_f32(v48, v50);
  v52 = v49 + (v118 * v50);
  if (v52 <= 0.0)
  {
    v52 = 0.0;
  }

  v53 = unionPointWithRect(COERCE_DOUBLE(vadd_f32(v120, vmul_n_f32(v51, v52))), v43, v45, v47, v42);
  v55 = v54;
  v57 = v56;
  v58 = v120;
  v60 = v59;
  if (a2 < v120.f32[0] && v12 > v120.f32[0])
  {
    v61 = vsub_f32(__PAIR64__(v107, v120.u32[0]), v120);
    v62 = vmul_f32(v61, v61);
    v63 = vsub_f32(__PAIR64__(LODWORD(v106), v120.u32[0]), v120);
    v64 = vmul_f32(v63, v63);
    v65 = vsqrt_f32(vadd_f32(vzip1_s32(v64, v62), vzip2_s32(v64, v62)));
    __asm { FMOV            V2.2S, #1.0 }

    v71 = vbic_s8(vdiv_f32(_D2, v65), vceqz_f32(v65));
    v116 = v71.f32[0];
    v72 = vmul_lane_f32(v61, v71, 1);
    v73 = vmla_n_f32(v65, v71, v118);
    v74 = vclez_f32(v73);
    v111 = v74.i8[0];
    v75 = v73.f32[1];
    v113 = v73.f32[0];
    if (v74.i8[4])
    {
      v75 = 0.0;
    }

    v78 = unionPointWithRect(COERCE_DOUBLE(vadd_f32(v120, vmul_n_f32(v72, v75))), v53, v55, v57, v60);
    v80 = v79;
    v81 = vmul_n_f32(v63, v116);
    v82 = v113;
    if (v111)
    {
      v82 = 0.0;
    }

    v53 = unionPointWithRect(COERCE_DOUBLE(vadd_f32(v120, vmul_n_f32(v81, v82))), v78, v80, v76, v77);
    v55 = v83;
    v57 = v84;
    v58 = v120;
    v60 = v85;
  }

  if (a3 < v58.f32[1] && v10 > v58.f32[1])
  {
    v86 = vsub_f32(__PAIR64__(v58.u32[1], v108), v58);
    v87 = vmul_f32(v86, v86);
    v88 = v58;
    v58.i32[0] = v109;
    v89 = vsub_f32(v58, v88);
    v90 = vmul_f32(v89, v89);
    v91 = vsqrt_f32(vadd_f32(vzip1_s32(v90, v87), vzip2_s32(v90, v87)));
    __asm { FMOV            V2.2S, #1.0 }

    v93 = vbic_s8(vdiv_f32(_D2, v91), vceqz_f32(v91));
    v117 = v93.f32[0];
    v94 = vmul_lane_f32(v86, v93, 1);
    v95 = vmla_n_f32(v91, v93, v118);
    v119 = v95.f32[0];
    v96 = vclez_f32(v95);
    v114 = v96.i8[0];
    v97 = v95.f32[1];
    if (v96.i8[4])
    {
      v97 = 0.0;
    }

    v100 = unionPointWithRect(COERCE_DOUBLE(vadd_f32(v88, vmul_n_f32(v94, v97))), v53, v55, v57, v60);
    v102 = v101;
    v103 = vmul_n_f32(v89, v117);
    v104 = v119;
    if (v114)
    {
      v104 = 0.0;
    }

    return unionPointWithRect(COERCE_DOUBLE(vadd_f32(v120, vmul_n_f32(v103, v104))), v100, v102, v98, v99);
  }

  return v53;
}

@end