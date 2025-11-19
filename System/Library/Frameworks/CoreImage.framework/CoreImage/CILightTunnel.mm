@interface CILightTunnel
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CILightTunnel

+ (id)customAttributes
{
  v11[6] = *MEMORY[0x1E69E9840];
  v10[0] = @"CIAttributeFilterCategories";
  v9[0] = @"CICategoryDistortionEffect";
  v9[1] = @"CICategoryVideo";
  v9[2] = @"CICategoryStillImage";
  v9[3] = @"CICategoryBuiltIn";
  v11[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];
  v11[1] = @"6";
  v10[1] = @"CIAttributeFilterAvailable_iOS";
  v10[2] = @"CIAttributeFilterAvailable_Mac";
  v11[2] = @"10.10";
  v10[3] = @"inputCenter";
  v7[0] = @"CIAttributeType";
  v7[1] = @"CIAttributeDefault";
  v8[0] = @"CIAttributeTypePosition";
  v8[1] = [CIVector vectorWithX:150.0 Y:150.0];
  v11[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v10[4] = @"inputRotation";
  v5[0] = @"CIAttributeSliderMin";
  v5[1] = @"CIAttributeSliderMax";
  v6[0] = &unk_1F1084008;
  v6[1] = &unk_1F1084018;
  v5[2] = @"CIAttributeDefault";
  v5[3] = @"CIAttributeIdentity";
  v6[2] = &unk_1F1084008;
  v6[3] = &unk_1F1084008;
  v5[4] = @"CIAttributeType";
  v6[4] = @"CIAttributeTypeAngle";
  v11[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:5];
  v10[5] = @"inputRadius";
  v3[0] = @"CIAttributeSliderMin";
  v3[1] = @"CIAttributeSliderMax";
  v4[0] = &unk_1F1084028;
  v4[1] = &unk_1F1084038;
  v3[2] = @"CIAttributeDefault";
  v3[3] = @"CIAttributeIdentity";
  v4[2] = &unk_1F1084048;
  v4[3] = &unk_1F1084008;
  v3[4] = @"CIAttributeType";
  v4[4] = @"CIAttributeTypeDistance";
  v11[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:5];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:6];
}

- (id)outputImage
{
  v39[1] = *MEMORY[0x1E69E9840];
  if (!self->inputImage)
  {
    return 0;
  }

  v3 = [(CILightTunnel *)self _kernel];
  [(NSNumber *)self->inputRotation floatValue];
  v5 = v4 / 6.28318531;
  [(NSNumber *)self->inputRadius doubleValue];
  v7 = v6;
  [(CIVector *)self->inputCenter X];
  v9 = v8;
  [(CIVector *)self->inputCenter Y];
  v11 = [CIVector vectorWithX:v9 Y:v10 Z:v7 W:v5];
  [(CIVector *)v11 X];
  v31 = v12;
  [(CIVector *)v11 Y];
  v30 = v13;
  [(CIVector *)v11 Z];
  v29 = v14;
  [(CIVector *)v11 W];
  v15.f64[0] = v29;
  v15.f64[1] = v16;
  v17.f64[0] = v31;
  v17.f64[1] = v30;
  v32 = vcvt_hight_f32_f64(vcvt_f32_f64(v17), v15);
  [(CIVector *)self->inputCenter X];
  v19 = v18 - v7;
  [(CIVector *)self->inputCenter Y];
  v21 = v20 - v7;
  v22 = v7 + v7;
  v23 = *MEMORY[0x1E695F040];
  v24 = *(MEMORY[0x1E695F040] + 8);
  v25 = *(MEMORY[0x1E695F040] + 16);
  v26 = *(MEMORY[0x1E695F040] + 24);
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __28__CILightTunnel_outputImage__block_invoke;
  v33[3] = &__block_descriptor_80_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
  v35 = v19;
  v36 = v21;
  v37 = v22;
  v38 = v22;
  v34 = v32;
  inputImage = self->inputImage;
  v39[0] = v11;
  return [v3 applyWithExtent:v33 roiCallback:inputImage inputImage:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v39, 1), v23, v24, v25, v26}];
}

void __28__CILightTunnel_outputImage__block_invoke(float32x2_t *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v8 = *a1[4].f32;
  v9 = COERCE_FLOAT(*&a1[5]);
  v10 = a2;
  v11 = a3;
  v12 = vsub_f32(__PAIR64__(LODWORD(v11), LODWORD(v10)), *&v8);
  v13 = vmul_f32(v12, v12);
  v14 = sqrtf(vaddv_f32(v13));
  v15 = a3 + a5;
  v16 = vsub_f32(__PAIR64__(LODWORD(v15), LODWORD(v10)), *&v8);
  v17 = vmul_f32(v16, v16);
  v18 = sqrtf(vaddv_f32(v17));
  v19 = a2 + a4;
  v20 = vsub_f32(__PAIR64__(LODWORD(v11), LODWORD(v19)), *&v8);
  v21 = vmul_f32(v20, v20);
  v22 = sqrtf(vaddv_f32(v21));
  v23 = vsub_f32(__PAIR64__(LODWORD(v15), LODWORD(v19)), *&v8);
  v24 = vmul_f32(v23, v23);
  if (sqrtf(vaddv_f32(v24)) > v9 || v22 > v9 || v18 > v9 || v14 > v9)
  {
    LODWORD(v28) = HIDWORD(*a1[4].f32);
    if (fabsf(*(&v8 + 3)) < 0.0001)
    {
      v116 = v11;
      v117 = v15;
      v118 = v10;
      v119 = v19;
      LODWORD(v146) = HIDWORD(*&a1[4]);
      v29 = vadd_f32(v13, vdup_lane_s32(v13, 1)).u32[0];
      v131 = vadd_f32(v17, vdup_lane_s32(v17, 1)).u32[0];
      r1_16 = vadd_f32(v21, vdup_lane_s32(v21, 1)).u32[0];
      v149 = vadd_f32(v24, vdup_lane_s32(v24, 1)).u32[0];
      v126 = *(MEMORY[0x1E695F050] + 8);
      v128 = *MEMORY[0x1E695F050];
      v124 = *(MEMORY[0x1E695F050] + 16);
      v157 = a1[4];
      v122 = *(MEMORY[0x1E695F050] + 24);
      v30 = vrsqrte_f32(v29);
      v120 = v9 * vmul_f32(v30, vrsqrts_f32(v29, vmul_f32(v30, v30))).f32[0];
      v144 = a2;
      v154 = __PAIR64__(LODWORD(v15), LODWORD(v19));
      v142 = __PAIR64__(LODWORD(v11), LODWORD(v19));
      r1 = __PAIR64__(LODWORD(v15), LODWORD(v10));
      v121 = __PAIR64__(LODWORD(v11), LODWORD(v10));
      v31 = logf(v120);
      v32 = __sincosf_stret(v28 * v31);
      v33.f32[0] = -v32.__sinval;
      v33.i32[1] = LODWORD(v32.__cosval);
      v34 = vmul_f32(v12, __PAIR64__(LODWORD(v32.__sinval), LODWORD(v32.__cosval)));
      v35 = vmul_f32(v12, v33);
      v36 = vadd_f32(v157, vmul_n_f32(vadd_f32(vzip1_s32(v34, v35), vzip2_s32(v34, v35)), v120));
      v37 = 0.0;
      if (v120 <= 1.0)
      {
        v37 = 1.0;
      }

      v38 = vmla_n_f32(vmul_n_f32(v121, 1.0 - v37), v36, v37);
      v176.origin.x = v38.f32[0];
      v176.origin.y = v38.f32[1];
      v176.size.width = 0.0;
      v176.size.height = 0.0;
      v158.origin.y = v126;
      v158.origin.x = v128;
      v158.size.height = v122;
      v158.size.width = v124;
      v159 = CGRectUnion(v158, v176);
      y = v159.origin.y;
      x = v159.origin.x;
      height = v159.size.height;
      width = v159.size.width;
      *&v159.origin.x = vrsqrte_f32(v131);
      v132 = v9 * vmul_f32(*&v159.origin.x, vrsqrts_f32(v131, vmul_f32(*&v159.origin.x, *&v159.origin.x))).f32[0];
      v39 = logf(v132);
      v40 = __sincosf_stret(v28 * v39);
      v41.f32[0] = -v40.__sinval;
      v41.i32[1] = LODWORD(v40.__cosval);
      v42 = vmul_f32(v16, __PAIR64__(LODWORD(v40.__sinval), LODWORD(v40.__cosval)));
      v43 = vmul_f32(v16, v41);
      v44 = vadd_f32(v157, vmul_n_f32(vadd_f32(vzip1_s32(v42, v43), vzip2_s32(v42, v43)), v132));
      v45 = 0.0;
      if (v132 <= 1.0)
      {
        v45 = 1.0;
      }

      v46 = vmla_n_f32(vmul_n_f32(r1, 1.0 - v45), v44, v45);
      v177.origin.x = v46.f32[0];
      v177.origin.y = v46.f32[1];
      v177.size.width = 0.0;
      v177.size.height = 0.0;
      v160.origin.y = y;
      v160.origin.x = x;
      v160.size.height = height;
      v160.size.width = width;
      v161 = CGRectUnion(v160, v177);
      r1a = v161.origin.x;
      v130 = v161.size.height;
      v133 = v161.origin.y;
      v47 = v161.size.width;
      *&v161.origin.x = vrsqrte_f32(r1_16);
      r1_16b = v9 * vmul_f32(*&v161.origin.x, vrsqrts_f32(r1_16, vmul_f32(*&v161.origin.x, *&v161.origin.x))).f32[0];
      v48 = logf(r1_16b);
      v49 = __sincosf_stret(v28 * v48);
      v50.f32[0] = -v49.__sinval;
      v50.i32[1] = LODWORD(v49.__cosval);
      v51 = vmul_f32(v20, __PAIR64__(LODWORD(v49.__sinval), LODWORD(v49.__cosval)));
      v52 = vmul_f32(v20, v50);
      v53 = vadd_f32(v157, vmul_n_f32(vadd_f32(vzip1_s32(v51, v52), vzip2_s32(v51, v52)), r1_16b));
      v54 = 0.0;
      if (r1_16b <= 1.0)
      {
        v54 = 1.0;
      }

      v55 = vmla_n_f32(vmul_n_f32(v142, 1.0 - v54), v53, v54);
      v178.origin.x = v55.f32[0];
      v178.origin.y = v55.f32[1];
      v178.size.width = 0.0;
      v178.size.height = 0.0;
      v162.origin.x = r1a;
      v162.size.height = v130;
      v162.origin.y = v133;
      v162.size.width = v47;
      v163 = CGRectUnion(v162, v178);
      v56 = v163.origin.x;
      v143 = v163.origin.y;
      v57 = v163.size.width;
      r1_16a = v163.size.height;
      *&v163.origin.x = vrsqrte_f32(v149);
      v150 = v9 * vmul_f32(*&v163.origin.x, vrsqrts_f32(v149, vmul_f32(*&v163.origin.x, *&v163.origin.x))).f32[0];
      v58 = logf(v150);
      r1b = v28;
      v59 = __sincosf_stret(v28 * v58);
      v60.f32[0] = -v59.__sinval;
      v60.i32[1] = LODWORD(v59.__cosval);
      v61 = vmul_f32(v23, __PAIR64__(LODWORD(v59.__sinval), LODWORD(v59.__cosval)));
      v62 = vmul_f32(v23, v60);
      v63 = vadd_f32(v157, vmul_n_f32(vadd_f32(vzip1_s32(v61, v62), vzip2_s32(v61, v62)), v150));
      v64 = 0.0;
      if (v150 <= 1.0)
      {
        v64 = 1.0;
      }

      v65 = vmla_n_f32(vmul_n_f32(v154, 1.0 - v64), v63, v64);
      v179.origin.x = v65.f32[0];
      v179.origin.y = v65.f32[1];
      v179.size.width = 0.0;
      v179.size.height = 0.0;
      v164.origin.x = v56;
      v164.origin.y = v143;
      v164.size.width = v57;
      v164.size.height = r1_16a;
      v165 = CGRectUnion(v164, v179);
      v155 = v165.origin.x;
      v151 = v165.origin.y;
      v66 = v165.size.width;
      v67 = v165.size.height;
      v165.origin.x = v144;
      v165.origin.y = a3;
      v165.size.width = a4;
      v165.size.height = a5;
      v148 = a3;
      if (CGRectGetMinX(v165) >= v157.f32[0])
      {
        v68 = a4;
        v69 = a5;
      }

      else
      {
        v166.origin.x = v144;
        v166.origin.y = a3;
        v68 = a4;
        v166.size.width = a4;
        v69 = a5;
        v166.size.height = a5;
        if (CGRectGetMaxX(v166) > v157.f32[0])
        {
          v70 = vsub_f32(__PAIR64__(LODWORD(v116), v157.u32[0]), v157);
          v71 = vmul_f32(v70, v70);
          v71.i32[0] = vadd_f32(v71, vdup_lane_s32(v71, 1)).u32[0];
          v72 = vrsqrte_f32(v71.u32[0]);
          r1_16c = v9 * vmul_f32(v72, vrsqrts_f32(v71.u32[0], vmul_f32(v72, v72))).f32[0];
          v73 = logf(r1_16c);
          v74 = __sincosf_stret(r1b * v73);
          v75.f32[0] = -v74.__sinval;
          v75.i32[1] = LODWORD(v74.__cosval);
          v76 = vmul_f32(v70, __PAIR64__(LODWORD(v74.__sinval), LODWORD(v74.__cosval)));
          v77 = vmul_f32(v70, v75);
          v78 = vadd_f32(v157, vmul_n_f32(vadd_f32(vzip1_s32(v76, v77), vzip2_s32(v76, v77)), r1_16c));
          v79 = 0.0;
          if (r1_16c <= 1.0)
          {
            v79 = 1.0;
          }

          v80 = vmla_n_f32(vmul_n_f32(__PAIR64__(LODWORD(v116), v157.u32[0]), 1.0 - v79), v78, v79);
          v180.origin.x = v80.f32[0];
          v180.origin.y = v80.f32[1];
          v180.size.width = 0.0;
          v180.size.height = 0.0;
          v167.origin.x = v155;
          v167.origin.y = v151;
          v167.size.width = v66;
          v167.size.height = v67;
          v168 = CGRectUnion(v167, v180);
          v156 = v168.origin.x;
          v152 = v168.origin.y;
          v81 = v168.size.width;
          v82 = v168.size.height;
          v83 = vsub_f32(__PAIR64__(LODWORD(v117), v157.u32[0]), v157);
          *&v168.origin.x = vmul_f32(v83, v83);
          LODWORD(v168.origin.x) = vadd_f32(*&v168.origin.x, vdup_lane_s32(*&v168.origin.x, 1)).u32[0];
          *&v168.origin.y = vrsqrte_f32(LODWORD(v168.origin.x));
          r1_16d = v9 * vmul_f32(*&v168.origin.y, vrsqrts_f32(LODWORD(v168.origin.x), vmul_f32(*&v168.origin.y, *&v168.origin.y))).f32[0];
          v84 = logf(r1_16d);
          v85 = __sincosf_stret(r1b * v84);
          v86.f32[0] = -v85.__sinval;
          v86.i32[1] = LODWORD(v85.__cosval);
          v87 = vmul_f32(v83, __PAIR64__(LODWORD(v85.__sinval), LODWORD(v85.__cosval)));
          v88 = vmul_f32(v83, v86);
          v89 = vadd_f32(v157, vmul_n_f32(vadd_f32(vzip1_s32(v87, v88), vzip2_s32(v87, v88)), r1_16d));
          v90 = 0.0;
          if (r1_16d <= 1.0)
          {
            v90 = 1.0;
          }

          v91 = vmla_n_f32(vmul_n_f32(__PAIR64__(LODWORD(v117), v157.u32[0]), 1.0 - v90), v89, v90);
          v181.origin.x = v91.f32[0];
          v181.origin.y = v91.f32[1];
          v181.size.width = 0.0;
          v181.size.height = 0.0;
          v169.origin.x = v156;
          v169.origin.y = v152;
          v169.size.width = v81;
          v169.size.height = v82;
          v170 = CGRectUnion(v169, v181);
          v155 = v170.origin.x;
          v151 = v170.origin.y;
          v66 = v170.size.width;
          v67 = v170.size.height;
        }
      }

      v171.origin.x = v144;
      v171.origin.y = v148;
      v171.size.width = v68;
      v171.size.height = v69;
      if (CGRectGetMinY(v171) < v146)
      {
        v172.origin.x = v144;
        v172.origin.y = v148;
        v172.size.width = v68;
        v172.size.height = v69;
        if (CGRectGetMaxY(v172) > v146)
        {
          v92 = vsub_f32(__PAIR64__(v157.u32[1], LODWORD(v118)), v157);
          v93 = vmul_f32(v92, v92);
          v93.i32[0] = vadd_f32(v93, vdup_lane_s32(v93, 1)).u32[0];
          v94 = vrsqrte_f32(v93.u32[0]);
          v147 = v9 * vmul_f32(v94, vrsqrts_f32(v93.u32[0], vmul_f32(v94, v94))).f32[0];
          v95 = logf(v147);
          v96 = __sincosf_stret(r1b * v95);
          v97.f32[0] = -v96.__sinval;
          v97.i32[1] = LODWORD(v96.__cosval);
          v98 = vmul_f32(v92, __PAIR64__(LODWORD(v96.__sinval), LODWORD(v96.__cosval)));
          v99 = vmul_f32(v92, v97);
          v100 = vadd_f32(v157, vmul_n_f32(vadd_f32(vzip1_s32(v98, v99), vzip2_s32(v98, v99)), v147));
          v101 = 0.0;
          if (v147 <= 1.0)
          {
            v101 = 1.0;
          }

          v102 = vmla_n_f32(vmul_n_f32(__PAIR64__(v157.u32[1], LODWORD(v118)), 1.0 - v101), v100, v101);
          v182.origin.x = v102.f32[0];
          v182.origin.y = v102.f32[1];
          v182.size.width = 0.0;
          v182.size.height = 0.0;
          v173.origin.x = v155;
          v173.origin.y = v151;
          v173.size.width = v66;
          v173.size.height = v67;
          v174 = CGRectUnion(v173, v182);
          v103 = v174.origin.x;
          v104 = v174.origin.y;
          v105 = v174.size.width;
          v106 = v174.size.height;
          v107 = vsub_f32(__PAIR64__(v157.u32[1], LODWORD(v119)), v157);
          *&v174.origin.x = vmul_f32(v107, v107);
          LODWORD(v174.origin.x) = vadd_f32(*&v174.origin.x, vdup_lane_s32(*&v174.origin.x, 1)).u32[0];
          *&v174.origin.y = vrsqrte_f32(LODWORD(v174.origin.x));
          v153 = v9 * vmul_f32(*&v174.origin.y, vrsqrts_f32(LODWORD(v174.origin.x), vmul_f32(*&v174.origin.y, *&v174.origin.y))).f32[0];
          v108 = logf(v153);
          v109 = __sincosf_stret(r1b * v108);
          v110.f32[0] = -v109.__sinval;
          v110.i32[1] = LODWORD(v109.__cosval);
          v111 = vmul_f32(v107, __PAIR64__(LODWORD(v109.__sinval), LODWORD(v109.__cosval)));
          v112 = vmul_f32(v107, v110);
          v113 = vadd_f32(v157, vmul_n_f32(vadd_f32(vzip1_s32(v111, v112), vzip2_s32(v111, v112)), v153));
          v114 = 0.0;
          if (v153 <= 1.0)
          {
            v114 = 1.0;
          }

          v115 = vmla_n_f32(vmul_n_f32(__PAIR64__(v157.u32[1], LODWORD(v119)), 1.0 - v114), v113, v114);
          v183.origin.x = v115.f32[0];
          v183.origin.y = v115.f32[1];
          v183.size.width = 0.0;
          v183.size.height = 0.0;
          v175.origin.x = v103;
          v175.origin.y = v104;
          v175.size.width = v105;
          v175.size.height = v106;
          CGRectUnion(v175, v183);
        }
      }
    }
  }
}

@end