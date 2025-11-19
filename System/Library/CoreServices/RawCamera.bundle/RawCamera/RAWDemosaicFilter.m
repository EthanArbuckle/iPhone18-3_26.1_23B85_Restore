@interface RAWDemosaicFilter
- (CGRect)regionOf:(int)a3 destRect:(CGRect)a4 userInfo:(id)a5;
- (id)blacks;
- (id)crop;
- (id)exposureFactor;
- (id)noiseModel;
- (id)outputImage;
- (id)phaseFor:(int)a3;
- (id)phaseForBayer;
- (id)phaseForQuadra;
- (id)phaseForXtrans;
- (id)range;
- (int)forceVersion;
- (int)sensorType;
- (int)versionfor:(int)a3;
@end

@implementation RAWDemosaicFilter

- (int)forceVersion
{
  v2 = getenv(qword_27DE37C60);
  if (!v2)
  {
    return -1;
  }

  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, v2, v4, v5);
  v11 = objc_msgSend_intValue(v6, v7, v8, v9, v10);

  return v11;
}

- (CGRect)regionOf:(int)a3 destRect:(CGRect)a4 userInfo:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a5;
  v13 = objc_msgSend_objectAtIndexedSubscript_(v9, v10, 2, v11, v12);
  objc_msgSend_floatValue(v13, v14, v15, v16, v17);
  v19 = v18;

  v23 = objc_msgSend_objectAtIndexedSubscript_(v9, v20, 3, v21, v22);
  objc_msgSend_floatValue(v23, v24, v25, v26, v27);
  v29 = v28;

  v62.origin.x = x + v19;
  v62.origin.y = y + v29;
  v62.size.width = width;
  v62.size.height = height;
  v63 = CGRectInset(v62, -1.0, -1.0);
  v30 = v63.origin.x;
  v31 = v63.origin.y;
  v32 = v63.size.width;
  v33 = v63.size.height;
  v37 = objc_msgSend_objectAtIndexedSubscript_(v9, v34, 0, v35, v36);
  objc_msgSend_floatValue(v37, v38, v39, v40, v41);
  v43 = v42;

  v47 = objc_msgSend_objectAtIndexedSubscript_(v9, v44, 1, v45, v46);
  objc_msgSend_floatValue(v47, v48, v49, v50, v51);
  v53 = v52;

  v67.size.width = v43;
  v67.size.height = v53;
  v67.origin.x = 0.0;
  v67.origin.y = 0.0;
  v64.origin.x = v30;
  v64.origin.y = v31;
  v64.size.width = v32;
  v64.size.height = v33;
  v65 = CGRectIntersection(v64, v67);
  v54 = v65.origin.x;
  v55 = v65.origin.y;
  v56 = v65.size.width;
  v57 = v65.size.height;

  v58 = v54;
  v59 = v55;
  v60 = v56;
  v61 = v57;
  result.size.height = v61;
  result.size.width = v60;
  result.origin.y = v59;
  result.origin.x = v58;
  return result;
}

- (id)crop
{
  objc_msgSend_extent(self->inputImage, a2, v2, v3, v4);
  v14 = v13;
  inputCropRect = self->inputCropRect;
  if (inputCropRect)
  {
    objc_msgSend_X(inputCropRect, v6, v7, v8, v9);
    v17 = v16;
    objc_msgSend_Y(self->inputCropRect, v18, v19, v20, v21);
    v23 = v22;
    objc_msgSend_W(self->inputCropRect, v24, v25, v26, v27);
    v29 = v14 - (v23 + v28);
    objc_msgSend_Z(self->inputCropRect, v30, v31, v32, v33);
    v35 = v34;
    objc_msgSend_W(self->inputCropRect, v36, v37, v38, v39);
    v14 = v40;
  }

  else
  {
    v17 = v10;
    v29 = v11;
    v35 = v12;
  }

  v41 = MEMORY[0x277CBF788];

  return objc_msgSend_vectorWithX_Y_Z_W_(v41, v6, v7, v8, v9, v17, v29, v35, v14);
}

- (id)range
{
  v5 = MEMORY[0x277CCABB0];
  objc_msgSend_floatValue(self->inputRange, a2, v2, v3, v4);
  *&v10 = 65535.0 / *&v10;

  return objc_msgSend_numberWithFloat_(v5, v6, v7, v8, v9, v10);
}

- (id)blacks
{
  v6 = MEMORY[0x277CBF788];
  objc_msgSend_X(self->inputBlacks, a2, v2, v3, v4);
  v8 = fmax(v7, 0.0) / 65535.0;
  objc_msgSend_Y(self->inputBlacks, v9, v10, v11, v12);
  v14 = fmax(v13, 0.0) / 65535.0;
  objc_msgSend_Z(self->inputBlacks, v15, v16, v17, v18);
  v20 = fmax(v19, 0.0) / 65535.0;
  objc_msgSend_W(self->inputBlacks, v21, v22, v23, v24);
  v30 = fmax(v29, 0.0) / 65535.0;

  return objc_msgSend_vectorWithX_Y_Z_W_(v6, v25, v26, v27, v28, v8, v14, v20, v30);
}

- (id)noiseModel
{
  inputRepresentativeNoise = self->inputRepresentativeNoise;
  if (!inputRepresentativeNoise)
  {
    inputRepresentativeNoise = &unk_284958B68;
  }

  v8 = inputRepresentativeNoise;
  inputNoiseModel = self->inputNoiseModel;
  if (inputNoiseModel)
  {
    v10 = inputNoiseModel;
  }

  else
  {
    v10 = objc_msgSend_vectorWithX_Y_(MEMORY[0x277CBF788], v4, v5, v6, v7, 0.0, 0.0);
  }

  v15 = v10;
  if (!self->inputNoiseModel && self->inputRepresentativeNoise)
  {
    v16 = MEMORY[0x277CBF788];
    objc_msgSend_floatValue(v8, v11, v12, v13, v14);
    v22 = objc_msgSend_vectorWithX_Y_(v16, v18, v19, v20, v21, 0.0, ((v17 / 100.0) * 1.0954));

    v15 = v22;
  }

  v23 = MEMORY[0x277CBF788];
  objc_msgSend_floatValue(v8, v11, v12, v13, v14);
  v25 = v24;
  objc_msgSend_X(v15, v26, v27, v28, v29);
  v31 = v30;
  objc_msgSend_Y(v15, v32, v33, v34, v35);
  v41 = objc_msgSend_vectorWithX_Y_Z_(v23, v36, v37, v38, v39, v25, v31, v40);

  return v41;
}

- (id)exposureFactor
{
  v5 = MEMORY[0x277CCABB0];
  objc_msgSend_floatValue(self->inputBaselineExposure, a2, v2, v3, v4);
  *&v11 = exp2f(v6) + 1.0;

  return objc_msgSend_numberWithFloat_(v5, v7, v8, v9, v10, v11);
}

- (int)versionfor:(int)a3
{
  v6 = objc_msgSend_intValue(self->inputVersion, a2, *&a3, v3, v4);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = -1;
  }

  if (v7 <= 7)
  {
    v8 = 7;
  }

  else
  {
    v8 = 8;
  }

  if (!a3)
  {
    v7 = v8;
  }

  if (a3 == 1)
  {
    v7 = v8;
  }

  if (a3 == 2)
  {
    return v8;
  }

  else
  {
    return v7;
  }
}

- (id)phaseFor:(int)a3
{
  if (a3 == 2)
  {
    v5 = objc_msgSend_phaseForXtrans(self, a2, *&a3, v3, v4);
  }

  else if (a3 == 1)
  {
    v5 = objc_msgSend_phaseForQuadra(self, a2, *&a3, v3, v4);
  }

  else
  {
    if (a3)
    {
      objc_msgSend_vectorWithX_Y_(MEMORY[0x277CBF788], a2, *&a3, v3, v4, 0.0, 0.0);
    }

    else
    {
      objc_msgSend_phaseForBayer(self, a2, *&a3, v3, v4);
    }
    v5 = ;
  }

  return v5;
}

- (id)phaseForXtrans
{
  v118[18] = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_intValue(self->inputPattern, a2, v2, v3, v4);
  v11 = v6 & 0x7F;
  if (v11 < 0x13)
  {
    objc_msgSend_extent(self->inputImage, v7, v8, v9, v10);
    v18 = llround(v17) % 6;
    v19 = ~v18;
    v117 = objc_msgSend_vectorWithX_Y_(MEMORY[0x277CBF788], v20, v21, v22, v23, 1.0, v19);
    v118[0] = v117;
    v116 = objc_msgSend_vectorWithX_Y_(MEMORY[0x277CBF788], v24, v25, v26, v27, 2.0, v19);
    v118[1] = v116;
    v115 = objc_msgSend_vectorWithX_Y_(MEMORY[0x277CBF788], v28, v29, v30, v31, 3.0, v19);
    v118[2] = v115;
    v114 = objc_msgSend_vectorWithX_Y_(MEMORY[0x277CBF788], v32, v33, v34, v35, 4.0, v19);
    v118[3] = v114;
    v113 = objc_msgSend_vectorWithX_Y_(MEMORY[0x277CBF788], v36, v37, v38, v39, 5.0, v19);
    v118[4] = v113;
    v112 = objc_msgSend_vectorWithX_Y_(MEMORY[0x277CBF788], v40, v41, v42, v43, 0.0, v19);
    v118[5] = v112;
    v111 = objc_msgSend_vectorWithX_Y_(MEMORY[0x277CBF788], v44, v45, v46, v47, 1.0, (-2 - v18));
    v118[6] = v111;
    v110 = objc_msgSend_vectorWithX_Y_(MEMORY[0x277CBF788], v48, v49, v50, v51, 2.0, (-2 - v18));
    v118[7] = v110;
    v109 = objc_msgSend_vectorWithX_Y_(MEMORY[0x277CBF788], v52, v53, v54, v55, 3.0, (-2 - v18));
    v118[8] = v109;
    v108 = objc_msgSend_vectorWithX_Y_(MEMORY[0x277CBF788], v56, v57, v58, v59, 4.0, (-2 - v18));
    v118[9] = v108;
    v64 = objc_msgSend_vectorWithX_Y_(MEMORY[0x277CBF788], v60, v61, v62, v63, 5.0, (-2 - v18));
    v118[10] = v64;
    v69 = objc_msgSend_vectorWithX_Y_(MEMORY[0x277CBF788], v65, v66, v67, v68, 0.0, (-2 - v18));
    v118[11] = v69;
    v70 = (-3 - v18);
    v75 = objc_msgSend_vectorWithX_Y_(MEMORY[0x277CBF788], v71, v72, v73, v74, 1.0, v70);
    v118[12] = v75;
    v80 = objc_msgSend_vectorWithX_Y_(MEMORY[0x277CBF788], v76, v77, v78, v79, 2.0, v70);
    v118[13] = v80;
    v85 = objc_msgSend_vectorWithX_Y_(MEMORY[0x277CBF788], v81, v82, v83, v84, 3.0, v70);
    v118[14] = v85;
    v90 = objc_msgSend_vectorWithX_Y_(MEMORY[0x277CBF788], v86, v87, v88, v89, 4.0, v70);
    v118[15] = v90;
    v95 = objc_msgSend_vectorWithX_Y_(MEMORY[0x277CBF788], v91, v92, v93, v94, 5.0, v70);
    v118[16] = v95;
    v100 = objc_msgSend_vectorWithX_Y_(MEMORY[0x277CBF788], v96, v97, v98, v99, 0.0, v70);
    v118[17] = v100;
    v103 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v101, v118, 18, v102);
    v16 = objc_msgSend_objectAtIndexedSubscript_(v103, v104, v11, v105, v106);
  }

  else
  {
    printf("unexpected xtrans pattern %d 0x%x\n", v6, v6);
    v16 = objc_msgSend_vectorWithX_Y_(MEMORY[0x277CBF788], v12, v13, v14, v15, 0.0, 0.0);
  }

  return v16;
}

- (id)phaseForQuadra
{
  objc_msgSend_extent(self->inputImage, a2, v2, v3, v4);
  v7 = v6;
  v12 = objc_msgSend_intValue(self->inputPattern, v8, v9, v10, v11);
  v13 = llround(v7) & 1;
  v22 = objc_msgSend_vectorWithX_Y_(MEMORY[0x277CBF788], v14, v15, v16, v17, 0.0, 0.0);
  if (v12 > 1094795584)
  {
    if (v12 == 1094795585)
    {
      v23 = objc_msgSend_vectorWithX_Y_(MEMORY[0x277CBF788], v18, v19, v20, v21, 2.0, (2 * v13));
      goto LABEL_11;
    }

    if (v12 == 1364283729)
    {
      v23 = objc_msgSend_vectorWithX_Y_(MEMORY[0x277CBF788], v18, v19, v20, v21, 0.0, (2 * v13));
      goto LABEL_11;
    }

LABEL_8:
    printf("unsupported bayer pattern %d 0x%x\n", v12, v12);
    goto LABEL_12;
  }

  if (v12 == 336860180)
  {
    v23 = objc_msgSend_vectorWithX_Y_(MEMORY[0x277CBF788], v18, v19, v20, v21, 2.0, ((2 * v13) ^ 2u));
    goto LABEL_11;
  }

  if (v12 != 353703189)
  {
    goto LABEL_8;
  }

  v23 = objc_msgSend_vectorWithX_Y_(MEMORY[0x277CBF788], v18, v19, v20, v21, 0.0, ((2 * v13) ^ 2u));
LABEL_11:
  v24 = v23;

  v22 = v24;
LABEL_12:

  return v22;
}

- (id)phaseForBayer
{
  objc_msgSend_extent(self->inputImage, a2, v2, v3, v4);
  v7 = v6;
  v12 = objc_msgSend_intValue(self->inputPattern, v8, v9, v10, v11);
  v13 = llround(v7) & 1;
  v22 = objc_msgSend_vectorWithX_Y_(MEMORY[0x277CBF788], v14, v15, v16, v17, 0.0, 0.0);
  if (v12 > 1229539656)
  {
    if (v12 == 1229539657)
    {
      v23 = objc_msgSend_vectorWithX_Y_(MEMORY[0x277CBF788], v18, v19, v20, v21, 0.0, v13);
      goto LABEL_11;
    }

    if (v12 == 1633771873)
    {
      v23 = objc_msgSend_vectorWithX_Y_(MEMORY[0x277CBF788], v18, v19, v20, v21, 1.0, (v13 ^ 1));
      goto LABEL_11;
    }

LABEL_8:
    printf("unsupported bayer pattern %d 0x%x\n", v12, v12);
    goto LABEL_12;
  }

  if (v12 == -1802201964)
  {
    v23 = objc_msgSend_vectorWithX_Y_(MEMORY[0x277CBF788], v18, v19, v20, v21, 0.0, (v13 ^ 1));
    goto LABEL_11;
  }

  if (v12 != 370546198)
  {
    goto LABEL_8;
  }

  v23 = objc_msgSend_vectorWithX_Y_(MEMORY[0x277CBF788], v18, v19, v20, v21, 1.0, v13);
LABEL_11:
  v24 = v23;

  v22 = v24;
LABEL_12:

  return v22;
}

- (int)sensorType
{
  v5 = objc_msgSend_intValue(self->inputPattern, a2, v2, v3, v4);
  v6 = 0;
  if (v5 <= 1094795584)
  {
    if (v5 <= 353703188)
    {
      if (v5 != -1802201964)
      {
        v7 = 336860180;
        goto LABEL_14;
      }

      return v6;
    }

    if (v5 != 353703189)
    {
      v8 = 370546198;
LABEL_10:
      if (v5 != v8)
      {
        return 2 * (v5 >> 8 == 8487297);
      }

      return v6;
    }

    return 1;
  }

  if (v5 <= 1364283728)
  {
    if (v5 != 1094795585)
    {
      v8 = 1229539657;
      goto LABEL_10;
    }

    return 1;
  }

  if (v5 != 1633771873)
  {
    v7 = 1364283729;
LABEL_14:
    if (v5 == v7)
    {
      return 1;
    }

    return 2 * (v5 >> 8 == 8487297);
  }

  return v6;
}

- (id)outputImage
{
  v278[3] = *MEMORY[0x277D85DE8];
  if (self->inputImage)
  {
    v3 = sub_23378E104();
    v4 = v3;
    if (&self->super.super.super.isa + 1 >= 2 && os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23371F000, v4, OS_SIGNPOST_INTERVAL_BEGIN, self, "RAWDemosaicFilter", &unk_233945DBE, buf, 2u);
    }

    v267[0] = MEMORY[0x277D85DD0];
    v267[1] = 3221225472;
    v267[2] = sub_2338789E8;
    v267[3] = &unk_2789EE800;
    v267[4] = self;
    v244 = MEMORY[0x2383AC810](v267);
    v9 = objc_msgSend_sensorType(self, v5, v6, v7, v8);
    v13 = objc_msgSend_versionfor_(self, v10, v9, v11, v12);
    v263 = objc_msgSend_phaseFor_(self, v14, v9, v15, v16);
    v21 = objc_msgSend_forceVersion(self, v17, v18, v19, v20);
    if (v21 >= 0)
    {
      v25 = v21;
    }

    else
    {
      v25 = v13;
    }

    v243 = v25;
    v249 = objc_msgSend_kernelWithName_(DMKernels, v22, @"deXtrans_v7", v23, v24);
    v248 = objc_msgSend_kernelWithName_(DMKernels, v26, @"deXtrans_v8", v27, v28);
    v246 = objc_msgSend_kernelWithName_(DMKernels, v29, @"deXtrans_v7_8bit", v30, v31);
    v257 = objc_msgSend_kernelWithName_(DMKernels, v32, @"deXtrans_draft", v33, v34);
    v247 = objc_msgSend_kernelWithName_(DMKernels, v35, @"deBayer_v7", v36, v37);
    v245 = objc_msgSend_kernelWithName_(DMKernels, v38, @"deBayer_v7_8bit", v39, v40);
    v256 = objc_msgSend_kernelWithName_(DMKernels, v41, @"deBayer_draft", v42, v43);
    v252 = objc_msgSend_kernelWithName_(DMKernels, v44, @"despeckle_v7", v45, v46);
    v251 = objc_msgSend_kernelWithName_(DMKernels, v47, @"despeckle_v8", v48, v49);
    v250 = objc_msgSend_kernelWithName_(DMKernels, v50, @"deBayer_v8", v51, v52);
    v259 = objc_msgSend_kernelWithName_(DMKernels, v53, @"deQuadra_draft", v54, v55);
    v262 = objc_msgSend_range(self, v56, v57, v58, v59);
    v254 = objc_msgSend_exposureFactor(self, v60, v61, v62, v63);
    v68 = objc_msgSend_crop(self, v64, v65, v66, v67);
    v261 = objc_msgSend_blacks(self, v69, v70, v71, v72);
    v253 = objc_msgSend_noiseModel(self, v73, v74, v75, v76);
    objc_msgSend_extent(self->inputImage, v77, v78, v79, v80);
    v82 = v81;
    v84 = v83;
    objc_msgSend_X(v68, v85, v86, v87, v88);
    v90 = v89;
    objc_msgSend_Y(v68, v91, v92, v93, v94);
    v96 = v95;
    objc_msgSend_Z(v68, v97, v98, v99, v100);
    v102 = v101;
    objc_msgSend_W(v68, v103, v104, v105, v106);
    v108 = v107;
    v113 = objc_msgSend_vectorWithX_Y_(MEMORY[0x277CBF788], v109, v110, v111, v112, v82, v84);
    objc_msgSend_floatValue(self->inputDespeckle, v114, v115, v116, v117);
    v119 = v118;
    v266[0] = MEMORY[0x277D85DD0];
    v266[1] = 3221225472;
    v266[2] = sub_233878A70;
    v266[3] = &unk_2789EF848;
    *&v266[4] = v82;
    *&v266[5] = v84;
    v266[6] = v90;
    v266[7] = v96;
    v260 = MEMORY[0x2383AC810](v266);
    v265[0] = MEMORY[0x277D85DD0];
    v265[1] = 3221225472;
    v265[2] = sub_233878B00;
    v265[3] = &unk_2789EF848;
    *&v265[4] = v82;
    *&v265[5] = v84;
    v265[6] = v90;
    v265[7] = v96;
    v258 = MEMORY[0x2383AC810](v265);
    v264[0] = MEMORY[0x277D85DD0];
    v264[1] = 3221225472;
    v264[2] = sub_233878B30;
    v264[3] = &unk_2789EF848;
    *&v264[4] = v82;
    *&v264[5] = v84;
    v264[6] = v90;
    v264[7] = v96;
    v255 = MEMORY[0x2383AC810](v264);
    v124 = objc_msgSend__imageBySamplingNearest(self->inputImage, v120, v121, v122, v123);
    v125 = sub_2338F28E4();
    v129 = objc_msgSend_imageByColorMatchingWorkingSpaceToColorSpace_(v124, v126, v125, v127, v128);

    if (v9 == 2)
    {
      if (objc_msgSend_BOOLValue(self->inputDraftMode, v130, v131, v132, v133))
      {
        v166 = v257;
        v272[0] = v129;
        v272[1] = v261;
        v272[2] = v262;
        v272[3] = v263;
        v272[4] = v113;
        v272[5] = v68;
        v179 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v177, v272, 6, v178);
        v167 = MEMORY[0x2383AC810](v258);
        v180 = v179;
        objc_msgSend_applyWithExtent_roiCallback_arguments_(v166, v181, v167, v179, v182, 0.0, 0.0, v102, v108);
      }

      else
      {
        inputScaleFactor = self->inputScaleFactor;
        if (inputScaleFactor && (objc_msgSend_doubleValue(inputScaleFactor, v173, v174, v175, v176), v186 < 0.6))
        {
          v166 = v246;
          v167 = MEMORY[0x2383AC810](v255);
          v271[0] = v129;
          v271[1] = v261;
          v271[2] = v262;
          v271[3] = v263;
          v271[4] = v113;
          v271[5] = v68;
          v189 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v187, v271, 6, v188);
        }

        else
        {
          if (v243 == 8)
          {
            v166 = v248;
            v167 = MEMORY[0x2383AC810](v255);
            v269[0] = v129;
            v269[1] = v261;
            v269[2] = v262;
            v269[3] = v263;
            v269[4] = v113;
            v269[5] = v68;
            v269[6] = v253;
            v269[7] = v254;
            v269[8] = self->inputFactors;
            objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v192, v269, 9, v193);
          }

          else
          {
            v166 = v249;
            v167 = MEMORY[0x2383AC810](v255);
            v270[0] = v129;
            v270[1] = v261;
            v270[2] = v262;
            v270[3] = v263;
            v270[4] = v113;
            v270[5] = v68;
            objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v236, v270, 6, v237);
          }
          v189 = ;
        }

        v180 = v189;
        objc_msgSend_applyWithExtent_roiCallback_arguments_(v166, v190, v167, v189, v191, 0.0, 0.0, v102, v108);
      }
    }

    else
    {
      if (v9 == 1)
      {
        v165 = objc_msgSend__imageBySamplingNearest(v129, v130, v131, v132, v133);

        v166 = v259;
        v167 = MEMORY[0x2383AC810](v260);
        v273[0] = v165;
        v273[1] = v261;
        v273[2] = v262;
        v273[3] = v263;
        v273[4] = v113;
        v273[5] = v68;
        v170 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v168, v273, 6, v169);
      }

      else
      {
        if (v9)
        {
          v183 = v129;
          v184 = v183;
LABEL_43:

          v244[2](v244);
          goto LABEL_45;
        }

        v134 = objc_msgSend_BOOLValue(self->inputDraftMode, v130, v131, v132, v133);
        LODWORD(v139) = 1.0;
        v140 = fminf(v119, 1.0);
        if ((v134 & 1) == 0 && (v139 = v140, v140 > 0.01) || v243 == 8)
        {
          v141 = MEMORY[0x277CCABB0];
          objc_msgSend_floatValue(self->inputDespeckle, v135, v136, v137, v138, v139);
          *&v143 = (v142 * 1.25) + (v142 * 1.25);
          v148 = objc_msgSend_numberWithFloat_(v141, v144, v145, v146, v147, v143);
          objc_msgSend_floatValue(self->inputDespeckle, v149, v150, v151, v152);
          if (v157 <= 0.5)
          {
            v164 = &unk_284958B68;
          }

          else
          {
            objc_msgSend_floatValue(self->inputDespeckle, v153, v154, v155, v156);
            v163 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v159, v160, v161, v162, fmax(v158 * -4.99394315 * v158 + v158 * 20.886197 * v158 * v158 + v158 * -11.5599299 + 5.66767614, 1.25));

            v164 = &unk_284958B78;
            v148 = v163;
          }

          objc_msgSend_extent(v129, v153, v154, v155, v156);
          if (v243 == 8)
          {
            v202 = v198;
            v203 = v199;
            v204 = v200;
            v205 = v201;
            v277[0] = v129;
            v277[1] = v113;
            v277[2] = v263;
            v277[3] = v148;
            v277[4] = v164;
            v206 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v194, v277, 5, v197);
            objc_msgSend_applyWithExtent_roiCallback_arguments_(v251, v207, &unk_28492C370, v206, v208, v202, v203, v204, v205);
            v129 = v209 = v129;
          }

          else
          {
            v210 = v198;
            v211 = v199;
            v212 = v200;
            v213 = v201;
            v278[0] = v129;
            v278[1] = v113;
            *&v198 = v140;
            v206 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v194, v195, v196, v197, v198);
            v278[2] = v206;
            v209 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v214, v278, 3, v215);
            v218 = objc_msgSend_applyWithExtent_roiCallback_arguments_(v252, v216, &unk_28492C350, v209, v217, v210, v211, v212, v213);

            v129 = v218;
          }
        }

        v165 = objc_msgSend__imageBySamplingNearest(v129, v135, v136, v137, v138);

        if (objc_msgSend_BOOLValue(self->inputDraftMode, v219, v220, v221, v222))
        {
          v166 = v256;
          v167 = MEMORY[0x2383AC810](v260);
          v276[0] = v165;
          v276[1] = v261;
          v276[2] = v262;
          v276[3] = v263;
          v276[4] = v113;
          v276[5] = v68;
          v170 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v227, v276, 6, v228);
        }

        else if (v243 == 8)
        {
          v166 = v250;
          v167 = MEMORY[0x2383AC810](v258);
          v274[0] = v165;
          v274[1] = v261;
          v274[2] = v262;
          v274[3] = v263;
          v274[4] = v113;
          v274[5] = v68;
          v274[6] = v253;
          v274[7] = v254;
          v274[8] = self->inputFactors;
          v170 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v229, v274, 9, v230);
        }

        else
        {
          v231 = self->inputScaleFactor;
          if (!v231 || (objc_msgSend_doubleValue(v231, v223, v224, v225, v226), v232 = v245, v233 >= 0.6))
          {
            v232 = v247;
          }

          v166 = v232;
          v167 = MEMORY[0x2383AC810](v258);
          v275[0] = v165;
          v275[1] = v261;
          v275[2] = v262;
          v275[3] = v263;
          v275[4] = v113;
          v275[5] = v68;
          v275[6] = self->inputRepresentativeNoise;
          v170 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v234, v275, 7, v235);
        }
      }

      v180 = v170;
      v129 = v165;
      objc_msgSend_applyWithExtent_roiCallback_arguments_(v166, v171, v167, v170, v172, 0.0, 0.0, v102, v108);
    }
    v183 = ;

    v238 = sub_2338F28E4();
    v184 = objc_msgSend_imageByColorMatchingColorSpaceToWorkingSpace_(v183, v239, v238, v240, v241);

    goto LABEL_43;
  }

  v184 = 0;
LABEL_45:

  return v184;
}

@end