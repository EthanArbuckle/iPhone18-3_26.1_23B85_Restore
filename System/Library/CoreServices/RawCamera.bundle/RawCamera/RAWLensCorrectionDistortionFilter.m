@interface RAWLensCorrectionDistortionFilter
+ (id)customAttributes;
- (BOOL)makeMapImages;
- (id)customAttributes;
- (id)outputImage;
- (void)setValue:(id)a3 forKey:(id)a4;
@end

@implementation RAWLensCorrectionDistortionFilter

- (void)setValue:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (objc_msgSend_hasPrefix_(v7, v8, @"inputDistortionMap", v9, v10))
  {
    mapImg = self->mapImg;
    self->mapImg = 0;
  }

  v12.receiver = self;
  v12.super_class = RAWLensCorrectionDistortionFilter;
  [(RAWLensCorrectionDistortionFilter *)&v12 setValue:v6 forKey:v7];
}

+ (id)customAttributes
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11 = @"inputDistortionAmount";
  v2 = *MEMORY[0x277CBF7E8];
  v9[0] = *MEMORY[0x277CBF7D0];
  v9[1] = v2;
  v10[0] = &unk_284958A38;
  v10[1] = &unk_284958A38;
  v3 = *MEMORY[0x277CBF7C8];
  v9[2] = *MEMORY[0x277CBF7E0];
  v9[3] = v3;
  v10[2] = &unk_284958A48;
  v10[3] = &unk_284958A48;
  v4 = *MEMORY[0x277CBF7C0];
  v9[4] = *MEMORY[0x277CBF798];
  v9[5] = v4;
  v10[4] = &unk_284958A48;
  v10[5] = &unk_284958A48;
  v9[6] = *MEMORY[0x277CBF7F0];
  v10[6] = *MEMORY[0x277CBF850];
  v5 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v10, v9, 7);
  v12[0] = v5;
  v7 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v6, v12, &v11, 1);

  return v7;
}

- (id)customAttributes
{
  v2 = objc_opt_class();

  return MEMORY[0x2821F9670](v2, sel_customAttributes, v3, v4, v5);
}

- (BOOL)makeMapImages
{
  if (!self->inputDistortionMap || self->mapImg)
  {
    return 1;
  }

  v7 = objc_msgSend_unsignedIntValue(self->inputDistortionMapWidth, a2, v2, v3, v4);
  v12 = objc_msgSend_unsignedIntValue(self->inputDistortionMapHeight, v8, v9, v10, v11);
  if (v7 >= 4 && v12 > 3)
  {
    v14 = v12;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v7;
      if (objc_msgSend_length(self->inputDistortionMap, v15, v16, v17, v18) == 8 * v14 * v7)
      {
        v23 = objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], v20, 16 * v14 * v7, v21, v22);
        v28 = objc_msgSend_bytes(self->inputDistortionMap, v24, v25, v26, v27);
        v29 = v23;
        v34 = objc_msgSend_mutableBytes(v29, v30, v31, v32, v33);
        v36 = 0;
        v37 = 0;
        do
        {
          v38 = 0;
          do
          {
            *&v39 = *(v28 + 8 * v36 + 8 * v38);
            *(&v39 + 1) = v39;
            *(v34 + 16 * v36 + 16 * v38++) = v39;
          }

          while (v19 != v38);
          ++v37;
          v36 += v19;
        }

        while (v37 != v14);
        v40 = objc_msgSend_imageWithBitmapData_bytesPerRow_size_format_colorSpace_(MEMORY[0x277CBF758], v35, v23, 16 * v19, *MEMORY[0x277CBF9D0], 0, v19, v14);
        mapImg = self->mapImg;
        self->mapImg = v40;

        return 1;
      }

      NSLog(&cfstr_Lenscorrection_5.isa);
    }

    else
    {
      NSLog(&cfstr_Lenscorrection_4.isa);
    }
  }

  else
  {
    NSLog(&cfstr_Lenscorrection_3.isa);
  }

  return 0;
}

- (id)outputImage
{
  v98[3] = *MEMORY[0x277D85DE8];
  if (self->inputImage)
  {
    v3 = sub_23378E104();
    v4 = v3;
    if (&self->super.super.super.isa + 1 >= 2 && os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23371F000, v4, OS_SIGNPOST_INTERVAL_BEGIN, self, "RAWLensCorrectionDistortionFilter", &unk_233945DBE, buf, 2u);
    }

    v97[0] = MEMORY[0x277D85DD0];
    v97[1] = 3221225472;
    v97[2] = sub_233745E28;
    v97[3] = &unk_2789EE800;
    v97[4] = self;
    v5 = MEMORY[0x2383AC810](v97);
    if (objc_msgSend_makeMapImages(self, v6, v7, v8, v9))
    {
      objc_msgSend_floatValue(self->inputDistortionAmount, v10, v11, v12, v13);
      if (self->mapImg && (v18 = fminf(fmaxf(v17, 0.0), 1.0), v18 >= 0.001))
      {
        v19 = objc_msgSend_kernelWithName_(LCKernels, v14, @"lensCorrect_dist", v15, v16, v18);
        objc_msgSend_extent(self->inputImage, v20, v21, v22, v23);
        v25 = v24;
        v27 = v26;
        v29 = v28;
        v31 = v30;
        v36 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v32, v33, v34, v35, v24 + v28 * 0.5, v26 + v30 * 0.5, v28 * 0.5, v30 * 0.5);
        objc_msgSend_doubleValue(self->inputDistortionMapWidth, v37, v38, v39, v40);
        v42 = v41;
        objc_msgSend_doubleValue(self->inputDistortionMapHeight, v43, v44, v45, v46);
        v48 = v47;
        v53 = objc_msgSend_imageByClampingToExtent(self->mapImg, v49, v50, v51, v52);
        v54.f64[0] = v29 / (v42 + -1.0);
        *buf = v54.f64[0];
        v93 = 0;
        v94 = 0;
        v95 = v31 / (v48 + -1.0);
        v54.f64[1] = v95;
        __asm { FMOV            V1.2D, #-0.5 }

        v96 = vmulq_f64(v54, _Q1);
        v63 = objc_msgSend_imageByApplyingTransform_(v53, v60, buf, v61, v62);

        v85[0] = MEMORY[0x277D85DD0];
        v85[1] = 3221225472;
        v85[2] = sub_233746040;
        v85[3] = &unk_2789EE998;
        v85[4] = self;
        v86 = &unk_284904BF0;
        v87 = v25;
        v88 = v27;
        v89 = v29;
        v90 = v31;
        v91 = v18;
        v64 = MEMORY[0x2383AC810](v85);
        inputImage = self->inputImage;
        objc_msgSend_extent(inputImage, v66, v67, v68, v69);
        v71 = v70;
        v73 = v72;
        v75 = v74;
        v77 = v76;
        inputDistortionAmount = self->inputDistortionAmount;
        v98[0] = v63;
        v98[1] = inputDistortionAmount;
        v98[2] = v36;
        v81 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v79, v98, 3, v80);
        v83 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_(self, v82, v19, inputImage, v64, v81, self->inputColorSpace, v71, v73, v75, v77);
      }

      else
      {
        v83 = self->inputImage;
      }
    }

    else
    {
      v83 = 0;
    }

    v5[2](v5);
  }

  else
  {
    v83 = 0;
  }

  return v83;
}

@end