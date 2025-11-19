@interface RAWHueMagnet
+ (id)customAttributes;
- (id)customAttributes;
- (id)outputImage;
@end

@implementation RAWHueMagnet

+ (id)customAttributes
{
  v70 = *MEMORY[0x277D85DE8];
  v61[0] = @"inputColorSpace";
  v58 = *MEMORY[0x277CBF798];
  v2 = v58;
  v3 = sub_2338F2BB4();
  v59 = *MEMORY[0x277CBF7A0];
  v4 = v59;
  v60[0] = v3;
  v60[1] = @"inputColorSpace";
  v43 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v5, v60, &v58, 2);
  v62 = v43;
  v61[1] = @"inputVersion";
  v56[0] = *MEMORY[0x277CBF790];
  v6 = v56[0];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = *MEMORY[0x277CBF7D0];
  v37 = v8;
  v57[0] = v8;
  v57[1] = &unk_284958C08;
  v10 = *MEMORY[0x277CBF7C8];
  v56[1] = v9;
  v56[2] = v10;
  v57[2] = &unk_284958C18;
  v57[3] = &unk_284958C28;
  v11 = *MEMORY[0x277CBF7F0];
  v56[3] = v2;
  v56[4] = v11;
  v12 = *MEMORY[0x277CBF850];
  v56[5] = v4;
  v57[4] = v12;
  v57[5] = @"inputVersion";
  v63 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v13, v57, v56, 6);
  v61[2] = @"inputHueMagMR";
  v54[0] = v6;
  v38 = v63;
  v14 = objc_opt_class();
  v42 = NSStringFromClass(v14);
  v55[0] = v42;
  v55[1] = &unk_284958C38;
  v54[1] = v9;
  v54[2] = v10;
  v55[2] = &unk_284958C48;
  v55[3] = &unk_284958C58;
  v54[3] = v2;
  v54[4] = v11;
  v54[5] = v4;
  v55[4] = v12;
  v55[5] = @"inputHueMagMR";
  v41 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v15, v55, v54, 6);
  v64 = v41;
  v61[3] = @"inputHueMagRY";
  v52[0] = v6;
  v16 = objc_opt_class();
  v40 = NSStringFromClass(v16);
  v53[0] = v40;
  v53[1] = &unk_284958C38;
  v52[1] = v9;
  v52[2] = v10;
  v53[2] = &unk_284958C48;
  v53[3] = &unk_284958C58;
  v52[3] = v2;
  v52[4] = v11;
  v52[5] = v4;
  v53[4] = v12;
  v53[5] = @"inputHueMagRY";
  v39 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v17, v53, v52, 6);
  v65 = v39;
  v61[4] = @"inputHueMagYG";
  v50[0] = v6;
  v18 = objc_opt_class();
  v35 = NSStringFromClass(v18);
  v51[0] = v35;
  v51[1] = &unk_284958C38;
  v50[1] = v9;
  v50[2] = v10;
  v51[2] = &unk_284958C48;
  v51[3] = &unk_284958C58;
  v50[3] = v2;
  v50[4] = v11;
  v50[5] = v4;
  v51[4] = v12;
  v51[5] = @"inputHueMagYG";
  v36 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v19, v51, v50, 6);
  v66 = v36;
  v61[5] = @"inputHueMagGC";
  v48[0] = v6;
  v20 = objc_opt_class();
  v33 = NSStringFromClass(v20);
  v49[0] = v33;
  v49[1] = &unk_284958C38;
  v48[1] = v9;
  v48[2] = v10;
  v49[2] = &unk_284958C48;
  v49[3] = &unk_284958C58;
  v48[3] = v2;
  v48[4] = v11;
  v48[5] = v4;
  v49[4] = v12;
  v49[5] = @"inputHueMagGC";
  v34 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v21, v49, v48, 6);
  v67 = v34;
  v61[6] = @"inputHueMagCB";
  v46[0] = v6;
  v22 = objc_opt_class();
  v23 = NSStringFromClass(v22);
  v47[0] = v23;
  v47[1] = &unk_284958C38;
  v46[1] = v9;
  v46[2] = v10;
  v47[2] = &unk_284958C48;
  v47[3] = &unk_284958C58;
  v46[3] = v2;
  v46[4] = v11;
  v46[5] = v4;
  v47[4] = v12;
  v47[5] = @"inputHueMagCB";
  v25 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v24, v47, v46, 6);
  v68 = v25;
  v61[7] = @"inputHueMagBM";
  v44[0] = v6;
  v26 = objc_opt_class();
  v27 = NSStringFromClass(v26);
  v45[0] = v27;
  v45[1] = &unk_284958C38;
  v44[1] = v9;
  v44[2] = v10;
  v45[2] = &unk_284958C48;
  v45[3] = &unk_284958C58;
  v44[3] = v2;
  v44[4] = v11;
  v44[5] = v4;
  v45[4] = v12;
  v45[5] = @"inputHueMagBM";
  v29 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v28, v45, v44, 6);
  v69 = v29;
  v31 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v30, &v62, v61, 8);

  return v31;
}

- (id)customAttributes
{
  v2 = objc_opt_class();

  return MEMORY[0x2821F9670](v2, sel_customAttributes, v3, v4, v5);
}

- (id)outputImage
{
  v132[1] = *MEMORY[0x277D85DE8];
  if (self->inputImage)
  {
    v3 = sub_23378E104();
    v4 = v3;
    if (&self->super.super.super.isa + 1 >= 2 && os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23371F000, v4, OS_SIGNPOST_INTERVAL_BEGIN, self, "RAWHueMagnet", &unk_233945DBE, buf, 2u);
    }

    v125[0] = MEMORY[0x277D85DD0];
    v125[1] = 3221225472;
    v125[2] = sub_233880218;
    v125[3] = &unk_2789EE800;
    v125[4] = self;
    v5 = MEMORY[0x2383AC810](v125);
    objc_msgSend_doubleValue(self->inputHueMagMR, v6, v7, v8, v9);
    v11 = v10;
    objc_msgSend_doubleValue(self->inputHueMagRY, v12, v13, v14, v15);
    v17 = v16;
    objc_msgSend_doubleValue(self->inputHueMagYG, v18, v19, v20, v21);
    v23 = v22;
    objc_msgSend_doubleValue(self->inputHueMagGC, v24, v25, v26, v27);
    v29 = v28;
    objc_msgSend_doubleValue(self->inputHueMagCB, v30, v31, v32, v33);
    v35 = v34;
    objc_msgSend_doubleValue(self->inputHueMagBM, v36, v37, v38, v39);
    v40 = fmin(fmax(v11, -0.2), 0.2);
    v41 = fmin(fmax(v17, -0.2), 0.2);
    v42 = fmin(fmax(v23, -0.2), 0.2);
    v44 = fabs(v40);
    v45 = fabs(v41);
    v46 = fabs(v42);
    v121 = fmin(fmax(v35, -0.2), 0.2);
    v122 = fmin(fmax(v29, -0.2), 0.2);
    v47 = fabs(v122);
    v120 = fmin(fmax(v43, -0.2), 0.2);
    v123 = fabs(v120);
    v124 = fabs(v121);
    v51 = self->inputImage;
    if (v44 >= 0.001 || v45 >= 0.001 || v46 >= 0.001 || v47 >= 0.001 || (v52.n128_f64[0] = v124, v124 >= 0.001) || (v52.n128_f64[0] = v123, v123 >= 0.001))
    {
      if (v44 >= 0.001)
      {
        v53 = objc_msgSend_kernelWithName_(HMKernels, v48, @"RAWHueMagnetMR", v49, v50, v52.n128_f64[0]);
        v58 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v54, v55, v56, v57, v40);
        v132[0] = v58;
        v61 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v59, v132, 1, v60);
        v63 = objc_msgSend_apply_image_arguments_inoutSpace_isPremultiplied_(self, v62, v53, v51, v61, self->inputColorSpace, 1);

        v51 = v63;
      }

      if (v45 >= 0.001)
      {
        v64 = objc_msgSend_kernelWithName_(HMKernels, v48, @"RAWHueMagnetRY", v49, v50);
        v69 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v65, v66, v67, v68, v41);
        v131 = v69;
        v72 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v70, &v131, 1, v71);
        v74 = objc_msgSend_apply_image_arguments_inoutSpace_isPremultiplied_(self, v73, v64, v51, v72, self->inputColorSpace, 1);

        v51 = v74;
      }

      if (v46 >= 0.001)
      {
        v75 = objc_msgSend_kernelWithName_(HMKernels, v48, @"RAWHueMagnetYG", v49, v50);
        v80 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v76, v77, v78, v79, v42);
        v130 = v80;
        v83 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v81, &v130, 1, v82);
        v85 = objc_msgSend_apply_image_arguments_inoutSpace_isPremultiplied_(self, v84, v75, v51, v83, self->inputColorSpace, 1);

        v51 = v85;
      }

      if (v47 >= 0.001)
      {
        v86 = objc_msgSend_kernelWithName_(HMKernels, v48, @"RAWHueMagnetGC", v49, v50);
        v91 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v87, v88, v89, v90, v122);
        v129 = v91;
        v94 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v92, &v129, 1, v93);
        v96 = objc_msgSend_apply_image_arguments_inoutSpace_isPremultiplied_(self, v95, v86, v51, v94, self->inputColorSpace, 1);

        v51 = v96;
      }

      if (v124 >= 0.001)
      {
        v97 = objc_msgSend_kernelWithName_(HMKernels, v48, @"RAWHueMagnetCB", v49, v50, v124);
        v102 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v98, v99, v100, v101, v121);
        v128 = v102;
        v105 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v103, &v128, 1, v104);
        v107 = objc_msgSend_apply_image_arguments_inoutSpace_isPremultiplied_(self, v106, v97, v51, v105, self->inputColorSpace, 1);

        v51 = v107;
      }

      v52.n128_f64[0] = v123;
      if (v123 >= 0.001)
      {
        v108 = objc_msgSend_kernelWithName_(HMKernels, v48, @"RAWHueMagnetBM", v49, v50, v123);
        v113 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v109, v110, v111, v112, v120);
        v127 = v113;
        v116 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v114, &v127, 1, v115);
        v118 = objc_msgSend_apply_image_arguments_inoutSpace_isPremultiplied_(self, v117, v108, v51, v116, self->inputColorSpace, 1);

        v51 = v118;
      }
    }

    v5[2](v5, v52);
  }

  else
  {
    v51 = 0;
  }

  return v51;
}

@end