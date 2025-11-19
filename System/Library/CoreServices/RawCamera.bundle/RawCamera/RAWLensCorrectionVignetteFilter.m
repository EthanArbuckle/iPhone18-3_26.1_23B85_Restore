@interface RAWLensCorrectionVignetteFilter
+ (id)customAttributes;
- (BOOL)makeMapImages;
- (id)customAttributes;
- (id)outputImage;
- (void)setValue:(id)a3 forKey:(id)a4;
@end

@implementation RAWLensCorrectionVignetteFilter

- (void)setValue:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (objc_msgSend_hasPrefix_(v7, v8, @"inputVignetteTable", v9, v10))
  {
    vigImg = self->vigImg;
    self->vigImg = 0;
  }

  v12.receiver = self;
  v12.super_class = RAWLensCorrectionVignetteFilter;
  [(RAWLensCorrectionVignetteFilter *)&v12 setValue:v6 forKey:v7];
}

+ (id)customAttributes
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11 = @"inputVignetteAmount";
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
  if (!self->inputVignetteTable || self->vigImg)
  {
    return 1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = objc_msgSend_length(self->inputVignetteTable, v3, v4, v5, v6);
    v12 = objc_msgSend_bytes(self->inputVignetteTable, v8, v9, v10, v11);
    v16 = objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], v13, (4 * v7) & 0xFFFFFFFFFFFFFFF0, v14, v15);
    v17 = v16;
    v22 = objc_msgSend_mutableBytes(v17, v18, v19, v20, v21);
    if (v7 >= 4)
    {
      v27 = v7 >> 2;
      do
      {
        v28 = vld1q_dup_f32(v12++);
        *v22++ = v28;
        --v27;
      }

      while (v27);
    }

    v29 = MEMORY[0x277CBF758];
    v30 = objc_msgSend_length(v16, v23, v24, v25, v26);
    v32 = objc_msgSend_imageWithBitmapData_bytesPerRow_size_format_colorSpace_(v29, v31, v16, v30, *MEMORY[0x277CBF9D0], 0, (v7 >> 2), 1.0);
    vigImg = self->vigImg;
    self->vigImg = v32;

    return 1;
  }

  NSLog(&cfstr_Lenscorrection.isa);
  return 0;
}

- (id)outputImage
{
  v69[2] = *MEMORY[0x277D85DE8];
  v3 = sub_23378E104();
  v4 = v3;
  if (&self->super.super.super.isa + 1 >= 2 && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v4, OS_SIGNPOST_INTERVAL_BEGIN, self, "RAWLensCorrectionVignetteFilter", &unk_233945DBE, buf, 2u);
  }

  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = sub_2337445CC;
  v67[3] = &unk_2789EE800;
  v67[4] = self;
  v9 = MEMORY[0x2383AC810](v67);
  if (self->inputImage && (objc_msgSend_makeMapImages(self, v5, v6, v7, v8) & 1) != 0)
  {
    objc_msgSend_floatValue(self->inputVignetteAmount, v10, v11, v12, v13);
    if (self->vigImg && (v18 = fminf(fmaxf(v17, 0.0), 1.0), v18 >= 0.001))
    {
      v21 = objc_msgSend_kernelWithName_(LCKernels, v14, @"lensCorrect_vig", v15, v16);
      objc_msgSend_extent(self->inputImage, v22, v23, v24, v25);
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v33 = v32;
      objc_msgSend_extent(self->vigImg, v34, v35, v36, v37);
      v39 = v38;
      v40 = v31 * 0.5;
      v41 = v33 * 0.5;
      v42 = hypotf(v40, v41);
      v47 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v43, v44, v45, v46, v27 + v31 * 0.5, v29 + v33 * 0.5, ((v39 + -1.0) / v42), v18);
      inputImage = self->inputImage;
      objc_msgSend_extent(inputImage, v49, v50, v51, v52);
      v54 = v53;
      v56 = v55;
      v58 = v57;
      v60 = v59;
      v65[0] = MEMORY[0x277D85DD0];
      v65[1] = 3221225472;
      v65[2] = sub_233744654;
      v65[3] = &unk_2789EE950;
      *&v66 = v39;
      v69[0] = self->vigImg;
      v69[1] = v47;
      v63 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v61, v69, 2, v62, MEMORY[0x277D85DD0], 3221225472, sub_233744654, &unk_2789EE950, v66);
      v19 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_(self, v64, v21, inputImage, v65, v63, self->inputColorSpace, v54, v56, v58, v60);
    }

    else
    {
      v19 = self->inputImage;
    }
  }

  else
  {
    v19 = 0;
  }

  v9[2](v9);

  return v19;
}

@end