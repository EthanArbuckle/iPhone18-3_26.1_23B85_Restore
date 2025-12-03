@interface RAWRadialLensCorrectionRB
+ (id)customAttributes;
- (BOOL)makeMapImages;
- (id)outputImage;
- (void)setValue:(id)value forKey:(id)key;
@end

@implementation RAWRadialLensCorrectionRB

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
  v12.super_class = RAWRadialLensCorrectionRB;
  [(RAWRadialLensCorrectionRB *)&v12 setValue:valueCopy forKey:keyCopy];
}

+ (id)customAttributes
{
  v20 = *MEMORY[0x277D85DE8];
  v19[0] = xmmword_233906318;
  v19[1] = unk_233906328;
  v19[2] = xmmword_233906338;
  v19[3] = unk_233906348;
  v3 = objc_msgSend_vectorWithValues_count_(MEMORY[0x277CBF788], a2, v19, 8, v2);
  v17[0] = @"inputScalesR";
  v5 = *MEMORY[0x277CBF7C0];
  v15[0] = *MEMORY[0x277CBF798];
  v4 = v15[0];
  v15[1] = v5;
  v16[0] = v3;
  v16[1] = v3;
  v7 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v6, v16, v15, 2);
  v17[1] = @"inputScalesB";
  v18[0] = v7;
  v13[0] = v4;
  v13[1] = v5;
  v14[0] = v3;
  v14[1] = v3;
  v9 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v8, v14, v13, 2);
  v18[1] = v9;
  v11 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v10, v18, v17, 2);

  return v11;
}

- (BOOL)makeMapImages
{
  if (!self->inputScalesR || !self->inputScalesB || self->mapImg)
  {
    return 1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = objc_msgSend_count(self->inputScalesR, v4, v5, v6, v7);
      if (v8 == objc_msgSend_count(self->inputScalesB, v9, v10, v11, v12))
      {
        v17 = objc_msgSend_count(self->inputScalesR, v13, v14, v15, v16);
        if (v17 > 2)
        {
          v21 = v17;
          v22 = 4 * v17 + 15;
          v23 = objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], v18, v22 & 0xFFFFFFF0, v19, v20);
          v24 = v23;
          v32 = objc_msgSend_mutableBytes(v24, v25, v26, v27, v28);
          for (i = 0; i != v21; ++i)
          {
            objc_msgSend_valueAtIndex_(self->inputScalesR, v29, i, v30, v31);
            *&_D0 = _D0;
            __asm { FCVT            H0, S0 }

            *v32 = LOWORD(_D0);
            objc_msgSend_valueAtIndex_(self->inputScalesB, v39, i, v40, v41);
            *&_D0 = _D0;
            __asm { FCVT            H0, S0 }

            v32[1] = LOWORD(_D0);
            v32 += 2;
          }

          v43 = objc_msgSend_imageWithBitmapData_bytesPerRow_size_format_colorSpace_(MEMORY[0x277CBF758], v29, v23, v22 & 0xFFFFFFF0, *MEMORY[0x277CBF9E8], 0, v21, 1.0);
          mapImg = self->mapImg;
          self->mapImg = v43;

          return 1;
        }

        NSLog(&cfstr_Radiallenscorr_4.isa);
      }

      else
      {
        NSLog(&cfstr_Radiallenscorr_3.isa);
      }
    }

    else
    {
      NSLog(&cfstr_Radiallenscorr_2.isa);
    }
  }

  else
  {
    NSLog(&cfstr_Radiallenscorr_1.isa);
  }

  return 0;
}

- (id)outputImage
{
  v99[3] = *MEMORY[0x277D85DE8];
  inputImage = self->inputImage;
  if (inputImage)
  {
    if (self->inputScalesR || self->inputScalesB)
    {
      v4 = sub_23378E104();
      v5 = v4;
      if (&self->super.super.super.isa + 1 >= 2 && os_signpost_enabled(v4))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_23371F000, v5, OS_SIGNPOST_INTERVAL_BEGIN, self, "RAWRadialLensCorrectionRB", &unk_233945DBE, buf, 2u);
      }

      v97[0] = MEMORY[0x277D85DD0];
      v97[1] = 3221225472;
      v97[2] = sub_2337DA8E8;
      v97[3] = &unk_2789EE800;
      v97[4] = self;
      v6 = MEMORY[0x2383AC810](v97);
      if (objc_msgSend_makeMapImages(self, v7, v8, v9, v10))
      {
        objc_msgSend_extent(self->inputImage, v11, v12, v13, v14);
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v87 = objc_msgSend_kernelWithName_(LCKernels, v23, @"radialLensRB", v24, v25);
        v26 = hypot(v20, v22);
        v31 = objc_msgSend_count(self->inputScalesR, v27, v28, v29, v30);
        v36 = objc_msgSend_count(self->inputScalesR, v32, v33, v34, v35);
        v86 = self->inputScalesR;
        v85 = self->inputScalesB;
        v41 = objc_msgSend_imageByClampingToExtent(self->inputImage, v37, v38, v39, v40);
        v42 = self->inputColorSpace;
        v43 = v42;
        if (v42)
        {
          CFAutorelease(v42);
          v47 = objc_msgSend_imageByColorMatchingWorkingSpaceToColorSpace_(v41, v44, v43, v45, v46);

          v41 = v47;
        }

        v48 = 2.0 / v26;
        v49 = (v36 - 1);
        v50 = v48;
        v51 = v16 + v20 * 0.5;
        v52 = v18 + v22 * 0.5;
        v88 = v87;
        v53 = *MEMORY[0x277CBF390];
        v54 = *(MEMORY[0x277CBF390] + 8);
        v55 = *(MEMORY[0x277CBF390] + 16);
        v84 = *(MEMORY[0x277CBF390] + 24);
        v89[0] = MEMORY[0x277D85DD0];
        v89[1] = 3221225472;
        v89[2] = sub_2337DA970;
        v89[3] = &unk_2789EF0C8;
        v93 = v51;
        v94 = v52;
        v95 = v50;
        v96 = v49;
        v56 = v86;
        v90 = v56;
        v57 = v85;
        v91 = v57;
        v92 = v31;
        mapImg = self->mapImg;
        v99[0] = v41;
        v99[1] = mapImg;
        v63 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v59, v60, v61, v62, v51, v52, v50, v49);
        v99[2] = v63;
        v66 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v64, v99, 3, v65);
        v69 = objc_msgSend_applyWithExtent_roiCallback_arguments_(v88, v67, v89, v66, v68, v53, v54, v55, v84);

        objc_msgSend_extent(self->inputImage, v70, v71, v72, v73);
        v78 = objc_msgSend_imageByCroppingToRect_(v69, v74, v75, v76, v77);

        if (v43)
        {
          v82 = objc_msgSend_imageByColorMatchingColorSpaceToWorkingSpace_(v78, v79, v43, v80, v81);

          v78 = v82;
        }
      }

      else
      {
        v78 = 0;
      }

      v6[2](v6);
    }

    else
    {
      v78 = inputImage;
    }
  }

  else
  {
    v78 = 0;
  }

  return v78;
}

@end