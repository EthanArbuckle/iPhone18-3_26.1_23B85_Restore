@interface CIBarsSwipeTransition
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIBarsSwipeTransition

+ (id)customAttributes
{
  v13[7] = *MEMORY[0x1E69E9840];
  v12[0] = @"CIAttributeFilterCategories";
  v11[0] = @"CICategoryTransition";
  v11[1] = @"CICategoryVideo";
  v11[2] = @"CICategoryStillImage";
  v11[3] = @"CICategoryBuiltIn";
  v13[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:4];
  v13[1] = @"6";
  v12[1] = @"CIAttributeFilterAvailable_iOS";
  v12[2] = @"CIAttributeFilterAvailable_Mac";
  v13[2] = @"10.5";
  v12[3] = @"inputAngle";
  v9[0] = @"CIAttributeSliderMin";
  v9[1] = @"CIAttributeSliderMax";
  v10[0] = &unk_1F1082AB8;
  v10[1] = &unk_1F1082AC8;
  v9[2] = @"CIAttributeDefault";
  v9[3] = @"CIAttributeType";
  v10[2] = &unk_1F1082AD8;
  v10[3] = @"CIAttributeTypeAngle";
  v13[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:4];
  v12[4] = @"inputWidth";
  v7[0] = @"CIAttributeMin";
  v7[1] = @"CIAttributeSliderMin";
  v8[0] = &unk_1F1082AE8;
  v8[1] = &unk_1F1082AE8;
  v7[2] = @"CIAttributeSliderMax";
  v7[3] = @"CIAttributeDefault";
  v8[2] = &unk_1F1082AF8;
  v8[3] = &unk_1F1082B08;
  v7[4] = @"CIAttributeType";
  v8[4] = @"CIAttributeTypeDistance";
  v13[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:5];
  v12[5] = @"inputBarOffset";
  v5[0] = @"CIAttributeMin";
  v5[1] = @"CIAttributeSliderMin";
  v6[0] = &unk_1F1082B18;
  v6[1] = &unk_1F1082B18;
  v5[2] = @"CIAttributeSliderMax";
  v5[3] = @"CIAttributeDefault";
  v6[2] = &unk_1F1082B28;
  v6[3] = &unk_1F1082B38;
  v5[4] = @"CIAttributeType";
  v6[4] = @"CIAttributeTypeScalar";
  v13[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:5];
  v12[6] = @"inputTime";
  v3[0] = @"CIAttributeMin";
  v3[1] = @"CIAttributeSliderMin";
  v4[0] = &unk_1F1082AB8;
  v4[1] = &unk_1F1082AB8;
  v3[2] = @"CIAttributeSliderMax";
  v3[3] = @"CIAttributeMax";
  v4[2] = &unk_1F1082B18;
  v4[3] = &unk_1F1082B18;
  v3[4] = @"CIAttributeDefault";
  v3[5] = @"CIAttributeType";
  v4[4] = &unk_1F1082AB8;
  v4[5] = @"CIAttributeTypeTime";
  v13[6] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:6];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:7];
}

- (id)outputImage
{
  v81[3] = *MEMORY[0x1E69E9840];
  inputImage = self->inputImage;
  if (!inputImage)
  {
    return self->inputTargetImage;
  }

  [(CIImage *)inputImage extent];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(CIImage *)self->inputTargetImage extent];
  r2a = v12;
  v52 = v14;
  v53 = v13;
  v16 = v15;
  [(NSNumber *)self->inputAngle floatValue];
  v18 = v17;
  [(NSNumber *)self->inputTime floatValue];
  v59 = fminf(fmaxf(v19, 0.0), 1.0);
  v20 = __sincosf_stret(v18);
  v55 = fabs(v20.__cosval);
  v57 = fabs(v20.__sinval);
  v21 = v18 / 1.57079633;
  v22 = vcvtms_s32_f32(v21);
  v62 = v7;
  v63 = v5;
  v82.origin.x = v5;
  v82.origin.y = v7;
  v60 = v11;
  v61 = v9;
  v82.size.width = v9;
  v82.size.height = v11;
  v84.origin.x = r2a;
  v84.size.width = v52;
  v84.origin.y = v53;
  v84.size.height = v16;
  v83 = CGRectUnion(v82, v84);
  *&v83.origin.y = fmin(v83.size.width, 16384.0);
  r2 = *&v83.origin.y;
  v23 = fmin(v83.size.height, 16384.0);
  [(NSNumber *)self->inputWidth floatValue];
  v25 = fmax(v24, 2.0);
  [(NSNumber *)self->inputBarOffset floatValue];
  v27 = v26;
  v28 = [CIVector vectorWithX:-(v20.__sinval * v26) Y:v20.__cosval * v26];
  [(CIVector *)v28 X];
  v54 = v29;
  [(CIVector *)v28 Y];
  v30.f64[0] = v54;
  v30.f64[1] = v31;
  v32 = vcvt_f32_f64(v30);
  switch(v22)
  {
    case 3u:
      v35 = [CIVector vectorWithX:v55 / v25 Y:-v57 / v25 Z:v57 * v23 / v25];
      *&v36 = v55;
      cosval = v57;
      *&v38 = v23;
      v34 = r2;
      break;
    case 2u:
      v35 = [CIVector vectorWithX:-v55 / v25 Y:-v57 / v25 Z:v55 * r2 / v25 + v57 * v23 / v25];
      *&v36 = v57;
      cosval = v55;
      *&v38 = r2;
      v34 = v23;
      break;
    case 1u:
      v33 = [CIVector vectorWithX:-v55 / v25 Y:v57 / v25 Z:v55 * r2 / v25];
      v34 = r2;
      v35 = v33;
      *&v36 = v55;
      cosval = v57;
      *&v38 = v23;
      break;
    default:
      v35 = [CIVector vectorWithX:v55 / v25 Y:v57 / v25 Z:0.0];
      *&v38 = r2;
      *&v36 = v20.__sinval;
      v34 = v23;
      cosval = v20.__cosval;
      break;
  }

  *(&v36 + 1) = cosval;
  *(&v38 + 1) = v34;
  v58 = v38;
  r2_16 = v36;
  v40 = maximum_time(v38, v36, v25, v27);
  [(CIVector *)v35 X];
  r2b = v41;
  [(CIVector *)v35 Y];
  v42.f64[0] = r2b;
  v42.f64[1] = v43;
  v56 = vcvt_f32_f64(v42);
  [(CIVector *)v35 Z];
  v45 = v44;
  *&v46 = v59 * v40;
  v47 = [(CIBarsSwipeTransition *)self _kernel];
  v48 = *MEMORY[0x1E695F040];
  v49 = *(MEMORY[0x1E695F040] + 8);
  v50 = *(MEMORY[0x1E695F040] + 16);
  r2c = *(MEMORY[0x1E695F040] + 24);
  v69[0] = MEMORY[0x1E69E9820];
  v69[1] = 3221225472;
  v69[2] = __36__CIBarsSwipeTransition_outputImage__block_invoke;
  v69[3] = &__block_descriptor_116_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
  v70 = v45;
  v69[4] = v56;
  v71 = r2_16;
  v72 = v32;
  v78 = v25;
  v79 = v46;
  v73 = v58;
  v74 = v63;
  v75 = v62;
  v76 = v61;
  v77 = v60;
  v80 = v22;
  v51 = self->inputImage;
  v81[0] = v35;
  v81[1] = v28;
  v81[2] = [MEMORY[0x1E696AD98] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(HIDWORD(v58), v46))}];
  return [objc_msgSend(objc_msgSend(v47 applyWithExtent:v69 roiCallback:v51 inputImage:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v81, 3), v48, v49, v50, r2c), "imageByCompositingOverImage:", self->inputTargetImage), "imageByCroppingToRect:", v63, v62, v61, v60}];
}

double __36__CIBarsSwipeTransition_outputImage__block_invoke(uint64_t a1, double a2, double a3, CGFloat a4, CGFloat a5)
{
  v7 = a3;
  v8 = a2;
  v9 = *(a1 + 56);
  v102 = *(a1 + 48);
  v10 = *(a1 + 104);
  v11 = *(a1 + 108);
  v122 = *(a1 + 64);
  v12.f32[0] = a2;
  v110 = v12.i32[0];
  v13 = a3;
  v115 = LODWORD(v13);
  v12.f32[1] = v13;
  v107 = *(a1 + 32);
  v14 = COERCE_FLOAT(*(a1 + 40));
  v155.size.width = 0.0;
  v15 = fmax((v11 - fabsf(floorf(*(&v107 + 2) + vaddv_f32(vmul_f32(v12, *&v107))))), 0.0);
  v16 = vadd_f32(v12, vmul_n_f32(v9, v15 * v15));
  v155.origin.x = v16.f32[0];
  v155.origin.y = v16.f32[1];
  v155.size.height = 0.0;
  v125 = CGRectUnion(*MEMORY[0x1E695F050], v155);
  *&v17 = v7 + a5;
  v113 = v17;
  v18 = __PAIR64__(v17, v110);
  v19 = fmax((v11 - fabsf(floorf(v14 + vaddv_f32(vmul_f32(__PAIR64__(v17, v110), *&v107))))), 0.0);
  v20 = vadd_f32(v18, vmul_n_f32(v9, v19 * v19));
  v156.origin.x = v20.f32[0];
  v156.origin.y = v20.f32[1];
  v156.size.width = 0.0;
  v156.size.height = 0.0;
  v126 = CGRectUnion(v125, v156);
  v21.f32[0] = v8 + a4;
  v111 = v21.i32[0];
  v21.i32[1] = v115;
  v157.size.width = 0.0;
  v22 = fmax((v11 - fabsf(floorf(v14 + vaddv_f32(vmul_f32(v21, *&v107))))), 0.0);
  v23 = vadd_f32(v21, vmul_n_f32(v9, v22 * v22));
  v157.origin.x = v23.f32[0];
  v157.origin.y = v23.f32[1];
  v157.size.height = 0.0;
  v127 = CGRectUnion(v126, v157);
  v105 = v14;
  v106 = v11;
  v24 = fmax((v11 - fabsf(floorf(v14 + vaddv_f32(vmul_f32(__PAIR64__(v113, v111), *&v107))))), 0.0);
  v25 = vadd_f32(__PAIR64__(v113, v111), vmul_n_f32(v9, v24 * v24));
  v158.origin.x = v25.f32[0];
  v158.origin.y = v25.f32[1];
  v158.size.width = 0.0;
  v158.size.height = 0.0;
  v128 = CGRectUnion(v127, v158);
  y = v128.origin.y;
  v27 = vcvtps_s32_f32((vmuls_lane_f32(*&v102, v122, 1) + (v122.f32[0] * *(&v102 + 1))) / v10);
  r1 = v128.size.height;
  if ((v27 & 0x80000000) == 0)
  {
    v28 = 0;
    if (v27 >= 0x400)
    {
      v27 = 1024;
    }

    v104 = v9;
    v29 = vmul_f32(v9, v9);
    v30 = vadd_f32(v29, vdup_lane_s32(v29, 1)).u32[0];
    v31 = vrsqrte_f32(v30);
    v32 = vmul_n_f32(vneg_f32(v9), vmul_f32(v31, vrsqrts_f32(v30, vmul_f32(v31, v31))).f32[0]);
    v112 = fabsf(v32.f32[1]);
    v103 = fabsf(v32.f32[0]);
    v93 = v122.f32[1] / *(&v102 + 1);
    v92 = *&v102 * v10;
    v109 = (v32.f32[1] / v32.f32[0]);
    v33 = v27 + 1;
    v114 = v10;
    v96 = a4;
    v97 = a5;
    v94 = v8;
    v95 = v7;
    x = v128.origin.x;
    while (1)
    {
      v35 = v10 * v28;
      if (v112 >= 0.00001)
      {
        width = v128.size.width;
        if (v103 >= 0.00001)
        {
          v52 = (-(v35 * *(&v102 + 1)) / *&v102);
          if (-*(&v102 + 1) * v52 >= -*(&v102 + 1) * (((*&v102 * v35) / *(&v102 + 1)) - v93))
          {
            v52 = (((*&v102 * v35) / *(&v102 + 1)) - v93);
          }

          v53 = (v92 * v28) - v52 * *(&v102 + 1);
          v136.origin.x = v8;
          v136.origin.y = v7;
          v136.size.width = a4;
          v136.size.height = a5;
          v54 = v53;
          MaxY = CGRectGetMaxY(v136);
          v118 = (MaxY - v54) / v109;
          v137.origin.x = v8;
          v137.origin.y = v7;
          v137.size.width = a4;
          v137.size.height = a5;
          if (v118 >= CGRectGetMinX(v137))
          {
            v138.origin.x = v8;
            v138.origin.y = v7;
            v138.size.width = a4;
            v138.size.height = a5;
            if (v118 <= CGRectGetMaxX(v138))
            {
              v55.f64[0] = (MaxY - v54) / v109;
              v55.f64[1] = MaxY;
              v56 = vcvt_f32_f64(v55);
              *v55.f64 = fmax((v106 - fabsf(floorf(v105 + vaddv_f32(vmul_f32(*&v107, v56))))), 0.0);
              v57 = vadd_f32(vmul_n_f32(v104, *v55.f64 * *v55.f64), v56);
              v160.origin.x = v57.f32[0];
              v160.origin.y = v57.f32[1];
              v160.size.width = 0.0;
              v160.size.height = 0.0;
              v58 = x;
              v55.f64[0] = y;
              v59 = width;
              v60 = r1;
              v139 = CGRectUnion(*(&v55 - 8), v160);
              x = v139.origin.x;
              y = v139.origin.y;
              width = v139.size.width;
              r1 = v139.size.height;
            }
          }

          v140.origin.x = v8;
          v140.origin.y = v7;
          v140.size.width = a4;
          v140.size.height = a5;
          MinY = CGRectGetMinY(v140);
          v119 = (MinY - v54) / v109;
          v141.origin.x = v8;
          v141.origin.y = v7;
          v141.size.width = a4;
          v141.size.height = a5;
          if (v119 >= CGRectGetMinX(v141))
          {
            v142.origin.x = v8;
            v142.origin.y = v7;
            v142.size.width = a4;
            v142.size.height = a5;
            if (v119 <= CGRectGetMaxX(v142))
            {
              v61.f64[0] = (MinY - v54) / v109;
              v61.f64[1] = MinY;
              v62 = vcvt_f32_f64(v61);
              *v61.f64 = fmax((v106 - fabsf(floorf(v105 + vaddv_f32(vmul_f32(*&v107, v62))))), 0.0);
              v63 = vadd_f32(vmul_n_f32(v104, *v61.f64 * *v61.f64), v62);
              v161.origin.x = v63.f32[0];
              v161.origin.y = v63.f32[1];
              v161.size.width = 0.0;
              v161.size.height = 0.0;
              v64 = x;
              v61.f64[0] = y;
              v65 = width;
              v66 = r1;
              v143 = CGRectUnion(*(&v61 - 8), v161);
              x = v143.origin.x;
              y = v143.origin.y;
              width = v143.size.width;
              r1 = v143.size.height;
            }
          }

          v144.origin.x = v8;
          v144.origin.y = v7;
          v144.size.width = a4;
          v144.size.height = a5;
          MinX = CGRectGetMinX(v144);
          v120 = v54 + v109 * MinX;
          v145.origin.x = v8;
          v145.origin.y = v7;
          v145.size.width = a4;
          v145.size.height = a5;
          if (v120 >= CGRectGetMinY(v145))
          {
            v146.origin.x = v8;
            v146.origin.y = v7;
            v146.size.width = a4;
            v146.size.height = a5;
            if (v120 <= CGRectGetMaxY(v146))
            {
              v67.f64[0] = MinX;
              v67.f64[1] = v54 + v109 * MinX;
              *&v67.f64[0] = vcvt_f32_f64(v67);
              v68 = fmax((v106 - fabsf(floorf(v105 + vaddv_f32(vmul_f32(*&v107, *&v67.f64[0]))))), 0.0);
              *&v67.f64[0] = vadd_f32(vmul_n_f32(v104, v68 * v68), *&v67.f64[0]);
              v162.origin.x = *v67.f64;
              v162.origin.y = *(v67.f64 + 1);
              v162.size.width = 0.0;
              v162.size.height = 0.0;
              v67.f64[0] = x;
              v69 = y;
              v70 = width;
              v71 = r1;
              v147 = CGRectUnion(*v67.f64, v162);
              x = v147.origin.x;
              y = v147.origin.y;
              width = v147.size.width;
              r1 = v147.size.height;
            }
          }

          v148.origin.x = v8;
          v148.origin.y = v7;
          v148.size.width = a4;
          v148.size.height = a5;
          MaxX = CGRectGetMaxX(v148);
          v121 = v54 + v109 * MaxX;
          v149.origin.x = v8;
          v149.origin.y = v7;
          v149.size.width = a4;
          v149.size.height = a5;
          if (v121 >= CGRectGetMinY(v149))
          {
            v150.origin.x = v8;
            v150.origin.y = v7;
            v150.size.width = a4;
            v150.size.height = a5;
            if (v121 <= CGRectGetMaxY(v150))
            {
              v78.f64[0] = MaxX;
              v78.f64[1] = v54 + v109 * MaxX;
              v50 = vcvt_f32_f64(v78);
              v51 = v107;
              v47 = v104;
              v48 = v105;
              v49 = v106;
              v46 = x;
              height = r1;
              v43 = width;
              goto LABEL_29;
            }
          }
        }

        else
        {
          v117 = v10 * v28;
          v38 = v35;
          v131.origin.x = v8;
          v131.origin.y = v7;
          v131.size.width = a4;
          v131.size.height = a5;
          if (CGRectGetMinY(v131) <= v35)
          {
            v132.origin.x = v8;
            v132.origin.y = v7;
            v132.size.width = a4;
            v132.size.height = a5;
            if (CGRectGetMaxY(v132) >= v38)
            {
              v133.origin.x = v8;
              v133.origin.y = v7;
              v133.size.width = a4;
              v133.size.height = a5;
              v39.f32[0] = CGRectGetMinX(v133);
              v39.f32[1] = v117;
              v40 = fmax((v106 - fabsf(floorf(v105 + vaddv_f32(vmul_f32(*&v107, v39))))), 0.0);
              v41 = vadd_f32(v39, vmul_n_f32(v104, v40 * v40));
              v159.origin.x = v41.f32[0];
              v159.origin.y = v41.f32[1];
              v159.size.width = 0.0;
              v159.size.height = 0.0;
              v134.origin.x = x;
              v134.origin.y = y;
              v134.size.width = width;
              v134.size.height = r1;
              v135 = CGRectUnion(v134, v159);
              v42 = v135.origin.x;
              y = v135.origin.y;
              v135.origin.y = v7;
              v43 = v135.size.width;
              height = v135.size.height;
              v135.origin.x = v8;
              v135.size.width = a4;
              v135.size.height = a5;
              v45 = CGRectGetMaxX(v135);
              v46 = v42;
              v47 = v104;
              v48 = v105;
              v49 = v106;
              *&v45 = v45;
              *(&v45 + 1) = v117;
              v50 = *&v45;
              v51 = v107;
LABEL_29:
              v79 = fmax((v49 - fabsf(floorf(v48 + vaddv_f32(vmul_f32(v51, v50))))), 0.0);
              v80 = vadd_f32(v50, vmul_n_f32(v47, v79 * v79));
              v164.origin.x = v80.f32[0];
              v164.origin.y = v80.f32[1];
              v164.size.width = 0.0;
              v164.size.height = 0.0;
              v154.origin.x = v46;
              v154.origin.y = y;
              v154.size.width = v43;
              v154.size.height = height;
              v128 = CGRectUnion(v154, v164);
              x = v81;
              y = v82;
              r1 = v83;
              v10 = v114;
              a4 = v96;
              a5 = v97;
              v8 = v94;
              v7 = v95;
              goto LABEL_30;
            }
          }
        }

        v10 = v114;
        v128.size.width = width;
      }

      else
      {
        v36 = v128.size.width;
        v116 = v10 * v28;
        v37 = v35;
        v129.origin.x = v8;
        v129.origin.y = v7;
        v129.size.width = a4;
        v129.size.height = a5;
        if (CGRectGetMinX(v129) <= v35)
        {
          v130.origin.x = v8;
          v130.origin.y = v7;
          v130.size.width = a4;
          v130.size.height = a5;
          if (CGRectGetMaxX(v130) >= v37)
          {
            v151.origin.x = v8;
            v151.origin.y = v7;
            v151.size.width = a4;
            v151.size.height = a5;
            *&v72 = CGRectGetMaxY(v151);
            v73 = __PAIR64__(v72, LODWORD(v116));
            v74 = fmax((v106 - fabsf(floorf(v105 + vaddv_f32(vmul_f32(*&v107, __PAIR64__(v72, LODWORD(v116))))))), 0.0);
            v47 = v104;
            v75 = vadd_f32(v73, vmul_n_f32(v104, v74 * v74));
            v163.origin.x = v75.f32[0];
            v163.origin.y = v75.f32[1];
            v163.size.width = 0.0;
            v163.size.height = 0.0;
            v152.origin.x = x;
            v152.origin.y = y;
            v152.size.width = v36;
            v152.size.height = r1;
            v153 = CGRectUnion(v152, v163);
            v76 = v153.origin.x;
            y = v153.origin.y;
            height = v153.size.height;
            v153.origin.x = v8;
            v153.origin.y = v7;
            v43 = v153.size.width;
            v153.size.width = a4;
            v153.size.height = a5;
            v77 = CGRectGetMinY(v153);
            v46 = v76;
            v48 = v105;
            v49 = v106;
            v50.f32[0] = v116;
            *&v77 = v77;
            v50.i32[1] = LODWORD(v77);
            v51 = v107;
            goto LABEL_29;
          }
        }

        v10 = v114;
        v128.size.width = v36;
      }

LABEL_30:
      if (v33 == ++v28)
      {
        goto LABEL_33;
      }
    }
  }

  x = v128.origin.x;
LABEL_33:
  v84 = x;
  v85 = y;
  v86 = r1;
  v87 = v8;
  v88 = v7;
  v89 = a4;
  v90 = a5;

  *&result = CGRectUnion(v128, *&v87);
  return result;
}

@end