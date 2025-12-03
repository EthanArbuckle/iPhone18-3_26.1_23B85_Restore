@interface RAWLensCorrectionLateralCAFilter
+ (id)customAttributes;
- (BOOL)makeMapImages;
- (id)customAttributes;
- (id)outputImage;
- (void)setValue:(id)value forKey:(id)key;
@end

@implementation RAWLensCorrectionLateralCAFilter

- (void)setValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  if (objc_msgSend_hasPrefix_(keyCopy, v8, @"inputLateralCAMap", v9, v10))
  {
    mapImg = self->mapImg;
    self->mapImg = 0;
  }

  v12.receiver = self;
  v12.super_class = RAWLensCorrectionLateralCAFilter;
  [(RAWLensCorrectionLateralCAFilter *)&v12 setValue:valueCopy forKey:keyCopy];
}

+ (id)customAttributes
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12 = @"inputLateralCAAmount";
  v2 = *MEMORY[0x277CBF7E8];
  v10[0] = *MEMORY[0x277CBF7D0];
  v10[1] = v2;
  v11[0] = &unk_284958A38;
  v11[1] = &unk_284958A38;
  v3 = *MEMORY[0x277CBF7C8];
  v10[2] = *MEMORY[0x277CBF7E0];
  v10[3] = v3;
  v4 = *MEMORY[0x277CBF7F0];
  v10[4] = *MEMORY[0x277CBF798];
  v10[5] = v4;
  v11[2] = &unk_284958A48;
  v11[3] = &unk_284958A48;
  v5 = *MEMORY[0x277CBF850];
  v11[4] = &unk_284958A48;
  v11[5] = v5;
  v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v11, v10, 6);
  v13[0] = v6;
  v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v7, v13, &v12, 1);

  return v8;
}

- (id)customAttributes
{
  v2 = objc_opt_class();

  return MEMORY[0x2821F9670](v2, sel_customAttributes, v3, v4, v5);
}

- (BOOL)makeMapImages
{
  if (!self->inputLateralCAMap || self->mapImg)
  {
    return 1;
  }

  v7 = objc_msgSend_unsignedIntValue(self->inputLateralCAMapWidth, a2, v2, v3, v4);
  v12 = objc_msgSend_unsignedIntValue(self->inputLateralCAMapHeight, v8, v9, v10, v11);
  if (v7 >= 4 && v12 > 3)
  {
    v14 = v12;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (objc_msgSend_length(self->inputLateralCAMap, v15, v16, v17, v18) == 4 * 4 * v7 * v14)
      {
        v20 = objc_msgSend_imageWithBitmapData_bytesPerRow_size_format_colorSpace_(MEMORY[0x277CBF758], v19, self->inputLateralCAMap, 16 * v7, *MEMORY[0x277CBF9D0], 0, v7, v14);
        mapImg = self->mapImg;
        self->mapImg = v20;

        return 1;
      }

      NSLog(&cfstr_Lenscorrection_2.isa);
    }

    else
    {
      NSLog(&cfstr_Lenscorrection_1.isa);
    }
  }

  else
  {
    NSLog(&cfstr_Lenscorrection_0.isa);
  }

  return 0;
}

- (id)outputImage
{
  v97[2] = *MEMORY[0x277D85DE8];
  v3 = sub_23378E104();
  v4 = v3;
  if (&self->super.super.super.isa + 1 >= 2 && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v4, OS_SIGNPOST_INTERVAL_BEGIN, self, "RAWLensCorrectionLateralCAFilter", &unk_233945DBE, buf, 2u);
  }

  v96[0] = MEMORY[0x277D85DD0];
  v96[1] = 3221225472;
  v96[2] = sub_233744F04;
  v96[3] = &unk_2789EE800;
  v96[4] = self;
  v9 = MEMORY[0x2383AC810](v96);
  if (self->inputImage && (objc_msgSend_makeMapImages(self, v5, v6, v7, v8) & 1) != 0)
  {
    objc_msgSend_floatValue(self->inputLateralCAAmount, v10, v11, v12, v13);
    if (self->mapImg && (v18 = fminf(fmaxf(v17, 0.0), 1.0), v18 >= 0.001))
    {
      v19 = objc_msgSend_kernelWithName_(LCKernels, v14, @"lensCorrect_lca", v15, v16, v18);
      objc_msgSend_extent(self->inputImage, v20, v21, v22, v23);
      v25 = v24;
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v36 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v32, v33, v34, v35, v24 + v28 * 0.5, v26 + v30 * 0.5, v28 * 0.5, v30 * 0.5);
      objc_msgSend_doubleValue(self->inputLateralCAMapWidth, v37, v38, v39, v40);
      v42 = v41;
      objc_msgSend_doubleValue(self->inputLateralCAMapHeight, v43, v44, v45, v46);
      v48 = v47;
      v53 = objc_msgSend_imageByClampingToExtent(self->mapImg, v49, v50, v51, v52);
      v54.f64[0] = v29 / (v42 + -1.0);
      *buf = v54.f64[0];
      v92 = 0;
      v93 = 0;
      v94 = v31 / (v48 + -1.0);
      v54.f64[1] = v94;
      __asm { FMOV            V1.2D, #-0.5 }

      v95 = vmulq_f64(v54, _Q1);
      v63 = objc_msgSend_imageByApplyingTransform_(v53, v60, buf, v61, v62);

      v84[0] = MEMORY[0x277D85DD0];
      v84[1] = 3221225472;
      v84[2] = sub_2337451F0;
      v84[3] = &unk_2789EE998;
      v84[4] = self;
      v85 = &unk_284904BD0;
      v86 = v25;
      v87 = v27;
      v88 = v29;
      v89 = v31;
      v90 = v18;
      v64 = MEMORY[0x2383AC810](v84);
      inputImage = self->inputImage;
      objc_msgSend_extent(inputImage, v66, v67, v68, v69);
      v71 = v70;
      v73 = v72;
      v75 = v74;
      v77 = v76;
      v97[0] = v63;
      v97[1] = v36;
      v80 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v78, v97, 2, v79);
      v82 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_(self, v81, v19, inputImage, v64, v80, self->inputColorSpace, v71, v73, v75, v77);
    }

    else
    {
      v82 = self->inputImage;
    }
  }

  else
  {
    v82 = 0;
  }

  v9[2](v9);

  return v82;
}

@end