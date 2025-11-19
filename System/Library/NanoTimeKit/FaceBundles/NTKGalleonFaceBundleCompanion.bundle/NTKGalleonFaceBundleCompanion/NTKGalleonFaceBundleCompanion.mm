void sub_23BE924F8(uint64_t a1, const char *a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  v4[0] = &unk_284EA79E0;
  v4[1] = &unk_284EA79B0;
  v5[0] = @"lat-long";
  v5[1] = @"elev-incl";
  v4[2] = &unk_284EA79C8;
  v5[2] = @"empty";
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v5, v4, 3);
  v3 = qword_27E1DD6C0;
  qword_27E1DD6C0 = v2;
}

id sub_23BE925B4(void *a1)
{
  v1 = a1;
  objc_sync_enter(v1);
  WeakRetained = objc_loadWeakRetained(&qword_27E1DD6D0);
  if (!WeakRetained)
  {
    WeakRetained = objc_msgSend_galleon_newFontDescriptorWithMonospacedDigits_(v1, v2, 1, v3);
    objc_storeWeak(&qword_27E1DD6D0, WeakRetained);
  }

  objc_sync_exit(v1);

  return WeakRetained;
}

id sub_23BE92648(uint64_t a1, const char *a2, int a3)
{
  v37[2] = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277D74388];
  v36[0] = *MEMORY[0x277D74398];
  v4 = v36[0];
  v36[1] = v5;
  v37[0] = &unk_284EA79F8;
  v37[1] = &unk_284EA7A10;
  v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v37, v36, 2);
  v34[0] = v4;
  v34[1] = v5;
  v35[0] = &unk_284EA79F8;
  v35[1] = &unk_284EA7A28;
  v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v7, v35, v34, 2);
  v33[0] = v6;
  v33[1] = v8;
  v12 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v9, v33, 2);
  if (a3)
  {
    v31[0] = v4;
    v31[1] = v5;
    v32[0] = &unk_284EA7A40;
    v32[1] = &unk_284EA7A58;
    v13 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v10, v32, v31, 2);
    v16 = objc_msgSend_arrayByAddingObject_(v12, v14, v13, v15);

    v12 = v16;
  }

  v17 = objc_msgSend_systemFontOfSize_weight_design_(MEMORY[0x277D74300], v10, *MEMORY[0x277D743C0], v11, 10.0, *MEMORY[0x277D743F8]);
  v21 = objc_msgSend_fontDescriptor(v17, v18, v19, v20);
  v22 = *MEMORY[0x277CC4918];
  v29[0] = *MEMORY[0x277D74338];
  v29[1] = v22;
  v30[0] = v12;
  v30[1] = &unk_284EA8268;
  v29[2] = *MEMORY[0x277CC4988];
  v30[2] = &unk_284EA7A58;
  v24 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v23, v30, v29, 3);
  v27 = objc_msgSend_fontDescriptorByAddingAttributes_(v21, v25, v24, v26);

  return v27;
}

id sub_23BE92884(void *a1)
{
  v1 = a1;
  objc_sync_enter(v1);
  WeakRetained = objc_loadWeakRetained(&qword_27E1DD6D8);
  if (!WeakRetained)
  {
    WeakRetained = objc_msgSend_galleon_newFontDescriptorWithMonospacedDigits_(v1, v2, 0, v3);
    objc_storeWeak(&qword_27E1DD6D8, WeakRetained);
  }

  objc_sync_exit(v1);

  return WeakRetained;
}

id sub_23BE92918(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_monospacedSystemFontOfSize_weight_(MEMORY[0x277D74300], a2, a3, a4, 16.0, *MEMORY[0x277D743F8]);
  v9 = objc_msgSend_fontDescriptor(v5, v6, v7, v8);
  v12 = objc_msgSend_fontWithDescriptor_size_(MEMORY[0x277CBBB08], v10, v9, v11, 16.0);
  v14 = objc_msgSend__galleon_imageViewWithSymbolName_font_(a1, v13, @"chevron.up", v12);

  return v14;
}

id sub_23BE929C8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = MEMORY[0x277D755D0];
  v6 = a3;
  v9 = objc_msgSend_configurationWithFont_(v5, v7, a4, v8);
  v11 = objc_msgSend_systemImageNamed_withConfiguration_(MEMORY[0x277D755B8], v10, v6, v9);

  v14 = objc_msgSend_imageWithRenderingMode_(v11, v12, 2, v13);
  v15 = objc_alloc(MEMORY[0x277D755E8]);
  v18 = objc_msgSend_initWithImage_(v15, v16, v14, v17);

  return v18;
}

id sub_23BE92A80()
{
  if (qword_27E1DD6E8 != -1)
  {
    sub_23BEA4204();
  }

  v1 = qword_27E1DD6E0;

  return v1;
}

void sub_23BE92AC4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v9[15] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_null(MEMORY[0x277CBEB68], a2, a3, a4);
  v8[0] = @"instanceTransform";
  v8[1] = @"instanceCount";
  v9[0] = v4;
  v9[1] = v4;
  v8[2] = @"instanceDelay";
  v8[3] = @"contentsMultiplyColor";
  v9[2] = v4;
  v9[3] = v4;
  v8[4] = @"hidden";
  v8[5] = @"backgroundColor";
  v9[4] = v4;
  v9[5] = v4;
  v8[6] = @"borderColor";
  v8[7] = @"borderWidth";
  v9[6] = v4;
  v9[7] = v4;
  v8[8] = @"cornerCurve";
  v8[9] = @"cornerRadius";
  v9[8] = v4;
  v9[9] = v4;
  v8[10] = @"affineTransform";
  v8[11] = @"transform";
  v9[10] = v4;
  v9[11] = v4;
  v8[12] = @"bounds";
  v8[13] = @"position";
  v9[12] = v4;
  v9[13] = v4;
  v8[14] = @"opacity";
  v9[14] = v4;
  v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v5, v9, v8, 15);
  v7 = qword_27E1DD6E0;
  qword_27E1DD6E0 = v6;
}

void sub_23BE92C10(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_msgSend_galleon_disabledLayerActions(MEMORY[0x277CD9ED0], a2, a3, a4);
  objc_msgSend_setActions_(a1, v5, v7, v6);
}

void sub_23BE93EA8(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v8 = a1;
  os_unfair_lock_lock(&unk_27E1DD728);
  if (qword_27E1DD730)
  {
    v6 = qword_27E1DD730 == v8;
  }

  else
  {
    v6 = 0;
  }

  if (!v6 || objc_msgSend_version(v8, v3, v4, v5) != qword_27E1DD738)
  {
    qword_27E1DD730 = v8;
    qword_27E1DD738 = objc_msgSend_version(v8, v3, v4, v5);
    sub_23BE93F80(v8, v9);
    xmmword_27E1DD6F8 = v9[0];
    unk_27E1DD708 = v9[1];
    xmmword_27E1DD718 = v9[2];
  }

  v7 = unk_27E1DD708;
  *a2 = xmmword_27E1DD6F8;
  a2[1] = v7;
  a2[2] = xmmword_27E1DD718;
  os_unfair_lock_unlock(&unk_27E1DD728);
}

void sub_23BE93F80(const char *a1@<X1>, void *a2@<X8>)
{
  v27 = objc_msgSend_metricsWithDevice_identitySizeClass_(MEMORY[0x277CBBAF8], a1, a1, 6);
  objc_msgSend_scaledValue_(v27, v3, v4, v5, 96.0);
  a2[2] = v6;
  objc_msgSend_scaledValue_(v27, v7, v8, v9, 62.0);
  a2[5] = v10;
  objc_msgSend_scaledValue_(v27, v11, v12, v13, 83.0);
  a2[1] = v14;
  objc_msgSend_scaledValue_(v27, v15, v16, v17, 51.0);
  a2[4] = v18;
  objc_msgSend_scaledValue_(v27, v19, v20, v21, 44.5);
  *a2 = v22;
  objc_msgSend_scaledValue_(v27, v23, v24, v25, 34.5);
  a2[3] = v26;
}

void sub_23BE94A4C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_CGContext(a2, a2, a3, a4);
  v11 = objc_msgSend_layer(*(a1 + 32), v6, v7, v8);
  objc_msgSend_renderInContext_(v11, v9, v5, v10);
}

void sub_23BE94C84(void **a1, void *a2)
{
  v18 = a2;
  v6 = objc_msgSend_superview(a1[4], v3, v4, v5);

  if (!v6)
  {
    objc_msgSend_addSubview_(a1[5], v7, a1[4], v9);
  }

  v10 = objc_msgSend_superview(a1[6], v7, v8, v9);

  if (v10)
  {
    objc_msgSend_removeFromSuperview(a1[6], v11, v12, v13);
  }

  v14 = objc_msgSend_image(a1[4], v11, v12, v13);

  v17 = v18;
  if (v14 != v18)
  {
    objc_msgSend_setImage_(a1[4], v15, v18, v16);
    v17 = v18;
  }
}

void sub_23BE94EC8(uint64_t a1, const char *a2)
{
  v5[2] = *MEMORY[0x277D85DE8];
  v4[0] = &unk_284EA7BA8;
  v4[1] = &unk_284EA7BC0;
  v5[0] = @"hour";
  v5[1] = @"minute";
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v5, v4, 2);
  v3 = qword_27E1DD740;
  qword_27E1DD740 = v2;
}

void sub_23BE96300(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 424);
  v3 = a2;
  v13 = objc_msgSend_layer(v2, v4, v5, v6);
  v10 = objc_msgSend_CGContext(v3, v7, v8, v9);

  objc_msgSend_renderInContext_(v13, v11, v10, v12);
}

void _NTKGalleonLayoutConstants(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BE966B8;
  block[3] = &unk_278B9EE58;
  v7 = v3;
  v4 = qword_27E1DD868;
  v5 = v3;
  if (v4 != -1)
  {
    dispatch_once(&qword_27E1DD868, block);
  }

  memcpy(a2, &qword_27E1DD750, 0x118uLL);
}

void sub_23BE966B8(uint64_t a1, const char *a2)
{
  v11 = objc_msgSend_metricsWithDevice_identitySizeClass_(MEMORY[0x277CBBAF8], a2, *(a1 + 32), 6);
  objc_msgSend_scaledValue_(v11, v2, v3, v4, 193.0);
  qword_27E1DD750 = v5;
  unk_27E1DD758 = xmmword_23BEA6F00;
  unk_27E1DD778 = xmmword_23BEA6F10;
  unk_27E1DD768 = xmmword_23BEA6F20;
  unk_27E1DD798 = xmmword_23BEA6F30;
  __asm { FMOV            V0.2D, #0.75 }

  unk_27E1DD788 = _Q0;
  unk_27E1DD7B8 = xmmword_23BEA6F40;
  unk_27E1DD7A8 = _Q0;
  unk_27E1DD7D8 = xmmword_23BEA6F50;
  unk_27E1DD7C8 = xmmword_23BEA6F60;
  unk_27E1DD7F8 = xmmword_23BEA6F70;
  unk_27E1DD7E8 = xmmword_23BEA6F80;
  unk_27E1DD818 = xmmword_23BEA6F90;
  unk_27E1DD808 = xmmword_23BEA6F80;
  unk_27E1DD828 = xmmword_23BEA6FA0;
  unk_27E1DD838 = xmmword_23BEA6FB0;
  unk_27E1DD848 = xmmword_23BEA6FC0;
  xmmword_27E1DD858 = *MEMORY[0x277CBF3A8];
}

void sub_23BE96DF0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_CGContext(a2, a2, a3, a4);
  v11 = objc_msgSend_layer(*(a1 + 32), v6, v7, v8);
  objc_msgSend_renderInContext_(v11, v9, v5, v10);
}

uint64_t sub_23BE9727C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_CGContext(a2, a2, a3, a4);
  v8 = *(a1 + 32);

  return objc_msgSend_renderInContext_(v8, v5, v6, v7);
}

void sub_23BE97458()
{
  qword_27E1DD878 = 0x4024000000000000;
  qword_27E1DD880 = 0x4014000000000000;
  qword_27E1DD888 = 0x3FF0000000000000;
  qword_27E1DD890 = 0x4008000000000000;
  qword_27E1DD898 = 0x3FE0000000000000;
  qword_27E1DD8A0 = 0x4000000000000000;
}

id sub_23BE974A4(void *a1)
{
  v1 = a1;
  objc_sync_enter(v1);
  WeakRetained = objc_loadWeakRetained(&qword_27E1DD8B0);
  if (!WeakRetained)
  {
    WeakRetained = objc_msgSend_galleon_newHeadingFont(v1, v2, v3, v4);
    objc_storeWeak(&qword_27E1DD8B0, WeakRetained);
  }

  objc_sync_exit(v1);

  return WeakRetained;
}

id sub_23BE97534(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = MEMORY[0x277CBBB08];
  v5 = objc_msgSend_galleon_fontDescriptor(MEMORY[0x277D74310], a2, a3, a4);
  v8 = objc_msgSend_fontWithDescriptor_size_(v4, v6, v5, v7, 11.0);

  return v8;
}

id sub_23BE9759C(void *a1)
{
  v1 = a1;
  objc_sync_enter(v1);
  WeakRetained = objc_loadWeakRetained(&qword_27E1DD8B8);
  if (!WeakRetained)
  {
    WeakRetained = objc_msgSend_galleon_newDegreeFont(v1, v2, v3, v4);
    objc_storeWeak(&qword_27E1DD8B8, WeakRetained);
  }

  objc_sync_exit(v1);

  return WeakRetained;
}

id sub_23BE9762C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = MEMORY[0x277CBBB08];
  v5 = objc_msgSend_galleon_degreeFontDescriptor(MEMORY[0x277D74310], a2, a3, a4);
  v8 = objc_msgSend_fontWithDescriptor_size_(v4, v6, v5, v7, 11.0);

  return v8;
}

CGAffineTransform *NTKGalleonRotationTransform@<X0>(int a1@<W0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, CGFloat a6@<D3>)
{
  v12 = MEMORY[0x277CBF2C0];
  v13 = *MEMORY[0x277CBF2C0];
  v14 = *(MEMORY[0x277CBF2C0] + 16);
  *a2 = *MEMORY[0x277CBF2C0];
  *(a2 + 16) = v14;
  v15 = *(v12 + 32);
  *(a2 + 32) = v15;
  *&v28.a = v13;
  *&v28.c = v14;
  *&v28.tx = v15;
  CGAffineTransformTranslate(a2, &v28, 0.0, a6);
  v16 = (a3 - a5) * 0.5 - a6;
  v17 = *(a2 + 16);
  *&v27.a = *a2;
  *&v27.c = v17;
  *&v27.tx = *(a2 + 32);
  CGAffineTransformTranslate(&v28, &v27, 0.0, v16);
  v18 = *&v28.c;
  *a2 = *&v28.a;
  *(a2 + 16) = v18;
  *(a2 + 32) = *&v28.tx;
  CLKDegreesToRadians();
  v19 = *(a2 + 16);
  *&v27.a = *a2;
  *&v27.c = v19;
  *&v27.tx = *(a2 + 32);
  CGAffineTransformRotate(&v28, &v27, v20);
  v21 = *&v28.c;
  *a2 = *&v28.a;
  *(a2 + 16) = v21;
  *(a2 + 32) = *&v28.tx;
  v22 = *(a2 + 16);
  *&v27.a = *a2;
  *&v27.c = v22;
  *&v27.tx = *(a2 + 32);
  result = CGAffineTransformTranslate(&v28, &v27, 0.0, -v16);
  v24 = *&v28.c;
  *a2 = *&v28.a;
  *(a2 + 16) = v24;
  *(a2 + 32) = *&v28.tx;
  if (a4 < 270.0 && a4 > 90.0)
  {
    if (a1)
    {
      v25 = *(a2 + 16);
      *&v27.a = *a2;
      *&v27.c = v25;
      *&v27.tx = *(a2 + 32);
      result = CGAffineTransformRotate(&v28, &v27, 3.14159265);
      v26 = *&v28.c;
      *a2 = *&v28.a;
      *(a2 + 16) = v26;
      *(a2 + 32) = *&v28.tx;
    }
  }

  return result;
}

void sub_23BE98560(void *a1, double a2, double a3, double a4, double a5, double a6, CGFloat a7, uint64_t a8, int a9)
{
  v14 = a2 * 0.5;
  v15 = a3 - a2 * 0.5;
  v16 = a4 - a2 * 0.5;
  v17 = *(MEMORY[0x277CBF2C0] + 16);
  v27 = *MEMORY[0x277CBF2C0];
  v28 = v17;
  v29 = *(MEMORY[0x277CBF2C0] + 32);
  v18 = a1;
  objc_msgSend_setTransform_(v18, v19, &v27, v20);
  objc_msgSend_setCenter_(v18, v21, v22, v23, v14 + v15, v16 + a6 * 0.5);
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  NTKGalleonRotationTransform(a9, &v27, a2, a5, a6, a7);
  v26[0] = v27;
  v26[1] = v28;
  v26[2] = v29;
  objc_msgSend_setTransform_(v18, v24, v26, v25);
}

uint64_t sub_23BE99E08()
{
  v0 = objc_opt_new();
  v1 = qword_27E1DD8C0;
  qword_27E1DD8C0 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_23BE9B6EC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  memset(&v68, 0, sizeof(v68));
  CGAffineTransformMakeScale(&v68, v4, v4);
  v8 = objc_msgSend_complicationLayoutforSlot_(*(a1 + 32), v6, *MEMORY[0x277D2BEB8], v7);
  v11 = objc_msgSend_defaultLayoutRuleForState_(v8, v9, a2, v10);
  v67 = v68;
  objc_msgSend_setContentTransform_(v11, v12, &v67, v13);
  objc_msgSend_referenceFrame(v11, v14, v15, v16);
  v70 = CGRectInset(v69, 0.0, 0.0);
  objc_msgSend_setReferenceFrame_(v11, v17, v18, v19, v5 + v70.origin.x, v70.origin.y, v70.size.width, v70.size.height);
  v22 = objc_msgSend_complicationLayoutforSlot_(*(a1 + 32), v20, *MEMORY[0x277D2BEC0], v21);

  v25 = objc_msgSend_defaultLayoutRuleForState_(v22, v23, a2, v24);

  v67 = v68;
  objc_msgSend_setContentTransform_(v25, v26, &v67, v27);
  objc_msgSend_referenceFrame(v25, v28, v29, v30);
  v72 = CGRectInset(v71, 0.0, 0.0);
  objc_msgSend_setReferenceFrame_(v25, v31, v32, v33, v72.origin.x - v5, v72.origin.y, v72.size.width, v72.size.height);
  v36 = objc_msgSend_complicationLayoutforSlot_(*(a1 + 32), v34, *MEMORY[0x277D2BEC8], v35);

  v39 = objc_msgSend_defaultLayoutRuleForState_(v36, v37, a2, v38);

  v67 = v68;
  objc_msgSend_setContentTransform_(v39, v40, &v67, v41);
  objc_msgSend_referenceFrame(v39, v42, v43, v44);
  v74 = CGRectInset(v73, 0.0, 0.0);
  objc_msgSend_setReferenceFrame_(v39, v45, v46, v47, v74.origin.x, v74.origin.y - v5, v74.size.width, v74.size.height);
  v50 = objc_msgSend_complicationLayoutforSlot_(*(a1 + 32), v48, *MEMORY[0x277D2BEF8], v49);

  v53 = objc_msgSend_defaultLayoutRuleForState_(v50, v51, a2, v52);

  objc_msgSend_referenceFrame(v53, v54, v55, v56);
  v76 = CGRectInset(v75, 3.0, 3.0);
  v77 = CGRectOffset(v76, 0.0, -0.0);
  x = v77.origin.x;
  y = v77.origin.y;
  width = v77.size.width;
  height = v77.size.height;
  CGAffineTransformMakeScale(&v66, 0.7, 0.7);
  v67 = v66;
  objc_msgSend_setContentTransform_(v53, v61, &v67, v62);
  objc_msgSend_setReferenceFrame_(v53, v63, v64, v65, x, y, width, height);
}

id sub_23BE9D0DC(double a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v11 = objc_msgSend_blackColor(MEMORY[0x277D75348], v8, v9, v10);
  v25 = 0.0;
  v26 = 0.0;
  objc_msgSend_getRed_green_blue_alpha_(v6, v12, 0, 0, 0, &v26);
  objc_msgSend_getRed_green_blue_alpha_(v7, v13, 0, 0, 0, &v25);
  if (v26 != 1.0 || v25 != 1.0)
  {
    v18 = objc_msgSend_colorWithAlphaComponent_(v11, v14, v15, v16, (v26 + v25) * 0.5);

    v11 = v18;
  }

  v19 = 1.0 - fmin(a1 / 0.6, 1.0);
  v20 = a1 + -0.4;
  if (a1 + -0.4 < 0.0)
  {
    v20 = 0.0;
  }

  v21 = 1.0 - v19 - v20 / 0.6;
  v22 = MEMORY[0x23EEC05A0](v6, v7, v20 / 0.6 / (v19 + v20 / 0.6));
  v23 = MEMORY[0x23EEC05A0](v22, v11, v21);

  return v23;
}

void sub_23BE9E4F0(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  v8 = objc_msgSend_integerValue(a2, v5, v6, v7);
  if (v8 != *(a1 + 40))
  {
    objc_msgSend_setOption_forCustomEditMode_slot_(*(a1 + 32), v9, v10, v8, 0);
  }
}

void sub_23BE9EBA4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v30[2] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_systemFontOfSize_weight_(MEMORY[0x277CBBB08], a2, a3, a4, 10.0, *MEMORY[0x277D743F8]);
  v6 = *MEMORY[0x277D74388];
  v29[0] = *MEMORY[0x277D74398];
  v5 = v29[0];
  v29[1] = v6;
  v30[0] = &unk_284EA7DA0;
  v30[1] = &unk_284EA7DB8;
  v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v7, v30, v29, 2);
  v27[0] = v5;
  v27[1] = v6;
  v28[0] = &unk_284EA7DA0;
  v28[1] = &unk_284EA7DD0;
  v10 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v9, v28, v27, 2);
  v26[0] = v8;
  v26[1] = v10;
  v12 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v11, v26, 2);
  v16 = objc_msgSend_fontDescriptor(v4, v13, v14, v15);
  v17 = *MEMORY[0x277CC4918];
  v24[0] = *MEMORY[0x277D74338];
  v24[1] = v17;
  v25[0] = v12;
  v25[1] = &unk_284EA8298;
  v24[2] = *MEMORY[0x277CC4988];
  v25[2] = &unk_284EA7DE8;
  v19 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v18, v25, v24, 3);
  v22 = objc_msgSend_fontDescriptorByAddingAttributes_(v16, v20, v19, v21);
  v23 = qword_27E1DD8D8;
  qword_27E1DD8D8 = v22;
}

void sub_23BE9EDB0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v30[2] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_systemFontOfSize_weight_(MEMORY[0x277CBBB08], a2, a3, a4, 10.0, *MEMORY[0x277D74420]);
  v6 = *MEMORY[0x277D74388];
  v29[0] = *MEMORY[0x277D74398];
  v5 = v29[0];
  v29[1] = v6;
  v30[0] = &unk_284EA7DA0;
  v30[1] = &unk_284EA7DB8;
  v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v7, v30, v29, 2);
  v27[0] = v5;
  v27[1] = v6;
  v28[0] = &unk_284EA7DA0;
  v28[1] = &unk_284EA7DD0;
  v10 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v9, v28, v27, 2);
  v26[0] = v8;
  v26[1] = v10;
  v12 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v11, v26, 2);
  v16 = objc_msgSend_fontDescriptor(v4, v13, v14, v15);
  v17 = *MEMORY[0x277CC4918];
  v24[0] = *MEMORY[0x277D74338];
  v24[1] = v17;
  v25[0] = v12;
  v25[1] = &unk_284EA8298;
  v24[2] = *MEMORY[0x277CC4988];
  v25[2] = &unk_284EA7DE8;
  v19 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v18, v25, v24, 3);
  v22 = objc_msgSend_fontDescriptorByAddingAttributes_(v16, v20, v19, v21);
  v23 = qword_27E1DD8E8;
  qword_27E1DD8E8 = v22;
}

void sub_23BE9F174(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v11 = a1;
  os_unfair_lock_lock(&unk_27E1DD978);
  if (qword_27E1DD980)
  {
    v6 = qword_27E1DD980 == v11;
  }

  else
  {
    v6 = 0;
  }

  if (!v6 || objc_msgSend_version(v11, v3, v4, v5) != qword_27E1DD988)
  {
    qword_27E1DD980 = v11;
    qword_27E1DD988 = objc_msgSend_version(v11, v3, v4, v5);
    sub_23BE9F26C(v11, v12);
    xmmword_27E1DD938 = v12[4];
    unk_27E1DD948 = v12[5];
    xmmword_27E1DD958 = v12[6];
    unk_27E1DD968 = v12[7];
    xmmword_27E1DD8F8 = v12[0];
    unk_27E1DD908 = v12[1];
    xmmword_27E1DD918 = v12[2];
    unk_27E1DD928 = v12[3];
  }

  v7 = unk_27E1DD948;
  a2[4] = xmmword_27E1DD938;
  a2[5] = v7;
  v8 = unk_27E1DD968;
  a2[6] = xmmword_27E1DD958;
  a2[7] = v8;
  v9 = unk_27E1DD908;
  *a2 = xmmword_27E1DD8F8;
  a2[1] = v9;
  v10 = unk_27E1DD928;
  a2[2] = xmmword_27E1DD918;
  a2[3] = v10;
  os_unfair_lock_unlock(&unk_27E1DD978);
}

void sub_23BE9F26C(const char *a1@<X1>, uint64_t a2@<X8>)
{
  v54[1] = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_metricsWithDevice_identitySizeClass_(MEMORY[0x277CBBAF8], a1, a1, 6);
  objc_msgSend_scaledValue_(v3, v4, v5, v6, 193.0);
  *a2 = v7;
  *(a2 + 8) = xmmword_23BEA7070;
  *(a2 + 24) = xmmword_23BEA7080;
  objc_msgSend_scaledValue_(v3, v8, v9, v10, 0.0);
  *(a2 + 40) = v11;
  objc_msgSend_scaledValue_(v3, v12, v13, v14, 2.0);
  *(a2 + 48) = v15;
  objc_msgSend_scaledValue_(v3, v16, v17, v18, 0.0);
  *(a2 + 56) = v19;
  objc_msgSend_scaledValue_(v3, v20, v21, v22, 3.0);
  *(a2 + 64) = v23;
  v53 = &unk_284EA7E00;
  v54[0] = &unk_284EA82A8;
  v25 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v24, v54, &v53, 1);
  objc_msgSend_scaledValue_withOverrides_(v3, v26, v25, v27, -61.0);
  *(a2 + 72) = v28;

  objc_msgSend_scaledValue_(v3, v29, v30, v31, 15.0);
  *(a2 + 80) = v32;
  objc_msgSend_scaledValue_(v3, v33, v34, v35, 60.0);
  *(a2 + 88) = v36;
  objc_msgSend_scaledValue_(v3, v37, v38, v39, 10.0);
  *(a2 + 96) = v40;
  objc_msgSend_scaledValue_(v3, v41, v42, v43, 19.0);
  *(a2 + 104) = v44;
  objc_msgSend_scaledValue_(v3, v45, v46, v47, 36.0);
  *(a2 + 112) = v48;
  objc_msgSend_scaledValue_(v3, v49, v50, v51, 9.0);
  *(a2 + 120) = v52;
}

void sub_23BEA02BC(uint64_t a1, void *a2)
{
  v20 = a2;
  if (objc_msgSend_length(v20, v3, v4, v5))
  {
    v8 = objc_msgSend_rasterizedImageWithFont_(v20, v6, *(a1 + 40), v7);
    v9 = objc_alloc(MEMORY[0x277D755E8]);
    v12 = objc_msgSend_initWithImage_(v9, v10, v8, v11);
    objc_msgSend_sizeToFit(v12, v13, v14, v15);
    objc_msgSend_addSubview_(*(a1 + 32), v16, v12, v17);
  }

  else
  {
    v8 = objc_opt_new();
    objc_msgSend_addSubview_(*(a1 + 32), v18, v8, v19);
  }
}

id sub_23BEA0CEC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_layer(MEMORY[0x277CD9ED0], a2, a3, a4);
  objc_msgSend_setCornerCurve_(v5, v6, *MEMORY[0x277CDA130], v7);
  objc_msgSend_setMasksToBounds_(v5, v8, 0, v9);
  objc_msgSend_setActions_(v5, v10, *(a1 + 32), v11);
  objc_msgSend_setFrame_(v5, v12, v13, v14, *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));

  return v5;
}

double sub_23BEA2910(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_27E1DD9A8);
  if (qword_27E1DD9B0)
  {
    v6 = qword_27E1DD9B0 == v2;
  }

  else
  {
    v6 = 0;
  }

  if (v6 && objc_msgSend_version(v2, v3, v4, v5) == qword_27E1DD9B8)
  {
    v7 = qword_27E1DD990;
  }

  else
  {
    qword_27E1DD9B0 = v2;
    qword_27E1DD9B8 = objc_msgSend_version(v2, v3, v4, v5);
    v7 = sub_23BEA29F8(qword_27E1DD9B8, v2);
    qword_27E1DD990 = v7;
    qword_27E1DD998 = v8;
    qword_27E1DD9A0 = v9;
  }

  os_unfair_lock_unlock(&unk_27E1DD9A8);

  return *&v7;
}

double sub_23BEA29F8(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_metricsWithDevice_identitySizeClass_(MEMORY[0x277CBBAF8], a2, a2, 6);
  objc_msgSend_scaledValue_(v2, v3, v4, v5, 10.25);
  v7 = v6;
  objc_msgSend_scaledValue_(v2, v8, v9, v10, 4.75);
  objc_msgSend_scaledValue_(v2, v11, v12, v13, 4.0);

  return v7;
}

void sub_23BEA2A80(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v9[10] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_null(MEMORY[0x277CBEB68], a2, a3, a4);
  v8[0] = @"backgroundColor";
  v8[1] = @"borderColor";
  v9[0] = v4;
  v9[1] = v4;
  v8[2] = @"borderWidth";
  v8[3] = @"cornerCurve";
  v9[2] = v4;
  v9[3] = v4;
  v8[4] = @"cornerRadius";
  v8[5] = @"affineTransform";
  v9[4] = v4;
  v9[5] = v4;
  v8[6] = @"transform";
  v8[7] = @"bounds";
  v9[6] = v4;
  v9[7] = v4;
  v8[8] = @"position";
  v8[9] = @"opacity";
  v9[8] = v4;
  v9[9] = v4;
  v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v5, v9, v8, 10);
  v7 = qword_27E1DD9C0;
  qword_27E1DD9C0 = v6;
}

void sub_23BEA34A4(uint64_t a1, void *a2, uint64_t a3)
{
  v23[4] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D2C020];
  v6 = a2;
  if (a3)
  {
    v7 = objc_msgSend_placementWithWatchOS12Group_zOrder_(v4, v5, 11, 4000);
    v22[0] = v7;
    v9 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v8, 3, 4000);
    v22[1] = v9;
    v11 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v10, 4, 4000);
    v22[2] = v11;
    v13 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v12, 7, 4000);
    v22[3] = v13;
    objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v14, v22, 4);
  }

  else
  {
    v7 = objc_msgSend_placementWithWatchOS12Group_zOrder_(v4, v5, 3, 4000);
    v23[0] = v7;
    v9 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v15, 4, 4000);
    v23[1] = v9;
    v11 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v16, 7, 4000);
    v23[2] = v11;
    v13 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v17, 11, 8000);
    v23[3] = v13;
    objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v18, v23, 4);
  }
  v19 = ;
  objc_msgSend_setCurationPlacements_(v6, v20, v19, v21);
}

uint64_t NTKGalleonFaceColorIsFullscreenColor(void *a1)
{
  v1 = a1;
  if (objc_msgSend_isEqualToString_(v1, v2, @"galleon.adventurer-fs", v3) & 1) != 0 || (objc_msgSend_isEqualToString_(v1, v4, @"galleon.ocean-fs", v5))
  {
    isEqualToString = 1;
  }

  else
  {
    isEqualToString = objc_msgSend_isEqualToString_(v1, v6, @"galleon.performance-fs", v7);
  }

  return isEqualToString;
}

id sub_23BEA3E74(void *a1, uint64_t a2, void *a3)
{
  v34[1] = *MEMORY[0x277D85DE8];
  v33 = *MEMORY[0x277D740A8];
  v34[0] = a3;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v7 = objc_msgSend_dictionaryWithObjects_forKeys_count_(v4, v6, v34, &v33, 1);
  objc_msgSend_sizeWithAttributes_(a1, v8, v7, v9);
  v11 = v10;
  v13 = v12;
  v14 = objc_alloc(MEMORY[0x277D75560]);
  v18 = objc_msgSend_initWithSize_(v14, v15, v16, v17, v11, v13);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = sub_23BEA3FF8;
  v27[3] = &unk_278B9EE80;
  v29 = 0;
  v30 = 0;
  v31 = v11;
  v32 = v13;
  v27[4] = a1;
  v28 = v7;
  v19 = v7;
  v22 = objc_msgSend_imageWithActions_(v18, v20, v27, v21);
  v25 = objc_msgSend_imageWithRenderingMode_(v22, v23, 2, v24);

  return v25;
}

void sub_23BEA4134(uint64_t a1, const char *a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  v4[0] = &unk_284EA8088;
  v4[1] = &unk_284EA80A0;
  v5[0] = @"off";
  v5[1] = @"on";
  v4[2] = &unk_284EA8070;
  v5[2] = @"auto";
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v5, v4, 3);
  v3 = qword_27E1DD9D0;
  qword_27E1DD9D0 = v2;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x282111608](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}