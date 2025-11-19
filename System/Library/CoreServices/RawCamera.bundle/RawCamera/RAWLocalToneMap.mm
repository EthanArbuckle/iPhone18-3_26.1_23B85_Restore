@interface RAWLocalToneMap
+ (id)customAttributes;
- (BOOL)makeToneCurveImage;
- (id)outputImage;
@end

@implementation RAWLocalToneMap

+ (id)customAttributes
{
  v46[7] = *MEMORY[0x277D85DE8];
  v45[0] = *MEMORY[0x277CBF7A8];
  v3 = *MEMORY[0x277CBF8D0];
  v44[0] = *MEMORY[0x277CBF888];
  v44[1] = v3;
  v4 = *MEMORY[0x277CBF878];
  v44[2] = *MEMORY[0x277CBF8E8];
  v44[3] = v4;
  v44[4] = *MEMORY[0x277CBF868];
  v27 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v44, 5, v2);
  v46[0] = v27;
  v45[1] = @"inputAmount";
  v6 = *MEMORY[0x277CBF7E8];
  v38[0] = *MEMORY[0x277CBF7D0];
  v5 = v38[0];
  v38[1] = v6;
  v43[0] = &unk_2849589A8;
  v43[1] = &unk_2849589A8;
  v8 = *MEMORY[0x277CBF7C8];
  v39 = *MEMORY[0x277CBF7E0];
  v7 = v39;
  v40 = v8;
  v43[2] = &unk_2849589B8;
  v43[3] = &unk_2849589C8;
  v10 = *MEMORY[0x277CBF7F0];
  v41 = *MEMORY[0x277CBF798];
  v9 = v41;
  v42 = v10;
  v11 = *MEMORY[0x277CBF850];
  v43[4] = &unk_2849589D8;
  v43[5] = v11;
  v26 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v12, v43, v38, 6);
  v46[1] = v26;
  v45[2] = @"inputShadowAmount";
  v36[0] = v5;
  v36[1] = v6;
  v37[0] = &unk_2849589A8;
  v37[1] = &unk_2849589A8;
  v36[2] = v7;
  v36[3] = v8;
  v37[2] = &unk_2849589B8;
  v37[3] = &unk_2849589C8;
  v36[4] = v9;
  v36[5] = v10;
  v37[4] = &unk_2849589D8;
  v37[5] = v11;
  v25 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v13, v37, v36, 6);
  v46[2] = v25;
  v45[3] = @"inputHighlightAmount";
  v34[0] = v5;
  v34[1] = v6;
  v35[0] = &unk_2849589A8;
  v35[1] = &unk_2849589A8;
  v34[2] = v7;
  v34[3] = v8;
  v35[2] = &unk_2849589B8;
  v35[3] = &unk_2849589C8;
  v34[4] = v9;
  v34[5] = v10;
  v35[4] = &unk_2849589D8;
  v35[5] = v11;
  v24 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v14, v35, v34, 6);
  v46[3] = v24;
  v45[4] = @"inputShadowCutoff";
  v32[0] = v5;
  v32[1] = v6;
  v33[0] = &unk_2849589A8;
  v33[1] = &unk_2849589A8;
  v32[2] = v7;
  v32[3] = v8;
  v33[2] = &unk_2849589D8;
  v33[3] = &unk_2849589D8;
  v32[4] = v9;
  v32[5] = v10;
  v33[4] = &unk_2849589E8;
  v33[5] = v11;
  v23 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v15, v33, v32, 6);
  v46[4] = v23;
  v45[5] = @"inputHighlightCutoff";
  v30[0] = v5;
  v30[1] = v6;
  v31[0] = &unk_2849589A8;
  v31[1] = &unk_2849589A8;
  v30[2] = v7;
  v30[3] = v8;
  v31[2] = &unk_2849589D8;
  v31[3] = &unk_2849589D8;
  v30[4] = v9;
  v30[5] = v10;
  v31[4] = &unk_2849589F8;
  v31[5] = v11;
  v17 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v16, v31, v30, 6);
  v45[6] = @"inputBlurRadius";
  v46[5] = v17;
  v28[0] = v5;
  v28[1] = v6;
  v29[0] = &unk_284958A08;
  v29[1] = &unk_2849589C8;
  v28[2] = v7;
  v28[3] = v8;
  v29[2] = &unk_284958A18;
  v29[3] = &unk_284958A18;
  v28[4] = v9;
  v28[5] = v10;
  v29[4] = &unk_284958A28;
  v29[5] = v11;
  v19 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v18, v29, v28, 6);
  v46[6] = v19;
  v21 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v20, v46, v45, 7);

  return v21;
}

- (BOOL)makeToneCurveImage
{
  if (!self->tcImage)
  {
    v31 = objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], a2, 200, v2, v3);
    v13 = objc_msgSend_mutableBytes(v31, v5, v6, v7, v8);
    for (i = 0; i != 50; ++i)
    {
      objc_msgSend_floatValue(self->inputAmount, v9, v10, v11, v12);
      *(v13 + 4 * i) = v15;
      objc_msgSend_floatValue(self->inputShadowCutoff, v16, v17, v18, v19);
      if ((v24 * 50.0) > i)
      {
        objc_msgSend_floatValue(self->inputShadowAmount, v20, v21, v22, v23);
        *(v13 + 4 * i) = v25 * *(v13 + 4 * i);
      }

      objc_msgSend_floatValue(self->inputHighlightCutoff, v20, v21, v22, v23);
      if ((v26 * 50.0) < i)
      {
        objc_msgSend_floatValue(self->inputHighlightAmount, v9, v10, v11, v12);
        *(v13 + 4 * i) = v27 * *(v13 + 4 * i);
      }
    }

    v28 = objc_msgSend_imageWithBitmapData_bytesPerRow_size_format_colorSpace_(MEMORY[0x277CBF758], v9, v31, 200, *MEMORY[0x277CBF9F0], 0, 50.0, 1.0);
    tcImage = self->tcImage;
    self->tcImage = v28;
  }

  return 1;
}

- (id)outputImage
{
  v82[1] = *MEMORY[0x277D85DE8];
  if (qword_27DE37D80 != -1)
  {
    sub_2338F84E8();
  }

  if (self->inputImage)
  {
    v3 = sub_23378E104();
    v4 = v3;
    if (&self->super.super.super.isa + 1 >= 2 && os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23371F000, v4, OS_SIGNPOST_INTERVAL_BEGIN, self, "RAWLocalToneMap", &unk_233945DBE, buf, 2u);
    }

    v75[0] = MEMORY[0x277D85DD0];
    v75[1] = 3221225472;
    v75[2] = sub_23373734C;
    v75[3] = &unk_2789EE800;
    v75[4] = self;
    v73 = MEMORY[0x2383AC810](v75);
    v5 = MEMORY[0x277CBF788];
    objc_msgSend_floatValue(self->inputHighlightAmount, v6, v7, v8, v9);
    v11 = v10;
    objc_msgSend_floatValue(self->inputHighlightCutoff, v12, v13, v14, v15);
    v17 = v16;
    objc_msgSend_floatValue(self->inputShadowAmount, v18, v19, v20, v21);
    v23 = v22;
    objc_msgSend_floatValue(self->inputShadowCutoff, v24, v25, v26, v27);
    v74 = objc_msgSend_vectorWithX_Y_Z_W_(v5, v29, v30, v31, v32, v11, v17, v23, v28);
    v33 = MEMORY[0x277CBF788];
    objc_msgSend_floatValue(self->inputAmount, v34, v35, v36, v37);
    v43 = objc_msgSend_vectorWithX_Y_Z_W_(v33, v39, v40, v41, v42, v38, 0.0, 0.0, 0.0);
    inputImage = self->inputImage;
    v81 = @"inputRadius";
    v82[0] = self->inputBlurRadius;
    v46 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v45, v82, &v81, 1);
    v49 = objc_msgSend_imageByApplyingFilter_withInputParameters_(inputImage, v47, @"CIGaussianBlur", v46, v48);

    v50 = qword_27DE37D90;
    v80[0] = v74;
    v80[1] = v43;
    v53 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v51, v80, 2, v52);
    v55 = objc_msgSend_apply_image_arguments_inoutSpace_isPremultiplied_(self, v54, v50, v49, v53, self->inputColorSpace, 1);

    inputBlurRadius = self->inputBlurRadius;
    v78 = @"inputRadius";
    v79 = inputBlurRadius;
    v58 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v57, &v79, &v78, 1);
    v61 = objc_msgSend_imageByApplyingFilter_withInputParameters_(v55, v59, @"CIGaussianBlur", v58, v60);

    v64 = objc_msgSend_samplerWithImage_keysAndValues_(MEMORY[0x277CBF780], v62, v61, *MEMORY[0x277CBFB58], v63, self->inputColorSpace, 0);
    v65 = qword_27DE37D88;
    v66 = self->inputImage;
    v77[0] = v64;
    v77[1] = v74;
    v77[2] = v43;
    v69 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v67, v77, 3, v68);
    v71 = objc_msgSend_apply_image_arguments_inoutSpace_isPremultiplied_(self, v70, v65, v66, v69, self->inputColorSpace, 1);

    v73[2](v73);
  }

  else
  {
    v71 = 0;
  }

  return v71;
}

@end