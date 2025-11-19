@interface RAWGainMap
- (id)makeMapSampler;
- (id)outputImage;
- (void)setDefaults;
- (void)setValue:(id)a3 forKey:(id)a4;
@end

@implementation RAWGainMap

- (void)setDefaults
{
  inputGainMapRowPitch = self->inputGainMapRowPitch;
  self->inputGainMapRowPitch = &unk_2849588D0;

  inputGainMapColPitch = self->inputGainMapColPitch;
  self->inputGainMapColPitch = &unk_2849588D0;

  gainMapImg = self->_gainMapImg;
  self->_gainMapImg = 0;

  v6 = sub_2338F28E4();
  inputColorSpace = self->inputColorSpace;
  self->inputColorSpace = v6;

  MEMORY[0x2821F96F8](v6, inputColorSpace);
}

- (void)setValue:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (objc_msgSend_hasPrefix_(v7, v8, @"inputGainMapData", v9, v10))
  {
    gainMapImg = self->_gainMapImg;
    self->_gainMapImg = 0;
  }

  v12.receiver = self;
  v12.super_class = RAWGainMap;
  [(RAWGainMap *)&v12 setValue:v6 forKey:v7];
}

- (id)makeMapSampler
{
  v70[3] = *MEMORY[0x277D85DE8];
  objc_msgSend_X(self->inputGainMapSize, a2, v2, v3, v4);
  v7 = v6;
  objc_msgSend_Y(self->inputGainMapSize, v8, v9, v10, v11);
  v13 = v12;
  v18 = objc_msgSend_intValue(self->inputGainMapNumPlanes, v14, v15, v16, v17);
  v19 = v13 * v7;
  v27 = objc_msgSend_bytes(self->inputGainMapData, v20, v21, v22, v23);
  if (v18 == 1)
  {
    v28 = 2 * v7;
    v29 = objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], v24, 2 * v7 * v13, v25, v26);
    v30 = v29;
    v35 = objc_msgSend_mutableBytes(v30, v31, v32, v33, v34);
    src.data = v27;
    src.height = 1;
    src.width = v13 * v7;
    src.rowBytes = objc_msgSend_length(self->inputGainMapData, v36, v37, v38, v39);
    dest.data = v35;
    dest.height = 1;
    dest.width = v13 * v7;
    dest.rowBytes = objc_msgSend_length(v29, v40, v41, v42, v43);
    vImageConvert_PlanarFtoPlanar16F(&src, &dest, 0x10u);
    v48 = MEMORY[0x277CBF9F8];
  }

  else
  {
    v28 = 8 * v7;
    v29 = objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], v24, 8 * v7 * v13, v25, v26);
    v49 = v29;
    v54 = objc_msgSend_mutableBytes(v49, v50, v51, v52, v53);
    if (v19)
    {
      v55 = v54;
      v66 = xmmword_233909230;
      do
      {
        dest.rowBytes = 6;
        src.data = v27;
        *&src.height = xmmword_233909230;
        src.rowBytes = 12;
        dest.data = v55;
        *&dest.height = xmmword_233909230;
        vImageConvert_PlanarFtoPlanar16F(&src, &dest, 0);
        v55[3] = 15360;
        v55 += 4;
        v27 += 12;
        --v19;
      }

      while (v19);
    }

    v48 = MEMORY[0x277CBF9D8];
  }

  v56 = *v48;
  v69[0] = *MEMORY[0x277CBFA40];
  v57 = objc_msgSend_null(MEMORY[0x277CBEB68], v44, v45, v46, v47, v66);
  v58 = *MEMORY[0x277CBFB78];
  v59 = *MEMORY[0x277CBFB70];
  v70[0] = v57;
  v70[1] = v59;
  v60 = *MEMORY[0x277CBFB68];
  v69[1] = v58;
  v69[2] = v60;
  v70[2] = *MEMORY[0x277CBFB60];
  v62 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v61, v70, v69, 3);

  v64 = objc_msgSend_imageWithBitmapData_bytesPerRow_size_format_options_(MEMORY[0x277CBF758], v63, v29, v28, v56, v62, v7, v13);

  return v64;
}

- (id)outputImage
{
  v173[2] = *MEMORY[0x277D85DE8];
  if (self->inputImage)
  {
    objc_msgSend_X(self->inputGainMapSize, a2, v2, v3, v4);
    v7 = v6;
    objc_msgSend_Y(self->inputGainMapSize, v8, v9, v10, v11);
    v13 = v12;
    v18 = objc_msgSend_intValue(self->inputGainMapNumPlanes, v14, v15, v16, v17);
    v23 = objc_msgSend_intValue(self->inputGainMapRowPitch, v19, v20, v21, v22);
    v28 = objc_msgSend_intValue(self->inputGainMapColPitch, v24, v25, v26, v27);
    if (!objc_msgSend_BOOLValue(self->inputGainMapExecute, v29, v30, v31, v32) || !self->inputGainMapData)
    {
      goto LABEL_20;
    }

    v37 = v7;
    v38 = v13;
    if (v7 < 2 || v38 < 2 || v23 == 0 || v28 == 0 || (v18 & 0xFFFFFFFD) != 1)
    {
      NSLog(&cfstr_RawgainmapDisa.isa);
LABEL_20:
      v51 = self->inputImage;
      goto LABEL_41;
    }

    objc_msgSend_extent(self->inputImage, v33, v34, v35, v36);
    x = v175.origin.x;
    y = v175.origin.y;
    width = v175.size.width;
    height = v175.size.height;
    if (CGRectIsInfinite(v175))
    {
      NSLog(&cfstr_RawgainmapDisa_0.isa);
      goto LABEL_20;
    }

    objc_msgSend_CGRectValue(self->inputGainMapApplyRegion, v47, v48, v49, v50);
    v53 = width * v52;
    v55 = height * v54;
    v176.size.width = width * v56;
    v176.size.height = height * v57;
    v176.origin.x = width * v52;
    v176.origin.y = height * v54;
    v166 = v176.size.height;
    v167 = v176.size.width;
    v181.origin.x = x;
    v181.origin.y = y;
    v181.size.width = width;
    v181.size.height = height;
    v58 = CGRectContainsRect(v176, v181);
    v59 = sub_23378E104();
    v60 = v59;
    if (&self->super.super.super.isa + 1 >= 2 && os_signpost_enabled(v59))
    {
      LOWORD(v170.a) = 0;
      _os_signpost_emit_with_name_impl(&dword_23371F000, v60, OS_SIGNPOST_INTERVAL_BEGIN, self, "RAWGainMap", &unk_233945DBE, &v170, 2u);
    }

    v171[0] = MEMORY[0x277D85DD0];
    v171[1] = 3221225472;
    v171[2] = sub_2338F4438;
    v171[3] = &unk_2789EE800;
    v171[4] = self;
    v168 = MEMORY[0x2383AC810](v171);
    if (!self->_gainMapImg)
    {
      v65 = objc_msgSend_makeMapSampler(self, v61, v62, v63, v64);
      gainMapImg = self->_gainMapImg;
      self->_gainMapImg = v65;
    }

    v67 = self->inputImage;
    v68 = self->inputColorSpace;
    v73 = v68;
    if (v68)
    {
      CFAutorelease(v68);
      v77 = objc_msgSend_imageByColorMatchingWorkingSpaceToColorSpace_(v67, v74, v73, v75, v76);

      v67 = v77;
    }

    objc_msgSend_CGRectValue(self->inputGainMapRegion, v69, v70, v71, v72);
    v79 = v78;
    v81 = v80;
    v83 = v82;
    v85 = v84;
    v90 = objc_msgSend_imageByClampingToExtent(self->_gainMapImg, v86, v87, v88, v89);
    v91 = height * v85;
    memset(&v170, 0, sizeof(v170));
    CGAffineTransformMakeScale(&v170, width * v83 / (v37 - 1), v91 / (v38 - 1));
    CGAffineTransformMakeTranslation(&v169, -0.5, -0.5);
    v95 = objc_msgSend_imageByApplyingTransform_(v90, v92, &v169, v93, v94);
    v169 = v170;
    v99 = objc_msgSend_imageByApplyingTransform_(v95, v96, &v169, v97, v98);

    CGAffineTransformMakeTranslation(&v169, width * v79, height - v91 - height * v81);
    v103 = objc_msgSend_imageByApplyingTransform_(v99, v100, &v169, v101, v102);

    v108 = v23 == 1 && v28 == 1;
    if (v108 && v58)
    {
      v109 = objc_msgSend_kernelWithName_(GainMapKernels, v104, @"GainMap", v105, v106);
      objc_msgSend_extent(v67, v110, v111, v112, v113);
      v115 = v114;
      v117 = v116;
      v119 = v118;
      v121 = v120;
      v173[0] = v67;
      v173[1] = v103;
      v124 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v122, v173, 2, v123);
      objc_msgSend_applyWithExtent_arguments_(v109, v125, v124, v126, v127, v115, v117, v119, v121);
      v51 = v128 = v67;
    }

    else
    {
      v109 = objc_msgSend_kernelWithName_(GainMapKernels, v104, @"GainMapWithPitch", v105, v106);
      v124 = objc_msgSend_vectorWithX_Y_(MEMORY[0x277CBF788], v129, v130, v131, v132, v23, v28);
      v133 = MEMORY[0x277CBF788];
      v177.origin.x = v53;
      v177.origin.y = v55;
      v177.size.width = v167;
      v177.size.height = v166;
      MinX = CGRectGetMinX(v177);
      v178.origin.x = v53;
      v178.origin.y = v55;
      v178.size.width = v167;
      v178.size.height = v166;
      MaxY = CGRectGetMaxY(v178);
      v179.origin.x = v53;
      v179.origin.y = v55;
      v179.size.width = v167;
      v179.size.height = v166;
      MaxX = CGRectGetMaxX(v179);
      v180.origin.x = v53;
      v180.origin.y = v55;
      v180.size.width = v167;
      v180.size.height = v166;
      MinY = CGRectGetMinY(v180);
      v128 = objc_msgSend_vectorWithX_Y_Z_W_(v133, v138, v139, v140, v141, MinX, height - MaxY, MaxX, height - MinY);
      objc_msgSend_extent(v67, v142, v143, v144, v145);
      v147 = v146;
      v149 = v148;
      v151 = v150;
      v153 = v152;
      v172[0] = v67;
      v172[1] = v103;
      v172[2] = v124;
      v172[3] = v128;
      v156 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v154, v172, 4, v155);
      v160 = objc_msgSend_applyWithExtent_arguments_(v109, v157, v156, v158, v159, v147, v149, v151, v153);

      v51 = v160;
    }

    if (v73)
    {
      v164 = objc_msgSend_imageByColorMatchingColorSpaceToWorkingSpace_(v51, v161, v73, v162, v163);

      v51 = v164;
    }

    v168[2](v168);
  }

  else
  {
    v51 = 0;
  }

LABEL_41:

  return v51;
}

@end