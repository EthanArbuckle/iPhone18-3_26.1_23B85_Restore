@interface RAWEdgeSharpen
+ (id)customAttributes;
- (id)customAttributes;
- (id)outputImage;
@end

@implementation RAWEdgeSharpen

+ (id)customAttributes
{
  v38[4] = *MEMORY[0x277D85DE8];
  v37[0] = @"inputColorSpace";
  v34 = *MEMORY[0x277CBF798];
  v2 = v34;
  v3 = sub_2338F28E4();
  v35 = *MEMORY[0x277CBF7A0];
  v4 = v35;
  v36[0] = v3;
  v36[1] = @"inputColorSpace";
  v38[0] = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v5, v36, &v34, 2);
  v37[1] = @"inputVersion";
  v32[0] = *MEMORY[0x277CBF790];
  v6 = v32[0];
  v27 = v38[0];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = *MEMORY[0x277CBF7D0];
  v24 = v8;
  v33[0] = v8;
  v33[1] = &unk_284958D28;
  v10 = *MEMORY[0x277CBF7C8];
  v32[1] = v9;
  v32[2] = v10;
  v33[2] = &unk_284958D38;
  v33[3] = &unk_284958D48;
  v11 = *MEMORY[0x277CBF7F0];
  v32[3] = v2;
  v32[4] = v11;
  v12 = *MEMORY[0x277CBF850];
  v32[5] = v4;
  v33[4] = v12;
  v33[5] = @"inputVersion";
  v25 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v13, v33, v32, 6);
  v38[1] = v25;
  v37[2] = @"inputPreSharpenAmount";
  v30[0] = v6;
  v14 = objc_opt_class();
  v26 = NSStringFromClass(v14);
  v31[0] = v26;
  v31[1] = &unk_284958D58;
  v30[1] = v9;
  v30[2] = v10;
  v31[2] = &unk_284958D68;
  v31[3] = &unk_284958D58;
  v30[3] = v2;
  v30[4] = v11;
  v30[5] = v4;
  v31[4] = v12;
  v31[5] = @"inputPreSharpenAmount";
  v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v15, v31, v30, 6);
  v38[2] = v16;
  v37[3] = @"inputPreSharpenBlurAmount";
  v28[0] = v6;
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v29[0] = v18;
  v29[1] = &unk_284958D78;
  v28[1] = v9;
  v28[2] = v10;
  v29[2] = &unk_284958D88;
  v29[3] = &unk_284958D58;
  v28[3] = v2;
  v28[4] = v11;
  v28[5] = v4;
  v29[4] = v12;
  v29[5] = @"inputPreSharpenBlurAmount";
  v20 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v19, v29, v28, 6);
  v38[3] = v20;
  v22 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v21, v38, v37, 4);

  return v22;
}

- (id)customAttributes
{
  v2 = objc_opt_class();

  return MEMORY[0x2821F9670](v2, sel_customAttributes, v3, v4, v5);
}

- (id)outputImage
{
  v48[1] = *MEMORY[0x277D85DE8];
  if (self->inputImage)
  {
    v3 = sub_23378E104();
    v4 = v3;
    if (&self->super.super.super.isa + 1 >= 2 && os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23371F000, v4, OS_SIGNPOST_INTERVAL_BEGIN, self, "RAWEdgeSharpen", &unk_233945DBE, buf, 2u);
    }

    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = sub_2338F8170;
    v46[3] = &unk_2789EE800;
    v46[4] = self;
    v5 = MEMORY[0x2383AC810](v46);
    objc_msgSend_doubleValue(self->inputPreSharpenAmount, v6, v7, v8, v9);
    v11 = v10;
    objc_msgSend_doubleValue(self->inputPreSharpenBlurAmount, v12, v13, v14, v15);
    v20 = v19;
    if (fabs(v11) >= 0.001 || fabs(v19) >= 0.001)
    {
      v22 = objc_msgSend_kernelWithName_(RAWKernels, v16, @"simpleSharpenLNR", v17, v18);
      inputImage = self->inputImage;
      objc_msgSend_extent(inputImage, v24, v25, v26, v27);
      v29 = v28;
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v40 = objc_msgSend_vectorWithX_Y_(MEMORY[0x277CBF788], v36, v37, v38, v39, v20, v11);
      v48[0] = v40;
      v43 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v41, v48, 1, v42);
      v21 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_(self, v44, v22, inputImage, &unk_284938020, v43, self->inputColorSpace, v29, v31, v33, v35);
    }

    else
    {
      v21 = self->inputImage;
    }

    v5[2](v5);
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

@end