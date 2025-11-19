@interface RAWGamutMap
+ (id)customAttributes;
- (id)customAttributes;
- (id)outputImage;
@end

@implementation RAWGamutMap

+ (id)customAttributes
{
  v28[4] = *MEMORY[0x277D85DE8];
  v28[0] = MEMORY[0x277CBEC10];
  v27[0] = @"inputColorSpace";
  v27[1] = @"inputShouldWarn";
  v3 = *MEMORY[0x277CBF7F0];
  v25[0] = *MEMORY[0x277CBF798];
  v2 = v25[0];
  v25[1] = v3;
  v4 = *MEMORY[0x277CBF800];
  v26[0] = MEMORY[0x277CBEC28];
  v26[1] = v4;
  v5 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v26, v25, 2);
  v28[1] = v5;
  v27[2] = @"inputVersion";
  v23[0] = *MEMORY[0x277CBF790];
  v6 = v23[0];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = *MEMORY[0x277CBF7D0];
  v24[0] = v8;
  v24[1] = &unk_284957BF8;
  v10 = *MEMORY[0x277CBF7C8];
  v23[1] = v9;
  v23[2] = v10;
  v24[2] = &unk_284957C10;
  v24[3] = &unk_284957BF8;
  v23[3] = v2;
  v23[4] = v3;
  v11 = *MEMORY[0x277CBF850];
  v23[5] = *MEMORY[0x277CBF7A0];
  v24[4] = v11;
  v24[5] = @"inputVersion";
  v13 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v12, v24, v23, 6);
  v28[2] = v13;
  v27[3] = @"inputGamutMapMax";
  v21[0] = v6;
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v22[0] = v15;
  v22[1] = &unk_284957C28;
  v21[1] = v2;
  v21[2] = v3;
  v22[2] = v11;
  v17 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v16, v22, v21, 3);
  v28[3] = v17;
  v19 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v18, v28, v27, 4);

  return v19;
}

- (id)customAttributes
{
  v2 = objc_opt_class();

  return MEMORY[0x2821F9670](v2, sel_customAttributes, v3, v4, v5);
}

- (id)outputImage
{
  v33[6] = *MEMORY[0x277D85DE8];
  if (self->inputImage)
  {
    v3 = sub_23378E104();
    v4 = v3;
    if (&self->super.super.super.isa + 1 >= 2 && os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23371F000, v4, OS_SIGNPOST_INTERVAL_BEGIN, self, "RAWGamutMap", &unk_233945DBE, buf, 2u);
    }

    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = sub_23381C328;
    v30[3] = &unk_2789EE800;
    v30[4] = self;
    v5 = MEMORY[0x2383AC810](v30);
    v6 = self->inputImage;
    if (objc_msgSend_BOOLValue(self->inputShouldWarn, v7, v8, v9, v10))
    {
      v15 = objc_msgSend_kernelWithName_(GMKernels, v11, @"gamutWarning", v13, v14);
      v17 = objc_msgSend_apply_image_arguments_inoutSpace_isPremultiplied_(self, v16, v15, v6, 0, self->inputColorSpace, 1);
    }

    else
    {
      if (objc_msgSend_intValue(self->inputVersion, v11, v12, v13, v14) < 7)
      {
        v15 = objc_msgSend_kernelWithName_(GMKernels, v18, @"gmKernel_v6", v19, v20);
        v32[0] = &unk_284958B28;
        v32[1] = &unk_284958B38;
        v32[2] = &unk_284958AF8;
        v32[3] = &unk_284958B48;
        inputGamutMapMax = self->inputGamutMapMax;
        v32[4] = &unk_284958B58;
        v32[5] = inputGamutMapMax;
        objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v27, v32, 6, v28);
      }

      else
      {
        v15 = objc_msgSend_kernelWithName_(GMKernels, v18, @"gmKernel_v7", v19, v20);
        v33[0] = &unk_284958AD8;
        v33[1] = &unk_284958AE8;
        v33[2] = &unk_284958AF8;
        v33[3] = &unk_284958B08;
        v21 = self->inputGamutMapMax;
        v33[4] = &unk_284958B18;
        v33[5] = v21;
        objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v22, v33, 6, v23);
      }
      v24 = ;
      v17 = objc_msgSend_apply_image_arguments_inoutSpace_isPremultiplied_(self, v25, v15, v6, v24, self->inputColorSpace, 1);

      v6 = v24;
    }

    v5[2](v5);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end