@interface RAWConvert
+ (BOOL)automaticallyNotifiesObserversForKey:(id)key;
+ (id)customAttributes;
- (CCameraProfile)cameraProfile;
- (CMatrix)matrixFromArray:(SEL)array rowCount:(id)count columnCount:(unint64_t)columnCount;
- (CWhitePoint)neutralWhitePointWithProfile:(void *)profile;
- (id)blendFactor;
- (id)customAttributes;
- (id)inputNeutralXY;
- (id)outputImage;
- (id)outputMatrix;
- (void)setInputNeutral:(id)neutral;
@end

@implementation RAWConvert

+ (BOOL)automaticallyNotifiesObserversForKey:(id)key
{
  keyCopy = key;
  if (objc_msgSend_isEqualToString_(keyCopy, v5, @"inputNeutral", v6, v7))
  {
    v8 = 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = &OBJC_METACLASS___RAWConvert;
    v8 = objc_msgSendSuper2(&v10, sel_automaticallyNotifiesObserversForKey_, keyCopy);
  }

  return v8;
}

- (void)setInputNeutral:(id)neutral
{
  neutralCopy = neutral;
  if (self->inputNeutral != neutralCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_msgSend_isEqualToArray_(neutralCopy, v5, self->inputNeutral, v6, v7) & 1) == 0)
    {
      objc_msgSend_willChangeValueForKey_(self, v5, @"inputNeutral", v6, v7);
      objc_storeStrong(&self->inputNeutral, neutral);
      objc_msgSend_didChangeValueForKey_(self, v8, @"inputNeutral", v9, v10);
    }
  }
}

+ (id)customAttributes
{
  v174[19] = *MEMORY[0x277D85DE8];
  v173[0] = @"inputColorSpace";
  v171 = *MEMORY[0x277CBF798];
  v2 = v171;
  v172 = sub_2338F2BB4();
  v135 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v3, &v172, &v171, 1);
  v174[0] = v135;
  v173[1] = @"inputNeutral";
  v169[0] = *MEMORY[0x277CBF790];
  v4 = v169[0];
  v5 = objc_opt_class();
  v134 = NSStringFromClass(v5);
  v170[0] = v134;
  v169[1] = v2;
  v133 = objc_msgSend_null(MEMORY[0x277CBEB68], v6, v7, v8, v9);
  v170[1] = v133;
  v132 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v10, v170, v169, 2);
  v174[1] = v132;
  v173[2] = @"inputRange";
  v166[0] = v4;
  v11 = objc_opt_class();
  v130 = NSStringFromClass(v11);
  v167[0] = v130;
  v167[1] = &unk_284958D18;
  v12 = *MEMORY[0x277CBF7F0];
  v166[1] = v2;
  v166[2] = v12;
  v168 = *MEMORY[0x277CBF850];
  v13 = v168;
  v131 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v14, v167, v166, 3);
  v174[2] = v131;
  v173[3] = @"inputFactor";
  v164[0] = v4;
  v15 = objc_opt_class();
  v128 = NSStringFromClass(v15);
  v165[0] = v128;
  v165[1] = &unk_284958D18;
  v164[1] = v2;
  v164[2] = v12;
  v165[2] = v13;
  v129 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v16, v165, v164, 3);
  v174[3] = v129;
  v173[4] = @"inputCalibrationIlluminant1";
  v162[0] = v4;
  v17 = objc_opt_class();
  v126 = NSStringFromClass(v17);
  v163[0] = v126;
  v163[1] = v13;
  v162[1] = v12;
  v162[2] = v2;
  v163[2] = &unk_2849587F8;
  v127 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v18, v163, v162, 3);
  v174[4] = v127;
  v173[5] = @"inputCalibrationIlluminant2";
  v160[0] = v4;
  v19 = objc_opt_class();
  v124 = NSStringFromClass(v19);
  v161[0] = v124;
  v161[1] = v13;
  v160[1] = v12;
  v160[2] = v2;
  v161[2] = &unk_284958810;
  v125 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v20, v161, v160, 3);
  v174[5] = v125;
  v173[6] = @"inputXYZtoCamera1";
  v158[0] = v4;
  v21 = objc_opt_class();
  v121 = NSStringFromClass(v21);
  v159[0] = v121;
  v158[1] = v2;
  v122 = objc_msgSend_null(MEMORY[0x277CBEB68], v22, v23, v24, v25);
  v159[1] = v122;
  v123 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v26, v159, v158, 2);
  v174[6] = v123;
  v173[7] = @"inputXYZtoCamera2";
  v156[0] = v4;
  v27 = objc_opt_class();
  v118 = NSStringFromClass(v27);
  v157[0] = v118;
  v156[1] = v2;
  v119 = objc_msgSend_null(MEMORY[0x277CBEB68], v28, v29, v30, v31);
  v157[1] = v119;
  v120 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v32, v157, v156, 2);
  v174[7] = v120;
  v173[8] = @"inputCameraCalibration1";
  v154[0] = v4;
  v33 = objc_opt_class();
  v115 = NSStringFromClass(v33);
  v155[0] = v115;
  v154[1] = v2;
  v116 = objc_msgSend_null(MEMORY[0x277CBEB68], v34, v35, v36, v37);
  v155[1] = v116;
  v117 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v38, v155, v154, 2);
  v174[8] = v117;
  v173[9] = @"inputCameraCalibration2";
  v152[0] = v4;
  v39 = objc_opt_class();
  v112 = NSStringFromClass(v39);
  v153[0] = v112;
  v152[1] = v2;
  v113 = objc_msgSend_null(MEMORY[0x277CBEB68], v40, v41, v42, v43);
  v153[1] = v113;
  v114 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v44, v153, v152, 2);
  v174[9] = v114;
  v173[10] = @"inputReduction1";
  v150[0] = v4;
  v45 = objc_opt_class();
  v109 = NSStringFromClass(v45);
  v151[0] = v109;
  v150[1] = v2;
  v110 = objc_msgSend_null(MEMORY[0x277CBEB68], v46, v47, v48, v49);
  v151[1] = v110;
  v111 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v50, v151, v150, 2);
  v174[10] = v111;
  v173[11] = @"inputReduction2";
  v148[0] = v4;
  v51 = objc_opt_class();
  v106 = NSStringFromClass(v51);
  v149[0] = v106;
  v148[1] = v2;
  v107 = objc_msgSend_null(MEMORY[0x277CBEB68], v52, v53, v54, v55);
  v149[1] = v107;
  v108 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v56, v149, v148, 2);
  v174[11] = v108;
  v173[12] = @"inputForwardMatrix1";
  v146[0] = v4;
  v57 = objc_opt_class();
  v103 = NSStringFromClass(v57);
  v146[1] = v2;
  v147[0] = v103;
  v104 = objc_msgSend_null(MEMORY[0x277CBEB68], v58, v59, v60, v61);
  v147[1] = v104;
  v105 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v62, v147, v146, 2);
  v174[12] = v105;
  v173[13] = @"inputForwardMatrix2";
  v144[0] = v4;
  v63 = objc_opt_class();
  v100 = NSStringFromClass(v63);
  v144[1] = v2;
  v145[0] = v100;
  v101 = objc_msgSend_null(MEMORY[0x277CBEB68], v64, v65, v66, v67);
  v145[1] = v101;
  v102 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v68, v145, v144, 2);
  v174[13] = v102;
  v173[14] = @"inputShouldUseForwardMatrix";
  v142[0] = v4;
  v69 = objc_opt_class();
  v99 = NSStringFromClass(v69);
  v142[1] = v2;
  v143[0] = v99;
  v74 = objc_msgSend_null(MEMORY[0x277CBEB68], v70, v71, v72, v73);
  v143[1] = v74;
  v76 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v75, v143, v142, 2);
  v174[14] = v76;
  v173[15] = @"inputShouldRecoverHighlights";
  v140[0] = v4;
  v77 = objc_opt_class();
  v78 = NSStringFromClass(v77);
  v140[1] = v2;
  v79 = MEMORY[0x277CBEC28];
  v141[0] = v78;
  v141[1] = MEMORY[0x277CBEC28];
  v81 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v80, v141, v140, 2);
  v174[15] = v81;
  v173[16] = @"inputShouldLinearize";
  v138[0] = v4;
  v82 = objc_opt_class();
  v83 = NSStringFromClass(v82);
  v139[0] = v83;
  v139[1] = v79;
  v84 = *MEMORY[0x277CBF7A0];
  v138[1] = v2;
  v138[2] = v84;
  v139[2] = @"ShouldLinearize";
  v86 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v85, v139, v138, 3);
  v174[16] = v86;
  v174[17] = v79;
  v173[17] = @"kCIRAWFilterDoesClip";
  v173[18] = @"inputBlacks";
  v136[0] = v4;
  v87 = objc_opt_class();
  v88 = NSStringFromClass(v87);
  v136[1] = v2;
  v137[0] = v88;
  v93 = objc_msgSend_null(MEMORY[0x277CBEB68], v89, v90, v91, v92);
  v137[1] = v93;
  v95 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v94, v137, v136, 2);
  v174[18] = v95;
  v98 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v96, v174, v173, 19);

  return v98;
}

- (id)customAttributes
{
  v2 = objc_opt_class();

  return MEMORY[0x2821F9670](v2, sel_customAttributes, v3, v4, v5);
}

- (CMatrix)matrixFromArray:(SEL)array rowCount:(id)count columnCount:(unint64_t)columnCount
{
  countCopy = count;
  if (countCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v14 = objc_msgSend_count(countCopy, v10, v11, v12, v13), a6 <= 0xA) && columnCount <= 0xA && v14)
  {
    sub_2337DF9C8(retstr, columnCount, a6);
    if (columnCount)
    {
      v19 = 0;
      v20 = 0;
      while (!a6)
      {
LABEL_14:
        ++v20;
        v19 += a6;
        if (v20 >= columnCount)
        {
          goto LABEL_17;
        }
      }

      v21 = 0;
      v22 = v19;
      while (v22 < objc_msgSend_count(countCopy, v15, v16, v17, v18))
      {
        v26 = objc_msgSend_objectAtIndexedSubscript_(countCopy, v23, v22, v24, v25);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_msgSend_doubleValue(v26, v27, v28, v29, v30);
          v32 = v31;
          v35[0] = sub_2337DFCEC(retstr, v20);
          v35[1] = v33;
          *sub_2337DFD6C(v35, v21) = v32;
        }

        ++v21;
        ++v22;
        if (v21 >= a6)
        {
          goto LABEL_14;
        }
      }
    }
  }

  else
  {
    sub_2337DFDF8(retstr);
  }

LABEL_17:

  return result;
}

- (id)inputNeutralXY
{
  v26[2] = *MEMORY[0x277D85DE8];
  objc_msgSend_cameraProfile(self, a2, v2, v3, v4);
  objc_msgSend_neutralWhitePointWithProfile_(self, v6, v25, v7, v8);
  v10 = v9;
  v15 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v11, v12, v13, v14);
  v26[0] = v15;
  v20 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v16, v17, v18, v19, v10);
  v26[1] = v20;
  v23 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v21, v26, 2, v22);

  sub_2337D35EC(v25);

  return v23;
}

- (id)outputMatrix
{
  gamma[3] = *MEMORY[0x277D85DE8];
  objc_msgSend_cameraProfile(self, a2, v2, v3, v4);
  objc_msgSend_neutralWhitePointWithProfile_(self, v6, v95, v7, v8);
  v94.f64[0] = v9;
  v94.f64[1] = v10;
  sub_2337DF9CC(&v91, 3u, 3u, 0.6097, v11, v12, v13, v14, v15, 0x3FCA474538EF34D7);
  v16 = self->inputColorSpace;
  if (v16 != sub_2338F2BB4())
  {
    gamma[2] = 1.0;
    *gamma = xmmword_23390ABE8;
    *whitePoint = xmmword_23390AC00;
    whitePoint[2] = 0.824899971;
    blackPoint = 0.0;
    v118 = 0;
    v119 = 0;
    v112 = 0;
    v114 = 0u;
    v111 = 0u;
    matrix = 1.0;
    v113 = 0x3FF0000000000000;
    v115 = 0;
    v116 = 0x3FF0000000000000;
    v105 = 0;
    v107 = 0u;
    v104 = 0u;
    v103 = 0x3FF0000000000000;
    v106 = 0x3FF0000000000000;
    v108 = 0;
    v109 = 0x3FF0000000000000;
    v102 = 0;
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v17 = CGColorSpaceCreateCalibratedRGB(whitePoint, &blackPoint, gamma, &matrix);
    MEMORY[0x2383AB720](v17, 0);
    CGColorTransformConvertColorComponents();
    CGColorTransformConvertColorComponents();
    CGColorTransformConvertColorComponents();
    CGColorSpaceRelease(v17);
    CGColorTransformRelease();
    sub_2337DF9CC(&v89, 3u, 3u, *&v98 * 0.9642, v18, v19, v20, v21, v22, COERCE__INT64(*(&v99 + 1) * 0.9642));
    sub_2337E004C(&v91, &v89);
    if (*(&v89 + 1))
    {
      v90 = *(&v89 + 1);
      operator delete(*(&v89 + 1));
    }
  }

  sub_2337DF874(&v86, &v91);
  sub_23381A514(v95, &v94, &v86, &matrix);
  if (v87)
  {
    v88 = v87;
    operator delete(v87);
  }

  sub_2337DF9CC(&v103, 3u, 1u, 1.0, v23, v24, v25, v26, v27, 0x3FF0000000000000);
  sub_2337E0720(&matrix, &v89);
  sub_2337E032C(&v89, &v103, &v98);
  if (*(&v89 + 1))
  {
    v90 = *(&v89 + 1);
    operator delete(*(&v89 + 1));
  }

  v28 = sub_2337E0EE4(&v98);
  *&v89 = sub_2337DFCEC(&v98, 0);
  *(&v89 + 1) = v29;
  v30 = *sub_2337DFD6C(&v89, 0);
  v31 = sub_2337E0EE4(&v98);
  *&v89 = sub_2337DFCEC(&v98, 1u);
  *(&v89 + 1) = v32;
  v33 = *sub_2337DFD6C(&v89, 0);
  v34 = sub_2337E0EE4(&v98);
  *&v89 = sub_2337DFCEC(&v98, 2u);
  *(&v89 + 1) = v35;
  v36 = *sub_2337DFD6C(&v89, 0);
  v96[0] = @"inputRVector";
  v37 = MEMORY[0x277CBF788];
  *&v89 = sub_2337DFCEC(&matrix, 0);
  *(&v89 + 1) = v38;
  v39 = *sub_2337DFD6C(&v89, 0);
  *&gamma[0] = sub_2337DFCEC(&matrix, 0);
  gamma[1] = v40;
  v41 = *sub_2337DFD6C(gamma, 1u);
  *&whitePoint[0] = sub_2337DFCEC(&matrix, 0);
  whitePoint[1] = v42;
  v43 = sub_2337DFD6C(whitePoint, 2u);
  v48 = objc_msgSend_vectorWithX_Y_Z_(v37, v44, v45, v46, v47, v39, v41, *v43);
  v97[0] = v48;
  v96[1] = @"inputGVector";
  v49 = MEMORY[0x277CBF788];
  *&blackPoint = sub_2337DFCEC(&matrix, 1u);
  v118 = v50;
  v51 = *sub_2337DFD6C(&blackPoint, 0);
  v85[0] = sub_2337DFCEC(&matrix, 1u);
  v85[1] = v52;
  v53 = *sub_2337DFD6C(v85, 1u);
  v84[0] = sub_2337DFCEC(&matrix, 1u);
  v84[1] = v54;
  v55 = sub_2337DFD6C(v84, 2u);
  v60 = objc_msgSend_vectorWithX_Y_Z_(v49, v56, v57, v58, v59, v51, v53, *v55);
  v97[1] = v60;
  v96[2] = @"inputBVector";
  v61 = MEMORY[0x277CBF788];
  v83[0] = sub_2337DFCEC(&matrix, 2u);
  v83[1] = v62;
  v63 = *sub_2337DFD6C(v83, 0);
  v82[0] = sub_2337DFCEC(&matrix, 2u);
  v82[1] = v64;
  v65 = *sub_2337DFD6C(v82, 1u);
  v81[0] = sub_2337DFCEC(&matrix, 2u);
  v81[1] = v66;
  v67 = sub_2337DFD6C(v81, 2u);
  v72 = objc_msgSend_vectorWithX_Y_Z_(v61, v68, v69, v70, v71, v63, v65, *v67);
  v97[2] = v72;
  v96[3] = @"inputFactors";
  v77 = objc_msgSend_vectorWithX_Y_Z_(MEMORY[0x277CBF788], v73, v74, v75, v76, v28 / v30, v31 / v33, v34 / v36);
  v97[3] = v77;
  v79 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v78, v97, v96, 4);

  if (*(&v98 + 1))
  {
    *&v99 = *(&v98 + 1);
    operator delete(*(&v98 + 1));
  }

  if (v104)
  {
    *(&v104 + 1) = v104;
    operator delete(v104);
  }

  if (v111)
  {
    *(&v111 + 1) = v111;
    operator delete(v111);
  }

  if (v92)
  {
    v93 = v92;
    operator delete(v92);
  }

  sub_2337D35EC(v95);

  return v79;
}

- (id)blendFactor
{
  objc_msgSend_cameraProfile(self, a2, v2, v3, v4);
  objc_msgSend_neutralWhitePointWithProfile_(self, v6, v19, v7, v8);
  v18[0] = v9;
  v18[1] = v10;
  v11 = sub_23381B524(v19, v18);
  v16 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v12, v13, v14, v15, v11);
  sub_2337D35EC(v19);

  return v16;
}

- (id)outputImage
{
  v266[3] = *MEMORY[0x277D85DE8];
  if (self->inputImage)
  {
    v6 = objc_msgSend_outputMatrix(self, a2, v2, v3, v4);
    v7 = v6;
    if (v6)
    {
      v263 = v6;
      v8 = sub_23378E104();
      v9 = v8;
      if (&self->super.super.super.isa + 1 >= 2 && os_signpost_enabled(v8))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_23371F000, v9, OS_SIGNPOST_INTERVAL_BEGIN, self, "RAWConvert", &unk_233945DBE, buf, 2u);
      }

      v264[0] = MEMORY[0x277D85DD0];
      v264[1] = 3221225472;
      v264[2] = sub_2338A4680;
      v264[3] = &unk_2789EE800;
      v264[4] = self;
      v261 = MEMORY[0x2383AC810](v264);
      v10 = self->inputImage;
      v262 = sub_2338F28E4();
      if (objc_msgSend_BOOLValue(self->inputShouldLinearize, v11, v12, v13, v14))
      {
        v19 = objc_msgSend_kernelWithName_(RAWKernels, v15, @"raw_srgb_to_linear", v17, v18);
        v21 = objc_msgSend_apply_image_arguments_inoutSpace_isPremultiplied_(self, v20, v19, v10, 0, v262, 1);

        v10 = v21;
      }

      inputBlacks = self->inputBlacks;
      v27 = objc_msgSend_null(MEMORY[0x277CBEB68], v15, v16, v17, v18);
      if (inputBlacks == v27 || (objc_msgSend_X(self->inputBlacks, v23, v24, v25, v26), v32 == 0.0) || (objc_msgSend_Y(self->inputBlacks, v28, v29, v30, v31), v37 == 0.0))
      {
        v39 = 0;
      }

      else
      {
        objc_msgSend_Z(self->inputBlacks, v33, v34, v35, v36);
        v39 = v38 != 0.0;
      }

      v44 = objc_msgSend_intValue(self->inputTargetRange, v40, v41, v42, v43);
      v49 = objc_msgSend_intValue(self->inputRange, v45, v46, v47, v48);
      if (objc_msgSend_intValue(self->inputTargetRange, v50, v51, v52, v53) <= 0 || objc_msgSend_intValue(self->inputRange, v54, v55, v56, v57) <= 0 || (objc_msgSend_floatValue(self->inputFactor, v58, v59, v60, v61), v66 <= 0.0))
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](exception, "RawCameraException");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v67 = v44 != v49 || v39;
      if (v67 == 1)
      {
        if (v39)
        {
          v68 = self->inputBlacks;
        }

        else
        {
          v68 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v62, v63, v64, v65, 0.0, 0.0, 0.0, 0.0);
        }

        v75 = v68;
        objc_msgSend_floatValue(self->inputTargetRange, v69, v70, v71, v72);
        v77 = v76;
        objc_msgSend_floatValue(self->inputRange, v78, v79, v80, v81);
        v83 = v82;
        objc_msgSend_floatValue(self->inputFactor, v84, v85, v86, v87);
        v89 = v88;
        v90 = MEMORY[0x277CBF788];
        objc_msgSend_X(v75, v91, v92, v93, v94);
        v96 = v95;
        objc_msgSend_Y(v75, v97, v98, v99, v100);
        v102 = v101;
        objc_msgSend_Z(v75, v103, v104, v105, v106);
        v107 = (v77 / (v83 * v89));
        v113 = objc_msgSend_vectorWithX_Y_Z_W_(v90, v109, v110, v111, v112, v107 * v96 / -65535.0, -(v102 * v107) / 65535.0, -(v108 * v107) / 65535.0, 0.0);
        v118 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v114, v115, v116, v117, v107, 0.0, 0.0, 0.0);
        v123 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v119, v120, v121, v122, 0.0, v107, 0.0, 0.0);
        v128 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v124, v125, v126, v127, 0.0, 0.0, v107, 0.0);
        v130 = objc_msgSend_applyMatrixToImage_vectorR_vectorG_vectorB_vectorBias_inSpace_outSpace_(self, v129, v10, v118, v123, v128, v113, v262);

        v131 = MEMORY[0x277CBF788];
        objc_msgSend_floatValue(self->inputRange, v132, v133, v134, v135);
        LODWORD(v107) = v136;
        objc_msgSend_floatValue(self->inputRange, v137, v138, v139, v140);
        v142 = v141;
        objc_msgSend_X(v75, v143, v144, v145, v146);
        v148 = v147;
        objc_msgSend_floatValue(self->inputRange, v149, v150, v151, v152);
        LODWORD(v96) = v153;
        objc_msgSend_floatValue(self->inputRange, v154, v155, v156, v157);
        LODWORD(v102) = v158;
        objc_msgSend_Y(v75, v159, v160, v161, v162);
        v164 = v163;
        objc_msgSend_floatValue(self->inputRange, v165, v166, v167, v168);
        v170 = v169;
        objc_msgSend_floatValue(self->inputRange, v171, v172, v173, v174);
        v176 = v175;
        objc_msgSend_Z(v75, v177, v178, v179, v180);
        v74 = objc_msgSend_vectorWithX_Y_Z_W_(v131, v182, v183, v184, v185, *&v107 / (v148 + v142), *&v96 / (v164 + *&v102), v170 / (v181 + v176), 0.0);

        v10 = v130;
      }

      else
      {
        v74 = 0;
      }

      if (objc_msgSend_BOOLValue(self->inputShouldRecoverHighlights, v62, v63, v64, v65))
      {
        v189 = objc_msgSend_objectForKeyedSubscript_(v263, v186, @"inputFactors", v187, v188);
        objc_msgSend_X(v189, v190, v191, v192, v193);
        v195 = v194;
        objc_msgSend_Y(v189, v196, v197, v198, v199);
        v201 = v200;
        objc_msgSend_Z(v189, v202, v203, v204, v205);
        v210 = v195;
        v211 = v201;
        v213 = v212;
        v214 = v210;
        v215 = v211;
        v216 = v213;
        if (v74)
        {
          objc_msgSend_X(v74, v206, v207, v208, v209);
          v218 = v217;
          objc_msgSend_Y(v74, v219, v220, v221, v222);
          v224 = v223;
          objc_msgSend_Z(v74, v225, v226, v227, v228);
          v229 = v218;
          v214 = v210 * v229;
          v230 = v224;
          v215 = v211 * v230;
          *&v231 = v231;
          v216 = v213 * *&v231;
        }

        v232 = v215 * 0.9;
        if ((v215 * 0.9) > v214)
        {
          v232 = v214;
        }

        if (v232 <= v216)
        {
          v233 = v232;
        }

        else
        {
          v233 = v216;
        }

        v234 = objc_msgSend_vectorWithX_Y_Z_(MEMORY[0x277CBF788], v206, v207, v208, v209, v214, v233, v216);
        v239 = objc_msgSend_vectorWithX_Y_Z_(MEMORY[0x277CBF788], v235, v236, v237, v238, 1.0 / v210, 1.0 / v211, 1.0 / v213);
        v243 = objc_msgSend_kernelWithName_(RAWKernels, v240, @"RAWRecoverHighlightsV2", v241, v242);
        v266[0] = v189;
        v266[1] = v234;
        v266[2] = v239;
        v246 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v244, v266, 3, v245);
        v248 = objc_msgSend_apply_image_arguments_inoutSpace_isPremultiplied_(self, v247, v243, v10, v246, v262, 1);

        v10 = v248;
      }

      v249 = objc_msgSend_objectForKeyedSubscript_(v263, v186, @"inputRVector", v187, v188);
      v253 = objc_msgSend_objectForKeyedSubscript_(v263, v250, @"inputGVector", v251, v252);
      v257 = objc_msgSend_objectForKeyedSubscript_(v263, v254, @"inputBVector", v255, v256);
      v73 = objc_msgSend_applyMatrixToImage_vectorR_vectorG_vectorB_vectorBias_inSpace_outSpace_(self, v258, v10, v249, v253, v257, 0, v262, self->inputColorSpace);

      v261[2](v261);
      v7 = v263;
    }

    else
    {
      v73 = self->inputImage;
    }
  }

  else
  {
    v73 = 0;
  }

  return v73;
}

- (CCameraProfile)cameraProfile
{
  sub_233813F5C(&v35);
  v9 = objc_msgSend_count(self->inputXYZtoCamera1, v5, v6, v7, v8);
  v36 = objc_msgSend_intValue(self->inputCalibrationIlluminant1, v10, v11, v12, v13);
  v18 = v9 / 3;
  v37 = objc_msgSend_intValue(self->inputCalibrationIlluminant2, v14, v15, v16, v17);
  objc_msgSend_matrixFromArray_rowCount_columnCount_(self, v19, self->inputXYZtoCamera1, v18, 3);
  sub_2337E004C(v38, &v32);
  if (__p)
  {
    v34 = __p;
    operator delete(__p);
  }

  objc_msgSend_matrixFromArray_rowCount_columnCount_(self, v20, self->inputXYZtoCamera2, v18, 3);
  sub_2337E004C(v39, &v32);
  if (__p)
  {
    v34 = __p;
    operator delete(__p);
  }

  objc_msgSend_matrixFromArray_rowCount_columnCount_(self, v21, self->inputCameraCalibration1, v18, v18);
  sub_2337E004C(v40, &v32);
  if (__p)
  {
    v34 = __p;
    operator delete(__p);
  }

  objc_msgSend_matrixFromArray_rowCount_columnCount_(self, v22, self->inputCameraCalibration2, v18, v18);
  sub_2337E004C(v41, &v32);
  if (__p)
  {
    v34 = __p;
    operator delete(__p);
  }

  objc_msgSend_matrixFromArray_rowCount_columnCount_(self, v23, self->inputReduction1, 3, v18);
  sub_2337E004C(v45, &v32);
  if (__p)
  {
    v34 = __p;
    operator delete(__p);
  }

  objc_msgSend_matrixFromArray_rowCount_columnCount_(self, v24, self->inputReduction2, 3, v18);
  sub_2337E004C(v46, &v32);
  if (__p)
  {
    v34 = __p;
    operator delete(__p);
  }

  objc_msgSend_matrixFromArray_rowCount_columnCount_(self, v25, self->inputForwardMatrix1, 3, v18);
  sub_2337E004C(v42, &v32);
  if (__p)
  {
    v34 = __p;
    operator delete(__p);
  }

  objc_msgSend_matrixFromArray_rowCount_columnCount_(self, v26, self->inputForwardMatrix2, 3, v18);
  sub_2337E004C(v43, &v32);
  if (__p)
  {
    v34 = __p;
    operator delete(__p);
  }

  v44 = objc_msgSend_intValue(self->inputShouldUseForwardMatrix, v27, v28, v29, v30);
  sub_2338A4E4C(retstr, &v35);
  return sub_2337D35EC(&v35);
}

- (CWhitePoint)neutralWhitePointWithProfile:(void *)profile
{
  v50 = 0.0;
  v51 = 0.0;
  v10 = objc_msgSend_count(self->inputNeutral, a2, profile, v3, v4);
  if (!v10)
  {
    v49 = 0.0;
    v17 = 0.0;
    goto LABEL_6;
  }

  v11 = objc_msgSend_objectAtIndexedSubscript_(self->inputNeutral, v7, 0, v8, v9);
  objc_msgSend_doubleValue(v11, v12, v13, v14, v15);
  v17 = v16;

  v49 = v17;
  if (v10 == 1)
  {
LABEL_6:
    v48 = 0.0;
    v27 = 0.0;
    v31 = 0.0;
    goto LABEL_7;
  }

  v21 = objc_msgSend_objectAtIndexedSubscript_(self->inputNeutral, v18, 1, v19, v20);
  objc_msgSend_doubleValue(v21, v22, v23, v24, v25);
  v27 = v26;

  v48 = v27;
  v31 = 0.0;
  if (v10 >= 3)
  {
    v32 = objc_msgSend_objectAtIndexedSubscript_(self->inputNeutral, v28, 2, v29, v30);
    objc_msgSend_doubleValue(v32, v33, v34, v35, v36);
    v31 = v37;
  }

LABEL_7:
  v47 = v31;
  v38 = v10 == 2 && v17 < 1.0;
  if (v38 && (v17 > 0.0 ? (v39 = v27 < 1.0) : (v39 = 0), v39 && v27 > 0.0))
  {
    v40 = v27;
  }

  else if (v10 == 2 && v17 >= 2000.0 && v17 <= 50000.0)
  {
    sub_23381946C(&v50, v17, v27);
    v17 = v50;
    v40 = v51;
  }

  else
  {
    v40 = 0.0;
    if (v10 == 3 && v17 > 0.0 && v27 > 0.0)
    {
      v17 = 0.0;
      if (v31 > 0.0)
      {
        __p = 0;
        v45 = 0;
        v46 = 0;
        sub_2337F207C(&__p, &v49);
        sub_2337F207C(&__p, &v48);
        sub_2337F207C(&__p, &v47);
        v17 = sub_23381B95C(profile, &__p);
        v40 = v41;
        if (__p)
        {
          v45 = __p;
          operator delete(__p);
        }
      }
    }

    else
    {
      v17 = 0.0;
    }
  }

  v42 = v17;
  v43 = v40;
  result.var1 = v43;
  result.var0 = v42;
  return result;
}

@end