@interface RAWLensCorrectionDNG
+ (id)customAttributes;
- (CGPoint)mapPoint:(CGPoint)point info:(id)info;
- (id)customAttributes;
- (id)outputImage;
@end

@implementation RAWLensCorrectionDNG

+ (id)customAttributes
{
  v34[3] = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], a2, v2, v3, v4, 1.0, 0.0, 0.0, 0.0);
  v10 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v6, v7, v8, v9, 0.0, 0.0, 0.0, 0.0);
  v15 = objc_msgSend_vectorWithX_Y_(MEMORY[0x277CBF788], v11, v12, v13, v14, 0.5, 0.5);
  v33[0] = @"inputKr";
  v17 = *MEMORY[0x277CBF7C0];
  v31[0] = *MEMORY[0x277CBF798];
  v16 = v31[0];
  v31[1] = v17;
  v32[0] = v5;
  v32[1] = v5;
  v19 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v18, v32, v31, 2);
  v34[0] = v19;
  v33[1] = @"inputKt";
  v29[0] = v16;
  v29[1] = v17;
  v30[0] = v10;
  v30[1] = v10;
  v21 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v20, v30, v29, 2);
  v34[1] = v21;
  v33[2] = @"inputCenter";
  v27[0] = v16;
  v27[1] = v17;
  v28[0] = v15;
  v28[1] = v15;
  v23 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v22, v28, v27, 2);
  v34[2] = v23;
  v25 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v24, v34, v33, 3);

  return v25;
}

- (id)customAttributes
{
  v2 = objc_opt_class();

  return MEMORY[0x2821F9670](v2, sel_customAttributes, v3, v4, v5);
}

- (CGPoint)mapPoint:(CGPoint)point info:(id)info
{
  x = point.x;
  y = point.y;
  infoCopy = info;
  v8 = objc_msgSend_objectForKeyedSubscript_(infoCopy, v5, @"Kr", v6, v7);
  v12 = objc_msgSend_objectForKeyedSubscript_(infoCopy, v9, @"Kt", v10, v11);
  v16 = objc_msgSend_objectForKeyedSubscript_(infoCopy, v13, @"c", v14, v15);
  objc_msgSend_X(v8, v17, v18, v19, v20);
  v22 = v21;
  objc_msgSend_Y(v8, v23, v24, v25, v26);
  v28 = v27;
  objc_msgSend_Z(v8, v29, v30, v31, v32);
  v34 = v33;
  objc_msgSend_W(v8, v35, v36, v37, v38);
  v40 = v39;
  objc_msgSend_X(v12, v41, v42, v43, v44);
  v91 = v45;
  objc_msgSend_Y(v12, v46, v47, v48, v49);
  v90 = v50;
  objc_msgSend_X(v16, v51, v52, v53, v54);
  v89 = v55;
  objc_msgSend_Y(v16, v56, v57, v58, v59);
  v88 = v60;
  v64 = objc_msgSend_objectForKeyedSubscript_(infoCopy, v61, @"m", v62, v63);
  objc_msgSend_floatValue(v64, v65, v66, v67, v68);
  v87 = v69;
  v70.f64[0] = v88;
  v70.f64[1] = v89;
  v71.f64[0] = v90;
  v71.f64[1] = v91;
  v72 = vcvt_f32_f64(v70);
  v73 = vcvt_f32_f64(v71);

  _Q0.f64[0] = y;
  _Q0.f64[1] = x;
  *&_Q0.f64[0] = vdiv_f32(vsub_f32(vcvt_f32_f64(_Q0), v72), vdup_lane_s32(v87, 0));
  _S2 = HIDWORD(_Q0.f64[0]);
  __asm { FMLA            S1, S2, V0.S[1] }

  *&v22 = v22;
  *&v28 = v28;
  *&v34 = v34;
  *&v40 = v40;
  v81 = vmul_n_f32(*&_Q0.f64[0], (((_S1 * *&v28) + *&v22) + (*&v34 * (_S1 * _S1))) + (*&v40 * (_S1 * (_S1 * _S1))));
  v82 = vcvtq_f64_f32(*&_Q0.f64[0]);
  v83 = vaddq_f64(v82, v82);
  v84 = vcvtq_f64_f32(v73);
  v94 = vcvtq_f64_f32(vadd_f32(vmul_n_f32(vadd_f32(v81, vcvt_f32_f64(vmlaq_n_f64(vmulq_f64(vmlaq_f64(vdupq_lane_s64(COERCE__INT64(_S1), 0), v82, v83), vextq_s8(v84, v84, 8uLL)), v84, vmulq_laneq_f64(v82, v83, 1).f64[0]))), *v87.i32), v72));

  v85 = v94.f64[1];
  v86 = v94.f64[0];
  result.y = v86;
  result.x = v85;
  return result;
}

- (id)outputImage
{
  v75[4] = *MEMORY[0x277D85DE8];
  if (self->inputImage)
  {
    v3 = sub_23378E104();
    v4 = v3;
    if (&self->super.super.super.isa + 1 >= 2 && os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23371F000, v4, OS_SIGNPOST_INTERVAL_BEGIN, self, "RAWLensCorrectionDNG", &unk_233945DBE, buf, 2u);
    }

    v73[0] = MEMORY[0x277D85DD0];
    v73[1] = 3221225472;
    v73[2] = sub_2338F5B1C;
    v73[3] = &unk_2789EE800;
    v73[4] = self;
    v5 = MEMORY[0x2383AC810](v73);
    objc_msgSend_extent(self->inputImage, v6, v7, v8, v9);
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v67 = objc_msgSend_kernelWithName_(LCKernels, v18, @"dngLens", v19, v20);
    v24 = objc_msgSend_kernelWithName_(LCKernels, v21, @"dngLensDraft", v22, v23);
    objc_msgSend_X(self->inputCenter, v25, v26, v27, v28);
    v30 = v29;
    objc_msgSend_Y(self->inputCenter, v31, v32, v33, v34);
    v36 = v11 + v15 * v30;
    v37 = v13 + v17 * v35;
    v38 = hypot(fmax(vabdd_f64(v11, v36), vabdd_f64(v11 + v15, v36)), fmax(vabdd_f64(v13, v37), vabdd_f64(v13 + v17, v37)));
    v70[0] = MEMORY[0x277D85DD0];
    v70[1] = 3221225472;
    v70[2] = sub_2338F5BA4;
    v70[3] = &unk_2789F1190;
    v70[4] = self;
    v71 = v36;
    v72 = v37;
    *&v70[5] = v38;
    v39 = MEMORY[0x2383AC810](v70);
    v68[0] = MEMORY[0x277D85DD0];
    v68[1] = 3221225472;
    v68[2] = sub_2338F5D84;
    v68[3] = &unk_2789EF1E8;
    v40 = v39;
    v69 = v40;
    v41 = MEMORY[0x2383AC810](v68);
    if (objc_msgSend_BOOLValue(self->inputDraftMode, v42, v43, v44, v45))
    {
      v50 = v24;
    }

    else
    {
      v50 = v67;
    }

    inputImage = self->inputImage;
    inputKt = self->inputKt;
    v75[0] = self->inputKr;
    v75[1] = inputKt;
    v53 = objc_msgSend_vectorWithX_Y_(MEMORY[0x277CBF788], v46, v47, v48, v49, v36, v37, *&v17, *&v15);
    v75[2] = v53;
    v58 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v54, v55, v56, v57, v38);
    v75[3] = v58;
    v61 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v59, v75, 4, v60);
    v63 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_(self, v62, v50, inputImage, v41, v61, self->inputColorSpace, v11, v13, v66, v65);

    v5[2](v5);
  }

  else
  {
    v63 = 0;
  }

  return v63;
}

@end