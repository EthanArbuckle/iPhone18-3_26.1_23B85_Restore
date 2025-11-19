uint64_t sub_23BE5D048()
{
  MEMORY[0x23EEC0350](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_23BE5D4B8(uint64_t a1, const char *a2)
{
  v5[5] = *MEMORY[0x277D85DE8];
  v4[0] = &unk_284EA0F78;
  v4[1] = &unk_284EA0F90;
  v5[0] = @"none";
  v5[1] = @"seconds";
  v4[2] = &unk_284EA0FA8;
  v4[3] = &unk_284EA0FC0;
  v5[2] = @"depth";
  v5[3] = @"elevation";
  v4[4] = &unk_284EA0FD8;
  v5[4] = @"harmonia";
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v5, v4, 5);
  v3 = qword_27E1DCAA0;
  qword_27E1DCAA0 = v2;
}

uint64_t sub_23BE5D8D0(uint64_t a1, const char *a2)
{
  qword_27E1DCAB0 = objc_msgSend_fontDescriptorForSectName_fromMachO_(MEMORY[0x277D2C050], a2, @"__FoghornFont", &dword_23BE5B000);

  return MEMORY[0x2821F96F8]();
}

void sub_23BE603E0(uint64_t a1, const char *a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  v4[0] = &unk_284EA1008;
  v4[1] = &unk_284EA1020;
  v5[0] = @"off";
  v5[1] = @"on";
  v4[2] = &unk_284EA0FF0;
  v5[2] = @"auto";
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v5, v4, 3);
  v3 = qword_27E1DCAC0;
  qword_27E1DCAC0 = v2;
}

id NTKFoghornHarmoniaLocalizedStringForOvernightChangesCount(uint64_t a1)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = NTKFoghornFaceLocalizedString(@"FOGHORN_HARMONIA_OVERNIGHT_CHANGES");
  v6 = objc_msgSend_localizedStringWithFormat_(v2, v4, v3, v5, a1);

  return v6;
}

id NTKFoghornHarmoniaLocalizedStringForTrainingLoadBand(unint64_t a1)
{
  if (a1 <= 4)
  {
    a1 = NTKFoghornFaceLocalizedString(off_278B9C890[a1]);
  }

  return a1;
}

__CFString *NTKFoghornHarmoniaLocalizedStringForOvernightSummary(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  switch(a1)
  {
    case 4:
      v4 = NTKFoghornHarmoniaLocalizedStringForOvernightChangesCount(a4);
      goto LABEL_7;
    case 3:
      v7 = MEMORY[0x277CCACA8];
      v8 = NTKFoghornFaceLocalizedString(@"FOGHORN_HARMONIA_ESTABLISHING_OVERNIGHT");
      v11 = objc_msgSend_localizedStringWithFormat_(v7, v9, v8, v10, a2, a3);

      goto LABEL_9;
    case 0:
      v4 = NTKFoghornFaceLocalizedString(@"FOGHORN_HARMONIA_NO_OVERNIGHT_DATA");
LABEL_7:
      v11 = v4;
      goto LABEL_9;
  }

  v11 = @" ";
LABEL_9:

  return v11;
}

__CFString *NTKFoghornHarmoniaLocalizedStringForTrainingSummary(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  switch(a1)
  {
    case 4:
      v4 = NTKFoghornHarmoniaLocalizedStringForTrainingLoadBand(a4);
      goto LABEL_7;
    case 3:
      v7 = MEMORY[0x277CCACA8];
      v8 = NTKFoghornFaceLocalizedString(@"FOGHORN_HARMONIA_ESTABLISHING_TRAINING");
      v11 = objc_msgSend_localizedStringWithFormat_(v7, v9, v8, v10, a2, a3);

      goto LABEL_9;
    case 0:
      v4 = NTKFoghornFaceLocalizedString(@"FOGHORN_HARMONIA_NO_TRAINING_DATA");
LABEL_7:
      v11 = v4;
      goto LABEL_9;
  }

  v11 = @" ";
LABEL_9:

  return v11;
}

CFArrayRef sub_23BE61320(void *a1)
{
  v1 = a1;
  v5 = objc_msgSend_count(v1, v2, v3, v4);
  Mutable = CFArrayCreateMutable(0, v5, MEMORY[0x277CBF128]);
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v10 = objc_msgSend_objectAtIndexedSubscript_(v1, v6, i, v7);
      v11 = CTLineCreateWithAttributedString(v10);
      CFArrayAppendValue(Mutable, v11);
      CFRelease(v11);
    }
  }

  Copy = CFArrayCreateCopy(0, Mutable);
  CFRelease(Mutable);

  return Copy;
}

uint64_t *sub_23BE642C4(_BYTE *a1, double a2)
{
  v2 = 0;
  v3 = &qword_27E1DC618;
  v4 = -INFINITY;
  v5 = INFINITY;
  v6 = &qword_27E1DC618;
  v7 = &qword_27E1DC618;
  while (v2 <= 0x317)
  {
    v9 = *(v3 + 4);
    v8 = *(v3 + 5);
    if (v8 < v5)
    {
      v7 = v3;
      v5 = *(v3 + 5);
    }

    if (v9 > v4)
    {
      v6 = v3;
      v4 = *(v3 + 4);
    }

    v2 += 72;
    v3 += 9;
    if (v8 <= a2 && v9 >= a2)
    {
      *a1 = 1;
      return v3 - 9;
    }
  }

  *a1 = 0;
  if (a2 >= 0.0)
  {
    return v6;
  }

  else
  {
    return v7;
  }
}

void sub_23BE65A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a71, 8);
  _Block_object_dispose(&STACK[0x220], 8);
  _Unwind_Resume(a1);
}

double sub_23BE66320(float64x2_t *a1, uint64_t a2, double a3)
{
  __y = 0.0;
  v5 = modf(a3 + a3, &__y);
  if (__y <= 0.0)
  {
    v13 = a1[1];
    __asm { FMOV            V0.2D, #-0.5 }

    v12 = vmulq_f64(v13, _Q0);
  }

  else
  {
    if (v5 <= 0.0)
    {
      v6 = __y;
    }

    else
    {
      v6 = __y + 1.0;
    }

    v7 = v6;
    v22 = 0uLL;
    v21 = 0uLL;
    v8 = v6 * -0.0523598776 + 1.57079633;
    if (v8 < 0.0)
    {
      v8 = v8 + 6.28318531;
    }

    _ZF = (v7 & 1) == 0;
    v10 = 9;
    if (_ZF)
    {
      v10 = 8;
    }

    NTKSuperEllipseRectGeometryGetRadialPoints(a2, &v21, v22.i64, v8, a1->f64[v10]);
    v11 = vcgtq_f64(v21, v22);
    v12 = vbslq_s8(v11, v22, v21);
    v13 = vsubq_f64(vbslq_s8(v11, v21, v22), v12);
  }

  v18 = v12.f64[1];
  v19 = v13.f64[1];
  *&result = CGRectInset(*v12.f64, a1[5].f64[0] * -0.5, a1[5].f64[0] * -0.5);
  return result;
}

void sub_23BE69240(void *a1@<X1>, uint64_t a2@<X8>)
{
  v14 = a1;
  os_unfair_lock_lock(&unk_27E1DCBC8);
  if (qword_27E1DCBD0)
  {
    v6 = qword_27E1DCBD0 == v14;
  }

  else
  {
    v6 = 0;
  }

  if (!v6 || objc_msgSend_version(v14, v3, v4, v5) != qword_27E1DCBD8)
  {
    qword_27E1DCBD0 = v14;
    qword_27E1DCBD8 = objc_msgSend_version(v14, v3, v4, v5, v14);
    sub_23BE693AC(v14, v15);
    xmmword_27E1DCB90 = v15[12];
    unk_27E1DCBA0 = v15[13];
    xmmword_27E1DCBB0 = v15[14];
    qword_27E1DCBC0 = v16;
    xmmword_27E1DCB50 = v15[8];
    unk_27E1DCB60 = v15[9];
    xmmword_27E1DCB70 = v15[10];
    unk_27E1DCB80 = v15[11];
    xmmword_27E1DCB10 = v15[4];
    unk_27E1DCB20 = v15[5];
    xmmword_27E1DCB30 = v15[6];
    unk_27E1DCB40 = v15[7];
    xmmword_27E1DCAD0 = v15[0];
    unk_27E1DCAE0 = v15[1];
    xmmword_27E1DCAF0 = v15[2];
    unk_27E1DCB00 = v15[3];
  }

  v7 = unk_27E1DCBA0;
  *(a2 + 192) = xmmword_27E1DCB90;
  *(a2 + 208) = v7;
  *(a2 + 224) = xmmword_27E1DCBB0;
  *(a2 + 240) = qword_27E1DCBC0;
  v8 = unk_27E1DCB60;
  *(a2 + 128) = xmmword_27E1DCB50;
  *(a2 + 144) = v8;
  v9 = unk_27E1DCB80;
  *(a2 + 160) = xmmword_27E1DCB70;
  *(a2 + 176) = v9;
  v10 = unk_27E1DCB20;
  *(a2 + 64) = xmmword_27E1DCB10;
  *(a2 + 80) = v10;
  v11 = unk_27E1DCB40;
  *(a2 + 96) = xmmword_27E1DCB30;
  *(a2 + 112) = v11;
  v12 = unk_27E1DCAE0;
  *a2 = xmmword_27E1DCAD0;
  *(a2 + 16) = v12;
  v13 = unk_27E1DCB00;
  *(a2 + 32) = xmmword_27E1DCAF0;
  *(a2 + 48) = v13;
  os_unfair_lock_unlock(&unk_27E1DCBC8);
}

double sub_23BE693AC@<D0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = a1;
  objc_msgSend_screenBounds(v3, v4, v5, v6);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  objc_msgSend_screenCornerRadius(v3, v15, v16, v17);
  v19 = v18;

  v30.origin.x = v8;
  v30.origin.y = v10;
  v30.size.width = v12;
  v30.size.height = v14;
  v31 = CGRectInset(v30, 2.0, 2.0);
  x = v31.origin.x;
  y = v31.origin.y;
  width = v31.size.width;
  height = v31.size.height;
  v23 = v19 + -2.0;
  v24 = v31.size.height * 0.5;
  v25 = v31.size.width * 0.5;
  v26 = 1.57079633 - atan2(v31.size.height * 0.5, v31.size.width * 0.5 - v23);
  v27 = atan2(v24 - v23, v25);
  *a2 = x;
  *(a2 + 8) = y;
  *(a2 + 16) = width;
  *(a2 + 24) = height;
  *(a2 + 32) = v23;
  *(a2 + 40) = v26;
  *(a2 + 48) = 1.57079633 - v27;
  *(a2 + 56) = xmmword_23BE80110;
  *(a2 + 72) = xmmword_23BE80120;
  *(a2 + 88) = xmmword_23BE80130;
  *(a2 + 104) = xmmword_23BE80140;
  *(a2 + 120) = xmmword_23BE80150;
  *(a2 + 136) = xmmword_23BE80160;
  *(a2 + 152) = xmmword_23BE80170;
  *(a2 + 168) = xmmword_23BE80180;
  *(a2 + 184) = xmmword_23BE80190;
  *(a2 + 200) = xmmword_23BE801A0;
  *(a2 + 216) = xmmword_23BE801B0;
  result = 10.0;
  *(a2 + 232) = xmmword_23BE801C0;
  return result;
}

id sub_23BE6952C(uint64_t a1, uint64_t a2, double a3)
{
  v6 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v7 = objc_alloc(MEMORY[0x277CBEAF8]);
  v11 = objc_msgSend_currentLocale(MEMORY[0x277CBEAF8], v8, v9, v10);
  v15 = objc_msgSend_localeIdentifier(v11, v12, v13, v14);
  v18 = objc_msgSend_initWithLocaleIdentifier_(v7, v16, v15, v17);
  objc_msgSend_setLocale_(v6, v19, v18, v20);

  objc_msgSend_setMaximumFractionDigits_(v6, v21, a1, v22);
  objc_msgSend_setNumberStyle_(v6, v23, 1, v24);
  objc_msgSend_setRoundingMode_(v6, v25, a2, v26);
  if (a1)
  {
    objc_msgSend_setRoundingIncrement_(v6, v27, &unk_284EA1710, v28);
  }

  else
  {
    objc_msgSend_setRoundingIncrement_(v6, v27, &unk_284EA1700, v28);
  }

  v32 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v29, v30, v31, a3);
  v35 = objc_msgSend_stringFromNumber_(v6, v33, v32, v34);

  return v35;
}

void sub_23BE6965C(CGContextRef c, CGColor *a2, int a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  if (!a3)
  {
    goto LABEL_12;
  }

    ;
  }

  while (a4 < 0.0)
  {
    a4 = a4 + 6.28318531;
  }

  if (a4 > 1.49225651 && a4 < 1.64933614)
  {
    CGContextSetFillColorWithColor(c, a2);
    v17 = a9;
    v18 = a9;

    v15 = a5 - a9 * 0.5;
    v16 = a6 - a9 * 0.5;
    CGContextFillEllipseInRect(c, *(&v17 - 2));
  }

  else
  {
LABEL_12:
    CGContextSetStrokeColorWithColor(c, a2);
    CGContextSetLineWidth(c, a9);
    CGContextMoveToPoint(c, a5, a6);
    CGContextAddLineToPoint(c, a7, a8);

    CGContextStrokePath(c);
  }
}

void sub_23BE69794(CGContext *a1, uint64_t a2, void *a3, const __CFArray *a4, const __CFArray *a5, void *a6, void *a7, void *a8, double a9, double a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, uint64_t a20, void *a21, uint64_t a22, char a23, char a24)
{
  v29 = a3;
  v175 = a21;
  v30 = *(a22 + 32) - *(a22 + 40);
  v31 = *a22 - *(a22 + 8);
  v142 = v31;
  if (a9 >= 0.0)
  {
    v32 = a9;
  }

  else
  {
    v32 = 0.0;
  }

  if (v32 <= v30)
  {
    v33 = v32;
  }

  else
  {
    v33 = *(a22 + 32) - *(a22 + 40);
  }

  if (a10 >= 0.0)
  {
    v34 = a10;
  }

  else
  {
    v34 = 0.0;
  }

  if (v34 > v30)
  {
    v34 = *(a22 + 32) - *(a22 + 40);
  }

  v176 = v34;
  v157 = v33;
  if (a23)
  {
    v35 = v33;
  }

  else
  {
    v35 = 0.0;
  }

  v36 = *(a2 + 96);
  v167 = a19;
  v159 = a18;
  v146 = a17;
  v144 = a16;
  v161 = a15;
  v163 = a14;
  v37 = a13;
  v38 = a12;
  v39 = a11;
  v40 = a8;
  v41 = a7;
  v42 = a6;
  NTKSuperEllipseRectGeometryGetPositionAtAngle(v29, 3.14159265);
  v44 = v43;
  v160 = v29;
  NTKSuperEllipseRectGeometryGetPositionAtAngle(v29, v36);
  v46 = v44 - v45;
  v47 = v45 + v45;
  v150 = v31 / 3.2808399 * (v45 + v45) / v30;
  v148 = *(a22 + 64);
  v48 = 1.0;
  if (v148 == 2)
  {
    v48 = -1.0;
    v46 = v44 + v44 - (v44 - v45);
  }

  v172 = v48;
  v174 = v46;
  if (v148 == 2)
  {
    v45 = v44 + v44 - v45;
  }

  v158 = v45;
  v49 = v42;
  v170 = objc_msgSend_CGColor(v49, v50, v51, v52);

  v53 = v41;
  v153 = objc_msgSend_CGColor(v53, v54, v55, v56);

  v57 = v40;
  v152 = objc_msgSend_CGColor(v57, v58, v59, v60);

  v61 = v39;
  v151 = objc_msgSend_CGColor(v61, v62, v63, v64);

  v65 = v38;
  v166 = objc_msgSend_CGColor(v65, v66, v67, v68);

  v69 = v37;
  v165 = objc_msgSend_CGColor(v69, v70, v71, v72);

  v73 = v163;
  v77 = objc_msgSend_CGColor(v73, v74, v75, v76);

  v78 = v161;
  v164 = objc_msgSend_CGColor(v78, v79, v80, v81);

  v82 = v144;
  v162 = objc_msgSend_CGColor(v82, v83, v84, v85);

  v86 = v146;
  v135 = objc_msgSend_CGColor(v86, v87, v88, v89);

  v90 = v159;
  color = objc_msgSend_CGColor(v90, v91, v92, v93);

  v94 = v167;
  v147 = objc_msgSend_CGColor(v94, v95, v96, v97);

  v168 = *(a2 + 104);
  v98 = *(a2 + 120);
  v99 = *(a2 + 128);
  v143 = *(a2 + 112);
  v145 = *(a2 + 136);
  MidX = CGRectGetMidX(*a2);
  MidY = CGRectGetMidY(*a2);
  CGContextSaveGState(a1);
  CGContextTranslateCTM(a1, MidX, MidY);
  CGContextSetLineCap(a1, kCGLineCapRound);
  CGContextSetLineWidth(a1, v99);
  v102 = *(a22 + 16);
  v140 = *(a22 + 24);
  v139 = *(a22 + 28);
  v103 = (v142 / v102);
  v138 = v103;
  LODWORD(v103) = vcvtpd_u64_f64(v176 * 3.2808399 / v102);
  v137 = v103;
  LODWORD(v103) = vcvtpd_u64_f64(v35 * 3.2808399 / v102);
  v136 = v103;
  v141 = *(a22 + 48);
  if (a20)
  {
    v104 = v175;
    v108 = objc_msgSend_CGColor(v104, v105, v106, v107);
    v109 = sub_23BE6A178(v29, 0, *(a2 + 104) + *(a2 + 136) * 0.5, *(a2 + 136) * 0.5, v158, -(v47 * (v35 / v30)));
    CGContextSaveGState(a1);
    CGContextAddPath(a1, v109);
    CGContextClosePath(a1);
    CGContextScaleCTM(a1, -1.0, 1.0);
    CGContextAddPath(a1, v109);
    CGContextClosePath(a1);
    CGContextSetFillColorWithColor(a1, v108);
    CGContextFillPath(a1);
    CGContextRestoreGState(a1);
    CGPathRelease(v109);
  }

  v110 = *(a2 + 168);
  ValueAtIndex = CFArrayGetValueAtIndex(a4, 0);
  v112 = CFArrayGetValueAtIndex(a4, 1);
  v113 = CFArrayGetValueAtIndex(a5, 0);
  v114 = CFArrayGetValueAtIndex(a5, 1);
  theArraya = v114;
  v115 = v148 == 2;
  v116 = v148 != 2;
  v149 = v116;
  v117 = v115;
  if (v115)
  {
    v118 = ValueAtIndex;
  }

  else
  {
    v118 = v113;
  }

  if (v115)
  {
    v119 = v112;
  }

  else
  {
    v119 = v114;
  }

  v120 = sub_23BE69FC0(v118);
  v121 = sub_23BE69FC0(v119);
  if (v120 < v121)
  {
    v121 = v120;
  }

  if (v121 >= -0.25)
  {
    v122 = 0.0;
  }

  else
  {
    v122 = 0.0 - v121;
  }

  sub_23BE6A688(a1, v160, v147, ValueAtIndex, 0, v117, v174 - v172 * v110, v122);
  *&v132 = v77;
  *(&v132 + 1) = v164;
  v123 = sub_23BE6A028(a1, v160, v170, v153, v152, v151, v166, v165, v168, v143, v98, v172 * v150, v174, v132, v162, v138, v137, v136, v140, v139);
  sub_23BE6A688(a1, v160, v147, v113, 0, v116, v174 + v172 * (v110 + v123), v122);
  v125 = *(a22 + 56);
  v124 = *(a22 + 60);
  LODWORD(v119) = vcvtpd_u64_f64(v35 / v141);
  sub_23BE6A688(a1, v160, v147, v112, 2, v117, v158 + v172 * v110, v122);
  *&v133 = v77;
  *(&v133 + 1) = v164;
  v126 = sub_23BE6A028(a1, v160, v170, v153, v152, v151, v166, v165, v168, v143, v98, -(v172 * v47), v158, v133, v162, (v30 / v141), __SPAIR64__(HIDWORD(v160), vcvtpd_u64_f64(v176 / v141)), v119, v125, v124);
  sub_23BE6A688(a1, v160, v147, theArraya, 2, v149, v158 - v172 * (v110 + v126), v122);
  CGContextSetLineWidth(a1, *&v145);
  v177 = 0.0;
  v178[0] = 0.0;
  if (vabdd_f64(v176, v157) < 0.5)
  {
    v127 = a23;
  }

  else
  {
    v127 = 0;
  }

  if (a24 && (v127 & 1) == 0)
  {
    v128 = v174 + v172 * (v176 / v30 * v47);
    CGContextSetStrokeColorWithColor(a1, color);
    NTKSuperEllipseRectGeometryGetXYAtPosition(v160, v178, &v177, v128);
    PathRotationAtPosition = NTKSuperEllipseRectGeometryGetPathRotationAtPosition(v160, v128);
    sub_23BE6AC24(a1, PathRotationAtPosition, v178[0], v177, 0.0, v168);
    sub_23BE6AC24(a1, 3.14159265 - PathRotationAtPosition, -v178[0], v177, 0.0, v168);
  }

  if (a23)
  {
    v130 = v174 + v172 * (v157 / v30 * v47);
    CGContextSetStrokeColorWithColor(a1, v135);
    NTKSuperEllipseRectGeometryGetXYAtPosition(v160, v178, &v177, v130);
    v131 = NTKSuperEllipseRectGeometryGetPathRotationAtPosition(v160, v130);
    sub_23BE6AC24(a1, v131, v178[0], v177, 0.0, v168);
    sub_23BE6AC24(a1, 3.14159265 - v131, -v178[0], v177, 0.0, v168);
  }

  CGContextRestoreGState(a1);
}

CGFloat sub_23BE69FC0(const __CTLine *a1)
{
  GlyphRuns = CTLineGetGlyphRuns(a1);
  ValueAtIndex = CFArrayGetValueAtIndex(GlyphRuns, 0);
  Attributes = CTRunGetAttributes(ValueAtIndex);
  Value = CFDictionaryGetValue(Attributes, *MEMORY[0x277CC4838]);
  GlyphCount = CTRunGetGlyphCount(ValueAtIndex);

  return sub_23BE6A5C0(ValueAtIndex, Value, GlyphCount);
}

double sub_23BE6A028(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, __int128 a14, uint64_t a15, unint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v30 = a2;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = sub_23BE6AB20;
  v36[3] = &unk_278B9C8C0;
  v39 = a3;
  v40 = a4;
  v41 = a5;
  v42 = a17;
  v43 = a6;
  v44 = a7;
  v45 = a8;
  v46 = a14;
  v47 = a15;
  v48 = a19;
  v49 = a20;
  v50 = a9;
  v51 = a10;
  v52 = a11;
  v53 = a1;
  v37 = v30;
  v38 = a18;
  v31 = v30;
  v32 = sub_23BE6A9CC(v31, a16, v36, a12, a13);

  return v32;
}

CGPath *sub_23BE6A178(void *a1, int a2, double a3, double a4, double a5, double a6)
{
  v11 = a1;
  v45 = a6;
  if (a6 < 0.0)
  {
    v12 = -a6;
  }

  else
  {
    v12 = a6;
  }

  v13 = malloc_type_calloc(vcvtpd_u64_f64(v12 * 0.25) + 4, 0x10uLL, 0x1000040451B5BE8uLL);
  Mutable = CGPathCreateMutable();
  x = 0.0;
  v48 = 0.0;
  v46 = 0uLL;
  v43 = a4;
  v44 = a5;
  v42 = a3;
  sub_23BE6A50C(a5, a3, a4, Mutable, v11, &x, &v46);
  CGPathMoveToPoint(Mutable, 0, x, v48);
  *v13 = v46;
  v16 = v13 + 2;
  if (v12 > 4.0)
  {
    v17 = 0;
    v18 = 0;
    v19 = *(&v46 + 1);
    v20 = *&v46;
    v21 = 4.0;
    v23 = x;
    v22 = v48;
    do
    {
      v24 = -v21;
      if (v45 >= 0.0)
      {
        v24 = v21;
      }

      sub_23BE6A50C(v24 + v44, v42, v43, v15, v11, &x, &v46);
      v25 = x;
      v26 = vabdd_f64(x, v23);
      if (v26 >= 0.25)
      {
        if (v17)
        {
          CGPathAddLineToPoint(Mutable, 0, v23, v22);
          v25 = x;
        }

        v22 = v48;
        CGPathAddLineToPoint(Mutable, 0, v25, v48);
        v23 = x;
      }

      else
      {
        v22 = v48;
        v23 = x;
      }

      v27 = vabdd_f64(*&v46, v20);
      if (v27 >= 0.25)
      {
        if (v18)
        {
          *v16 = v20;
          *(v16 + 1) = v19;
          v16 += 2;
        }

        *v16 = v46;
        v16 += 2;
        v19 = *(&v46 + 1);
        v20 = *&v46;
      }

      else
      {
        v19 = *(&v46 + 1);
        v20 = *&v46;
      }

      v21 = v21 + 4.0;
      v17 = v26 < 0.25;
      v18 = v27 < 0.25;
    }

    while (v21 < v12);
    if (v26 < 0.25)
    {
      CGPathAddLineToPoint(Mutable, 0, v23, v22);
    }

    if (v27 < 0.25)
    {
      *v16 = v20;
      *(v16 + 1) = v19;
      v16 += 2;
    }
  }

  v28 = -v12;
  if (v45 >= 0.0)
  {
    v28 = v45;
  }

  v29 = v28 + v44;
  sub_23BE6A50C(v28 + v44, v42, v43, v15, v11, &x, &v46);
  CGPathAddLineToPoint(Mutable, 0, x, v48);
  if (a2)
  {
    v30 = (x + *&v46) * 0.5;
    v31 = (v48 + *(&v46 + 1)) * 0.5;
    v32 = sqrt((*(&v46 + 1) - v48) * (*(&v46 + 1) - v48) + (*&v46 - x) * (*&v46 - x));
    PathRotationAtPosition = NTKSuperEllipseRectGeometryGetPathRotationAtPosition(v11, v29);
    CGPathAddArc(Mutable, 0, v30, v31, v32 * 0.5, PathRotationAtPosition + 3.14159265, PathRotationAtPosition, v45 >= 0.0);
  }

  *v16 = v46;
  while (v16 >= v13)
  {
    v34 = *v16;
    v35 = v16[1];
    v16 -= 2;
    CGPathAddLineToPoint(Mutable, 0, v34, v35);
  }

  free(v13);
  if (a2)
  {
    sub_23BE6A50C(v44, v42, v43, v36, v11, &x, &v46);
    v37 = (x + *&v46) * 0.5;
    v38 = (v48 + *(&v46 + 1)) * 0.5;
    v39 = sqrt((*(&v46 + 1) - v48) * (*(&v46 + 1) - v48) + (*&v46 - x) * (*&v46 - x));
    v40 = NTKSuperEllipseRectGeometryGetPathRotationAtPosition(v11, v44);
    CGPathAddArc(Mutable, 0, v37, v38, v39 * 0.5, v40, v40 + 3.14159265, v45 >= 0.0);
  }

  return Mutable;
}

double sub_23BE6A50C(double a1, double a2, double a3, uint64_t a4, void *a5, double *a6, double *a7)
{
  v19 = 0.0;
  v20 = 0.0;
  v12 = a5;
  NTKSuperEllipseRectGeometryGetXYAtPosition(v12, &v20, &v19, a1);
  PathRotationAtPosition = NTKSuperEllipseRectGeometryGetPathRotationAtPosition(v12, a1);

  v14 = __sincos_stret(PathRotationAtPosition);
  v16 = v19;
  v15 = v20;
  v17 = v19 - v14.__sinval * a2;
  *a6 = v20 - v14.__cosval * a2;
  a6[1] = v17;
  result = v14.__sinval * a3 + v16;
  *a7 = v15 + v14.__cosval * a3;
  a7[1] = result;
  return result;
}

CGFloat sub_23BE6A5C0(uint64_t a1, const __CTFont *a2, CFIndex a3)
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    return 0.0;
  }

  v5 = MEMORY[0x28223BE20]();
  v7 = (v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10.location = 0;
  CTRunGetGlyphs(v5, v10, v7);
  BoundingRectsForGlyphs = CTFontGetBoundingRectsForGlyphs(a2, kCTFontOrientationDefault, v7, 0, a3);
  return BoundingRectsForGlyphs.origin.y;
}

void sub_23BE6A688(CGContext *a1, void *a2, CGColor *a3, const __CTLine *a4, uint64_t a5, int a6, double a7, double a8)
{
  v15 = a2;
  theArray = CTLineGetGlyphRuns(a4);
  Count = CFArrayGetCount(theArray);
  descent = 0.0;
  ascent[0] = 0.0;
  leading = 0.0;
  TypographicBounds = CTLineGetTypographicBounds(a4, ascent, &descent, &leading);
  v43 = a8;
  v17 = a8 + ascent[0] * 0.5 * 0.5;
  v50 = 0.0;
  v51 = 0.0;
  NTKSuperEllipseRectGeometryGetXYAtPosition(v15, &v51, &v50, a7);
  v18 = NTKSuperEllipseRectGeometryTravelRatioForInsetAtPosition(v15, a7, v17);
  if (a5)
  {
    v19 = TypographicBounds * v18;
    if (a5 != 2)
    {
      v19 = v19 * 0.5;
    }
  }

  else
  {
    v19 = 0.0;
  }

  v48 = v50;
  v49 = v51;
  if (Count >= 1)
  {
    v20 = 0;
    if (a6)
    {
      v19 = -v19;
    }

    v21 = v19 + a7;
    v22 = *MEMORY[0x277CC4838];
    v23 = -v18;
    v24 = 0.0;
    v25 = 0.0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v20);
      Attributes = CTRunGetAttributes(ValueAtIndex);
      Value = CFDictionaryGetValue(Attributes, v22);
      GlyphCount = CTRunGetGlyphCount(ValueAtIndex);
      buffer.x = 0.0;
      buffer.y = 0.0;
      v55.location = 0;
      v55.length = 1;
      CTRunGetPositions(ValueAtIndex, v55, &buffer);
      x = buffer.x;
      if (GlyphCount < 1)
      {
        v33 = v24;
      }

      else
      {
        v31 = 0;
        v32 = buffer.x - v25;
        do
        {
          glyphs = 0;
          v45.x = 0.0;
          v45.y = 0.0;
          v56.location = v31;
          v56.length = 1;
          CTRunGetGlyphs(ValueAtIndex, v56, &glyphs);
          v57.location = v31;
          v57.length = 1;
          v33 = CTRunGetTypographicBounds(ValueAtIndex, v57, 0, 0, 0);
          v58.location = v31;
          v58.length = 1;
          CTRunGetPositions(ValueAtIndex, v58, &v45);
          v34 = (v24 + v33) * v23 * 0.5;
          if (!v31)
          {
            v34 = v34 + v23 * v32;
          }

          if (a6)
          {
            v35 = -v34;
          }

          else
          {
            v35 = v34;
          }

          NTKSuperEllipseRectGeometryGetXYAfterTravelFromPosition(v15, &v49, &v48, v21, v35);
          if (v35 < 0.0)
          {
            v36 = -v36;
          }

          v21 = v21 + v36;
          v37 = NTKSuperEllipseRectGeometryGetPathRotationAtPosition(v15, v21) + -1.57079633;
          if (a6)
          {
            v38 = v43;
            v37 = v37 + -3.14159265;
            v39 = -0.5;
          }

          else
          {
            v39 = -0.5;
            v38 = (ascent[0] + descent) * -0.5 - v43;
          }

          x = x + v33;
          if (fabs(v37) >= 0.02)
          {
            v40 = v37;
          }

          else
          {
            v40 = 0.0;
          }

          positions.x = v33 * v39;
          positions.y = v38;
          CGContextSaveGState(a1);
          CGContextTranslateCTM(a1, v49, v48);
          CGContextRotateCTM(a1, v40);
          CGContextSetFillColorWithColor(a1, a3);
          CTFontDrawGlyphs(Value, &glyphs, &positions, 1uLL, a1);
          CGContextRestoreGState(a1);
          ++v31;
          v24 = v33;
        }

        while (GlyphCount != v31);
      }

      ++v20;
      v24 = v33;
      v25 = x;
    }

    while (v20 != Count);
  }
}

double sub_23BE6A9CC(void *a1, unint64_t a2, void *a3, double a4, double a5)
{
  v9 = a1;
  v10 = a3;
  v24 = 0;
  v25 = 0;
  NTKSuperEllipseRectGeometryGetXYAtPosition(v9, &v25, &v24, a5);
  if (a4 >= 0.0)
  {
    v11 = a4;
  }

  else
  {
    v11 = -a4;
  }

  v12 = -0.0;
  v13 = 0.0;
  if (a4 >= 0.0)
  {
    v12 = 0.0;
  }

  v14 = v12 + a5;
  v10[2](v10, 0, v12 + a5, *&v25, *&v24);
  if (a2)
  {
    v15 = a2;
    v16 = -a2;
    v17 = 1;
    do
    {
      v18 = -(v11 * v17 / v15 - v13);
      if (a4 >= 0.0)
      {
        v18 = v11 * v17 / v15 - v13;
      }

      v22 = v24;
      v23 = v25;
      NTKSuperEllipseRectGeometryGetXYAfterTravelFromPosition(v9, &v23, &v22, v14, v18);
      v13 = v13 + v19;
      v24 = v22;
      v25 = v23;
      v20 = -v13;
      if (a4 >= 0.0)
      {
        v20 = v13;
      }

      v14 = v20 + a5;
      (v10[2])(v10, v17++, v20 + a5);
    }

    while (v16 + v17 != 1);
  }

  return v13;
}

void sub_23BE6AB20(uint64_t a1, unint64_t a2, double a3, double a4, double a5)
{
  if (*(a1 + 40) <= a2)
  {
    v11 = 104;
    if (*(a1 + 72) > a2)
    {
      v11 = 80;
    }

    v10 = 112;
    if (*(a1 + 72) > a2)
    {
      v10 = 88;
    }

    v9 = 120;
    if (*(a1 + 72) > a2)
    {
      v9 = 96;
    }
  }

  else
  {
    v9 = 64;
    v10 = 56;
    v11 = 48;
  }

  if (a2 % *(a1 + 128))
  {
    if (a2 % *(a1 + 136))
    {
      v12 = *(a1 + v9);
      v13 = (a1 + 160);
    }

    else
    {
      v12 = *(a1 + v10);
      v13 = (a1 + 152);
    }
  }

  else
  {
    v13 = (a1 + 144);
    v12 = *(a1 + v11);
  }

  v14 = *v13;
  CGContextSetStrokeColorWithColor(*(a1 + 168), v12);
  v15 = *(a1 + 168);
  PathRotationAtPosition = NTKSuperEllipseRectGeometryGetPathRotationAtPosition(*(a1 + 32), a3);

  sub_23BE6AC24(v15, PathRotationAtPosition, a4, a5, 0.0, v14);
}

void sub_23BE6AC24(CGContext *a1, double a2, double a3, double a4, double a5, double a6)
{
  v11 = __sincos_stret(a2 + 3.14159265);
  v12 = a3 + a5 * v11.__cosval;
  v13 = a4 + a5 * v11.__sinval;
  v14 = a5 + a6;
  v15 = a3 + (a5 + a6) * v11.__cosval;
  v16 = a4 + v14 * v11.__sinval;
  CGContextMoveToPoint(a1, v12, v13);
  CGContextAddLineToPoint(a1, v15, v16);

  CGContextStrokePath(a1);
}

double sub_23BE6ACBC(CGContext *a1, double *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, double a7, double a8)
{
  v15 = a3;
  v16 = a6;
  v17 = a2[23];
  v18 = a2[24];
  v19 = a2[25];
  CGContextSetLineCap(a1, kCGLineCapRound);
  CGContextSetLineWidth(a1, v19);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_23BE6B57C;
  v24[3] = &unk_278B9C910;
  v26 = v15;
  v27 = a4;
  v28 = v17;
  v29 = a5;
  v30 = v18;
  v31 = (v17 - v18) * 0.5;
  v32 = a1;
  v25 = v16;
  v20 = v15;
  v21 = v16;
  v22 = sub_23BE6A9CC(v20, 0x30uLL, v24, a7, a8);

  return v22;
}

uint64_t sub_23BE6AE04(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23BE6AE1C(uint64_t a1, void *a2)
{
  v4 = a2;
  v7 = *(*(a1 + 32) + 8);
  v9 = *(v7 + 40);
  v8 = (v7 + 40);
  v28 = v4;
  if (v9)
  {
    objc_msgSend_floatValue(v4, v4, v5, v6);
    v11 = v10;
    objc_msgSend_floatValue(*(*(*(a1 + 32) + 8) + 40), v12, v13, v14);
    if (v11 >= v18)
    {
      goto LABEL_5;
    }

    v8 = (*(*(a1 + 32) + 8) + 40);
  }

  objc_storeStrong(v8, a2);
LABEL_5:
  v19 = *(*(a1 + 40) + 8);
  v21 = *(v19 + 40);
  v20 = (v19 + 40);
  if (v21)
  {
    objc_msgSend_floatValue(v28, v15, v16, v17);
    v23 = v22;
    objc_msgSend_floatValue(*(*(*(a1 + 40) + 8) + 40), v24, v25, v26);
    if (v23 <= v27)
    {
      goto LABEL_9;
    }

    v20 = (*(*(a1 + 40) + 8) + 40);
  }

  objc_storeStrong(v20, a2);
LABEL_9:
}

id sub_23BE6AF00(double a1, uint64_t a2, void *a3)
{
  v11 = 0.0;
  v12 = 0.0;
  v9 = 0.0;
  v10 = 0.0;
  objc_msgSend_getRed_green_blue_alpha_(a3, a3, &v12, &v11, &v10, &v9);
  v7 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v4, v5, v6, v12, v11, v10, v9 * a1);

  return v7;
}

void sub_23BE6AF78(CGContext *a1, float64x2_t *a2, void *a3, void *a4, double a5, double a6)
{
  __asm { FMOV            V2.2D, #0.5 }

  v15 = vmulq_f64(a2[13], _Q2);
  v16 = a2[11].f64[1] - v15.f64[0] + v15.f64[1];
  v17 = v15.f64[1] - v15.f64[0];
  v18 = a4;
  v19 = sub_23BE6A178(a3, 0, v16, v17, a5, a6);
  CGContextSaveGState(a1);
  CGContextAddPath(a1, v19);
  CGContextClip(a1);
  CGContextClosePath(a1);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v21 = CGGradientCreateWithColors(DeviceRGB, v18, 0);

  CGColorSpaceRelease(DeviceRGB);
  BoundingBox = CGPathGetBoundingBox(v19);
  x = BoundingBox.origin.x;
  y = BoundingBox.origin.y;
  width = BoundingBox.size.width;
  height = BoundingBox.size.height;
  MaxY = CGRectGetMaxY(BoundingBox);
  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  v29.y = CGRectGetMinY(v31);
  v28.x = 0.0;
  v29.x = 0.0;
  v28.y = MaxY;
  CGContextDrawLinearGradient(a1, v21, v28, v29, 0);
  CGGradientRelease(v21);
  CGContextRestoreGState(a1);

  CGPathRelease(v19);
}

void sub_23BE6B0D4(CGContext *a1, double *a2, void *a3, void *a4, void *a5, void *a6, double a7, double a8, double a9)
{
  v128 = *MEMORY[0x277D85DE8];
  v115 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v111 = v16;
  obj = objc_msgSend_sortedArrayUsingSelector_(v16, v20, sel_compare_, v21);
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v22, &v120, v127, 16);
  if (v23)
  {
    v27 = v23;
    v113 = *v121;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v121 != v113)
        {
          objc_enumerationMutation(obj);
        }

        objc_msgSend_floatValue(*(*(&v120 + 1) + 8 * i), v24, v25, v26);
        v30 = ((v29 * -24.0) + 24.0);
        v34 = objc_msgSend_lastObject(v19, v31, v32, v33);

        if (v34)
        {
          v38 = objc_msgSend_lastObject(v19, v35, v36, v37);
          v42 = objc_msgSend_lastObject(v38, v39, v40, v41);
          v46 = objc_msgSend_integerValue(v42, v43, v44, v45);

          if (v46 == v30)
          {
            continue;
          }

          v47 = v46 - v30;
          if (v46 - v30 < 0)
          {
            v47 = v30 - v46;
          }

          if (v47 > 2)
          {
            v63 = objc_alloc(MEMORY[0x277CBEB18]);
            v48 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v64, v30, v65);
            v125 = v48;
            v51 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v66, &v125, 1);
            v69 = objc_msgSend_initWithArray_(v63, v67, v51, v68);
            objc_msgSend_addObject_(v19, v70, v69, v71);
          }

          else
          {
            v48 = objc_msgSend_lastObject(v19, v24, v25, v26);
            v51 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v49, v30, v50);
            objc_msgSend_addObject_(v48, v52, v51, v53);
          }
        }

        else
        {
          v54 = objc_alloc(MEMORY[0x277CBEB18]);
          v48 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v55, v30, v56);
          v126 = v48;
          v51 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v57, &v126, 1);
          v60 = objc_msgSend_initWithArray_(v54, v58, v51, v59);
          objc_msgSend_addObject_(v19, v61, v60, v62);
        }
      }

      v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v24, &v120, v127, 16);
    }

    while (v27);
  }

  v72 = a2[23];
  v73 = a2[26];
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v74 = v19;
  v76 = objc_msgSend_countByEnumeratingWithState_objects_count_(v74, v75, &v116, v124, 16);
  if (v76)
  {
    v80 = v76;
    v81 = v73 * -0.5;
    v82 = v72 + v81;
    v83 = *v117;
    v84 = a8 * a9;
    do
    {
      for (j = 0; j != v80; ++j)
      {
        if (*v117 != v83)
        {
          objc_enumerationMutation(v74);
        }

        v86 = *(*(&v116 + 1) + 8 * j);
        v87 = objc_msgSend_firstObject(v86, v77, v78, v79);
        v91 = objc_msgSend_integerValue(v87, v88, v89, v90);

        v95 = objc_msgSend_lastObject(v86, v92, v93, v94);
        v99 = objc_msgSend_integerValue(v95, v96, v97, v98);

        v100 = sub_23BE6A178(v115, 1, v82, v81, a7 + v84 * (v91 / 48.0), a7 + v84 * (v99 / 48.0) - (a7 + v84 * (v91 / 48.0)));
        CGContextSaveGState(a1);
        CGContextAddPath(a1, v100);
        CGContextClosePath(a1);
        CGContextSetLineWidth(a1, a2[27]);
        v101 = v17;
        v105 = objc_msgSend_CGColor(v101, v102, v103, v104);
        CGContextSetFillColorWithColor(a1, v105);
        v106 = v18;
        v110 = objc_msgSend_CGColor(v106, v107, v108, v109);
        CGContextSetStrokeColorWithColor(a1, v110);
        CGContextDrawPath(a1, kCGPathFillStroke);
        CGContextRestoreGState(a1);
        CGPathRelease(v100);
      }

      v80 = objc_msgSend_countByEnumeratingWithState_objects_count_(v74, v77, &v116, v124, 16);
    }

    while (v80);
  }
}

void sub_23BE6B57C(uint64_t a1, const char *a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7)
{
  if (objc_msgSend_containsIndex_(*(a1 + 32), a2, a2, a7))
  {
    v11 = (a1 + 48);
    v12 = (a1 + 56);
    v13 = 0.0;
  }

  else
  {
    v11 = (a1 + 64);
    v12 = (a1 + 72);
    v13 = *(a1 + 80);
  }

  v14 = *v12;
  CGContextSetStrokeColorWithColor(*(a1 + 88), *v11);
  v15 = *(a1 + 88);
  PathRotationAtPosition = NTKSuperEllipseRectGeometryGetPathRotationAtPosition(*(a1 + 40), a3);

  sub_23BE6AC24(v15, PathRotationAtPosition, a4, a5, v13, v14);
}

id sub_23BE6B630()
{
  if (qword_27E1DCBE8 != -1)
  {
    sub_23BE7D30C();
  }

  v1 = qword_27E1DCBE0;

  return v1;
}

void sub_23BE6B674(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v17[3] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_systemFontOfSize_weight_(MEMORY[0x277CBBB08], a2, a3, a4, 10.0, *MEMORY[0x277D74420]);
  v8 = objc_msgSend_fontDescriptor(v4, v5, v6, v7);
  v9 = *MEMORY[0x277CC4918];
  v16[0] = *MEMORY[0x277D74338];
  v16[1] = v9;
  v17[0] = MEMORY[0x277CBEBF8];
  v17[1] = &unk_284EA1720;
  v16[2] = *MEMORY[0x277CC4988];
  v17[2] = &unk_284EA1068;
  v11 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v10, v17, v16, 3);
  v14 = objc_msgSend_fontDescriptorByAddingAttributes_(v8, v12, v11, v13);
  v15 = qword_27E1DCBE0;
  qword_27E1DCBE0 = v14;
}

id sub_23BE6B794()
{
  if (qword_27E1DCBF8 != -1)
  {
    sub_23BE7D320();
  }

  v1 = qword_27E1DCBF0;

  return v1;
}

void sub_23BE6B7D8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v17[3] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_monospacedDigitSystemFontOfSize_weight_(MEMORY[0x277CBBB08], a2, a3, a4, 10.0, *MEMORY[0x277D74420]);
  v8 = objc_msgSend_fontDescriptor(v4, v5, v6, v7);
  v9 = *MEMORY[0x277CC4918];
  v16[0] = *MEMORY[0x277D74338];
  v16[1] = v9;
  v17[0] = MEMORY[0x277CBEBF8];
  v17[1] = &unk_284EA1720;
  v16[2] = *MEMORY[0x277CC4988];
  v17[2] = &unk_284EA1068;
  v11 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v10, v17, v16, 3);
  v14 = objc_msgSend_fontDescriptorByAddingAttributes_(v8, v12, v11, v13);
  v15 = qword_27E1DCBF0;
  qword_27E1DCBF0 = v14;
}

id sub_23BE6B8F8(double a1)
{
  v2 = MEMORY[0x277CBBB08];
  v3 = objc_opt_class();
  v7 = objc_msgSend__foghornFontDescriptor(v3, v4, v5, v6);
  v10 = objc_msgSend_fontWithDescriptor_size_(v2, v8, v7, v9, a1);

  return v10;
}

id sub_23BE6B968()
{
  if (qword_27E1DCC08 != -1)
  {
    sub_23BE7D334();
  }

  v1 = qword_27E1DCC00;

  return v1;
}

void sub_23BE6B9AC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v17[3] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_systemFontOfSize_weight_(MEMORY[0x277CBBB08], a2, a3, a4, 10.0, *MEMORY[0x277D74420]);
  v8 = objc_msgSend_fontDescriptor(v4, v5, v6, v7);
  v9 = *MEMORY[0x277CC4918];
  v16[0] = *MEMORY[0x277D74338];
  v16[1] = v9;
  v17[0] = MEMORY[0x277CBEBF8];
  v17[1] = &unk_284EA1720;
  v16[2] = *MEMORY[0x277CC4988];
  v17[2] = &unk_284EA1068;
  v11 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v10, v17, v16, 3);
  v14 = objc_msgSend_fontDescriptorByAddingAttributes_(v8, v12, v11, v13);
  v15 = qword_27E1DCC00;
  qword_27E1DCC00 = v14;
}

id sub_23BE6BACC(double a1)
{
  v2 = MEMORY[0x277CBBB08];
  v3 = objc_opt_class();
  v7 = objc_msgSend__foghornSimpleComplicationFontDescriptor(v3, v4, v5, v6);
  v10 = objc_msgSend_fontWithDescriptor_size_(v2, v8, v7, v9, a1);

  return v10;
}

id sub_23BE6BB40(double a1)
{
  v2 = MEMORY[0x277CBBB08];
  v3 = objc_opt_class();
  v7 = objc_msgSend__foghornMonospacedFontDescriptor(v3, v4, v5, v6);
  v10 = objc_msgSend_fontWithDescriptor_size_(v2, v8, v7, v9, a1);

  return v10;
}

double _preferencesGetAppDoubleValue(const __CFString *a1, const __CFString *a2, BOOL *a3)
{
  v4 = CFPreferencesCopyAppValue(a1, a2);
  if (!v4)
  {
    v8 = 0;
    DoubleValue = NAN;
    if (!a3)
    {
      return DoubleValue;
    }

    goto LABEL_12;
  }

  v5 = v4;
  v6 = CFGetTypeID(v4);
  if (v6 == CFStringGetTypeID())
  {
    DoubleValue = CFStringGetDoubleValue(v5);
    v8 = 1;
  }

  else if (v6 == CFNumberGetTypeID())
  {
    valuePtr = 0.0;
    Value = CFNumberGetValue(v5, kCFNumberDoubleType, &valuePtr);
    v8 = Value != 0;
    if (Value)
    {
      DoubleValue = valuePtr;
    }

    else
    {
      DoubleValue = NAN;
    }
  }

  else
  {
    v8 = 0;
    DoubleValue = NAN;
  }

  CFRelease(v5);
  if (a3)
  {
LABEL_12:
    *a3 = v8;
  }

  return DoubleValue;
}

CFIndex _preferencesGetAppIntegerValueWithDefault(const __CFString *a1, const __CFString *a2, uint64_t a3)
{
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppIntegerValue(a1, a2, &keyExistsAndHasValidFormat);
  if (!keyExistsAndHasValidFormat)
  {
    return a3;
  }

  return result;
}

double sub_23BE6BD48(uint64_t a1)
{
  if (MEMORY[0x23EEBFCF0]())
  {
    if (qword_27E1DCC78 != -1)
    {
      sub_23BE7D348();
    }

    v2 = 0x27E1DC000;
    v3 = 0x27E1DC000;
    v4 = 0x27E1DC000;
    v5 = 0x27E1DC000;
    v6 = 0x27E1DC000;
    v7 = 0x27E1DC000;
    if (byte_27E1DCC10 == 1)
    {
      v8 = qword_27E1DCC70;
    }

    else
    {
      v10 = *MEMORY[0x277D2BF40];
      byte_27E1DCC11 = CFPreferencesGetAppBooleanValue(@"NTKFoghornDepthDemo", *MEMORY[0x277D2BF40], 0) != 0;
      byte_27E1DCC28 = CFPreferencesGetAppBooleanValue(@"NTKFoghornElevationDemo", v10, 0) != 0;
      byte_27E1DCC50 = CFPreferencesGetAppBooleanValue(@"NTKFoghornStatusIndicatorPolicyMove", v10, 0) != 0;
      qword_27E1DCC18 = _preferencesGetAppDoubleValue(@"NTKFoghornDepthDemoValue", v10, 0);
      qword_27E1DCC20 = _preferencesGetAppDoubleValue(@"NTKFoghornDepthDemoRate", v10, 0);
      qword_27E1DCC30 = _preferencesGetAppDoubleValue(@"NTKFoghornElevationDemoValue", v10, 0);
      qword_27E1DCC38 = _preferencesGetAppDoubleValue(@"NTKFoghornElevationDemoRate", v10, 0);
      qword_27E1DCC40 = _preferencesGetAppDoubleValue(@"NTKFoghornElevationDemoAccuracy", v10, 0);
      qword_27E1DCC48 = _preferencesGetAppDoubleValue(@"NTKFoghornElevationDemoPrecision", v10, 0);
      byte_27E1DCC51 = CFPreferencesGetAppBooleanValue(@"NTKFoghornTimeViewUseStretchAnimation", v10, 0) != 0;
      keyExistsAndHasValidFormat = 0;
      AppIntegerValue = CFPreferencesGetAppIntegerValue(@"NTKFoghornTimeViewAnimationSnapStyle", v10, &keyExistsAndHasValidFormat);
      if (keyExistsAndHasValidFormat)
      {
        v12 = AppIntegerValue;
      }

      else
      {
        v12 = 1;
      }

      qword_27E1DCC58 = v12;
      byte_27E1DCC60 = CFPreferencesGetAppBooleanValue(@"NTKFoghornHarmoniaDemo", v10, 0) != 0;
      v20 = 0;
      v13 = CFPreferencesGetAppIntegerValue(@"NTKFoghornHarmoniaDemoOvernightScenario", v10, &v20);
      if (v20)
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }

      qword_27E1DCC68 = v14;
      v21 = 0;
      v15 = CFPreferencesGetAppIntegerValue(@"NTKFoghornHarmoniaDemoTrainingScenario", v10, &v21);
      v2 = 0x27E1DC000uLL;
      v3 = 0x27E1DC000uLL;
      v4 = 0x27E1DC000uLL;
      v5 = 0x27E1DC000uLL;
      v6 = 0x27E1DC000uLL;
      v7 = 0x27E1DC000uLL;
      if (v21)
      {
        v8 = v15;
      }

      else
      {
        v8 = 0;
      }

      qword_27E1DCC70 = v8;
      byte_27E1DCC10 = 1;
    }

    *a1 = byte_27E1DCC11;
    v16 = qword_27E1DCC20;
    *(a1 + 8) = qword_27E1DCC18;
    *(a1 + 16) = v16;
    *(a1 + 24) = byte_27E1DCC28;
    v17 = qword_27E1DCC38;
    *(a1 + 32) = qword_27E1DCC30;
    *(a1 + 40) = v17;
    result = *&qword_27E1DCC40;
    v18 = *(v2 + 3144);
    *(a1 + 48) = qword_27E1DCC40;
    *(a1 + 56) = v18;
    *(a1 + 64) = *(v3 + 3152);
    *(a1 + 65) = *(v4 + 3153);
    *(a1 + 72) = *(v5 + 3160);
    *(a1 + 80) = *(v6 + 3168);
    *(a1 + 88) = *(v7 + 3176);
    *(a1 + 96) = v8;
  }

  else
  {
    *a1 = 0;
    result = NAN;
    *(a1 + 8) = xmmword_23BE801E0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0x7FF8000000000000;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 1;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
  }

  return result;
}

uint64_t sub_23BE6C390(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_UTF8String(@"NTKFoghornPreferencesChangedNotification", a2, a3, a4);
  v5 = MEMORY[0x277D85CD0];

  return notify_register_dispatch(v4, &unk_27E1DCC80, v5, &unk_284E9C490);
}

void sub_23BE6C3D8()
{
  v3 = *MEMORY[0x277D85DE8];
  byte_27E1DCC10 = 0;
  v0 = NTKFoghornFaceBundleLogObject();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136315138;
    v2 = "void _foghornPreferences(_FoghornPreferences *)_block_invoke_2";
    _os_log_impl(&dword_23BE5B000, v0, OS_LOG_TYPE_DEFAULT, "%s: preferences updated", &v1, 0xCu);
  }
}

__CFString *NTKFoghornTimeViewElementString(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_278B9CA00[a1];
  }
}

id NTKFoghornTimeViewElementMaskString(int a1)
{
  v5 = objc_opt_new();
  v6 = 0;
  for (i = 0; i != 4; ++i)
  {
    if (((1 << i) & a1) != 0)
    {
      v8 = off_278B9CA00[i];
      if (v6)
      {
        objc_msgSend_appendString_(v5, v2, @"|", v4);
      }

      objc_msgSend_appendString_(v5, v2, v8, v4);
      ++v6;
    }
  }

  v9 = objc_msgSend_copy(v5, v2, v3, v4);

  return v9;
}

__CFString *NTKFoghornTimeViewAnimationStyleString(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 1)
  {
    v1 = @"stretch";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"fixedSeconds";
  }
}

__CFString *NTKFoghornTimeViewAnimationSnapStyleString(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_278B9CA20[a1];
  }
}

double sub_23BE6D2E0(uint64_t a1, void *a2, double a3)
{
  v5 = a2;
  switch(a1)
  {
    case 3:
      CLKCeilForDevice();
      goto LABEL_7;
    case 2:
      CLKRoundForDevice();
      goto LABEL_7;
    case 1:
      CLKFloorForDevice();
LABEL_7:
      a3 = v6;
      break;
  }

  return a3;
}

void sub_23BE6E180(CGContext *a1, const __CTFrame *a2, void *a3, const __CFArray *a4, CGFloat a5, double a6, double a7, double a8, double a9)
{
  v25 = a3;
  CGContextSaveGState(a1);
  if (a9 > 0.0 && a4 != 0)
  {
    v15 = v25;
    CGContextSaveGState(a1);
    v16 = v15;
    v20 = objc_msgSend_CGColor(v16, v17, v18, v19);
    CGContextSetStrokeColorWithColor(a1, v20);
    CGContextTranslateCTM(a1, a5, 0.0);
    CGContextSetLineWidth(a1, a9 + a9);
    Count = CFArrayGetCount(a4);
    if (Count >= 1)
    {
      v22 = Count;
      for (i = 0; i != v22; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a4, i);
        CGContextAddPath(a1, ValueAtIndex);
      }
    }

    CGContextStrokePath(a1);
    CGContextRestoreGState(a1);

    CGContextSetShouldAntialiasFonts();
    CGContextSetShouldAntialias(a1, 0);
  }

  CTFrameDraw(a2, a1);
  CGContextRestoreGState(a1);
}

CFArrayRef sub_23BE6E43C(void *a1, void *a2, void *a3)
{
  v46[3] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = objc_alloc_init(MEMORY[0x277D74240]);
  objc_msgSend_setAlignment_(v8, v9, 4, v10);
  v11 = *MEMORY[0x277D740A8];
  v45[0] = *MEMORY[0x277D740C0];
  v45[1] = v11;
  v35 = v6;
  v36 = v5;
  v46[0] = v6;
  v46[1] = v5;
  v45[2] = *MEMORY[0x277D74118];
  v33 = v8;
  v46[2] = v8;
  v13 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v12, v46, v45, 3);
  v14 = objc_alloc(MEMORY[0x277CCA898]);
  v34 = v7;
  v32 = v13;
  v31 = objc_msgSend_initWithString_attributes_(v14, v15, v7, v13);
  v16 = CTLineCreateWithAttributedString(v31);
  theArray = CTLineGetGlyphRuns(v16);
  Count = CFArrayGetCount(theArray);
  ascent = 0.0;
  leading = 0.0;
  descent = 0.0;
  CTLineGetTypographicBounds(v16, &ascent, &descent, &leading);
  Mutable = CFArrayCreateMutable(0, Count, MEMORY[0x277CBF128]);
  if (Count >= 1)
  {
    v19 = 0;
    v20 = *MEMORY[0x277CC4838];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v19);
      Attributes = CTRunGetAttributes(ValueAtIndex);
      Value = CFDictionaryGetValue(Attributes, v20);
      GlyphCount = CTRunGetGlyphCount(ValueAtIndex);
      buffer.x = 0.0;
      buffer.y = 0.0;
      v47.location = 0;
      v47.length = 1;
      CTRunGetPositions(ValueAtIndex, v47, &buffer);
      if (GlyphCount >= 1)
      {
        for (i = 0; i != GlyphCount; ++i)
        {
          glyph = 0;
          v39.x = 0.0;
          v39.y = 0.0;
          v48.location = i;
          v48.length = 1;
          CTRunGetGlyphs(ValueAtIndex, v48, &glyph);
          v49.location = i;
          v49.length = 1;
          CTRunGetPositions(ValueAtIndex, v49, &v39);
          PathForGlyph = CTFontCreatePathForGlyph(Value, glyph, 0);
          CopyByNormalizing = CGPathCreateCopyByNormalizing(PathForGlyph, 0);
          CGPathRelease(PathForGlyph);
          memset(&v38, 0, sizeof(v38));
          CGAffineTransformMakeTranslation(&v38, buffer.x + v39.x, buffer.y + v39.y + descent);
          v28 = MEMORY[0x23EEBF9C0](CopyByNormalizing, &v38);
          CGPathRelease(CopyByNormalizing);
          CFArrayAppendValue(Mutable, v28);
          CGPathRelease(v28);
        }
      }

      ++v19;
    }

    while (v19 != Count);
  }

  Copy = CFArrayCreateCopy(0, Mutable);
  CFRelease(Mutable);

  return Copy;
}

void sub_23BE6F054(_Unwind_Exception *a1)
{
  for (i = 216; i != -72; i -= 72)
  {
    sub_23BE6F080(v1 + i);
  }

  _Unwind_Resume(a1);
}

void sub_23BE6F080(uint64_t a1)
{
  v2 = *(a1 + 48);
}

void sub_23BE6F478(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_CGContext(a2, a2, a3, a4);
  MaxY = CGRectGetMaxY(*(a1 + 64));
  CGContextTranslateCTM(v5, 0.0, MaxY);
  CGContextScaleCTM(v5, 1.0, -1.0);
  v8 = objc_msgSend__CTFrameForFrame_text_textColor_font_forDevice_(*(a1 + 96), v7, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88));
  v9 = *(a1 + 104);
  if (v9 <= 0.0)
  {
    v10 = 0;
  }

  else
  {
    v10 = sub_23BE6E43C(*(a1 + 48), *(a1 + 40), *(a1 + 32));
    v9 = *(a1 + 104);
  }

  sub_23BE6E180(v5, v8, *(a1 + 40), v10, *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), v9);

  CFRelease(v8);
}

void sub_23BE70260(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, uint64_t a16)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23BE70294(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    objc_msgSend__updateBlinkerAlphaForSecondFraction_(WeakRetained, v6, v7, v8, *(a3 + 32));
  }
}

void sub_23BE711DC(void *a1@<X1>, void *a2@<X8>)
{
  v7 = a1;
  os_unfair_lock_lock(&unk_27E1DD120);
  if (qword_27E1DD128)
  {
    v6 = qword_27E1DD128 == v7;
  }

  else
  {
    v6 = 0;
  }

  if (!v6 || objc_msgSend_version(v7, v3, v4, v5) != qword_27E1DD130)
  {
    qword_27E1DD128 = v7;
    qword_27E1DD130 = objc_msgSend_version(v7, v3, v4, v5, v7);
    sub_23BE712B4(v7, __src);
    memcpy(&unk_27E1DCC88, __src, 0x498uLL);
  }

  memcpy(a2, &unk_27E1DCC88, 0x498uLL);
  os_unfair_lock_unlock(&unk_27E1DD120);
}

void sub_23BE712B4(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = a1;
  *a2 = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[5] = 0u;
  a2[6] = 0u;
  a2[7] = 0u;
  a2[8] = 0u;
  a2[9] = 0u;
  a2[10] = 0u;
  a2[11] = 0u;
  a2[12] = 0u;
  a2[13] = 0u;
  a2[14] = 0u;
  a2[15] = 0u;
  a2[16] = 0u;
  a2[17] = 0u;
  a2[18] = 0u;
  a2[19] = 0u;
  a2[20] = 0u;
  a2[21] = 0u;
  a2[22] = 0u;
  a2[23] = 0u;
  a2[24] = 0u;
  a2[25] = 0u;
  a2[26] = 0u;
  a2[27] = 0u;
  a2[28] = 0u;
  a2[29] = 0u;
  a2[30] = 0u;
  a2[31] = 0u;
  v38 = v3;
  objc_msgSend_screenBounds(v38, v4, v5, v6);
  v8 = v7 + -26.0;
  v12 = objc_msgSend_sizeClass(v38, v9, v10, v11);
  v37 = v12;
  v14 = qword_23BE80250[v12 == 9];
  v15 = qword_23BE80260[v12 == 9];
  v16 = 49.0;
  v17 = qword_23BE80270[v12 == 9];
  v18 = qword_23BE80280[v12 == 9];
  v19 = 61.5;
  __src[147] = 0x402A000000000000;
  if (v12 == 9)
  {
    v19 = 64.0;
  }

  *&__src[148] = v19;
  *&__src[149] = v8;
  if (v12 == 9)
  {
    v16 = 50.0;
  }

  *&__src[150] = v16;
  __src[151] = 0x402A000000000000;
  *&__src[152] = v19;
  *&__src[153] = v8;
  if (v12 == 9)
  {
    v20 = 40.0;
  }

  else
  {
    v20 = 39.0;
  }

  *&__src[154] = v16;
  __src[155] = 0x402A000000000000;
  __src[156] = v17;
  *&__src[157] = v8;
  __src[158] = v15;
  __src[159] = 0x402A000000000000;
  __src[160] = v17;
  *&__src[161] = v8;
  v40 = xmmword_23BE80290;
  __src[162] = v15;
  v41 = v8;
  v43 = xmmword_23BE80290;
  v42 = v14;
  v44 = v8;
  v45 = v14;
  v46 = 0x402A000000000000;
  v47 = v18;
  v48 = v8;
  v49 = 0x405CC00000000000;
  v21 = objc_msgSend_metricsWithDevice_identitySizeClass_(MEMORY[0x277CBBAF8], v13, v38, 6);
  bzero(__src, 0x490uLL);
  v25 = 0;
  v26 = &xmmword_23BE802A0;
  v27 = 98;
  for (i = 0x54u; ; ++i)
  {
    v29 = &__src[v27];
    v30 = *&__src[v27 + 51];
    *v29 = *&__src[v27 + 49];
    v29[1] = v30;
    v31 = &__src[v25];
    v32 = v26[1];
    *v31 = *v26;
    v31[1] = v32;
    v31[2] = v26[2];
    v33 = &__src[i];
    *v33 = *(&unk_23BE80540 + i * 8 - 672);
    v34 = v26[23];
    v31[22] = v26[22];
    v31[23] = v34;
    v31[21] = v26[21];
    v33[7] = *(&unk_23BE80540 + i * 8 - 616);
    objc_msgSend_scaledValue_(v21, v22, v23, v24, 1.60000002);
    *(v33 + 42) = v35;
    if (v25 == 36)
    {
      break;
    }

    v33[49] = v20;
    v33[56] = 0.0;
    v26 += 3;
    v25 += 6;
    v27 += 4;
  }

  v36 = 23.5;
  if (v37 == 9)
  {
    v36 = 24.0;
  }

  *&__src[139] = v36;
  __src[146] = 0x3FF0000000000000;

  memcpy(a2, __src, 0x498uLL);
}

void sub_23BE72ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  for (i = 376; i != -8; i -= 32)
  {
  }

  _Unwind_Resume(a1);
}

id _complicationOrDie(void *a1)
{
  v1 = a1;
  v5 = v1;
  if (v1)
  {
    v6 = v1;
  }

  else
  {
    v6 = objc_msgSend_nullComplication(MEMORY[0x277D2BFB0], v2, v3, v4);
  }

  v7 = v6;

  return v7;
}

void sub_23BE73104(uint64_t a1, void *a2, uint64_t a3)
{
  v212[4] = *MEMORY[0x277D85DE8];
  v8 = a2;
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v204[0] = *MEMORY[0x277D2BF08];
      v102 = objc_msgSend_anyComplicationOfType_(MEMORY[0x277D2BFB0], v5, 7, v7);
      v205[0] = v102;
      v204[1] = *MEMORY[0x277D2BF00];
      v105 = objc_msgSend_anyComplicationOfType_(MEMORY[0x277D2BFB0], v103, 1, v104);
      v205[1] = v105;
      v204[2] = *MEMORY[0x277D2BF10];
      v109 = objc_msgSend_vitalsComplication(MEMORY[0x277D2BFB0], v106, v107, v108);
      v205[2] = v109;
      v204[3] = *MEMORY[0x277D2BEF0];
      v112 = objc_msgSend_anyComplicationOfType_(MEMORY[0x277D2BFB0], v110, 15, v111);
      v205[3] = v112;
      v204[4] = *MEMORY[0x277D2BEE0];
      v115 = objc_msgSend_anyComplicationOfType_(MEMORY[0x277D2BFB0], v113, 36, v114);
      v205[4] = v115;
      v204[5] = *MEMORY[0x277D2BED8];
      v119 = objc_msgSend_waypointsComplication(MEMORY[0x277D2BFB0], v116, v117, v118);
      v205[5] = v119;
      v204[6] = *MEMORY[0x277D2BEE8];
      v122 = objc_msgSend_anyComplicationOfType_(MEMORY[0x277D2BFB0], v120, 18, v121);
      v205[6] = v122;
      v124 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v123, v205, v204, 7);
      objc_msgSend_setComplicationsForSlots_(v8, v125, v124, v126);

      v36 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v127, 9, 4000);
      v203[0] = v36;
      v38 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v128, 11, 4000);
      v203[1] = v38;
      v40 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v129, 2, 4000);
      v203[2] = v40;
      v42 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v130, 4, 4000);
      v203[3] = v42;
      v44 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v131, 7, 4000);
      v203[4] = v44;
      objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v132, v203, 5);
      goto LABEL_15;
    }

    if (a3 != 4)
    {
      if (a3 == 5)
      {
        v198[0] = *MEMORY[0x277D2BF08];
        v46 = objc_msgSend_anyComplicationOfType_(MEMORY[0x277D2BFB0], v5, 10, v7);
        v199[0] = v46;
        v198[1] = *MEMORY[0x277D2BF00];
        v50 = objc_msgSend_levelComplication(MEMORY[0x277D2BFB0], v47, v48, v49);
        v199[1] = v50;
        v198[2] = *MEMORY[0x277D2BF10];
        v54 = objc_msgSend_waypointsComplication(MEMORY[0x277D2BFB0], v51, v52, v53);
        v199[2] = v54;
        v198[3] = *MEMORY[0x277D2BEE0];
        v57 = objc_msgSend_anyComplicationOfType_(MEMORY[0x277D2BFB0], v55, 7, v56);
        v199[3] = v57;
        v198[4] = *MEMORY[0x277D2BED8];
        v60 = objc_msgSend_anyComplicationOfType_(MEMORY[0x277D2BFB0], v58, 12, v59);
        v199[4] = v60;
        v198[5] = *MEMORY[0x277D2BEE8];
        v63 = objc_msgSend_anyComplicationOfType_(MEMORY[0x277D2BFB0], v61, 43, v62);
        v199[5] = v63;
        v65 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v64, v199, v198, 6);
        objc_msgSend_setComplicationsForSlots_(v8, v66, v65, v67);

        v36 = objc_msgSend_array(MEMORY[0x277CBEB18], v68, v69, v70);
        v38 = objc_msgSend__ultraGroupPlacementForDevice_(*(a1 + 32), v71, *(a1 + 40), v72);
        if (v38)
        {
          objc_msgSend_addObject_(v36, v73, v38, v74);
        }

        v75 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v73, 2, 4000);
        v77 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v76, 4, 4000, v75);
        v197[1] = v77;
        v79 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v78, 7, 4000);
        v197[2] = v79;
        v81 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v80, v197, 3);
        objc_msgSend_addObjectsFromArray_(v36, v82, v81, v83);

        if (objc_msgSend_count(v36, v84, v85, v86))
        {
          objc_msgSend_setCurationPlacements_(v8, v87, v36, v88);
        }

        goto LABEL_20;
      }

      goto LABEL_21;
    }

    v201[0] = *MEMORY[0x277D2BF08];
    v168 = objc_msgSend_waypointsComplication(MEMORY[0x277D2BFB0], v5, v6, v7);
    v202[0] = v168;
    v201[1] = *MEMORY[0x277D2BF00];
    v172 = objc_msgSend_elevationComplication(MEMORY[0x277D2BFB0], v169, v170, v171);
    v202[1] = v172;
    v201[2] = *MEMORY[0x277D2BF10];
    v176 = objc_msgSend_compassComplication(MEMORY[0x277D2BFB0], v173, v174, v175);
    v202[2] = v176;
    v201[3] = *MEMORY[0x277D2BEE0];
    v179 = objc_msgSend_anyComplicationOfType_(MEMORY[0x277D2BFB0], v177, 36, v178);
    v202[3] = v179;
    v201[4] = *MEMORY[0x277D2BED8];
    v182 = objc_msgSend_anyComplicationOfType_(MEMORY[0x277D2BFB0], v180, 15, v181);
    v202[4] = v182;
    v201[5] = *MEMORY[0x277D2BEE8];
    v185 = objc_msgSend_anyComplicationOfType_(MEMORY[0x277D2BFB0], v183, 43, v184);
    v202[5] = v185;
    v187 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v186, v202, v201, 6);
    objc_msgSend_setComplicationsForSlots_(v8, v188, v187, v189);

    v36 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v190, 11, 4000);
    v200[0] = v36;
    v38 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v191, 2, 4000);
    v200[1] = v38;
    v40 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v192, 4, 4000);
    v200[2] = v40;
    v42 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v193, 7, 4000);
    v200[3] = v42;
    objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v194, v200, 4);
    v44 = LABEL_18:;
    objc_msgSend_setCurationPlacements_(v8, v195, v44, v196);
    goto LABEL_19;
  }

  switch(a3)
  {
    case 0:
      v36 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v5, 2, 4000);
      v212[0] = v36;
      v38 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v89, 4, 4000);
      v212[1] = v38;
      v91 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v90, 7, 4000);
      v212[2] = v91;
      v92 = MEMORY[0x277D2C020];
      v95 = objc_msgSend__ultraGroupZOrderForDevice_(*(a1 + 32), v93, *(a1 + 40), v94);
      v97 = objc_msgSend_placementWithWatchOS12Group_zOrder_(v92, v96, 11, v95);
      v212[3] = v97;
      v99 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v98, v212, 4);
      objc_msgSend_setCurationPlacements_(v8, v100, v99, v101);

LABEL_20:
      break;
    case 1:
      v210[0] = *MEMORY[0x277D2BF08];
      v136 = objc_msgSend_rainComplication(MEMORY[0x277D2BFB0], v5, v6, v7);
      v211[0] = v136;
      v210[1] = *MEMORY[0x277D2BF00];
      v140 = objc_msgSend_humidityComplication(MEMORY[0x277D2BFB0], v137, v138, v139);
      v211[1] = v140;
      v210[2] = *MEMORY[0x277D2BF10];
      v143 = objc_msgSend_anyComplicationOfType_(MEMORY[0x277D2BFB0], v141, 43, v142);
      v211[2] = v143;
      v210[3] = *MEMORY[0x277D2BEF0];
      v147 = objc_msgSend_tidesComplication(MEMORY[0x277D2BFB0], v144, v145, v146);
      v211[3] = v147;
      v210[4] = *MEMORY[0x277D2BEE0];
      v151 = objc_msgSend_waterTemperatureComplication(MEMORY[0x277D2BFB0], v148, v149, v150);
      v211[4] = v151;
      v210[5] = *MEMORY[0x277D2BED8];
      v154 = objc_msgSend_anyComplicationOfType_(MEMORY[0x277D2BFB0], v152, 44, v153);
      v211[5] = v154;
      v210[6] = *MEMORY[0x277D2BEE8];
      v158 = objc_msgSend_depthComplication(MEMORY[0x277D2BFB0], v155, v156, v157);
      v211[6] = v158;
      v160 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v159, v211, v210, 7);
      objc_msgSend_setComplicationsForSlots_(v8, v161, v160, v162);

      v36 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v163, 11, 4000);
      v209[0] = v36;
      v38 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v164, 2, 4000);
      v209[1] = v38;
      v40 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v165, 4, 4000);
      v209[2] = v40;
      v42 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v166, 7, 4000);
      v209[3] = v42;
      objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v167, v209, 4);
      goto LABEL_18;
    case 2:
      v207[0] = *MEMORY[0x277D2BF08];
      v9 = objc_msgSend_anyComplicationOfType_(MEMORY[0x277D2BFB0], v5, 46, v7);
      v208[0] = v9;
      v207[1] = *MEMORY[0x277D2BF00];
      v13 = objc_msgSend_elevationComplication(MEMORY[0x277D2BFB0], v10, v11, v12);
      v208[1] = v13;
      v207[2] = *MEMORY[0x277D2BF10];
      v16 = objc_msgSend_anyComplicationOfType_(MEMORY[0x277D2BFB0], v14, 7, v15);
      v208[2] = v16;
      v207[3] = *MEMORY[0x277D2BEF0];
      v19 = objc_msgSend_anyComplicationOfType_(MEMORY[0x277D2BFB0], v17, 43, v18);
      v208[3] = v19;
      v207[4] = *MEMORY[0x277D2BEE0];
      v23 = objc_msgSend_compassComplication(MEMORY[0x277D2BFB0], v20, v21, v22);
      v208[4] = v23;
      v207[5] = *MEMORY[0x277D2BED8];
      v26 = objc_msgSend_anyComplicationOfType_(MEMORY[0x277D2BFB0], v24, 15, v25);
      v208[5] = v26;
      v207[6] = *MEMORY[0x277D2BEE8];
      v30 = objc_msgSend_waypointsComplication(MEMORY[0x277D2BFB0], v27, v28, v29);
      v208[6] = v30;
      v32 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v31, v208, v207, 7);
      objc_msgSend_setComplicationsForSlots_(v8, v33, v32, v34);

      v36 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v35, 9, 4000);
      v206[0] = v36;
      v38 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v37, 11, 4000);
      v206[1] = v38;
      v40 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v39, 2, 4000);
      v206[2] = v40;
      v42 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v41, 4, 4000);
      v206[3] = v42;
      v44 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v43, 7, 4000);
      v206[4] = v44;
      objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v45, v206, 5);
      v133 = LABEL_15:;
      objc_msgSend_setCurationPlacements_(v8, v134, v133, v135);

LABEL_19:
      goto LABEL_20;
  }

LABEL_21:
}

void sub_23BE73F88(uint64_t a1, const char *a2)
{
  v5[6] = *MEMORY[0x277D85DE8];
  v4[0] = &unk_284EA11B8;
  v4[1] = &unk_284EA11D0;
  v5[0] = @"default";
  v5[1] = @"defaultWithSeconds";
  v4[2] = &unk_284EA11E8;
  v4[3] = &unk_284EA1200;
  v5[2] = @"large";
  v5[3] = @"largeWithSeconds";
  v4[4] = &unk_284EA1218;
  v4[5] = &unk_284EA1230;
  v5[4] = @"extraLarge";
  v5[5] = @"extraLargeWithSeconds";
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v5, v4, 6);
  v3 = qword_27E1DD138;
  qword_27E1DD138 = v2;
}

id sub_23BE74CA8(double a1, uint64_t a2, void *a3, void *a4)
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
  v22 = MEMORY[0x23EEBFD00](v6, v7, v20 / 0.6 / (v19 + v20 / 0.6));
  v23 = MEMORY[0x23EEBFD00](v22, v11, v21);

  return v23;
}

uint64_t sub_23BE75874(void *a1, const char *a2, _OWORD *a3)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a3[1];
  v8[0] = *a3;
  v8[1] = v6;
  v8[2] = a3[2];
  return objc_msgSend__applyComplicationLayoutRuleForDevice_frame_transform_slot_states_(v3, a2, v4, v8, a2, v5);
}

uint64_t sub_23BE75B8C(void *a1, const char *a2, _OWORD *a3)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a3[1];
  v8[0] = *a3;
  v8[1] = v6;
  v8[2] = a3[2];
  return objc_msgSend__applyComplicationLayoutRuleForDevice_frame_transform_slot_states_(v3, a2, v4, v8, a2, v5);
}

void sub_23BE76CF8(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  v6 = objc_opt_class();
  if (objc_msgSend__isSixpackComplicationSlot_(v6, v7, v16, v8))
  {
    v12 = 40;
  }

  else
  {
    v13 = objc_opt_class();
    if (!objc_msgSend__isMiddleComplicationSlot_(v13, v14, v16, v15))
    {
      goto LABEL_6;
    }

    v12 = 48;
  }

  objc_msgSend_setAlpha_(v5, v9, v10, v11, *(a1 + v12));
LABEL_6:
}

void sub_23BE77748(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  v6 = objc_opt_class();
  if (objc_msgSend__isSixpackComplicationSlot_(v6, v7, v15, v8))
  {
    v11 = *(a1 + 40);
  }

  else
  {
    v12 = objc_opt_class();
    if (objc_msgSend__isMiddleComplicationSlot_(v12, v13, v15, v14))
    {
      v11 = *(a1 + 41);
    }

    else
    {
      v11 = 0;
    }
  }

  objc_msgSend_setHidden_(v5, v9, (v11 & 1) == 0, v10);
}

void sub_23BE77A54(uint64_t a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v19 = a2;
  v11 = objc_opt_class();
  if (objc_msgSend__isSixpackComplicationSlot_(v11, v12, v19, v13))
  {
    if (*(a1 + 56) == 1)
    {
      v27.origin.x = a3;
      v27.origin.y = a4;
      v27.size.width = a5;
      v27.size.height = a6;
      CGContextFillEllipseInRect(*(a1 + 48), v27);
    }
  }

  else
  {
    v14 = objc_opt_class();
    if (objc_msgSend__isMiddleComplicationSlot_(v14, v15, v19, v16) && *(a1 + 57) == 1)
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      *dx = 0u;
      v21 = 0u;
      memset(v20, 0, sizeof(v20));
      sub_23BE78818(*(a1 + 32), v20);
      v17 = *&v21;
      v28.origin.x = a3;
      v28.origin.y = a4;
      v28.size.width = a5;
      v28.size.height = a6;
      v29 = CGRectInset(v28, dx[1], dx[1]);
      v18 = CGPathCreateWithRoundedRect(v29, v17, v17, 0);
      CGContextAddPath(*(a1 + 48), v18);
      CGContextFillPath(*(a1 + 48));
      CGPathRelease(v18);
    }
  }
}

uint64_t sub_23BE77D44(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_CGContext(a2, a2, a3, a4);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  CGContextSetRGBFillColor(v5, 0.0666666667, 0.0666666667, 0.0666666667, 1.0);
  v41.origin.x = 0.0;
  v41.origin.y = 0.0;
  v41.size.width = v6;
  v41.size.height = v7;
  CGContextFillRect(v5, v41);
  v8 = *(a1 + 80);
  v12 = objc_msgSend_bezelStyle(*(a1 + 32), v9, v10, v11);
  v16 = objc_msgSend_layoutStyle(*(a1 + 40), v13, v14, v15);
  objc_msgSend__drawComplicationsSnapshotInContext_bezelStyle_layoutStyle_forDevice_(v8, v17, v5, v12, v16, *(a1 + 48));
  v21 = objc_msgSend_layoutStyle(*(a1 + 40), v18, v19, v20);
  v25 = objc_msgSend_bezelStyle(*(a1 + 32), v22, v23, v24) != 0;
  v29 = objc_msgSend_timeMinutesColor(*(a1 + 56), v26, v27, v28);
  v33 = objc_msgSend_timeSecondsColor(*(a1 + 56), v30, v31, v32);
  objc_msgSend_drawSnapshotInContext_layoutStyle_inset_minutesColor_secondsColor_forDevice_(NTKFoghornTimeView, v34, v5, v21, v25, v29, v33, *(a1 + 48));

  v38 = objc_msgSend_bezelStyle(*(a1 + 32), v35, v36, v37);

  return MEMORY[0x2821F9670](NTKFoghornFaceBezelView, sel_drawSnapshotInContext_bezelStyle_colorPalette_forDevice_, v5, v38);
}

void sub_23BE78818(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v10 = a1;
  os_unfair_lock_lock(&unk_27E1DD1B8);
  if (qword_27E1DD1C0)
  {
    v6 = qword_27E1DD1C0 == v10;
  }

  else
  {
    v6 = 0;
  }

  if (!v6 || objc_msgSend_version(v10, v3, v4, v5) != qword_27E1DD1C8)
  {
    qword_27E1DD1C0 = v10;
    qword_27E1DD1C8 = objc_msgSend_version(v10, v3, v4, v5);
    sub_23BE78910(v10, v11);
    xmmword_27E1DD188 = v11[4];
    unk_27E1DD198 = v11[5];
    xmmword_27E1DD1A8 = v11[6];
    xmmword_27E1DD148 = v11[0];
    unk_27E1DD158 = v11[1];
    xmmword_27E1DD168 = v11[2];
    unk_27E1DD178 = v11[3];
  }

  v7 = unk_27E1DD198;
  a2[4] = xmmword_27E1DD188;
  a2[5] = v7;
  a2[6] = xmmword_27E1DD1A8;
  v8 = unk_27E1DD158;
  *a2 = xmmword_27E1DD148;
  a2[1] = v8;
  v9 = unk_27E1DD178;
  a2[2] = xmmword_27E1DD168;
  a2[3] = v9;
  os_unfair_lock_unlock(&unk_27E1DD1B8);
}

void sub_23BE78910(void *a1@<X1>, uint64_t a2@<X8>)
{
  v113[1] = *MEMORY[0x277D85DE8];
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  v3 = a1;
  v5 = objc_msgSend_metricsWithDevice_identitySizeClass_(MEMORY[0x277CBBAF8], v4, v3, 6);

  objc_msgSend_setRoundingBehavior_(v5, v6, 0, v7);
  v112 = &unk_284EA1308;
  v11 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v8, v9, v10, 0.9);
  v113[0] = v11;
  v13 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v12, v113, &v112, 1);
  objc_msgSend_scaledValue_withOverrides_(v5, v14, v13, v15, 0.9);
  v97 = v16;

  v110 = &unk_284EA1308;
  v20 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v17, v18, v19, 0.98);
  v111 = v20;
  v22 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v21, &v111, &v110, 1);
  objc_msgSend_scaledValue_withOverrides_(v5, v23, v22, v24, 0.99);
  v96 = v25;

  v108 = &unk_284EA1308;
  v29 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v26, v27, v28, 0.9);
  v109 = v29;
  v31 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v30, &v109, &v108, 1);
  objc_msgSend_scaledValue_withOverrides_(v5, v32, v31, v33, 0.9);
  v35 = v34;

  v106 = &unk_284EA1308;
  v39 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v36, v37, v38, 111.5);
  v107 = v39;
  v41 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v40, &v107, &v106, 1);
  objc_msgSend_scaledValue_withOverrides_(v5, v42, v41, v43, 106.0);
  v45 = v44;

  objc_msgSend_scaledValue_(v5, v46, v47, v48, 8.0);
  v50 = v49;
  v104 = &unk_284EA1308;
  v54 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v51, v52, v53, 15.5);
  v105 = v54;
  v56 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v55, &v105, &v104, 1);
  objc_msgSend_scaledValue_withOverrides_(v5, v57, v56, v58, 17.0);
  v60 = v59;

  v102 = &unk_284EA1308;
  v64 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v61, v62, v63, 8.25);
  v103 = v64;
  v66 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v65, &v103, &v102, 1);
  objc_msgSend_scaledValue_withOverrides_(v5, v67, v66, v68, 10.0);
  v70 = v69;

  v100 = &unk_284EA1308;
  v74 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v71, v72, v73, 3.5);
  v101 = v74;
  v76 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v75, &v101, &v100, 1);
  objc_msgSend_scaledValue_withOverrides_(v5, v77, v76, v78, 4.0);
  v80 = v79;

  v98 = &unk_284EA1308;
  v84 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v81, v82, v83, 6.0);
  v99 = v84;
  v86 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v85, &v99, &v98, 1);
  objc_msgSend_scaledValue_withOverrides_(v5, v87, v86, v88, 4.875);
  v90 = v89;

  objc_msgSend_scaledValue_(v5, v91, v92, v93, 3.0);
  v95 = v94;

  *a2 = v97;
  *(a2 + 8) = v96;
  *(a2 + 16) = v35;
  *(a2 + 24) = v45;
  *(a2 + 32) = v50;
  *(a2 + 40) = v60;
  *(a2 + 48) = v70;
  *(a2 + 56) = v80;
  *(a2 + 64) = v90;
  *(a2 + 72) = v95;
  *(a2 + 80) = xmmword_23BE806C0;
  *(a2 + 96) = 0uLL;
}

double NTKSuperEllipseRectGeometryGetRadialPoints(uint64_t a1, void *a2, double *a3, double a4, double a5)
{
  v12 = 0;
  v13 = 0;
  v10 = 0;
  v11 = 0.0;
  NTKSuperEllipseRectGetRadialXYs(*(a1 + 8), &v13, &v12, &v11, &v10, a4, a5);
  v7 = v12;
  *a2 = v13;
  a2[1] = v7;
  v9 = v10;
  result = v11;
  *a3 = v11;
  *(a3 + 1) = v9;
  return result;
}

double NTKSuperEllipseRectGeometryGetMetrics(uint64_t a1, void *a2, void *a3, void *a4, double *a5, void *a6, double a7, double a8, double a9, double a10)
{
  v21 = 0;
  v22 = 0;
  v19 = 0;
  v20 = 0;
  v18 = 0.0;
  NTKSuperEllipseRectGetMetrics(*(a1 + 8), &v22, &v21, &v19, &v18, &v20, a7, a8, a9, a10);
  v15 = v21;
  *a2 = v22;
  *a3 = v15;
  v16 = v19;
  *a6 = v20;
  *a4 = v16;
  result = v18;
  *a5 = v18;
  return result;
}

void NTKSuperEllipseRectGeometryGetXYAfterTravelFromPosition(uint64_t a1, uint64_t *a2, uint64_t *a3, double a4, double a5)
{
  v7 = *a2;
  v9 = *a3;
  v10 = v7;
  NTKSuperEllipseRectGetXYAfterTravelFromPosition(*(a1 + 8), &v10, &v9, a4, a5);
  v8 = v9;
  *a2 = v10;
  *a3 = v8;
}

double NTKSuperEllipseRectGeometryGetXYAtPosition(uint64_t a1, void *a2, double *a3, double a4)
{
  v7 = 0.0;
  v8 = 0;
  NTKSuperEllipseRectGetXYAtPosition(*(a1 + 8), &v8, &v7, a4);
  result = v7;
  *a2 = v8;
  *a3 = result;
  return result;
}

void NTKSuperEllipseRectGetRadialXYs(double *a1, double *a2, double *a3, double *a4, double *a5, double a6, double a7)
{
  v12 = a6;
  if (a6 >= 4.71238898)
  {
    v14 = 0;
    v12 = 6.28318531 - a6;
    goto LABEL_6;
  }

  if (a6 >= 3.14159265)
  {
    v14 = 0;
    v15 = 0;
    v12 = a6 + -3.14159265;
  }

  else
  {
    if (a6 < 1.57079633)
    {
      v14 = 1;
LABEL_6:
      v15 = 1;
      goto LABEL_9;
    }

    v15 = 0;
    v12 = 3.14159265 - a6;
    v14 = 1;
  }

LABEL_9:
  v16 = a1[5];
  if (v12 >= v16)
  {
    v22 = a1[6];
    if (v12 >= v22)
    {
      v34 = tan(v12);
      v19 = a1[1] * 0.5;
      v18 = v19 / v34;
      v21 = v19 - a7;
      v20 = (v19 - a7) / v34;
    }

    else
    {
      v23 = a1[2];
      v24 = a1[3];
      v37 = a1[1] * 0.5 - v24;
      v38 = *a1 * 0.5 - v23;
      __y = 0.0;
      v25 = fmin(modf((v12 - v16) / a1[8], &__y), 1.0);
      if (v25 < 0.0)
      {
        v25 = 0.0;
      }

      v26 = a1[5 * __y + 13] + (a1[5 * __y + 18] - a1[5 * __y + 13]) * v25;
      v27 = __sincos_stret(v12);
      v28 = v27.__cosval * v26 - v38;
      v29 = v27.__sinval * v26 - v37;
      if (v28 > v23)
      {
        v28 = v23;
      }

      if (v29 > v24)
      {
        v29 = v24;
      }

      v30 = sqrt((v37 + v29) * (v37 + v29) + (v38 + v28) * (v38 + v28));
      v31 = tan(v16);
      v32 = tan(v22);
      v18 = v27.__cosval * v30;
      v19 = v27.__sinval * v30;
      v33 = v30 - ((v12 - v16) / (v22 - v16) * sqrt(a7 * a7 + a7 / v32 * (a7 / v32)) + (1.0 - (v12 - v16) / (v22 - v16)) * sqrt(a7 * a7 + v31 * a7 * (v31 * a7)));
      v20 = v27.__cosval * v33;
      v21 = v27.__sinval * v33;
    }
  }

  else
  {
    v17 = tan(v12);
    v18 = *a1 * 0.5;
    v19 = v17 * v18;
    v20 = v18 - a7;
    v21 = v17 * (v18 - a7);
  }

  v35 = -v18;
  if (v15)
  {
    v35 = v18;
  }

  else
  {
    v20 = -v20;
  }

  if (!v14)
  {
    v19 = -v19;
  }

  *a2 = v35;
  *a3 = v19;
  if (v14)
  {
    v36 = v21;
  }

  else
  {
    v36 = -v21;
  }

  *a4 = v20;
  *a5 = v36;
}

void NTKSuperEllipseRectGetMetrics(double *a1, double *a2, double *a3, double *a4, double *a5, double *a6, double a7, double a8, double a9, double a10)
{
  if (a7 * 180.0 / 3.14159265 == 360.0)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = a7;
  }

  v17 = *a1 * 0.5;
  v18 = a1[1] * 0.5;
  v19 = a1[2];
  v20 = a1[3];
  if (v16 >= 4.71238898)
  {
    v21 = 6.28318531 - v16;
LABEL_6:
    v22 = -1.0;
    goto LABEL_11;
  }

  if (v16 >= 3.14159265)
  {
    v21 = v16 + -3.14159265;
    v22 = 1.0;
  }

  else
  {
    v22 = 1.0;
    v21 = v16;
    if (v16 >= 1.57079633)
    {
      v21 = 3.14159265 - v16;
      goto LABEL_6;
    }
  }

LABEL_11:
  v54 = v17 - v19;
  v23 = v18 - v20;
  v24 = a1[5];
  if (v21 < v24)
  {
    v26 = v17 * tan(v21);
    v27 = v26 - v22 * a10;
    if (v27 > v23)
    {
      v28 = v27 - v23;
      v29 = sub_23BE7AAE0(a1, v21);
      if (v29 <= v19)
      {
        v17 = v29;
      }

      else
      {
        v17 = v19;
      }

      v30 = v28 * (1.0 / (v17 + a9));
      v31 = 0.0;
      v32 = 0.0;
      v33 = 0.0;
      goto LABEL_43;
    }

    v41 = -v23;
    if (v27 < -v23)
    {
      v42 = v23 + v27;
      v43 = sub_23BE7AAE0(a1, v21);
      if (v43 <= v19)
      {
        v17 = v43;
      }

      else
      {
        v17 = v19;
      }

      v33 = v42 * (-1.0 / (v17 + a9));
      v30 = 0.0;
      v31 = 0.0;
      v32 = 0.0;
      v23 = v41;
      goto LABEL_43;
    }

    v32 = a10;
    v31 = -v26;
    v30 = 0.0;
LABEL_35:
    v33 = 0.0;
LABEL_36:
    v23 = 0.0;
    v47 = 0.0;
    goto LABEL_44;
  }

  if (v21 < a1[6])
  {
    __y = 0.0;
    v35 = fmin(modf((v21 - v24) / a1[8], &__y), 1.0);
    v30 = 0.0;
    if (v35 < 0.0)
    {
      v35 = 0.0;
    }

    v34 = &a1[5 * __y];
    v36 = atan2(v34[12] + (v34[17] - v34[12]) * v35, v34[11] + (v34[16] - v34[11]) * v35);
    v37 = sub_23BE7AAE0(a1, v21);
    v38 = 1.0 / (v37 + a9);
    v39 = v22 * a10 * v38;
    v40 = v36 - v39;
    if (v36 - v39 >= 0.0)
    {
      v30 = 1.57079633;
      if (v40 <= 1.57079633)
      {
        v33 = -v39;
        v31 = 0.0;
        v30 = v36;
        v17 = v37;
        v32 = 0.0;
LABEL_43:
        v47 = v54;
        goto LABEL_44;
      }

      v31 = v54 - (v40 + -1.57079633) / v38;
      v32 = 0.0;
      v17 = v18;
    }

    else
    {
      v31 = -(v23 + v40 / v38);
      v32 = 0.0;
    }

    goto LABEL_35;
  }

  v31 = v18 / tan(v21);
  v32 = a10;
  v44 = v31 + v22 * a10;
  if (v44 >= -v54)
  {
    if (v44 <= v54)
    {
      v33 = 0.0;
      v30 = 1.57079633;
      v17 = v18;
      goto LABEL_36;
    }

    v48 = v44 - v54;
    v49 = sub_23BE7AAE0(a1, v21);
    if (v49 <= v20)
    {
      v17 = v49;
    }

    else
    {
      v17 = v20;
    }

    v47 = v54;
    v30 = v48 * (-1.0 / (v17 + a9)) + 1.57079633;
    v31 = 0.0;
    v32 = 0.0;
    v33 = 0.0;
  }

  else
  {
    v45 = v54 + v44;
    v46 = sub_23BE7AAE0(a1, v21);
    if (v46 <= v20)
    {
      v17 = v46;
    }

    else
    {
      v17 = v20;
    }

    v33 = v45 * (1.0 / (v17 + a9)) + 1.57079633;
    v30 = 0.0;
    v31 = 0.0;
    v32 = 0.0;
    v47 = -v54;
  }

LABEL_44:
  if (v16 < 4.71238898)
  {
    if (v16 >= 3.14159265)
    {
      v47 = -v47;
      v23 = -v23;
      v50 = v30 + 3.14159265 + v33;
    }

    else
    {
      v50 = v30 + v33;
      if (v16 >= 1.57079633)
      {
        v47 = -v47;
        v50 = 3.14159265 - v50;
        goto LABEL_46;
      }
    }

    v51 = v31 + v32;
    goto LABEL_52;
  }

  v23 = -v23;
  v50 = 6.28318531 - (v30 + v33);
LABEL_46:
  v51 = v32 - v31;
LABEL_52:
  *a2 = v47;
  *a3 = v23;
  *a4 = v50;
  *a5 = v51;
  *a6 = v17 - a8;
}

double sub_23BE7AAE0(double *a1, double a2)
{
  v3 = a1[5];
  if (v3 > a2)
  {
    return a1[2];
  }

  if (a1[6] <= a2)
  {
    return a1[3];
  }

  __y = 0.0;
  v5 = modf((a2 - v3) / a1[8], &__y);
  v6 = &a1[5 * __y];
  v7 = fmin(v5, 1.0);
  if (v7 < 0.0)
  {
    v7 = 0.0;
  }

  v8 = v6[11] + (v6[16] - v6[11]) * v7;
  return sqrt((v6[12] + (v6[17] - v6[12]) * v7) * (v6[12] + (v6[17] - v6[12]) * v7) + v8 * v8);
}

float64_t NTKSuperEllipseRectFirstQuadrantPathCircumference(float64x2_t *a1)
{
  __asm { FMOV            V0.2D, #0.5 }

  v6 = vsubq_f64(vmulq_f64(*a1, _Q0), a1[1]);
  return v6.f64[0] + v6.f64[1] + a1[3].f64[1];
}

void NTKSuperEllipseRectGetPositionAtAngle(double *a1, double a2)
{
    ;
  }

  if (i < 4.71238898)
  {
    if (i >= 3.14159265)
    {
      v3 = i + -3.14159265;
    }

    else
    {
      v3 = i;
      if (i >= 1.57079633)
      {
        v3 = 3.14159265 - i;
      }
    }
  }

  else
  {
    v3 = 6.28318531 - i;
  }

  if (fabs(v3) >= 2.22044605e-16)
  {
    v4 = a1[5];
    if (v4 <= v3)
    {
      if (a1[6] <= v3)
      {
        tan(1.57079633 - v3);
      }

      else
      {
        __y = 0.0;
        modf((v3 - v4) / a1[8], &__y);
      }
    }

    else
    {
      tan(v3);
    }
  }
}

void NTKSuperEllipseRectGetXYAtPosition(uint64_t a1, double *a2, double *a3, double a4)
{
  v18 = 0;
  sub_23BE7AEE8(a1, &v18 + 1, &v18, a4);
  v8 = *a1 * 0.5;
  v9 = *(a1 + 8) * 0.5;
  v10 = v9 - *(a1 + 24);
  if (v10 <= v7)
  {
    v11 = v8 - *(a1 + 16);
    v12 = v10 + *(a1 + 56);
    if (v12 <= v7)
    {
      v16 = v11 + v12;
      v8 = 0.0;
      if (v16 > v7)
      {
        v8 = v16 - v7;
      }
    }

    else
    {
      __y = 0.0;
      v13 = modf((v7 - v10) / *(a1 + 72), &__y);
      v14 = (a1 + 40 * (__y + *(a1 + 80) + 1));
      v15 = fmin(v13, 1.0);
      if (v15 < 0.0)
      {
        v15 = 0.0;
      }

      v8 = v11 + v14[11] + (v14[16] - v14[11]) * v15;
      v9 = v10 + v14[12] + (v14[17] - v14[12]) * v15;
    }
  }

  else
  {
    v9 = v7;
  }

  v17 = -v8;
  if (!HIDWORD(v18))
  {
    v17 = v8;
  }

  if (v18)
  {
    v9 = -v9;
  }

  *a2 = v17;
  *a3 = v9;
}

float64x2_t *sub_23BE7AEE8(float64x2_t *result, _BOOL4 *a2, int *a3, double a4)
{
  __asm { FMOV            V1.2D, #0.5 }

  v9 = vsubq_f64(vmulq_f64(*result, _Q1), result[1]);
  v10 = v9.f64[0] + v9.f64[1] + result[3].f64[1];
  v11 = v10 + v10;
  v12 = v10 * 3.0;
  v13 = v10 * 4.0;
  v14 = v10 * 4.0;
  if (vabdd_f64(a4, v10 * 4.0) < 0.001 || (v14 = v10 * 3.0, vabdd_f64(a4, v12) < 0.001) || (v14 = v10 + v10, vabdd_f64(a4, v11) < 0.001) || (v14 = v10, vabdd_f64(a4, v10) < 0.001) || (i = 0.0, v14 = a4, fabs(a4) >= 0.001))
  {
      ;
    }
  }

  while (i > v13)
  {
    i = i - v13;
  }

  v16 = i > v10;
  if (i <= v11)
  {
    v17 = 0;
  }

  else
  {
    v16 = 1;
    v17 = 1;
  }

  if (i > v12)
  {
    v16 = 0;
    v17 = 1;
  }

  *a2 = v16;
  *a3 = v17;
  return result;
}

double NTKSuperEllipseRectGetPathRotationAtPosition(uint64_t a1, double a2)
{
  v11 = 0;
  sub_23BE7AEE8(a1, &v11 + 1, &v11, a2);
  v4 = *(a1 + 8) * 0.5 - *(a1 + 24);
  v5 = 0.0;
  if (v4 <= v3)
  {
    if (v4 + *(a1 + 56) <= v3)
    {
      v5 = 1.57079633;
    }

    else
    {
      __y = 0.0;
      v7 = fmin(modf((v3 - v4) / *(a1 + 72), &__y), 1.0);
      if (v7 < 0.0)
      {
        v7 = 0.0;
      }

      v6 = a1 + 40 * (__y + *(a1 + 80) + 1);
      v5 = *(v6 + 112) + (*(v6 + 152) - *(v6 + 112)) * v7;
    }
  }

  if (HIDWORD(v11))
  {
    v8 = 1;
  }

  else
  {
    v8 = v11 == 0;
  }

  if (!v8)
  {
    return 6.28318531 - v5;
  }

  if (HIDWORD(v11) && v11)
  {
    return v5 + 3.14159265;
  }

  if (v11)
  {
    v10 = 1;
  }

  else
  {
    v10 = HIDWORD(v11) == 0;
  }

  result = 3.14159265 - v5;
  if (v10)
  {
    return v5;
  }

  return result;
}

double NTKSuperEllipseRectGetTravelRatioForInsetAtPosition(uint64_t a1, double a2, double a3)
{
  sub_23BE7AEE8(a1, &v15, &v14, a2);
  v6 = *(a1 + 8) * 0.5 - *(a1 + 24);
  v7 = 1.0;
  if (v6 <= v5 && v6 + *(a1 + 56) > v5)
  {
    __y = 0.0;
    v8 = modf((v5 - v6) / *(a1 + 72), &__y);
    v9 = (a1 + 40 * (__y + *(a1 + 80) + 1));
    v10 = fmin(v8, 1.0);
    if (v10 < 0.0)
    {
      v10 = 0.0;
    }

    v11 = v9[11] + (v9[16] - v9[11]) * v10;
    v12 = sqrt((v9[12] + (v9[17] - v9[12]) * v10) * (v9[12] + (v9[17] - v9[12]) * v10) + v11 * v11);
    return v12 / (v12 - a3);
  }

  return v7;
}

double NTKSuperEllipseRectGetXYAfterTravelFromPosition(double *a1, double *a2, double *a3, double a4, double a5)
{
    ;
  }

    ;
  }

  v10 = *a2;
  v11 = *a3;
  if (a5 < 0.0)
  {
    v12 = -a5;
    v29 = i + i;
    v13 = 0.0;
    v14 = 4.0;
    while (1)
    {
      if (fabs(a4) < 2.22044605e-16)
      {
        a4 = i * 4.0;
      }

      v15 = a4 >= 0.0 ? a4 : a4 + i * v14;
      if (v15 > i * 3.0)
      {
        break;
      }

      if (v15 > v29)
      {
        v17 = v15 + i * -2.0;
        v18 = -(v12 - v13);
        v32 = -v10;
        v11 = -v11;
      }

      else
      {
        if (v15 <= i)
        {
          v31 = v11;
          v32 = v10;
          sub_23BE7BE9C(a1, &v32, &v31, -(v12 - v13), v15);
          v13 = v13 + v20;
          a4 = v15 - v20;
          goto LABEL_20;
        }

        v17 = -(v15 - i * 2.0);
        v18 = v12 - v13;
        v32 = -v10;
      }

      v31 = v11;
      sub_23BE7BE9C(a1, &v32, &v31, v18, v17);
      v13 = v13 + v19;
      a4 = v15 - v19;
      v32 = -v32;
      if (v15 > v29)
      {
        goto LABEL_19;
      }

LABEL_20:
      v11 = v31;
      v10 = v32;
      v14 = 4.0;
      if (v12 - v13 <= 0.00000011920929)
      {
        goto LABEL_40;
      }
    }

    v31 = -v11;
    v32 = v10;
    sub_23BE7BE9C(a1, &v32, &v31, v12 - v13, -(v15 - i * v14));
    v13 = v13 + v16;
    a4 = v15 - v16;
LABEL_19:
    v31 = -v31;
    goto LABEL_20;
  }

  v30 = i + i;
  v13 = 0.0;
  do
  {
    v21 = a4 + i * -4.0;
    if (fabs(v21) < 2.22044605e-16)
    {
      a4 = 0.0;
    }

    if (v21 <= 0.0)
    {
      v22 = a4;
    }

    else
    {
      v22 = a4 + i * -4.0;
    }

    if (v22 > i * 3.0)
    {
      v31 = -v11;
      v32 = v10;
      sub_23BE7BE9C(a1, &v32, &v31, -(a5 - v13), -(v22 - i * 4.0));
      v13 = v13 + v23;
      a4 = v22 + v23;
LABEL_36:
      v31 = -v31;
      goto LABEL_37;
    }

    if (v22 >= v30)
    {
      v24 = v22 + i * -2.0;
      v25 = a5 - v13;
      v32 = -v10;
      v11 = -v11;
LABEL_35:
      v31 = v11;
      sub_23BE7BE9C(a1, &v32, &v31, v25, v24);
      v13 = v13 + v26;
      a4 = v22 + v26;
      v32 = -v32;
      if (v22 < v30)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }

    if (v22 > i)
    {
      v24 = -(v22 - i * 2.0);
      v25 = -(a5 - v13);
      v32 = -v10;
      goto LABEL_35;
    }

    v31 = v11;
    v32 = v10;
    sub_23BE7BE9C(a1, &v32, &v31, a5 - v13, v22);
    v13 = v13 + v27;
    a4 = v22 + v27;
LABEL_37:
    v11 = v31;
    v10 = v32;
  }

  while (a5 - v13 > 0.00000011920929);
LABEL_40:
  *a2 = v10;
  *a3 = v11;
  return v13;
}

void NTKSuperEllipseRectGetPathTangentAtAngle(uint64_t a1, double a2)
{
  if (a2 >= 4.71238898)
  {
    v3 = 6.28318531;
LABEL_3:
    v4 = v3 - a2;
    goto LABEL_8;
  }

  v3 = 3.14159265;
  if (a2 >= 3.14159265)
  {
    v4 = a2 + -3.14159265;
  }

  else
  {
    v4 = a2;
    if (a2 >= 1.57079633)
    {
      goto LABEL_3;
    }
  }

LABEL_8:
  if (v4 >= *(a1 + 40) && v4 < *(a1 + 48))
  {
    sub_23BE7B65C(v4, *(a1 + 16), *(a1 + 24), *(a1 + 32), *a1 * 0.5 - *(a1 + 16), *(a1 + 8) * 0.5 - *(a1 + 24));
  }
}

double sub_23BE7B65C(double a1, double a2, double a3, long double a4, double a5, double a6)
{
  v13 = 0.0;
  v14 = 0.0;
  sub_23BE7BDF4(&v14, &v13, a1, a2, a3, a4, a5, a6);
  v9 = v13;
  v10 = a4 / a2 * pow(v14 / a2, a4 + -1.0);
  v11 = a4 / a3 * pow(v9 / a3, a4 + -1.0);

  return atan2(v11, v10);
}

double NTKSuperEllipseRectGetTravelRatioForInsetAtAngle(double *a1, double a2, double a3)
{
  if (a2 >= 4.71238898)
  {
    v4 = 6.28318531;
  }

  else
  {
    v4 = 3.14159265;
    if (a2 >= 3.14159265)
    {
      a2 = a2 + -3.14159265;
      goto LABEL_8;
    }

    if (a2 < 1.57079633)
    {
      goto LABEL_8;
    }
  }

  a2 = v4 - a2;
LABEL_8:
  v5 = 1.0;
  if (a2 >= a1[5] && a2 < a1[6])
  {
    v6 = sub_23BE7AAE0(a1, a2);
    return v6 / (v6 - a3);
  }

  return v5;
}

double *NTKSuperEllipseRectNew(unsigned int a1, double a2, double a3, double a4, double a5, long double a6)
{
  v11 = a1 + 1;
  v12 = a1 == -1;
  v13 = malloc_type_malloc(80 * (a1 + 1) + 88, 0x1000040624EA6DBuLL);
  v14 = a3 * 0.5;
  v75 = a2 * 0.5 - a4;
  v15 = atan2(a3 * 0.5, v75);
  v16 = v14 - a5;
  v17 = atan2(v14 - a5, a2 * 0.5);
  *v13 = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = a6;
  v13[5] = v17;
  v70 = v17;
  v13[6] = v15;
  v68 = (v15 - v17) / a1;
  v13[8] = v68;
  *(v13 + 20) = a1;
  v18 = 0.0;
  v77 = a5;
  v19 = sub_23BE7BC58(a4, 0.0, a4, a5, a6);
  v20 = v16;
  v21 = v75;
  v22 = v19;
  v13[7] = v19;
  v64 = v19 / a1;
  v13[9] = v64;
  if (!v12)
  {
    v23 = 0;
    v24 = 1.0;
    v25 = v13 + 11;
    v26 = a5;
    v74 = v20;
    do
    {
      v78 = 0.0;
      v79 = 0.0;
      if (v23)
      {
        v27 = 0.0;
        v28 = v26;
        v29 = 1.57079633;
        v30 = v22;
        if (v23 < a1)
        {
          sub_23BE7BDF4(&v79, &v78, v70 + v68 * v18, a4, v26, a6, v21, v20);
          v28 = v78;
          v30 = sub_23BE7BC58(0.0, v78, a5, a4, a6);
          v29 = sub_23BE7B65C(v70 + v68 * v18, a4, a5, a6, v75, v74);
          v24 = 1.0;
          v20 = v74;
          v21 = v75;
          v26 = a5;
          v27 = v79;
        }
      }

      else
      {
        v28 = 0.0;
        v27 = a4;
        v29 = 0.0;
        v30 = 0.0;
      }

      *v25 = v27;
      v25[1] = v28;
      v25[3] = v29;
      v25[4] = v30;
      v25[2] = sqrt((v20 + v28) * (v20 + v28) + (v21 + v27) * (v21 + v27));
      v25 += 5;
      v18 = v18 + v24;
      ++v23;
    }

    while (a1 + 1 != v23);
    if (v11)
    {
      v31 = &v13[5 * v11 + 11];
      v32 = 0.0;
      v33 = pow(0.0 / a5, a6);
      v71 = pow(1.0 - v33, 1.0 / a6) * a4;
      v34 = pow(a4 / a4, a6);
      v65 = 1.0 / a6;
      v35 = pow(1.0 - v34, 1.0 / a6);
      v37 = v74;
      v36 = v75;
      v38 = 0;
      v39 = v35 * a5;
      v63 = a6 + -1.0;
      if (a4 / a4 >= 0.0 / a5)
      {
        v40 = 0.0;
      }

      else
      {
        v40 = v39;
      }

      v41 = v71;
      if (a4 / a4 < 0.0 / a5)
      {
        v41 = a4;
      }

      v66 = v41;
      v67 = v40;
      do
      {
        v42 = a4;
        v43 = 0.0;
        v44 = 0.0;
        if (v38)
        {
          v42 = 0.0;
          v43 = v77;
          v44 = 1.57079633;
          if (v38 < a1)
          {
            v45 = v64 * v32;
            if (v64 * v32 < 0.0)
            {
              v46 = -(v64 * v32);
            }

            else
            {
              v46 = v64 * v32;
            }

            v42 = v66;
            v43 = v67;
            v47 = v77;
            if (v46 > 0.0)
            {
              v42 = v66;
              v43 = v67;
              if (v66 >= 0.0)
              {
                if (v45 < 0.0)
                {
                  v48 = -0.125;
                }

                else
                {
                  v48 = 0.125;
                }

                if (v45 < 0.0)
                {
                  v49 = 0.125;
                }

                else
                {
                  v49 = -0.125;
                }

                v50 = 0.0;
                v52 = v66;
                v51 = v67;
                v69 = v49;
                v72 = v48;
                while (v52 <= a4)
                {
                  if (v51 < 0.0 || v51 > v47)
                  {
                    break;
                  }

                  if (v52 / a4 >= v51 / v47)
                  {
                    v43 = v48 + v51;
                    if (v48 + v51 <= 0.0)
                    {
                      v42 = a4;
                    }

                    else
                    {
                      v42 = 0.0;
                      if (v43 < a4)
                      {
                        v56 = pow(v43 / v47, a6);
                        v57 = pow(1.0 - v56, v65);
                        v49 = v69;
                        v48 = v72;
                        v47 = v77;
                        v42 = v57 * a4;
                      }
                    }
                  }

                  else
                  {
                    v42 = v49 + v52;
                    if (v49 + v52 <= 0.0)
                    {
                      v43 = v47;
                    }

                    else
                    {
                      v43 = 0.0;
                      if (v42 < a4)
                      {
                        v54 = pow(v42 / a4, a6);
                        v55 = pow(1.0 - v54, v65);
                        v49 = v69;
                        v48 = v72;
                        v47 = v77;
                        v43 = v55 * v77;
                      }
                    }
                  }

                  if (v42 >= 0.0)
                  {
                    v50 = v50 + sqrt((v43 - v51) * (v43 - v51) + (v42 - v52) * (v42 - v52));
                    v52 = v42;
                    v51 = v43;
                    if (v50 < v46)
                    {
                      continue;
                    }
                  }

                  goto LABEL_47;
                }

                v43 = v51;
                v42 = v52;
              }
            }

LABEL_47:
            v58 = v47;
            v59 = a6 / a4 * pow(v42 / a4, v63);
            v60 = pow(v43 / v58, v63);
            v44 = atan2(a6 / v77 * v60, v59);
            v37 = v74;
            v36 = v75;
          }
        }

        *v31 = v42;
        v31[1] = v43;
        v31[2] = sqrt((v37 + v43) * (v37 + v43) + (v36 + v42) * (v36 + v42));
        v31[3] = v44;
        v31 += 5;
        v32 = v32 + 1.0;
      }

      while (v38++ != a1);
    }
  }

  return v13;
}

double sub_23BE7BC58(double a1, double a2, double a3, double a4, long double a5)
{
  if (a2 <= a1)
  {
    v5 = a2;
  }

  else
  {
    v5 = a1;
  }

  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  v7 = 0.0;
  if (v6 > v5 && v6 >= 0.0)
  {
    v11 = 1.0 / a5;
    v12 = pow(v6 / a3, a5);
    __y = v11;
    v13 = pow(1.0 - v12, v11) * a4;
    v7 = 0.0;
    v14 = -0.125;
    v15 = 0.125;
    do
    {
      if (v6 > a3)
      {
        break;
      }

      if (v13 < 0.0 || v13 > a4)
      {
        break;
      }

      if (v6 / a3 >= v13 / a4)
      {
        v22 = v13 + v15;
        v19 = 0.0;
        v18 = a3;
        if (v13 + v15 > 0.0)
        {
          v18 = 0.0;
          v19 = a3;
          if (v22 < a3)
          {
            v23 = pow(v22 / a4, a5);
            v24 = pow(1.0 - v23, __y);
            v15 = 0.125;
            v14 = -0.125;
            v18 = v24 * a3;
            v19 = v22;
          }
        }
      }

      else
      {
        v17 = v6 + v14;
        v18 = 0.0;
        v19 = a4;
        if (v6 + v14 > 0.0)
        {
          v19 = 0.0;
          v18 = a3;
          if (v17 < a3)
          {
            v20 = pow(v17 / a3, a5);
            v21 = pow(1.0 - v20, __y);
            v15 = 0.125;
            v14 = -0.125;
            v19 = v21 * a4;
            v18 = v17;
          }
        }
      }

      v7 = v7 + sqrt((v19 - v13) * (v19 - v13) + (v18 - v6) * (v18 - v6));
      if (v18 <= v5)
      {
        break;
      }

      v6 = v18;
      v13 = v19;
    }

    while (v18 >= 0.0);
  }

  return v7;
}

void sub_23BE7BDF4(double *a1, double *a2, double a3, double a4, double a5, long double a6, double a7, double a8)
{
  if (a5 >= a4)
  {

    sub_23BE7C12C(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    v11 = 0;
    v12 = 0;
    sub_23BE7C12C(&v12, &v11, 1.57079633 - a3, a5, a4, a6, a8, a7);
    v10 = v12;
    *a1 = v11;
    *a2 = v10;
  }
}

void sub_23BE7BE9C(double *a1, double *a2, double *a3, double a4, double a5)
{
  v8 = *a1 * 0.5;
  v9 = v8 - a1[2];
  v10 = a1[1] * 0.5;
  v11 = v10 - a1[3];
  v12 = v11 + a1[7];
  v13 = *a2;
  v14 = *a3;
  v15 = a4 + a5;
  if (a4 >= 0.0)
  {
    v21 = a5;
    if (v11 > a5)
    {
      if (v11 - a5 > v15 - a5)
      {
        *a2 = v8;
LABEL_24:
        *a3 = v15;
        return;
      }

      v21 = v11 - a5 + a5;
      v14 = v10 - a1[3];
      v13 = *a1 * 0.5;
    }

    if (v21 >= v12)
    {
      v22 = v21;
    }

    else
    {
      v22 = v11 + a1[7];
      if (v15 - v21 < v12 - v21)
      {
        v24 = v14 - v11;
        v25 = v13 - v9;
        sub_23BE7C078(a1, &v25, &v24, v15 - v21, v21 - v11);
        *a2 = v9 + v25;
        *a3 = v11 + v24;
        return;
      }
    }

    if (v22 >= v9 + v12)
    {
      *a2 = 0.0;
      *a3 = v10;
      return;
    }

    v23 = v9 + v12 - v15;
LABEL_22:
    *a2 = v23;
    *a3 = v10;
    return;
  }

  v16 = a5;
  if (v12 >= a5)
  {
    goto LABEL_5;
  }

  v17 = a5 - v12;
  if (a5 - v15 <= a5 - v12)
  {
    v23 = v9 - (v17 - (a5 - v15));
    goto LABEL_22;
  }

  v16 = a5 - v17;
  v14 = a1[1] * 0.5;
  v13 = v8 - a1[2];
LABEL_5:
  v18 = v16 - v11;
  v19 = v16 - v15;
  if (v16 <= v11 || v19 >= v18)
  {
    *a2 = v8;
    if (v15 <= 0.0)
    {
      *a3 = 0.0;
      return;
    }

    goto LABEL_24;
  }

  v24 = v14 - v11;
  v25 = v13 - v9;
  sub_23BE7C078(a1, &v25, &v24, -v19, v18);
  *a2 = v9 + v25;
  *a3 = v11 + v24;
}

double sub_23BE7C078(uint64_t a1, double *a2, double *a3, double a4, double a5)
{
  __y = 0.0;
  v9 = modf((a4 + a5) / *(a1 + 72), &__y);
  v10 = (a1 + 40 * (__y + *(a1 + 80) + 1));
  v11 = fabs(a4);
  v12 = v10[12];
  v13 = v10[17];
  v14 = fmin(v9, 1.0);
  if (v14 < 0.0)
  {
    v14 = 0.0;
  }

  *a2 = v10[11] + (v10[16] - v10[11]) * v14;
  *a3 = v12 + (v13 - v12) * v14;
  return v11;
}

void sub_23BE7C12C(double *a1, double *a2, double a3, double a4, double a5, long double a6, double a7, double a8)
{
  v10 = a4;
  v12 = 0.0;
  v15 = 1.0 / a6;
  while (1)
  {
    v16 = (v12 + v10) * 0.5;
    v17 = pow(v16 / a4, a6);
    v18 = pow(1.0 - v17, v15) * a5;
    v19 = atan2(v18 + a8, v16 + a7);
    if (vabdd_f64(v19, a3) < 0.00174532925)
    {
      break;
    }

    if (v19 - a3 <= 0.0)
    {
      v10 = (v12 + v10) * 0.5;
    }

    else
    {
      v12 = (v12 + v10) * 0.5;
    }
  }

  *a1 = v16;
  *a2 = v18;
}

uint64_t NTKFoghornFaceNSBundle()
{
  v0 = MEMORY[0x277CCA8D8];
  v2 = objc_opt_class();

  return objc_msgSend_bundleForClass_(v0, v1, v2, v3);
}

id NTKFoghornFaceBundleLogObject()
{
  v0 = MEMORY[0x277CCA8D8];
  v1 = objc_opt_class();
  v4 = objc_msgSend_bundleForClass_(v0, v2, v1, v3);
  v8 = objc_msgSend_principalClass(v4, v5, v6, v7);

  if (objc_opt_respondsToSelector())
  {
    v12 = objc_msgSend_logObject(v8, v9, v10, v11);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

__CFString *NTKFoghornFaceLocalizedString(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x277CCA8D8];
  v3 = objc_opt_class();
  v6 = objc_msgSend_bundleForClass_(v2, v4, v3, v5);
  v10 = objc_msgSend_principalClass(v6, v7, v8, v9);

  if (objc_opt_respondsToSelector())
  {
    v12 = objc_msgSend_localizedStringForKey_comment_(v10, v11, v1, &stru_284E9D198);
  }

  else
  {
    v12 = &stru_284E9D198;
  }

  return v12;
}

__CFString *NTKFoghornFaceLocalizedMarkdownString(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x277CCA8D8];
  v3 = objc_opt_class();
  v6 = objc_msgSend_bundleForClass_(v2, v4, v3, v5);
  v10 = objc_msgSend_principalClass(v6, v7, v8, v9);

  if (objc_opt_respondsToSelector())
  {
    v12 = objc_msgSend_localizedMarkdownStringForKey_comment_(v10, v11, v1, &stru_284E9D198);
  }

  else
  {
    v12 = &stru_284E9D198;
  }

  return v12;
}

id NTKFoghornFaceImageNamed(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x277CCA8D8];
  v3 = objc_opt_class();
  v6 = objc_msgSend_bundleForClass_(v2, v4, v3, v5);
  v10 = objc_msgSend_principalClass(v6, v7, v8, v9);

  if (objc_opt_respondsToSelector())
  {
    v13 = objc_msgSend_imageWithName_(v10, v11, v1, v12);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t sub_23BE7C59C()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();

    return sub_23BE7C63C();
  }

  else
  {
    v2 = OBJC_IVAR___NTKFoghornHealthKitDataSource_subscriptions;
    swift_beginAccess();
    *(v0 + v2) = MEMORY[0x277D84FA0];

    *(v0 + OBJC_IVAR___NTKFoghornHealthKitDataSource_healthKitProvider) = 0;
  }
}

uint64_t sub_23BE7C63C()
{
  v1 = sub_23BE7D0D4(&qword_27E1DCA70);
  v22 = *(v1 - 8);
  v23 = v1;
  MEMORY[0x28223BE20]();
  v3 = &v21 - v2;
  v4 = sub_23BE7D0D4(&qword_27E1DCA78);
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x28223BE20]();
  v24 = &v21 - v5;
  v6 = sub_23BE7D51C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20]();
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23BE7D4DC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20]();
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BE7D53C();
  MEMORY[0x28223BE20]();
  v14 = OBJC_IVAR___NTKFoghornHealthKitDataSource_healthKitProvider;
  v27 = v0;
  if (*(v0 + OBJC_IVAR___NTKFoghornHealthKitDataSource_healthKitProvider) || (sub_23BE7D57C(), sub_23BE7D52C(), (*(v11 + 104))(v13, *MEMORY[0x277D04670], v10), (*(v7 + 104))(v9, *MEMORY[0x277D04688], v6), v15 = sub_23BE7D55C(), sub_23BE7D54C(), sub_23BE7D1C4(&qword_27E1DCA80, &qword_27E1DCA70), sub_23BE7D164(), v16 = v23, v17 = v24, sub_23BE7D4AC(), (*(v22 + 8))(v3, v16), swift_allocObject(), v18 = v27, swift_unknownObjectWeakInit(), sub_23BE7D1C4(&qword_27E1DCA90, &qword_27E1DCA78), v19 = v26, sub_23BE7D4BC(), , (*(v25 + 8))(v17, v19), swift_beginAccess(), sub_23BE7D49C(), swift_endAccess(), , *(v18 + v14) = v15, result = , *(v18 + v14)))
  {

    sub_23BE7D56C();
  }

  return result;
}

void sub_23BE7CB24(void *a1)
{
  v2 = OBJC_IVAR___NTKFoghornHealthKitDataSource_maxDepth;
  v3 = *(v1 + OBJC_IVAR___NTKFoghornHealthKitDataSource_maxDepth);
  *(v1 + OBJC_IVAR___NTKFoghornHealthKitDataSource_maxDepth) = a1;
  v7 = a1;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(v1 + v2);
    [v5 maxDepthDidUpdateWithValue_];
    swift_unknownObjectRelease();
  }
}

id sub_23BE7CBC4()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR___NTKFoghornHealthKitDataSource_subscriptions;
  swift_beginAccess();
  *&v0[v2] = MEMORY[0x277D84FA0];

  *&v0[OBJC_IVAR___NTKFoghornHealthKitDataSource_healthKitProvider] = 0;

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_23BE7CD5C()
{
  v0 = sub_23BE7D4EC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20]();
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BE7D0D4(&qword_27E1DCA98);
  MEMORY[0x28223BE20]();
  v5 = &v16 - v4;
  v6 = sub_23BE7D50C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20]();
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BE7D4CC();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_23BE7D20C(v5);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      sub_23BE7CB24(0);
    }
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    swift_beginAccess();
    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = v12;
      (*(v1 + 104))(v3, *MEMORY[0x277D04680], v0);
      sub_23BE7D4FC();
      v15 = v14;
      (*(v1 + 8))(v3, v0);
      sub_23BE7CB24([objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_]);
    }

    (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_23BE7D0D4(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_23BE7D11C(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_23BE7D164()
{
  result = qword_27E1DCA88;
  if (!qword_27E1DCA88)
  {
    sub_23BE7D4DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1DCA88);
  }

  return result;
}

uint64_t sub_23BE7D1C4(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_23BE7D11C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23BE7D20C(uint64_t a1)
{
  v2 = sub_23BE7D0D4(&qword_27E1DCA98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_23BE7D370(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = 136315394;
  v6 = "[NTKSuperEllipseRectGeometry initForDevice:tangentialInset:]";
  v7 = 1024;
  v8 = objc_msgSend_sizeClass(a1, a2, a3, a4);
  _os_log_error_impl(&dword_23BE5B000, a2, OS_LOG_TYPE_ERROR, "%s: unexpected device size class = 0x%X", &v5, 0x12u);
}

void sub_23BE7D410(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "+[NTKFoghornWaterSubmersionUtilities lastDiveMaxDepth]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_23BE5B000, a2, OS_LOG_TYPE_ERROR, "%s: error decoding com.apple.Depth.lastDive data:, error = %@", &v2, 0x16u);
}

CGRect CGPathGetBoundingBox(CGPathRef path)
{
  MEMORY[0x2821114C8](path);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
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

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CTFontGetBoundingRectsForGlyphs(CTFontRef font, CTFontOrientation orientation, const CGGlyph *glyphs, CGRect *boundingRects, CFIndex count)
{
  MEMORY[0x282114780](font, *&orientation, glyphs, boundingRects, count);
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

CGSize CTFramesetterSuggestFrameSizeWithConstraints(CTFramesetterRef framesetter, CFRange stringRange, CFDictionaryRef frameAttributes, CGSize constraints, CFRange *fitRange)
{
  MEMORY[0x2821148B0](framesetter, stringRange.location, stringRange.length, frameAttributes, fitRange, constraints, *&constraints.height);
  result.height = v6;
  result.width = v5;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}