@interface RAWRadialLensCorrection
+ (id)customAttributes;
- (BOOL)makeMapImages;
- (id)outputImage;
- (void)setValue:(id)value forKey:(id)key;
@end

@implementation RAWRadialLensCorrection

- (void)setValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  if (objc_msgSend_hasPrefix_(keyCopy, v8, @"inputScales", v9, v10))
  {
    mapImg = self->mapImg;
    self->mapImg = 0;
  }

  v12.receiver = self;
  v12.super_class = RAWRadialLensCorrection;
  [(RAWRadialLensCorrection *)&v12 setValue:valueCopy forKey:keyCopy];
}

+ (id)customAttributes
{
  v15 = *MEMORY[0x277D85DE8];
  v14[0] = xmmword_233906318;
  v14[1] = unk_233906328;
  v14[2] = xmmword_233906338;
  v14[3] = unk_233906348;
  v3 = objc_msgSend_vectorWithValues_count_(MEMORY[0x277CBF788], a2, v14, 8, v2);
  v12 = @"inputScales";
  v4 = *MEMORY[0x277CBF7C0];
  v10[0] = *MEMORY[0x277CBF798];
  v10[1] = v4;
  v11[0] = v3;
  v11[1] = v3;
  v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v5, v11, v10, 2);
  v13 = v6;
  v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v7, &v13, &v12, 1);

  return v8;
}

- (BOOL)makeMapImages
{
  if (!self->inputScales || self->mapImg)
  {
    return 1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = objc_msgSend_count(self->inputScales, v4, v5, v6, v7);
    if (v8 > 2)
    {
      v12 = v8;
      v13 = 8 * v8 + 15;
      v14 = objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], v9, v13 & 0xFFFFFFF0, v10, v11);
      v15 = v14;
      v23 = objc_msgSend_mutableBytes(v15, v16, v17, v18, v19);
      for (i = 0; i != v12; ++i)
      {
        objc_msgSend_valueAtIndex_(self->inputScales, v20, i, v21, v22);
        *&_D0 = _D0;
        __asm { FCVT            H0, S0 }

        *(v23 + 8 * i) = vdup_lane_s16(*&_D0, 0);
      }

      v30 = objc_msgSend_imageWithBitmapData_bytesPerRow_size_format_colorSpace_(MEMORY[0x277CBF758], v20, v14, v13 & 0xFFFFFFF0, *MEMORY[0x277CBF9D8], 0, v12, 1.0);
      mapImg = self->mapImg;
      self->mapImg = v30;

      return 1;
    }

    NSLog(&cfstr_Radiallenscorr_0.isa);
  }

  else
  {
    NSLog(&cfstr_Radiallenscorr.isa);
  }

  return 0;
}

- (id)outputImage
{
  v108[3] = *MEMORY[0x277D85DE8];
  inputImage = self->inputImage;
  if (!inputImage)
  {
    v89 = 0;
    goto LABEL_20;
  }

  if (!self->inputScales)
  {
LABEL_14:
    v89 = inputImage;
    goto LABEL_20;
  }

  if (!objc_msgSend_intValue(self->inputLDCExecuteFlags, a2, v2, v3, v4))
  {
    inputImage = self->inputImage;
    goto LABEL_14;
  }

  v7 = sub_23378E104();
  v8 = v7;
  if (&self->super.super.super.isa + 1 >= 2 && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v8, OS_SIGNPOST_INTERVAL_BEGIN, self, "RAWRadialLensCorrection", &unk_233945DBE, buf, 2u);
  }

  v106[0] = MEMORY[0x277D85DD0];
  v106[1] = 3221225472;
  v106[2] = sub_2337D9B6C;
  v106[3] = &unk_2789EE800;
  v106[4] = self;
  v9 = MEMORY[0x2383AC810](v106);
  if (objc_msgSend_makeMapImages(self, v10, v11, v12, v13))
  {
    objc_msgSend_extent(self->inputImage, v14, v15, v16, v17);
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v98 = objc_msgSend_kernelWithName_(LCKernels, v26, @"radialLens", v27, v28);
    v97 = objc_msgSend_kernelWithName_(LCKernels, v29, @"radialLensDraft", v30, v31);
    v32 = hypot(v23, v25);
    v37 = objc_msgSend_count(self->inputScales, v33, v34, v35, v36);
    v42 = objc_msgSend_count(self->inputScales, v38, v39, v40, v41);
    v96 = self->inputScales;
    v47 = objc_msgSend_imageByClampingToExtent(self->inputImage, v43, v44, v45, v46);
    v48 = self->inputColorSpace;
    v53 = v48;
    if (v48)
    {
      CFAutorelease(v48);
      v57 = objc_msgSend_imageByColorMatchingWorkingSpaceToColorSpace_(v47, v54, v53, v55, v56);

      v47 = v57;
    }

    v58 = objc_msgSend_BOOLValue(self->inputDraftMode, v49, v50, v51, v52);
    v59 = 2.0 / v32;
    v60 = (v42 - 1);
    v61 = v19 + v23 * 0.5;
    v62 = v21 + v25 * 0.5;
    v63 = v98;
    if (v58)
    {
      v63 = v97;
    }

    v64 = v63;
    v65 = *MEMORY[0x277CBF390];
    v66 = *(MEMORY[0x277CBF390] + 8);
    v67 = *(MEMORY[0x277CBF390] + 16);
    v95 = *(MEMORY[0x277CBF390] + 24);
    v99[0] = MEMORY[0x277D85DD0];
    v99[1] = 3221225472;
    v99[2] = sub_2337D9BF4;
    v99[3] = &unk_2789EF0A0;
    v102 = v61;
    v103 = v62;
    v104 = v59;
    v105 = v60;
    v68 = v96;
    v100 = v68;
    v101 = v37;
    mapImg = self->mapImg;
    v108[0] = v47;
    v108[1] = mapImg;
    v74 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v70, v71, v72, v73, v61, v62, v59, v60);
    v108[2] = v74;
    v77 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v75, v108, 3, v76);
    v80 = objc_msgSend_applyWithExtent_roiCallback_arguments_(v64, v78, v99, v77, v79, v65, v66, v67, v95);

    objc_msgSend_extent(self->inputImage, v81, v82, v83, v84);
    v89 = objc_msgSend_imageByCroppingToRect_(v80, v85, v86, v87, v88);

    if (v53)
    {
      v93 = objc_msgSend_imageByColorMatchingColorSpaceToWorkingSpace_(v89, v90, v53, v91, v92);

      v89 = v93;
    }
  }

  else
  {
    v89 = 0;
  }

  v9[2](v9);

LABEL_20:

  return v89;
}

@end