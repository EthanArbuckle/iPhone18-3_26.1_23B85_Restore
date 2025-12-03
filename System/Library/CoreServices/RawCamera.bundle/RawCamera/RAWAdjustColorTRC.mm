@interface RAWAdjustColorTRC
+ (BOOL)automaticallyNotifiesObserversForKey:(id)key;
+ (id)customAttributes;
- (id)customAttributes;
- (id)outputImage;
@end

@implementation RAWAdjustColorTRC

+ (BOOL)automaticallyNotifiesObserversForKey:(id)key
{
  keyCopy = key;
  if (objc_msgSend_isEqualToString_(keyCopy, v5, @"inputBoostAmount", v6, v7))
  {
    v8 = 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = &OBJC_METACLASS___RAWAdjustColorTRC;
    v8 = objc_msgSendSuper2(&v10, sel_automaticallyNotifiesObserversForKey_, keyCopy);
  }

  return v8;
}

+ (id)customAttributes
{
  v163 = *MEMORY[0x277D85DE8];
  v140[0] = @"inputColorSpace";
  v137 = *MEMORY[0x277CBF798];
  v2 = v137;
  v3 = sub_2338F2BB4();
  v138 = *MEMORY[0x277CBF7A0];
  v4 = v138;
  v139[0] = v3;
  v139[1] = @"inputColorSpace";
  v141 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v5, v139, &v137, 2);
  v140[1] = @"inputTRCs0";
  v135[0] = *MEMORY[0x277CBF790];
  v6 = v135[0];
  v96 = v141;
  v7 = objc_opt_class();
  v136[0] = NSStringFromClass(v7);
  v136[1] = &unk_284958B88;
  v8 = *MEMORY[0x277CBF7F0];
  v135[1] = v2;
  v135[2] = v8;
  v9 = *MEMORY[0x277CBF850];
  v135[3] = v4;
  v136[2] = v9;
  v136[3] = @"inputTRCs0";
  v91 = v136[0];
  v142 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v10, v136, v135, 4);
  v140[2] = @"inputTRCs1";
  v133[0] = v6;
  v95 = v142;
  v11 = objc_opt_class();
  v134[0] = NSStringFromClass(v11);
  v134[1] = &unk_284958B88;
  v133[1] = v2;
  v133[2] = v8;
  v133[3] = v4;
  v134[2] = v9;
  v134[3] = @"inputTRCs1";
  v94 = v134[0];
  v90 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v12, v134, v133, 4);
  v143 = v90;
  v140[3] = @"inputTRCs2";
  v131[0] = v6;
  v13 = objc_opt_class();
  v132[0] = NSStringFromClass(v13);
  v132[1] = &unk_284958B88;
  v131[1] = v2;
  v131[2] = v8;
  v131[3] = v4;
  v132[2] = v9;
  v132[3] = @"inputTRCs2";
  v93 = v132[0];
  v89 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v14, v132, v131, 4);
  v144 = v89;
  v140[4] = @"inputTRCs3";
  v129[0] = v6;
  v15 = objc_opt_class();
  v130[0] = NSStringFromClass(v15);
  v130[1] = &unk_284958B88;
  v129[1] = v2;
  v129[2] = v8;
  v129[3] = v4;
  v130[2] = v9;
  v130[3] = @"inputTRCs3";
  v92 = v130[0];
  v145 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v16, v130, v129, 4);
  v140[5] = @"inputTRCs4";
  v127[0] = v6;
  v88 = v145;
  v17 = objc_opt_class();
  v86 = NSStringFromClass(v17);
  v128[0] = v86;
  v128[1] = &unk_284958B88;
  v127[1] = v2;
  v127[2] = v4;
  v127[3] = v8;
  v128[2] = @"inputTRCs4";
  v128[3] = v9;
  v87 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v18, v128, v127, 4);
  v146 = v87;
  v140[6] = @"inputTRCy1";
  v125[0] = v6;
  v19 = objc_opt_class();
  v84 = NSStringFromClass(v19);
  v126[0] = v84;
  v126[1] = &unk_284958B98;
  v125[1] = v2;
  v125[2] = v8;
  v125[3] = v4;
  v126[2] = v9;
  v126[3] = @"inputTRCy1";
  v85 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v20, v126, v125, 4);
  v147 = v85;
  v140[7] = @"inputTRCy2";
  v123[0] = v6;
  v21 = objc_opt_class();
  v82 = NSStringFromClass(v21);
  v124[0] = v82;
  v124[1] = &unk_284958BA8;
  v123[1] = v2;
  v123[2] = v8;
  v123[3] = v4;
  v124[2] = v9;
  v124[3] = @"inputTRCy2";
  v83 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v22, v124, v123, 4);
  v148 = v83;
  v140[8] = @"inputTRCy3";
  v121[0] = v6;
  v23 = objc_opt_class();
  v80 = NSStringFromClass(v23);
  v122[0] = v80;
  v122[1] = &unk_284958BB8;
  v121[1] = v2;
  v121[2] = v8;
  v121[3] = v4;
  v122[2] = v9;
  v122[3] = @"inputTRCy3";
  v81 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v24, v122, v121, 4);
  v149 = v81;
  v140[9] = @"inputTRCy4";
  v119[0] = v6;
  v25 = objc_opt_class();
  v78 = NSStringFromClass(v25);
  v120[0] = v78;
  v120[1] = &unk_284958B88;
  v119[1] = v2;
  v119[2] = v8;
  v119[3] = v4;
  v120[2] = v9;
  v120[3] = @"inputTRCy4";
  v150 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v26, v120, v119, 4);
  v140[10] = @"inputBoostAmount";
  v117[0] = v6;
  v79 = v150;
  v27 = objc_opt_class();
  v28 = NSStringFromClass(v27);
  v29 = *MEMORY[0x277CBF7D0];
  v76 = v28;
  v118[0] = v28;
  v118[1] = &unk_284958BC8;
  v30 = *MEMORY[0x277CBF7C8];
  v117[1] = v29;
  v117[2] = v30;
  v118[2] = &unk_284958B88;
  v118[3] = &unk_284958B88;
  v117[3] = v2;
  v117[4] = v8;
  v117[5] = v4;
  v118[4] = v9;
  v118[5] = @"inputBoostAmount";
  v77 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v31, v118, v117, 6);
  v151 = v77;
  v140[11] = @"inputBoostShadowAmount";
  v115[0] = v6;
  v32 = objc_opt_class();
  v74 = NSStringFromClass(v32);
  v116[0] = v74;
  v116[1] = &unk_284958BC8;
  v115[1] = v29;
  v115[2] = v30;
  v116[2] = &unk_284958BD8;
  v116[3] = &unk_284958B88;
  v115[3] = v2;
  v115[4] = v8;
  v115[5] = v4;
  v116[4] = v9;
  v116[5] = @"inputBoostShadowAmount";
  v75 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v33, v116, v115, 6);
  v152 = v75;
  v140[12] = @"inputBoostPreserveHueAmount";
  v113[0] = v6;
  v34 = objc_opt_class();
  v72 = NSStringFromClass(v34);
  v114[0] = v72;
  v114[1] = &unk_284958BC8;
  v113[1] = v29;
  v113[2] = v30;
  v114[2] = &unk_284958B88;
  v114[3] = &unk_284958BC8;
  v113[3] = v2;
  v113[4] = v8;
  v113[5] = v4;
  v114[4] = v9;
  v114[5] = @"inputBoostPreserveHueAmount";
  v73 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v35, v114, v113, 6);
  v153 = v73;
  v140[13] = @"inputBoostHDRAmount";
  v111[0] = v6;
  v36 = objc_opt_class();
  v70 = NSStringFromClass(v36);
  v112[0] = v70;
  v112[1] = &unk_284958B88;
  v111[1] = v29;
  v111[2] = v30;
  v112[2] = &unk_284958BE8;
  v112[3] = &unk_284958B88;
  v111[3] = v2;
  v111[4] = v8;
  v111[5] = v4;
  v112[4] = v9;
  v112[5] = @"inputBoostHDRAmount";
  v71 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v37, v112, v111, 6);
  v154 = v71;
  v140[14] = @"inputVersion";
  v109[0] = v6;
  v38 = objc_opt_class();
  v68 = NSStringFromClass(v38);
  v110[0] = v68;
  v110[1] = &unk_284958BD8;
  v109[1] = v29;
  v109[2] = v30;
  v110[2] = &unk_284958BE8;
  v110[3] = &unk_284958BE8;
  v109[3] = v2;
  v109[4] = v8;
  v109[5] = v4;
  v110[4] = v9;
  v110[5] = @"inputVersion";
  v69 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v39, v110, v109, 6);
  v155 = v69;
  v140[15] = @"inputBoostPreserveRYHueAmount";
  v107[0] = v6;
  v40 = objc_opt_class();
  v66 = NSStringFromClass(v40);
  v108[0] = v66;
  v108[1] = &unk_284958BC8;
  v107[1] = v29;
  v107[2] = v30;
  v108[2] = &unk_284958B88;
  v108[3] = &unk_284958BF8;
  v107[3] = v2;
  v107[4] = v8;
  v107[5] = v4;
  v108[4] = v9;
  v108[5] = @"inputBoostPreserveRYHueAmount";
  v67 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v41, v108, v107, 6);
  v156 = v67;
  v140[16] = @"inputBoostPreserveYGHueAmount";
  v105[0] = v6;
  v42 = objc_opt_class();
  v64 = NSStringFromClass(v42);
  v106[0] = v64;
  v106[1] = &unk_284958BC8;
  v105[1] = v29;
  v105[2] = v30;
  v106[2] = &unk_284958B88;
  v106[3] = &unk_284958BC8;
  v105[3] = v2;
  v105[4] = v8;
  v105[5] = v4;
  v106[4] = v9;
  v106[5] = @"inputBoostPreserveYGHueAmount";
  v65 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v43, v106, v105, 6);
  v157 = v65;
  v140[17] = @"inputBoostPreserveGCHueAmount";
  v103[0] = v6;
  v44 = objc_opt_class();
  v62 = NSStringFromClass(v44);
  v104[0] = v62;
  v104[1] = &unk_284958BC8;
  v103[1] = v29;
  v103[2] = v30;
  v104[2] = &unk_284958B88;
  v104[3] = &unk_284958BC8;
  v103[3] = v2;
  v103[4] = v8;
  v103[5] = v4;
  v104[4] = v9;
  v104[5] = @"inputBoostPreserveGCHueAmount";
  v63 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v45, v104, v103, 6);
  v158 = v63;
  v140[18] = @"inputBoostPreserveCBHueAmount";
  v101[0] = v6;
  v46 = objc_opt_class();
  v60 = NSStringFromClass(v46);
  v102[0] = v60;
  v102[1] = &unk_284958BC8;
  v101[1] = v29;
  v101[2] = v30;
  v102[2] = &unk_284958B88;
  v102[3] = &unk_284958BC8;
  v101[3] = v2;
  v101[4] = v8;
  v101[5] = v4;
  v102[4] = v9;
  v102[5] = @"inputBoostPreserveCBHueAmount";
  v61 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v47, v102, v101, 6);
  v159 = v61;
  v140[19] = @"inputBoostPreserveBMHueAmount";
  v99[0] = v6;
  v48 = objc_opt_class();
  v49 = NSStringFromClass(v48);
  v100[0] = v49;
  v100[1] = &unk_284958BC8;
  v99[1] = v29;
  v99[2] = v30;
  v100[2] = &unk_284958B88;
  v100[3] = &unk_284958BC8;
  v99[3] = v2;
  v99[4] = v8;
  v99[5] = v4;
  v100[4] = v9;
  v100[5] = @"inputBoostPreserveBMHueAmount";
  v51 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v50, v100, v99, 6);
  v160 = v51;
  v140[20] = @"inputBoostPreserveMRHueAmount";
  v97[0] = v6;
  v52 = objc_opt_class();
  v53 = NSStringFromClass(v52);
  v98[0] = v53;
  v98[1] = &unk_284958BC8;
  v97[1] = v29;
  v97[2] = v30;
  v98[2] = &unk_284958B88;
  v98[3] = &unk_284958BC8;
  v97[3] = v2;
  v97[4] = v8;
  v97[5] = v4;
  v98[4] = v9;
  v98[5] = @"inputBoostPreserveMRHueAmount";
  v55 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v54, v98, v97, 6);
  v140[21] = @"kCIRAWFilterDoesClip";
  v56 = *MEMORY[0x277CBED10];
  v161 = v55;
  v162 = v56;
  v58 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v57, &v141, v140, 22);

  return v58;
}

- (id)customAttributes
{
  v2 = objc_opt_class();

  return MEMORY[0x2821F9670](v2, sel_customAttributes, v3, v4, v5);
}

- (id)outputImage
{
  v411[3] = *MEMORY[0x277D85DE8];
  inputImage = self->inputImage;
  if (inputImage)
  {
    if (!self->inputBoostAmount)
    {
      v70 = inputImage;
      goto LABEL_70;
    }

    v3 = sub_23378E104();
    v4 = v3;
    if (&self->super.super.super.isa + 1 >= 2 && os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23371F000, v4, OS_SIGNPOST_INTERVAL_BEGIN, self, "RAWAdjustColorTRC", &unk_233945DBE, buf, 2u);
    }

    v401[0] = MEMORY[0x277D85DD0];
    v401[1] = 3221225472;
    v401[2] = sub_23387E9A0;
    v401[3] = &unk_2789EE800;
    v401[4] = self;
    v376 = MEMORY[0x2383AC810](v401);
    objc_msgSend_floatValue(self->inputBoostPreserveHueAmount, v5, v6, v7, v8);
    v10 = v9;
    objc_msgSend_doubleValue(self->inputBoostAmount, v11, v12, v13, v14);
    v16 = v15;
    objc_msgSend_doubleValue(self->inputBoostShadowAmount, v17, v18, v19, v20);
    v22 = v21;
    objc_msgSend_doubleValue(self->inputBoostHDRAmount, v23, v24, v25, v26);
    v28 = v27;
    objc_msgSend_doubleValue(self->inputTRCs0, v29, v30, v31, v32);
    v38 = fmin(fmax(v16, 0.0), 1.0);
    v39 = fmin(fmax(v22, 0.0), 1.0);
    v40 = 1.0;
    if (v38 > 0.0)
    {
      v40 = v39 * v37;
      if (v38 < 1.0)
      {
        v40 = 1.0 - v38 + v40 * v38;
      }
    }

    objc_msgSend_doubleValue(self->inputTRCs1, v33, v34, v35, v36);
    v46 = 1.0;
    if (v38 > 0.0)
    {
      v46 = v45;
      if (v38 < 1.0)
      {
        v46 = 1.0 - v38 + v45 * v38;
      }
    }

    objc_msgSend_doubleValue(self->inputTRCs2, v41, v42, v43, v44);
    v382 = 1.0;
    if (v38 > 0.0)
    {
      v382 = v51;
      if (v38 < 1.0)
      {
        v382 = 1.0 - v38 + v51 * v38;
      }
    }

    objc_msgSend_doubleValue(self->inputTRCs3, v47, v48, v49, v50);
    v57 = 1.0;
    if (v38 > 0.0)
    {
      v57 = v56;
      if (v38 < 1.0)
      {
        v57 = 1.0 - v38 + v56 * v38;
      }
    }

    objc_msgSend_doubleValue(self->inputTRCs4, v52, v53, v54, v55);
    v371 = v39;
    v63 = 1.0;
    if (v38 > 0.0)
    {
      v63 = v62;
      if (v38 < 1.0)
      {
        v63 = 1.0 - v38 + v62 * v38;
      }
    }

    objc_msgSend_doubleValue(self->inputTRCy1, v58, v59, v60, v61);
    v384 = v40;
    if (v38 <= 0.0)
    {
      v69 = 0.1;
    }

    else
    {
      v69 = v68;
      if (v38 < 1.0)
      {
        v69 = (1.0 - v38) * 0.1 + v68 * v38;
      }
    }

    objc_msgSend_doubleValue(self->inputTRCy2, v64, v65, v66, v67);
    if (v38 <= 0.0)
    {
      v76 = 0.2;
    }

    else
    {
      v76 = v75;
      if (v38 < 1.0)
      {
        v76 = (1.0 - v38) * 0.2 + v75 * v38;
      }
    }

    v370 = v28;
    objc_msgSend_doubleValue(self->inputTRCy3, v71, v72, v73, v74);
    v82 = 0.5;
    if (v38 > 0.0)
    {
      v82 = v81;
      if (v38 < 1.0)
      {
        v82 = (1.0 - v38) * 0.5 + v81 * v38;
      }
    }

    v377 = v63;
    objc_msgSend_doubleValue(self->inputTRCy4, v77, v78, v79, v80);
    v88 = 1.0;
    if (v38 > 0.0)
    {
      v88 = v87;
      if (v38 < 1.0)
      {
        v88 = 1.0 - v38 + v87 * v38;
      }
    }

    v89 = objc_msgSend_intValue(self->inputVersion, v83, v84, v85, v86);
    v380 = self->inputImage;
    inputReferencePoints = self->inputReferencePoints;
    v378 = v89;
    if (inputReferencePoints)
    {
      if (objc_msgSend_count(inputReferencePoints, v90, v91, v92, v93) >= 2)
      {
        inputOutputPoints = self->inputOutputPoints;
        if (inputOutputPoints)
        {
          v96 = objc_msgSend_count(inputOutputPoints, v90, v91, v92, v93);
          if (v96 == objc_msgSend_count(self->inputReferencePoints, v97, v98, v99, v100))
          {
            v101 = self->inputReferencePoints;
            v386 = self->inputOutputPoints;
            v106 = objc_msgSend_count(v101, v102, v103, v104, v105);
            objc_msgSend_valueAtIndex_(v101, v107, v106 - 1, v108, v109);
            v111 = v110;
            objc_msgSend_valueAtIndex_(v386, v112, v106 - 1, v113, v114);
            v116 = v115;
            objc_msgSend_valueAtIndex_(v101, v117, v106 - 2, v118, v119);
            v121 = v120;
            objc_msgSend_valueAtIndex_(v386, v122, v106 - 2, v123, v124);
            v126 = v125;
            v397[0] = MEMORY[0x277D85DD0];
            v397[1] = 3221225472;
            v397[2] = sub_23387EA28;
            v397[3] = &unk_2789EF870;
            v400 = v106;
            v383 = v101;
            v398 = v383;
            v385 = v386;
            v399 = v385;
            v392 = MEMORY[0x2383AC810](v397);
            v394 = objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], v127, 16 * v106, v128, v129);
            v130 = v394;
            v138 = objc_msgSend_mutableBytes(v394, v131, v132, v133, v134);
            if (v106 <= 4)
            {
              if (v106)
              {
                for (i = 0; i != v106; ++i)
                {
                  objc_msgSend_valueAtIndex_(v383, v135, i, v136, v137);
                  v138[i] = v284;
                  objc_msgSend_valueAtIndex_(v385, v285, i, v286, v287);
                  v138[v106 + i] = v288;
                }
              }
            }

            else
            {
              v139 = v383;
              v144 = objc_msgSend__values(v383, v140, v141, v142, v143);
              memcpy(v138, v144, 8 * v106);
              v145 = v385;
              v150 = objc_msgSend__values(v385, v146, v147, v148, v149);
              memcpy(&v138[v106], v150, 8 * v106);
            }

            v289 = *MEMORY[0x277CBFA78];
            v410[0] = *MEMORY[0x277CBFA70];
            v410[1] = v289;
            v411[0] = v394;
            v411[1] = @"RAWAdjustColorTRC";
            v410[2] = *MEMORY[0x277CBFA38];
            v411[2] = MEMORY[0x277CBEC38];
            v389 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v135, v411, v410, 3);
            v290 = objc_alloc(MEMORY[0x277CBF758]);
            v292 = objc_msgSend_initWithImageProvider_width_height_format_colorSpace_options_(v290, v291, v392, 256, 1, *MEMORY[0x277CBF9F8], 0, v389);
            v391 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v293, v294, v295, v296, 256.0, v38, v371, 0.0);
            v301 = objc_msgSend_vectorWithX_Y_Z_(MEMORY[0x277CBF788], v297, v298, v299, v300, v111, v116, (v116 - v126) / (v111 - v121));
            v302 = v380;
            objc_msgSend_extent(v292, v303, v304, v305, v306);
            v311 = v310;
            v313 = v312;
            v315 = v314;
            v317 = v316;
            inputColorSpace = self->inputColorSpace;
            if (inputColorSpace)
            {
              v302 = objc_msgSend_imageByColorMatchingWorkingSpaceToColorSpace_(v380, v307, self->inputColorSpace, v308, v309);
            }

            v381 = v302;
            v319 = objc_msgSend_kernelWithName_(BoostKernels, v307, @"boost_lut", v308, v309);
            objc_msgSend_extent(v302, v320, v321, v322, v323);
            v325 = v324;
            v327 = v326;
            v329 = v328;
            v331 = v330;
            v396[0] = MEMORY[0x277D85DD0];
            v396[1] = 3221225472;
            v396[2] = sub_23387EBF0;
            v396[3] = &unk_2789EF848;
            v396[4] = v311;
            v396[5] = v313;
            v396[6] = v315;
            v396[7] = v317;
            v409[0] = v302;
            v409[1] = v292;
            v409[2] = v391;
            v409[3] = v301;
            v334 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v332, v409, 4, v333);
            v337 = objc_msgSend_applyWithExtent_roiCallback_arguments_(v319, v335, v396, v334, v336, v325, v327, v329, v331);

            v341 = fmin(fmax(v370, 1.0), 3.0);
            if (v341 > 1.0)
            {
              v342 = objc_msgSend_kernelWithName_(BoostKernels, v338, @"boost_hdr", v339, v340);
              objc_msgSend_extent(v337, v343, v344, v345, v346);
              v348 = v347;
              v350 = v349;
              v352 = v351;
              v354 = v353;
              v408[0] = v337;
              v359 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v355, v356, v357, v358, v341);
              v408[1] = v359;
              v362 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v360, v408, 2, v361);
              v366 = objc_msgSend_applyWithExtent_arguments_(v342, v363, v362, v364, v365, v348, v350, v352, v354);

              v337 = v366;
            }

            if (inputColorSpace)
            {
              v367 = v337;
              v337 = objc_msgSend_imageByColorMatchingColorSpaceToWorkingSpace_(v337, v338, inputColorSpace, v339, v340);
            }

            v70 = v337;

            v202 = v398;
            goto LABEL_58;
          }
        }
      }
    }

    v373 = fmin(fmax(v10, 0.0), 1.0);
    if (v89 < 7)
    {
      if (v89 < 5)
      {
        v238 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v90, v91, v92, v93, 0.100000001, 0.200000003, 0.5, 1.0);
        v385 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v239, v240, v241, v242, v69 * 1000.0 * (v46 * 0.1 / v69 + v384 * 0.1 / v69 + -2.0), v69 * 100.0 * (1.0 - (v384 * 0.1 / v69 + v46 * 0.1 / v69 + v384 * 0.1 / v69 + -2.0)), v69 * 10.0 * (v384 * 0.1 / v69), 0.0);
        v243 = v46 * 0.1 / (v76 - v69);
        v244 = v382 * 0.1 / (v76 - v69) + v243 + -2.0;
        v249 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v245, v246, v247, v248, (v76 - v69) * v244 * 1000.0, (v76 - v69) * ((1.0 - (v243 + v244)) * 100.0 + v244 * -300.0), (v76 - v69) * ((1.0 - (v243 + v244)) * -20.0 + v244 * 30.0 + v243 * 10.0), v69 + (v76 - v69) * (1.0 - (v243 + v244) - v244 - v243));
        v250 = v382 * 0.3 / (v82 - v76);
        v251 = v57 * 0.3 / (v82 - v76) + v250 + -2.0;
        v256 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v252, v253, v254, v255, (v82 - v76) * v251 * 1000.0 / 27.0, (v82 - v76) * ((1.0 - (v250 + v251)) * 100.0 / 9.0 + v251 * -200.0 / 9.0), (v82 - v76) * (v250 * 10.0 / 3.0 + v251 * 40.0 / 9.0 - (1.0 - (v250 + v251)) * 40.0 / 9.0), v76 + (v82 - v76) * ((1.0 - (v250 + v251)) * 4.0 / 9.0 - v251 * 8.0 / 27.0 - (v250 + v250) / 3.0));
        v257 = v57 * 0.5 / (1.0 - v82);
        v258 = v377 * 0.5 / (1.0 - v82) + v257 + -2.0;
        v212 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v259, v260, v261, v262, (1.0 - v82) * v258 * 8.0, (1.0 - v82) * ((1.0 - (v257 + v258)) * 4.0 + v258 * -12.0), (1.0 - v82) * (v257 * 2.0 - ((1.0 - (v257 + v258)) * 4.0 - v258 * 6.0)), v82 + (1.0 - v82) * (1.0 - (v257 + v258) - v258 - v257));
        v393 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v263, v264, v265, v266, v377);
        objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v267, v268, v269, v270, v373);
        v372 = v256;
        v383 = v238;
        v379 = v221 = v378 < 3;
        if (v221)
        {
          v202 = v249;
          if (v373 >= 1.0)
          {
            v375 = objc_msgSend_kernelWithName_(BoostKernels, v271, @"boost_v2_dng", v272, v273, 1.0, v373);
            v404[0] = v238;
            v404[1] = v385;
            v404[2] = v249;
            v404[3] = v372;
            v404[4] = v212;
            v404[5] = v393;
            v227 = v372;
            v237 = v393;
            objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v281, v404, 6, v282);
          }

          else
          {
            v375 = objc_msgSend_kernelWithName_(BoostKernels, v271, @"boost_v2", v272, v273, 1.0, v373);
            v403[0] = v238;
            v403[1] = v385;
            v403[2] = v249;
            v403[3] = v372;
            v403[4] = v212;
            v403[5] = v393;
            v403[6] = v379;
            v227 = v372;
            v237 = v393;
            objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v278, v403, 7, v279);
          }
          v226 = ;
          v225 = v375;
          v277 = objc_msgSend_apply_image_arguments_inoutSpace_isPremultiplied_(self, v280, v375, v380, v226, self->inputColorSpace, 1);
        }

        else
        {
          v202 = v249;
          v374 = objc_msgSend_kernelWithName_(BoostKernels, v271, @"boost_v3", v272, v273);
          v405[0] = v238;
          v405[1] = v385;
          v405[2] = v249;
          v405[3] = v372;
          v405[4] = v212;
          v405[5] = v393;
          v405[6] = v379;
          v227 = v372;
          v237 = v393;
          v226 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v274, v405, 7, v275);
          v225 = v374;
          v277 = objc_msgSend_apply_image_arguments_inoutSpace_isPremultiplied_(self, v276, v374, v380, v226, self->inputColorSpace, 1);
        }

        v236 = v277;
        v233 = v380;
        goto LABEL_57;
      }

      v387 = 0;
      v388 = 0;
    }

    else
    {
      v151 = MEMORY[0x277CBF788];
      objc_msgSend_floatValue(self->inputBoostPreserveRYHueAmount, v90, v91, v92, v93);
      v153 = v152;
      objc_msgSend_floatValue(self->inputBoostPreserveYGHueAmount, v154, v155, v156, v157);
      v159 = v158;
      objc_msgSend_floatValue(self->inputBoostPreserveGCHueAmount, v160, v161, v162, v163);
      v169 = objc_msgSend_vectorWithX_Y_Z_(v151, v165, v166, v167, v168, fminf(fmaxf(v153, 0.0), 1.0), fminf(fmaxf(v159, 0.0), 1.0), fminf(fmaxf(v164, 0.0), 1.0));
      v170 = MEMORY[0x277CBF788];
      objc_msgSend_floatValue(self->inputBoostPreserveCBHueAmount, v171, v172, v173, v174);
      v176 = v175;
      objc_msgSend_floatValue(self->inputBoostPreserveBMHueAmount, v177, v178, v179, v180);
      v182 = v181;
      objc_msgSend_floatValue(self->inputBoostPreserveMRHueAmount, v183, v184, v185, v186);
      objc_msgSend_vectorWithX_Y_Z_(v170, v188, v189, v190, v191, fminf(fmaxf(v176, 0.0), 1.0), fminf(fmaxf(v182, 0.0), 1.0), fminf(fmaxf(v187, 0.0), 1.0));
      v388 = v387 = v169;
    }

    v192 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v90, v91, v92, v93, 0.100000001, 0.200000003, 0.5, 1.0);
    v197 = sub_2337FC300(0.0, 0.0, v384, 0.1, v69, v46, v192, v193, v194, v195, v196);
    v202 = sub_2337FC300(0.1, v69, v46, 0.2, v76, v382, v197, v198, v199, v200, v201);
    v207 = sub_2337FC300(0.2, v76, v382, 0.5, v82, v57, v202, v203, v204, v205, v206);
    v212 = sub_2337FC300(0.5, v82, v57, 1.0, v88, v377, v207, v208, v209, v210, v211);
    v390 = sub_2337FC300(0.5, v82, v57, 1.0, v82 + v57 * 0.5, v57, v212, v213, v214, v215, v216);
    objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v217, v218, v219, v220, v373);
    v383 = v192;
    v385 = v197;
    v379 = v221 = v378 < 7;
    if (v221)
    {
      v369 = objc_msgSend_kernelWithName_(BoostKernels, v222, @"boost_v5", v223, v224);
      v406[0] = v192;
      v406[1] = v197;
      v406[2] = v202;
      v406[3] = v207;
      v406[4] = v212;
      v406[5] = v390;
      v406[6] = v379;
      v227 = v207;
      v228 = v390;
      v232 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v234, v406, 7, v235);
      v233 = v369;
      v225 = v387;
      v226 = v388;
    }

    else
    {
      v369 = objc_msgSend_kernelWithName_(BoostKernels, v222, @"boost_v7", v223, v224);
      v407[0] = v192;
      v407[1] = v197;
      v407[2] = v202;
      v407[3] = v207;
      v407[4] = v212;
      v407[5] = v390;
      v407[6] = v379;
      v225 = v387;
      v226 = v388;
      v407[7] = v387;
      v407[8] = v388;
      v227 = v207;
      v228 = v390;
      v232 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v229, v407, 9, v230);
      v233 = v369;
    }

    v236 = objc_msgSend_apply_image_arguments_inoutSpace_isPremultiplied_(self, v231, v369, v380, v232, self->inputColorSpace, 1);

    v237 = v228;
LABEL_57:

    v70 = v236;
LABEL_58:

    v376[2](v376);
    goto LABEL_70;
  }

  v70 = 0;
LABEL_70:

  return v70;
}

@end