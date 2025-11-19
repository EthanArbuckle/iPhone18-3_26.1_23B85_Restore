@interface RAWTemperatureAdjust
+ (BOOL)automaticallyNotifiesObserversForKey:(id)a3;
+ (id)customAttributes;
- (id)customAttributes;
- (id)outputImage;
- (id)outputMatrix;
- (void)setInputWhitePoint:(id)a3;
@end

@implementation RAWTemperatureAdjust

+ (BOOL)automaticallyNotifiesObserversForKey:(id)a3
{
  v4 = a3;
  if (objc_msgSend_isEqualToString_(v4, v5, @"inputExposure", v6, v7) & 1) != 0 || (objc_msgSend_isEqualToString_(v4, v8, @"inputWhitePoint", v9, v10))
  {
    v11 = 0;
  }

  else
  {
    v13.receiver = a1;
    v13.super_class = &OBJC_METACLASS___RAWTemperatureAdjust;
    v11 = objc_msgSendSuper2(&v13, sel_automaticallyNotifiesObserversForKey_, v4);
  }

  return v11;
}

- (void)setInputWhitePoint:(id)a3
{
  v30 = a3;
  if (self->inputWhitePoint != v30)
  {
    objc_msgSend_X(v30, v5, v6, v7, v8);
    v10 = v9;
    objc_msgSend_X(self->inputWhitePoint, v11, v12, v13, v14);
    if (v10 != v19 || (objc_msgSend_Y(v30, v15, v16, v17, v18), v21 = v20, objc_msgSend_Y(self->inputWhitePoint, v22, v23, v24, v25), v21 != v26))
    {
      objc_msgSend_willChangeValueForKey_(self, v15, @"inputWhitePoint", v17, v18);
      objc_storeStrong(&self->inputWhitePoint, a3);
      objc_msgSend_didChangeValueForKey_(self, v27, @"inputWhitePoint", v28, v29);
    }
  }
}

+ (id)customAttributes
{
  v39[4] = *MEMORY[0x277D85DE8];
  v38[0] = @"inputExposure";
  v35[0] = *MEMORY[0x277CBF790];
  v2 = v35[0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = *MEMORY[0x277CBF7D0];
  v30 = v4;
  v36[0] = v4;
  v36[1] = &unk_284958C78;
  v6 = *MEMORY[0x277CBF7C8];
  v35[1] = v5;
  v35[2] = v6;
  v7 = *MEMORY[0x277CBF798];
  v36[2] = &unk_284958C88;
  v36[3] = &unk_284958C98;
  v8 = *MEMORY[0x277CBF7F0];
  v35[3] = v7;
  v35[4] = v8;
  v37 = *MEMORY[0x277CBF850];
  v9 = v37;
  v29 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v10, v36, v35, 5);
  v39[0] = v29;
  v38[1] = @"inputWhitePoint";
  v33[0] = v2;
  v11 = objc_opt_class();
  v28 = NSStringFromClass(v11);
  v34[0] = v28;
  v33[1] = v7;
  v16 = objc_msgSend_vectorWithX_Y_(MEMORY[0x277CBF788], v12, v13, v14, v15, 0.332399994, 0.34740001);
  v33[2] = v8;
  v17 = *MEMORY[0x277CBF838];
  v34[1] = v16;
  v34[2] = v17;
  v19 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v18, v34, v33, 3);
  v39[1] = v19;
  v38[2] = @"inputVersion";
  v31[0] = v2;
  v20 = objc_opt_class();
  v21 = NSStringFromClass(v20);
  v32[0] = v21;
  v32[1] = &unk_284958C98;
  v31[1] = v5;
  v31[2] = v6;
  v32[2] = &unk_284958CA8;
  v32[3] = &unk_284958CA8;
  v31[3] = v7;
  v31[4] = v8;
  v32[4] = v9;
  v23 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v22, v32, v31, 5);
  v38[3] = @"kCIRAWFilterDoesClip";
  v24 = *MEMORY[0x277CBED10];
  v39[2] = v23;
  v39[3] = v24;
  v26 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v25, v39, v38, 4);

  return v26;
}

- (id)customAttributes
{
  v2 = objc_opt_class();

  return MEMORY[0x2821F9670](v2, sel_customAttributes, v3, v4, v5);
}

- (id)outputMatrix
{
  v79[3] = *MEMORY[0x277D85DE8];
  sub_2337DFC28(3u, &v75);
  objc_msgSend_doubleValue(self->inputExposure, v3, v4, v5, v6);
  v8 = exp2(v7);
  sub_2337E0244(&v75, &v72, v8);
  sub_2337E004C(&v75, &v72);
  if (__p)
  {
    v74 = __p;
    operator delete(__p);
  }

  v13 = objc_msgSend_intValue(self->inputVersion, v9, v10, v11, v12) != 0;
  objc_msgSend_X(self->inputWhitePoint, v14, v15, v16, v17);
  v19 = v18;
  objc_msgSend_Y(self->inputWhitePoint, v20, v21, v22, v23);
  v25 = v24;
  sub_2337DF874(&v69, &v75);
  sub_2338A72FC(v13, &v69, &v72, v19, v25);
  sub_2337E004C(&v75, &v72);
  if (__p)
  {
    v74 = __p;
    operator delete(__p);
  }

  if (v70)
  {
    v71 = v70;
    operator delete(v70);
  }

  v26 = MEMORY[0x277CBF788];
  v72 = sub_2337DFCEC(&v75, 0);
  __p = v27;
  v28 = *sub_2337DFD6C(&v72, 0);
  v67 = sub_2337DFCEC(&v75, 0);
  v68 = v29;
  v30 = *sub_2337DFD6C(&v67, 1u);
  v65 = sub_2337DFCEC(&v75, 0);
  v66 = v31;
  v32 = sub_2337DFD6C(&v65, 2u);
  v37 = objc_msgSend_vectorWithX_Y_Z_(v26, v33, v34, v35, v36, v28, v30, *v32);
  v38 = MEMORY[0x277CBF788];
  v72 = sub_2337DFCEC(&v75, 1u);
  __p = v39;
  v40 = *sub_2337DFD6C(&v72, 0);
  v67 = sub_2337DFCEC(&v75, 1u);
  v68 = v41;
  v42 = *sub_2337DFD6C(&v67, 1u);
  v65 = sub_2337DFCEC(&v75, 1u);
  v66 = v43;
  v44 = sub_2337DFD6C(&v65, 2u);
  v49 = objc_msgSend_vectorWithX_Y_Z_(v38, v45, v46, v47, v48, v40, v42, *v44);
  v50 = MEMORY[0x277CBF788];
  v72 = sub_2337DFCEC(&v75, 2u);
  __p = v51;
  v52 = *sub_2337DFD6C(&v72, 0);
  v67 = sub_2337DFCEC(&v75, 2u);
  v68 = v53;
  v54 = *sub_2337DFD6C(&v67, 1u);
  v65 = sub_2337DFCEC(&v75, 2u);
  v66 = v55;
  v56 = sub_2337DFD6C(&v65, 2u);
  v61 = objc_msgSend_vectorWithX_Y_Z_(v50, v57, v58, v59, v60, v52, v54, *v56);
  v78[0] = @"inputRVector";
  v78[1] = @"inputGVector";
  v79[0] = v37;
  v79[1] = v49;
  v78[2] = @"inputBVector";
  v79[2] = v61;
  v63 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v62, v79, v78, 3);

  if (v76)
  {
    v77 = v76;
    operator delete(v76);
  }

  return v63;
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
      _os_signpost_emit_with_name_impl(&dword_23371F000, v4, OS_SIGNPOST_INTERVAL_BEGIN, self, "RAWTemperatureAdjust", &unk_233945DBE, buf, 2u);
    }

    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = sub_2338A0E68;
    v33[3] = &unk_2789EE800;
    v33[4] = self;
    v5 = MEMORY[0x2383AC810](v33);
    v10 = objc_msgSend_outputMatrix(self, v6, v7, v8, v9);
    inputImage = self->inputImage;
    v15 = objc_msgSend_objectForKeyedSubscript_(v10, v12, @"inputRVector", v13, v14);
    v19 = objc_msgSend_objectForKeyedSubscript_(v10, v16, @"inputGVector", v17, v18);
    v23 = objc_msgSend_objectForKeyedSubscript_(v10, v20, @"inputBVector", v21, v22);
    v28 = objc_msgSend_colorSpace(self->inputImage, v24, v25, v26, v27);
    v29 = sub_2338F2BB4();
    v31 = objc_msgSend_applyMatrixToImage_vectorR_vectorG_vectorB_vectorBias_inSpace_outSpace_(self, v30, inputImage, v15, v19, v23, 0, v28, v29);

    v5[2](v5);
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

@end