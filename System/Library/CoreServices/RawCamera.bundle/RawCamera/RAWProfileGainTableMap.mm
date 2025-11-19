@interface RAWProfileGainTableMap
- (id)gainImage;
- (id)outputImage;
@end

@implementation RAWProfileGainTableMap

- (id)gainImage
{
  v32[3] = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_unsignedLongValue(self->inputMapPointsH, a2, v2, v3, v4);
  v11 = objc_msgSend_unsignedLongValue(self->inputMapPointsV, v7, v8, v9, v10);
  v16 = objc_msgSend_unsignedLongValue(self->inputMapPointsN, v12, v13, v14, v15) * v6;
  inputGainData = self->inputGainData;
  v18 = *MEMORY[0x277CBFA78];
  v31[0] = *MEMORY[0x277CBFA70];
  v31[1] = v18;
  v32[0] = inputGainData;
  v32[1] = @"RAWProfileGainTableMap";
  v31[2] = *MEMORY[0x277CBFA38];
  v32[2] = MEMORY[0x277CBEC38];
  v20 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v19, v32, v31, 3);
  v21 = self->inputGainData;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_2337E4A6C;
  v28[3] = &unk_2789EF0F0;
  v29 = v21;
  v30 = 4 * v16;
  v22 = v21;
  v23 = MEMORY[0x2383AC810](v28);
  v24 = objc_alloc(MEMORY[0x277CBF758]);
  v26 = objc_msgSend_initWithImageProvider_width_height_format_colorSpace_options_(v24, v25, v23, v16, v11, *MEMORY[0x277CBF9F8], 0, v20);

  return v26;
}

- (id)outputImage
{
  v173[8] = *MEMORY[0x277D85DE8];
  if (qword_27DE37DD0 != -1)
  {
    sub_2338FC340();
  }

  if (!qword_27DE37DD8)
  {
    v64 = sub_2338C04C8();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
      sub_2338FC398(v64);
    }

    inputImage = self->inputImage;
    goto LABEL_21;
  }

  objc_msgSend_extent(self->inputImage, a2, v2, v3, v4);
  x = v175.origin.x;
  y = v175.origin.y;
  width = v175.size.width;
  height = v175.size.height;
  if (CGRectIsEmpty(v175) || (v176.origin.x = x, v176.origin.y = y, v176.size.width = width, v176.size.height = height, CGRectIsInfinite(v176)) || (objc_msgSend_floatValue(self->inputStrength, v10, v11, v12, v13), fminf(fmaxf(v14, 0.0), 1.0) <= 0.0) || (v177.origin.x = x, v177.origin.y = y, v177.size.width = width, v177.size.height = height, CGRectIsEmpty(v177)) || (v178.origin.x = x, v178.origin.y = y, v178.size.width = width, v178.size.height = height, CGRectIsInfinite(v178)))
  {
LABEL_20:
    inputImage = self->inputImage;
LABEL_21:
    v67 = inputImage;
    goto LABEL_22;
  }

  v19 = objc_msgSend_unsignedLongValue(self->inputMapPointsH, v15, v16, v17, v18);
  v24 = objc_msgSend_unsignedLongValue(self->inputMapPointsV, v20, v21, v22, v23);
  v29 = objc_msgSend_unsignedLongValue(self->inputMapPointsN, v25, v26, v27, v28);
  objc_msgSend_doubleValue(self->inputMapSpacingH, v30, v31, v32, v33);
  v35 = v34;
  objc_msgSend_doubleValue(self->inputMapSpacingV, v36, v37, v38, v39);
  v41 = v40;
  objc_msgSend_doubleValue(self->inputMapOriginH, v42, v43, v44, v45);
  v47 = v46;
  objc_msgSend_doubleValue(self->inputMapOriginV, v48, v49, v50, v51);
  v57 = v24 * v19 * v29;
  if (!v57 || (v58 = v56, !objc_msgSend_length(self->inputGainData, v52, v53, v54, v55)) || objc_msgSend_length(self->inputGainData, v59, v60, v61, v62) != 4 * v57)
  {
    v66 = sub_2338C04C8();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      sub_2338FC354(v66);
    }

    goto LABEL_20;
  }

  v158 = v47;
  v63 = v19;
  if (v35 <= 1.0)
  {
    v156 = v35;
  }

  else
  {
    v156 = 1.0 / v63;
    v158 = 0.5 / v63;
  }

  v69 = v24;
  if (v41 > 1.0)
  {
    v41 = 1.0 / v69;
    v58 = 0.5 / v69;
  }

  memset(&v172, 0, sizeof(v172));
  v171.a = v156 * v63;
  v171.b = 0.0;
  v171.c = 0.0;
  v152 = 1.0 - (v58 + v41 * (v24 - 1));
  v171.d = v41 * v69;
  v171.tx = v158 - v156 * 0.5;
  v171.ty = v152 - v41 * 0.5;
  CGAffineTransformInvert(&v172, &v171);
  memset(&v171, 0, sizeof(v171));
  CGAffineTransformMakeScale(&v171, 1.0 / width, 1.0 / height);
  memset(&v170, 0, sizeof(v170));
  CGAffineTransformMakeScale(&v170, v19, v24);
  memset(&v169, 0, sizeof(v169));
  t1 = v171;
  t2 = v172;
  CGAffineTransformConcat(&v168, &t1, &t2);
  t1 = v170;
  CGAffineTransformConcat(&v169, &v168, &t1);
  v70 = sub_23378E104();
  v71 = v70;
  if (&self->super.super.super.isa + 1 >= 2 && os_signpost_enabled(v70))
  {
    LOWORD(v168.a) = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v71, OS_SIGNPOST_INTERVAL_BEGIN, self, "RAWProfileGainTableMap", &unk_233945DBE, &v168, 2u);
  }

  v165[0] = MEMORY[0x277D85DD0];
  v165[1] = 3221225472;
  v165[2] = sub_2337E5288;
  v165[3] = &unk_2789EE800;
  v165[4] = self;
  v155 = MEMORY[0x2383AC810](v165);
  v154 = objc_msgSend_gainImage(self, v72, v73, v74, v75);
  v159 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v76, v77, v78, v79, width * v158, height * v152, width * v156, height * v41);
  v80 = MEMORY[0x277CBF788];
  objc_msgSend_valueAtIndex_(self->inputWeights, v81, 0, v82, v83);
  v85 = v84;
  objc_msgSend_valueAtIndex_(self->inputWeights, v86, 1, v87, v88);
  v90 = v89;
  objc_msgSend_valueAtIndex_(self->inputWeights, v91, 2, v92, v93);
  v157 = objc_msgSend_vectorWithX_Y_Z_(v80, v94, v95, v96, v97, v85, v90, v98);
  v99 = MEMORY[0x277CBF788];
  objc_msgSend_valueAtIndex_(self->inputWeights, v100, 3, v101, v102);
  v104 = v103;
  objc_msgSend_valueAtIndex_(self->inputWeights, v105, 4, v106, v107);
  v153 = objc_msgSend_vectorWithX_Y_(v99, v108, v109, v110, v111, v104, v112);
  v117 = objc_msgSend_vectorWithX_Y_Z_(MEMORY[0x277CBF788], v113, v114, v115, v116, v19, v24, v29);
  v118 = self->inputImage;
  v123 = v118;
  inputColorSpace = self->inputColorSpace;
  if (inputColorSpace)
  {
    v125 = objc_msgSend_imageByColorMatchingWorkingSpaceToColorSpace_(v118, v119, self->inputColorSpace, v121, v122);

    v123 = v125;
  }

  v126 = qword_27DE37DD8;
  v160[0] = MEMORY[0x277D85DD0];
  v160[1] = 3221225472;
  v160[2] = sub_2337E5310;
  v160[3] = &unk_2789EF110;
  v161 = v169;
  v162 = v19;
  v163 = v24;
  v164 = v29;
  v173[0] = v123;
  v173[1] = v154;
  v173[2] = v159;
  v173[3] = v117;
  v173[4] = v157;
  v173[5] = v153;
  v127 = MEMORY[0x277CCABB0];
  objc_msgSend_floatValue(self->inputGamma, v119, v120, v121, v122);
  v132 = objc_msgSend_numberWithFloat_(v127, v128, v129, v130, v131);
  v173[6] = v132;
  v133 = MEMORY[0x277CCABB0];
  objc_msgSend_floatValue(self->inputStrength, v134, v135, v136, v137);
  v142 = objc_msgSend_numberWithFloat_(v133, v138, v139, v140, v141);
  v173[7] = v142;
  v145 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v143, v173, 8, v144);
  v67 = objc_msgSend_applyWithExtent_roiCallback_arguments_(v126, v146, v160, v145, v147, x, y, width, height);

  if (inputColorSpace)
  {
    v151 = objc_msgSend_imageByColorMatchingColorSpaceToWorkingSpace_(v67, v148, inputColorSpace, v149, v150);

    v67 = v151;
  }

  v155[2]();
LABEL_22:

  return v67;
}

@end