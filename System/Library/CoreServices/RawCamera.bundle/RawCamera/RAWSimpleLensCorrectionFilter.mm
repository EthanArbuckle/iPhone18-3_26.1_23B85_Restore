@interface RAWSimpleLensCorrectionFilter
+ (id)customAttributes;
- (id)customAttributes;
- (id)outputImage;
@end

@implementation RAWSimpleLensCorrectionFilter

+ (id)customAttributes
{
  v35[4] = *MEMORY[0x277D85DE8];
  v34[0] = @"inputDistortionScaleHalfMinorRadius";
  v3 = *MEMORY[0x277CBF7E8];
  v26[0] = *MEMORY[0x277CBF7D0];
  v2 = v26[0];
  v26[1] = v3;
  v32[0] = &unk_284958A88;
  v32[1] = &unk_284958A98;
  v5 = *MEMORY[0x277CBF7C8];
  v27 = *MEMORY[0x277CBF7E0];
  v4 = v27;
  v28 = v5;
  v32[2] = &unk_284958AA8;
  v32[3] = &unk_284958AB8;
  v7 = *MEMORY[0x277CBF7C0];
  v29 = *MEMORY[0x277CBF798];
  v6 = v29;
  v30 = v7;
  v32[4] = &unk_284958AC8;
  v32[5] = &unk_284958AC8;
  v31 = *MEMORY[0x277CBF7F0];
  v8 = v31;
  v33 = *MEMORY[0x277CBF850];
  v9 = v33;
  v19 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v32, v26, 7);
  v35[0] = v19;
  v34[1] = @"inputDistortionScaleMinorRadius";
  v24[0] = v2;
  v24[1] = v3;
  v25[0] = &unk_284958A88;
  v25[1] = &unk_284958A98;
  v24[2] = v4;
  v24[3] = v5;
  v25[2] = &unk_284958AA8;
  v25[3] = &unk_284958AB8;
  v24[4] = v6;
  v24[5] = v7;
  v25[4] = &unk_284958AC8;
  v25[5] = &unk_284958AC8;
  v24[6] = v8;
  v25[6] = v9;
  v18 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v10, v25, v24, 7);
  v35[1] = v18;
  v34[2] = @"inputDistortionScaleMajorRadius";
  v22[0] = v2;
  v22[1] = v3;
  v23[0] = &unk_284958A88;
  v23[1] = &unk_284958A98;
  v22[2] = v4;
  v22[3] = v5;
  v23[2] = &unk_284958AA8;
  v23[3] = &unk_284958AB8;
  v22[4] = v6;
  v22[5] = v7;
  v23[4] = &unk_284958AC8;
  v23[5] = &unk_284958AC8;
  v22[6] = v8;
  v23[6] = v9;
  v12 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v11, v23, v22, 7);
  v35[2] = v12;
  v34[3] = @"inputDistortionScaleMaxRadius";
  v20[0] = v2;
  v20[1] = v3;
  v21[0] = &unk_284958A88;
  v21[1] = &unk_284958A98;
  v20[2] = v4;
  v20[3] = v5;
  v21[2] = &unk_284958AA8;
  v21[3] = &unk_284958AB8;
  v20[4] = v6;
  v20[5] = v7;
  v21[4] = &unk_284958AC8;
  v21[5] = &unk_284958AC8;
  v20[6] = v8;
  v21[6] = v9;
  v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v13, v21, v20, 7);
  v35[3] = v14;
  v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v15, v35, v34, 4);

  return v16;
}

- (id)customAttributes
{
  v2 = objc_opt_class();

  return MEMORY[0x2821F9670](v2, sel_customAttributes, v3, v4, v5);
}

- (id)outputImage
{
  v249 = *MEMORY[0x277D85DE8];
  if (self->inputImage)
  {
    v3 = sub_23378E104();
    v4 = v3;
    if (&self->super.super.super.isa + 1 >= 2 && os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23371F000, v4, OS_SIGNPOST_INTERVAL_BEGIN, self, "RAWSimpleLensCorrectionFilter", &unk_233945DBE, buf, 2u);
    }

    v242[0] = MEMORY[0x277D85DD0];
    v242[1] = 3221225472;
    v242[2] = sub_2337FC278;
    v242[3] = &unk_2789EE800;
    v242[4] = self;
    v215 = MEMORY[0x2383AC810](v242);
    objc_msgSend_extent(self->inputImage, v5, v6, v7, v8);
    v222 = v10;
    v223 = v9;
    v220 = v12;
    v221 = v11;
    *&v9 = v11;
    v13 = *&v9 * 0.5;
    *&v10 = v12;
    v14 = *&v10 * 0.5;
    if (v13 >= v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = v13;
    }

    if (v13 <= v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = v13;
    }

    v17 = hypotf(v13, v14);
    *buf = 0;
    v18 = (v15 * 0.5) / v17;
    v19 = v15 / v17;
    v248.i64[0] = __PAIR64__(LODWORD(v19), LODWORD(v18));
    v20 = v16 / v17;
    v248.f32[2] = v16 / v17;
    v248.i32[3] = 1065353216;
    v245 = 0;
    *v244 = 0;
    *&v244[8] = 0;
    objc_msgSend_floatValue(self->inputDistortionScaleHalfMinorRadius, v21, v22, v23, v24);
    v26 = v18 * v25;
    v246.f32[0] = v18 * v25;
    objc_msgSend_floatValue(self->inputDistortionScaleMinorRadius, v27, v28, v29, v30);
    v32 = v19 * fminf(v31, 1.0);
    v246.f32[1] = v32;
    objc_msgSend_floatValue(self->inputDistortionScaleMajorRadius, v33, v34, v35, v36);
    v38 = v20 * fminf(v37, 1.0);
    v246.f32[2] = v38;
    objc_msgSend_floatValue(self->inputDistortionScaleMaxRadius, v39, v40, v41, v42);
    v44 = fminf(v43, 1.0);
    v246.f32[3] = v44;
    v45 = malloc_type_calloc(5uLL, 4uLL, 0x100004052888210uLL);
    v46 = malloc_type_calloc(5uLL, 4uLL, 0x100004052888210uLL);
    v47 = v46;
    v48 = 0;
    *v46 = 0;
    *v45 = 0;
    v49 = v26;
    v50 = v18;
    do
    {
      v51 = *&buf[v48 * 4];
      v52 = v50 - v51;
      v53 = v248.f32[v48 + 1];
      v54 = v53 - v51;
      v55 = v246.f32[v48 + 1];
      v56 = (v55 - v49) / (v53 - v50);
      v57 = ((v52 / v54) * *&v45[v48]) + 2.0;
      v58 = (v49 - *(&v245 + v48 * 4)) / v52;
      *&v45[v48 + 1] = ((v52 / v54) + -1.0) / v57;
      *&v46[v48 + 1] = ((((v56 - v58) * 6.0) / v54) - ((v52 / v54) * *&v46[v48])) / v57;
      ++v48;
      v49 = v55;
      v50 = v53;
    }

    while (v48 != 3);
    v216 = v26;
    *&v244[16] = 0;
    v59 = 0.0;
    do
    {
      v59 = *&v46[v48] + (*&v45[v48] * v59);
      *&v244[v48 * 4] = v59;
      --v48;
    }

    while (v48 != -1);
    v60 = v244;
    v61 = vld1q_dup_f32(v60);
    v62 = vsubq_f32(v248, vextq_s8(0, v248, 0xCuLL));
    __asm { FMOV            V3.4S, #3.0 }

    v68 = vdivq_f32(vextq_s8(v61, *&v244[4], 0xCuLL), _Q3);
    __asm { FMOV            V3.4S, #6.0 }

    v228 = vmlsq_f32(vdivq_f32(vsubq_f32(v246, vextq_s8(0, v246, 0xCuLL)), v62), vaddq_f32(v68, vdivq_f32(*&v244[4], _Q3)), v62);
    v224 = v44;
    v226 = v38;
    v70 = v44 - v38;
    v71 = *&v244[12] / 6.0;
    v72 = *&v244[16] / 3.0;
    free(v45);
    free(v47);
    _V6.D[1] = v228.i64[1];
    _S5 = 981668463;
    __asm { FMLA            S1, S5, V6.S[2] }

    if (_S1 <= (v19 + 0.001))
    {
      v212 = v228.f32[2];
    }

    else
    {
      v212 = ((v19 + 0.001) - v32) / 0.001;
    }

    __asm { FMLA            S3, S5, V6.S[3] }

    if (_S3 <= (v20 + 0.001))
    {
      v80 = v228.f32[3];
    }

    else
    {
      v80 = ((v20 + 0.001) - v226) / 0.001;
    }

    v81 = (v70 / (1.0 - v20)) + ((1.0 - v20) * (v71 + v72));
    if ((v226 + (v80 * -0.001)) > (v20 + -0.001))
    {
      v80 = ((v20 + -0.001) - v226) / -0.001;
    }

    v211 = v80;
    if ((v224 + (v81 * -0.001)) > 0.999)
    {
      v81 = (0.999 - v224) / -0.001;
    }

    v219 = objc_msgSend_kernelWithName_(LCKernels, v73, @"simpleLens", v74, v75);
    v218 = objc_msgSend_kernelWithName_(LCKernels, v82, @"simpleLensDraft", v83, v84);
    v85 = hypot(v221, v220);
    objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v86, v87, v88, v89, (v223 + v221 * 0.5), (v222 + v220 * 0.5), (2.0 / v85), 1.0);
    v210 = v90 = v20;
    v214 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v91, v92, v93, v94, v18, v19, v90, 1.0);
    sub_2337FC300(0.0, 0.0, v228.f32[0], v18, v216, v228.f32[1], v214, v95, v96, v97, v98);
    v209 = v99 = v32;
    v208 = sub_2337FC300(v18, v216, v228.f32[1], v19, v99, v212, v209, v100, v101, v102, v103);
    v213 = sub_2337FC300(v19, v99, v212, v90, v226, v211, v208, v104, v105, v106, v107);
    v112 = sub_2337FC300(v90, v226, v211, 1.0, v224, v81, v213, v108, v109, v110, v111);
    v235[0] = MEMORY[0x277D85DD0];
    v235[1] = 3221225472;
    v235[2] = sub_2337FC408;
    v235[3] = &unk_2789EF198;
    v113 = v210;
    v236 = v113;
    v225 = v209;
    v237 = v225;
    v227 = v208;
    v238 = v227;
    v114 = v213;
    v239 = v114;
    v229 = v112;
    v240 = v229;
    v217 = v214;
    v241 = v217;
    v115 = MEMORY[0x2383AC810](v235);
    v232[0] = MEMORY[0x277D85DD0];
    v232[1] = 3221225472;
    v232[2] = sub_2337FC590;
    v232[3] = &unk_2789EF1C0;
    v116 = v113;
    v233 = v116;
    v117 = v115;
    v234 = v117;
    v122 = MEMORY[0x2383AC810](v232);
    if ((atomic_load_explicit(&qword_280C04E80, memory_order_acquire) & 1) == 0)
    {
      sub_2338FC400();
    }

    if (byte_280C04E78 == 1)
    {
      objc_msgSend_floatValue(self->inputFocalLength, v118, v119, v120, v121);
      printf("%g, array(", v123);
      v124 = v117[2](v117, 0.001);
      printf("0.0, %.5f, ", (v124 / 0.001));
      v125 = v248.f32[0];
      v126 = v248.f32[0] * 0.5;
      v127 = v117[2](v117, v248.f32[0] * 0.5);
      printf("%.5f, %.5f, ", v126, (v127 / v126));
      v128 = v246.f32[0];
      printf("%.5f, %.5f, ", v125, (v246.f32[0] / v125));
      v129 = v248.f32[1];
      v130 = (v125 + v248.f32[1]) * 0.5;
      v131 = v117[2](v117, v130);
      printf("%.5f, %.5f, ", v130, (v131 / v130));
      v132 = v246.f32[1];
      printf("%.5f, %.5f, ", v129, (v246.f32[1] / v129));
      v133 = v248.f32[2];
      v134 = (v129 + v248.f32[2]) * 0.5;
      v135 = v117[2](v117, v134);
      printf("%.5f, %.5f, ", v134, (v135 / v134));
      v136 = v246.f32[2];
      printf("%.5f, %.5f, ", v133, (v246.f32[2] / v133));
      v137 = v248.f32[3];
      v138 = (v133 + v248.f32[3]) * 0.5;
      v139 = v117[2](v117, v138);
      printf("%.5f, %.5f, ", v138, (v139 / v138));
      v140 = v246.f32[3];
      printf("1.0, %.5f", (v246.f32[3] / v137));
      objc_msgSend_floatValue(self->inputDistortionScaleHalfMinorRadius, v141, v142, v143, v144);
      v246.f32[0] = v128 * v145;
      objc_msgSend_floatValue(self->inputDistortionScaleMinorRadius, v146, v147, v148, v149);
      v246.f32[1] = v132 * fminf(v150, 1.0);
      objc_msgSend_floatValue(self->inputDistortionScaleMajorRadius, v151, v152, v153, v154);
      v246.f32[2] = v136 * fminf(v155, 1.0);
      objc_msgSend_floatValue(self->inputDistortionScaleMaxRadius, v156, v157, v158, v159);
      v246.f32[3] = v140 * fminf(v160, 1.0);
      printf(") <!-- ");
      objc_msgSend_floatValue(self->inputDistortionScaleHalfMinorRadius, v161, v162, v163, v164);
      printf("%.4f ", v165);
      objc_msgSend_floatValue(self->inputDistortionScaleMinorRadius, v166, v167, v168, v169);
      printf("%.4f ", fminf(v170, 1.0));
      objc_msgSend_floatValue(self->inputDistortionScaleMajorRadius, v171, v172, v173, v174);
      printf("%.4f ", fminf(v175, 1.0));
      objc_msgSend_floatValue(self->inputDistortionScaleMaxRadius, v176, v177, v178, v179);
      printf("%.4f ", fminf(v180, 1.0));
      puts("-->");
    }

    v230[0] = MEMORY[0x277D85DD0];
    v230[1] = 3221225472;
    v230[2] = sub_2337FC658;
    v230[3] = &unk_2789EF1E8;
    v181 = v122;
    v231 = v181;
    v182 = MEMORY[0x2383AC810](v230);
    v187 = objc_msgSend_imageByClampingToExtent(self->inputImage, v183, v184, v185, v186);
    v192 = objc_msgSend_BOOLValue(self->inputDraftMode, v188, v189, v190, v191);
    v193 = *MEMORY[0x277CBF390];
    v194 = *(MEMORY[0x277CBF390] + 8);
    v195 = *(MEMORY[0x277CBF390] + 16);
    v196 = *(MEMORY[0x277CBF390] + 24);
    v243[0] = v116;
    v243[1] = v217;
    v243[2] = v225;
    v243[3] = v227;
    v243[4] = v114;
    v243[5] = v229;
    v200 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v197, v243, 6, v198);
    if (v192)
    {
      objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_(self, v199, v218, v187, v182, v200, self->inputColorSpace, v193, v194, v195, v196);
    }

    else
    {
      objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_(self, v199, v219, v187, v182, v200, self->inputColorSpace, v193, v194, v195, v196);
    }
    v201 = ;

    v206 = objc_msgSend_imageByCroppingToRect_(v201, v202, v203, v204, v205, v223, v222, v221, v220);

    v215[2](v215);
  }

  else
  {
    v206 = 0;
  }

  return v206;
}

@end