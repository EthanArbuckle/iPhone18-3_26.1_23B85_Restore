@interface RAWVignetteRadial
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation RAWVignetteRadial

+ (id)customAttributes
{
  v60 = *MEMORY[0x277D85DE8];
  v54[0] = @"inputVignetteK0";
  v51[0] = *MEMORY[0x277CBF790];
  v2 = v51[0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = *MEMORY[0x277CBF798];
  v39 = v4;
  v53[0] = v4;
  v53[1] = &unk_284958D08;
  v6 = *MEMORY[0x277CBF7F0];
  v51[1] = v5;
  v51[2] = v6;
  v7 = *MEMORY[0x277CBF850];
  v52 = *MEMORY[0x277CBF7A0];
  v8 = v52;
  v53[2] = v7;
  v53[3] = @"inputVignetteK0";
  v40 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v9, v53, v51, 4);
  v55[0] = v40;
  v54[1] = @"inputVignetteK1";
  v49[0] = v2;
  v10 = objc_opt_class();
  v38 = NSStringFromClass(v10);
  v50[0] = v38;
  v50[1] = &unk_284958D08;
  v49[1] = v5;
  v49[2] = v6;
  v49[3] = v8;
  v50[2] = v7;
  v50[3] = @"inputVignetteK1";
  v37 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v11, v50, v49, 4);
  v55[1] = v37;
  v54[2] = @"inputVignetteK2";
  v47[0] = v2;
  v12 = objc_opt_class();
  v35 = NSStringFromClass(v12);
  v48[0] = v35;
  v48[1] = &unk_284958D08;
  v47[1] = v5;
  v47[2] = v6;
  v47[3] = v8;
  v48[2] = v7;
  v48[3] = @"inputVignetteK2";
  v56 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v13, v48, v47, 4);
  v54[3] = @"inputVignetteK3";
  v45[0] = v2;
  v36 = v56;
  v14 = objc_opt_class();
  v34 = NSStringFromClass(v14);
  v46[0] = v34;
  v46[1] = &unk_284958D08;
  v45[1] = v5;
  v45[2] = v6;
  v45[3] = v8;
  v46[2] = v7;
  v46[3] = @"inputVignetteK3";
  v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v15, v46, v45, 4);
  v57 = v16;
  v54[4] = @"inputVignetteK4";
  v43[0] = v2;
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v44[0] = v18;
  v44[1] = &unk_284958D08;
  v43[1] = v5;
  v43[2] = v6;
  v43[3] = v8;
  v44[2] = v7;
  v44[3] = @"inputVignetteK4";
  v20 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v19, v44, v43, 4);
  v58 = v20;
  v54[5] = @"inputCenter";
  v41[0] = v2;
  v21 = objc_opt_class();
  v22 = NSStringFromClass(v21);
  v42[0] = v22;
  v41[1] = v5;
  v27 = objc_msgSend_vectorWithX_Y_(MEMORY[0x277CBF788], v23, v24, v25, v26, 0.5, 0.5);
  v41[2] = v6;
  v28 = *MEMORY[0x277CBF838];
  v42[1] = v27;
  v42[2] = v28;
  v30 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v29, v42, v41, 3);
  v59 = v30;
  v32 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v31, v55, v54, 6);

  return v32;
}

- (id)outputImage
{
  v121[3] = *MEMORY[0x277D85DE8];
  if (self->inputImage)
  {
    v10 = objc_msgSend_BOOLValue(self->inputVignetteExecute, a2, v2, v3, v4);
    inputImage = self->inputImage;
    if ((v10 & 1) == 0)
    {
      v16 = inputImage;
      goto LABEL_6;
    }

    objc_msgSend_extent(inputImage, v6, v7, v8, v9);
    x = v123.origin.x;
    y = v123.origin.y;
    width = v123.size.width;
    height = v123.size.height;
    if (CGRectIsInfinite(v123))
    {
      NSLog(&cfstr_Rawvignetterad_0.isa);
      v16 = self->inputImage;
LABEL_6:
      v17 = v16;
      goto LABEL_16;
    }

    v18 = sub_23378E104();
    v19 = v18;
    if (&self->super.super.super.isa + 1 >= 2 && os_signpost_enabled(v18))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23371F000, v19, OS_SIGNPOST_INTERVAL_BEGIN, self, "RAWVignetteRadial", &unk_233945DBE, buf, 2u);
    }

    v119[0] = MEMORY[0x277D85DD0];
    v119[1] = 3221225472;
    v119[2] = sub_2338A22A4;
    v119[3] = &unk_2789EE800;
    v119[4] = self;
    v20 = MEMORY[0x2383AC810](v119);
    objc_msgSend_X(self->inputVignetteCenter, v21, v22, v23, v24);
    v118 = v25;
    objc_msgSend_Y(self->inputVignetteCenter, v26, v27, v28, v29);
    v31 = v30;
    v124.origin.x = x;
    v124.origin.y = y;
    v124.size.width = width;
    v124.size.height = height;
    MinX = CGRectGetMinX(v124);
    v125.origin.x = x;
    v125.origin.y = y;
    v125.size.width = width;
    v125.size.height = height;
    MaxX = CGRectGetMaxX(v125);
    v126.origin.x = x;
    v126.origin.y = y;
    v126.size.width = width;
    v126.size.height = height;
    MinY = CGRectGetMinY(v126);
    v127.origin.x = x;
    v127.origin.y = y;
    v127.size.width = width;
    v127.size.height = height;
    MaxY = CGRectGetMaxY(v127);
    v36 = hypot(fmax(vabdd_f64(MinX, width * v118), vabdd_f64(MaxX, width * v118)), fmax(vabdd_f64(MinY, height * v31), vabdd_f64(MaxY, height * v31)));
    v37 = MEMORY[0x277CBF788];
    objc_msgSend_X(self->inputVignetteCenter, v38, v39, v40, v41);
    v43 = v42;
    objc_msgSend_Y(self->inputVignetteCenter, v44, v45, v46, v47);
    v49 = v48;
    objc_msgSend_floatValue(self->inputVignetteK4, v50, v51, v52, v53);
    v59 = objc_msgSend_vectorWithX_Y_Z_W_(v37, v55, v56, v57, v58, width * v43, height * v49, v54, (1.0 / (v36 * v36)));
    v60 = MEMORY[0x277CBF788];
    objc_msgSend_floatValue(self->inputVignetteK0, v61, v62, v63, v64);
    v66 = v65;
    objc_msgSend_floatValue(self->inputVignetteK1, v67, v68, v69, v70);
    v72 = v71;
    objc_msgSend_floatValue(self->inputVignetteK2, v73, v74, v75, v76);
    LODWORD(v36) = v77;
    objc_msgSend_floatValue(self->inputVignetteK3, v78, v79, v80, v81);
    v87 = objc_msgSend_vectorWithX_Y_Z_W_(v60, v83, v84, v85, v86, v66, v72, *&v36, v82);
    v91 = objc_msgSend_kernelWithName_(GainMapKernels, v88, @"GainMapParametric", v89, v90);
    v92 = self->inputImage;
    v97 = self->inputColorSpace;
    if (v97)
    {
      v98 = objc_msgSend_imageByColorMatchingWorkingSpaceToColorSpace_(v92, v93, v97, v95, v96);

      v92 = v98;
    }

    objc_msgSend_extent(v92, v93, v94, v95, v96);
    v100 = v99;
    v102 = v101;
    v104 = v103;
    v106 = v105;
    v121[0] = v92;
    v121[1] = v59;
    v121[2] = v87;
    v109 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v107, v121, 3, v108);
    v17 = objc_msgSend_applyWithExtent_arguments_(v91, v110, v109, v111, v112, v100, v102, v104, v106);

    if (v97)
    {
      v116 = objc_msgSend_imageByColorMatchingColorSpaceToWorkingSpace_(v17, v113, v97, v114, v115);

      v17 = v116;
    }

    v20[2](v20);
  }

  else
  {
    v17 = 0;
  }

LABEL_16:

  return v17;
}

@end