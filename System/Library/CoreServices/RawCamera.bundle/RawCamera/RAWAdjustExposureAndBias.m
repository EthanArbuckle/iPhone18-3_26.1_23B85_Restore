@interface RAWAdjustExposureAndBias
+ (BOOL)automaticallyNotifiesObserversForKey:(id)a3;
+ (id)customAttributes;
- (id)customAttributes;
- (id)outputImage;
- (id)outputMatrix;
@end

@implementation RAWAdjustExposureAndBias

+ (BOOL)automaticallyNotifiesObserversForKey:(id)a3
{
  v4 = a3;
  if (objc_msgSend_isEqualToString_(v4, v5, @"inputExposure", v6, v7) & 1) != 0 || (objc_msgSend_isEqualToString_(v4, v8, @"inputBias", v9, v10))
  {
    v11 = 0;
  }

  else
  {
    v13.receiver = a1;
    v13.super_class = &OBJC_METACLASS___RAWAdjustExposureAndBias;
    v11 = objc_msgSendSuper2(&v13, sel_automaticallyNotifiesObserversForKey_, v4);
  }

  return v11;
}

+ (id)customAttributes
{
  v35[5] = *MEMORY[0x277D85DE8];
  v34[0] = @"inputColorSpace";
  v32 = *MEMORY[0x277CBF798];
  v2 = v32;
  v33 = sub_2338F2BB4();
  v24 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v3, &v33, &v32, 1);
  v35[0] = v24;
  v34[1] = @"inputBaselineExposure";
  v29[0] = *MEMORY[0x277CBF790];
  v4 = v29[0];
  v5 = objc_opt_class();
  v22 = NSStringFromClass(v5);
  v30[0] = v22;
  v30[1] = &unk_284958CC8;
  v6 = *MEMORY[0x277CBF7D0];
  v29[1] = v2;
  v29[2] = v6;
  v7 = *MEMORY[0x277CBF7C8];
  v30[2] = &unk_284958CB8;
  v30[3] = &unk_284958CD8;
  v8 = *MEMORY[0x277CBF7F0];
  v29[3] = v7;
  v29[4] = v8;
  v31 = *MEMORY[0x277CBF850];
  v9 = v31;
  v23 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v10, v30, v29, 5);
  v35[1] = v23;
  v34[2] = @"inputExposure";
  v27[0] = v4;
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v28[0] = v12;
  v28[1] = &unk_284958CC8;
  v27[1] = v2;
  v27[2] = v6;
  v28[2] = &unk_284958CB8;
  v28[3] = &unk_284958CD8;
  v27[3] = v7;
  v27[4] = v8;
  v28[4] = v9;
  v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v13, v28, v27, 5);
  v35[2] = v14;
  v34[3] = @"inputBias";
  v25[0] = v4;
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  v26[0] = v16;
  v26[1] = &unk_284958CE8;
  v25[1] = v2;
  v25[2] = v6;
  v26[2] = &unk_284958CC8;
  v26[3] = &unk_284958CF8;
  v25[3] = v7;
  v25[4] = v8;
  v26[4] = v9;
  v18 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v17, v26, v25, 5);
  v34[4] = @"kCIRAWFilterDoesClip";
  v35[3] = v18;
  v35[4] = MEMORY[0x277CBEC28];
  v20 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v19, v35, v34, 5);

  return v20;
}

- (id)customAttributes
{
  v2 = objc_opt_class();

  return MEMORY[0x2821F9670](v2, sel_customAttributes, v3, v4, v5);
}

- (id)outputMatrix
{
  v45[4] = *MEMORY[0x277D85DE8];
  objc_msgSend_doubleValue(self->inputExposure, a2, v2, v3, v4);
  v7 = v6;
  objc_msgSend_doubleValue(self->inputBaselineExposure, v8, v9, v10, v11);
  v13 = 1.0 / exp2(v7 + v12);
  objc_msgSend_doubleValue(self->inputBias, v14, v15, v16, v17);
  v19 = v18 * 0.001;
  v20 = 1.0 / (v13 - v18 * 0.001);
  v44[0] = @"inputRVector";
  v25 = objc_msgSend_vectorWithX_Y_Z_(MEMORY[0x277CBF788], v21, v22, v23, v24, v20, 0.0, 0.0);
  v45[0] = v25;
  v44[1] = @"inputGVector";
  v30 = objc_msgSend_vectorWithX_Y_Z_(MEMORY[0x277CBF788], v26, v27, v28, v29, 0.0, v20, 0.0);
  v45[1] = v30;
  v44[2] = @"inputBVector";
  v35 = objc_msgSend_vectorWithX_Y_Z_(MEMORY[0x277CBF788], v31, v32, v33, v34, 0.0, 0.0, v20);
  v45[2] = v35;
  v44[3] = @"inputBiasVector";
  v40 = objc_msgSend_vectorWithX_Y_Z_(MEMORY[0x277CBF788], v36, v37, v38, v39, -(v19 * v20), -(v19 * v20), -(v19 * v20));
  v45[3] = v40;
  v42 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v41, v45, v44, 4);

  return v42;
}

- (id)outputImage
{
  if (self->inputImage)
  {
    v3 = sub_23378E104();
    v4 = v3;
    if (&self->super.super.super.isa + 1 >= 2 && os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23371F000, v4, OS_SIGNPOST_INTERVAL_BEGIN, self, "RAWAdjustExposureAndBias", &unk_233945DBE, buf, 2u);
    }

    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = sub_2338A181C;
    v31[3] = &unk_2789EE800;
    v31[4] = self;
    v5 = MEMORY[0x2383AC810](v31);
    v10 = objc_msgSend_outputMatrix(self, v6, v7, v8, v9);
    inputImage = self->inputImage;
    v15 = objc_msgSend_objectForKeyedSubscript_(v10, v12, @"inputRVector", v13, v14);
    v19 = objc_msgSend_objectForKeyedSubscript_(v10, v16, @"inputGVector", v17, v18);
    v23 = objc_msgSend_objectForKeyedSubscript_(v10, v20, @"inputBVector", v21, v22);
    v27 = objc_msgSend_objectForKeyedSubscript_(v10, v24, @"inputBiasVector", v25, v26);
    v29 = objc_msgSend_applyMatrixToImage_vectorR_vectorG_vectorB_vectorBias_inSpace_outSpace_(self, v28, inputImage, v15, v19, v23, v27, self->inputColorSpace);

    v5[2](v5);
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

@end