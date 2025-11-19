id AXCCLocalizedString(void *a1)
{
  v1 = MEMORY[0x29EDB9F48];
  v2 = a1;
  v3 = [v1 bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:v2 value:&stru_2A23E1258 table:@"Accessibility"];

  return v4;
}

double AXCCSizeCeilToViewScale(void *a1)
{
  v1 = a1;
  UICeilToViewScale();
  v3 = v2;
  UICeilToViewScale();

  return v3;
}

void sub_29C93CEB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_29C93D3F0(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v5[0] = 0;
  if (!qword_2A1798D18)
  {
    v5[1] = MEMORY[0x29EDCA5F8];
    v5[2] = 3221225472;
    v5[3] = sub_29C93D530;
    v5[4] = &unk_29F335428;
    v5[5] = v5;
    v6 = xmmword_29F335410;
    v7 = 0;
    qword_2A1798D18 = _sl_dlopen();
    v3 = v5[0];
    v2 = qword_2A1798D18;
    if (qword_2A1798D18)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = qword_2A1798D18;
LABEL_5:
  result = dlsym(v2, "AXFrontBoardRunningAppProcesses");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_2A1798D10 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_29C93D530()
{
  result = _sl_dlopen();
  qword_2A1798D18 = result;
  return result;
}

uint64_t sub_29C93DC30(uint64_t a1)
{
  v2 = [*(a1 + 40) isEqualToString:*MEMORY[0x29EDC80A0]];
  v3 = 0.0;
  if (v2)
  {
    v3 = 1.0;
  }

  v4 = *(*(a1 + 32) + 1016);

  return [v4 setAlpha:v3];
}

void sub_29C93F900(void *a1, double a2, uint64_t a3, void *a4, uint64_t a5)
{
  v8 = a4;
  [a1 setAlpha:a2];
  [a1 _setDrawsAsBackdropOverlayWithBlendMode:a5];
  [a1 setBackgroundColor:v8];
}

void sub_29C93F978(void *a1, double a2, uint64_t a3, void *a4, uint64_t a5)
{
  v8 = a4;
  [a1 setAlpha:a2];
  [a1 _setDrawsAsBackdropOverlayWithBlendMode:a5];
  [a1 setTextColor:v8];
}

void sub_29C93F9F0(void *a1, double a2, uint64_t a3, void *a4, uint64_t a5)
{
  v8 = a4;
  [a1 setAlpha:a2];
  [a1 _setDrawsAsBackdropOverlayWithBlendMode:a5];
  [a1 setTintColor:v8];
}

void sub_29C93FA68(void *a1, double a2, uint64_t a3, void *a4, uint64_t a5)
{
  v8 = a4;
  [a1 setAlpha:a2];
  [a1 _setDrawsAsBackdropOverlayWithBlendMode:a5];
  [a1 setColor:v8];
}

uint64_t sub_29C940680(uint64_t a1, void *a2, unint64_t a3)
{
  if (*(*(a1 + 32) + 456))
  {
    v3 = *(a1 + 80);
    v4 = *(a1 + 72) + v3 * a3;
    v5 = 0.0;
    v6 = 88;
  }

  else
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = 64;
    v3 = *(a1 + 56);
  }

  return [a2 setFrame:{v4, v5, v3, *(a1 + v6)}];
}

uint64_t sub_29C9406C4(uint64_t a1, void *a2, unint64_t a3)
{
  v3 = *(a1 + 32);
  if (*(v3 + 456))
  {
    v4 = *(v3 + 600);
    v5 = *(a1 + 72) + (*(a1 + 80) + v4) * a3;
    v6 = (a1 + 88);
    v7 = 0.0;
  }

  else
  {
    v7 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = (a1 + 56);
    v4 = *(a1 + 64);
  }

  return [a2 setFrame:{v7, v5, *v6, v4}];
}

void sub_29C940D04(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(*(a1 + 32) + 504);
  v6 = a2;
  v10 = [v5 objectAtIndexedSubscript:a3];
  v7 = [v6 title];
  [v10 setTitle:v7];

  v8 = [v6 packageName];
  [v10 setPackageName:v8];

  [v10 setStylingProvider:*(*(a1 + 32) + 496)];
  v9 = [v6 image];

  [v10 setImage:v9];
  [v10 setImageSize:{*(*(a1 + 32) + 592), *(*(a1 + 32) + 600)}];
  [v10 setAxis:{objc_msgSend(*(a1 + 32), "_buttonLayoutAxis")}];
  [v10 setContentVerticalAlignment:{objc_msgSend(*(a1 + 32), "contentVerticalAlignment")}];
  if (*(*(a1 + 32) + 461) == 1)
  {
    [v10 controlCenterApplyPrimaryContentShadow];
  }
}

uint64_t sub_29C941050(uint64_t a1)
{
  result = [*(a1 + 32) _layoutLabels];
  if (*(a1 + 40) == 1)
  {
    v3 = *(a1 + 32);

    return [v3 _layoutSelectionView];
  }

  return result;
}

void sub_29C9410A4(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v7 = a2;
  v5 = [v7 accessibilityTraits];
  if (v4 == a3)
  {
    v6 = *MEMORY[0x29EDC7FC0] | v5;
  }

  else
  {
    v6 = v5 & ~*MEMORY[0x29EDC7FC0];
  }

  [v7 setAccessibilityTraits:v6];
}

uint64_t sub_29C941578(uint64_t a1)
{
  [*(a1 + 32) _updateButtonsVisiblity];
  [*(a1 + 32) updateVisualStyling];
  v2 = *(a1 + 32);

  return [v2 _updateSelectionVisiblity];
}

uint64_t sub_29C94179C(uint64_t a1)
{
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = sub_29C941894;
  v4[3] = &unk_29F335510;
  v4[4] = *(a1 + 32);
  [MEMORY[0x29EDC7DA0] addKeyframeWithRelativeStartTime:v4 relativeDuration:0.0 animations:0.1];
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 3221225472;
  v3[2] = sub_29C9418A0;
  v3[3] = &unk_29F335510;
  v3[4] = *(a1 + 32);
  return [MEMORY[0x29EDC7DA0] addKeyframeWithRelativeStartTime:v3 relativeDuration:0.9 animations:0.1];
}

BOOL sub_29C941B98(uint64_t a1, void *a2)
{
  [a2 frame];
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);

  return CGRectContainsPoint(*&v3, *&v7);
}

uint64_t sub_29C941BD4(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v2 = 0.0;
    v3 = *(a1 + 40) / 6.0;
  }

  else
  {
    v3 = 0.0;
    v2 = *(a1 + 40) / 6.0;
  }

  CGAffineTransformMakeTranslation(&v7, v3, v2);
  v4 = *(*(a1 + 32) + 528);
  v6 = v7;
  result = [v4 setTransform:&v6];
  if (*(a1 + 57) == 1)
  {
    [*(a1 + 32) setSelectedOptionIndex:*(a1 + 48)];
    return [*(a1 + 32) _animateGlyphStateSelected:1];
  }

  return result;
}

BOOL sub_29C9420A4(uint64_t a1, void *a2)
{
  [a2 frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [*(a1 + 32) location];
  v12 = v11;
  v14 = v13;
  v15 = v4;
  v16 = v6;
  v17 = v8;
  v18 = v10;

  return CGRectContainsPoint(*&v15, *&v12);
}

void sub_29C942470(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  if (*(v5 + 456) == 1)
  {
    v6 = *(v5 + 472) != a3;
    v7 = a2;
    [v7 setUserInteractionEnabled:v6];
    [v7 setAlpha:1.0];
    [v7 setSelected:*(*(a1 + 32) + 472) == a3];
    v8 = *(*(a1 + 32) + 459);
  }

  else
  {
    v9 = a2;
    v8 = 1;
    [v9 setUserInteractionEnabled:1];
    v10 = 0.0;
    if (*(*(a1 + 32) + 472) == a3)
    {
      v10 = 1.0;
    }

    [v9 setAlpha:v10];
    [v9 setSelected:*(*(a1 + 32) + 472) == a3];
  }

  [a2 setLabelHidden:v8 & 1];
  [a2 setEnabled:{objc_msgSend(*(a1 + 32), "isEnabled")}];
}

uint64_t sub_29C942F5C(uint64_t a1)
{
  [*(a1 + 32) _layoutSelectionView];
  v2 = *(*(a1 + 32) + 528);
  v3 = *(MEMORY[0x29EDB90A0] + 16);
  v5[0] = *MEMORY[0x29EDB90A0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x29EDB90A0] + 32);
  return [v2 setTransform:v5];
}

void sub_29C94398C(uint64_t a1)
{
  v1 = [*(a1 + 32) textSizeDelegate];
  [v1 moduleDidExpand];
}

void sub_29C943E24(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1048) indexOfObject:*(a1 + 40)];
  if ([*(a1 + 32) contentRenderingMode] == 1)
  {
    v3 = *(a1 + 48);
    CCUISliderPreviewRenderingModeValue();
    v2 = vcvtpd_u64_f64(v4 * v3);
  }

  v5 = [*(a1 + 32) sliderView];
  [v5 setStep:v2];
}

uint64_t sub_29C944314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v61 = a3;
  v60 = sub_29C946068(&qword_2A1798C88);
  MEMORY[0x2A1C7C4A8]();
  v6 = &v47 - v5;
  *v6 = sub_29C9472B0();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v59 = v6;
  v7 = &v6[*(sub_29C946068(&qword_2A1798C90) + 44)];
  sub_29C9472A0();
  v55 = v8;
  type metadata accessor for AppPickerButtonModel();
  sub_29C946010();
  v57 = a2;
  v58 = a1;
  sub_29C947240();
  swift_getKeyPath();
  sub_29C947250();

  v87 = v90;
  LODWORD(v88[0]) = *v91;
  v62 = a1;
  v63 = a2;
  sub_29C946068(&qword_2A1798CA0);
  sub_29C946ABC();
  v56 = v7;
  sub_29C947340();
  v9 = sub_29C947320();
  KeyPath = swift_getKeyPath();
  v11 = &v7[*(sub_29C946068(&qword_2A1798CD0) + 36)];
  *v11 = KeyPath;
  v11[1] = v9;
  v55 = sub_29C9472B0();
  v66 = 1;
  sub_29C9472A0();
  v12 = sub_29C9472C0();
  v49 = v12;
  v51 = v13;
  v54 = v14;
  v47 = v15;
  sub_29C9472A0();
  v16 = sub_29C9472C0();
  v18 = v17;
  LOBYTE(v9) = v19;
  v50 = v20;
  sub_29C9472A0();
  v21 = sub_29C9472C0();
  v23 = v22;
  v25 = v24;
  LOBYTE(v90) = v54 & 1;
  v48 = v54 & 1;
  LOBYTE(v9) = v9 & 1;
  LOBYTE(v87) = v9;
  v27 = v26 & 1;
  LOBYTE(v64[0]) = v26 & 1;
  v53 = v9;
  v54 = v26 & 1;
  v28 = v12;
  v29 = v51;
  sub_29C946CB8(v28, v51, v48);

  sub_29C946CB8(v16, v18, v9);
  v30 = v50;

  v52 = v21;
  sub_29C946CB8(v21, v23, v27);

  sub_29C946CC8(v21, v23, v27);

  sub_29C946CC8(v16, v18, v9);

  v31 = v49;
  LOBYTE(v21) = v48;
  sub_29C946CC8(v49, v29, v48);
  v32 = v47;

  *(&v68 + 1) = v87;
  DWORD1(v68) = *(&v87 + 3);
  *(&v70 + 1) = v64[0];
  DWORD1(v70) = *(v64 + 3);
  DWORD1(v72) = *&v65[3];
  *(&v72 + 1) = *v65;
  *&v67 = v31;
  *(&v67 + 1) = v29;
  v73[0] = v31;
  v73[1] = v29;
  LOBYTE(v68) = v21;
  *(&v68 + 1) = v32;
  *&v69 = v16;
  *(&v69 + 1) = v18;
  LOBYTE(v70) = v53;
  *(&v70 + 1) = v30;
  *&v71 = v52;
  *(&v71 + 1) = v23;
  LOBYTE(v72) = v54;
  *(&v72 + 1) = v25;
  v74 = v21;
  *&v75[3] = *(&v87 + 3);
  *v75 = v87;
  v76 = v32;
  v77 = v16;
  v78 = v18;
  v79 = v53;
  *&v80[3] = *(v64 + 3);
  *v80 = v64[0];
  v81 = v30;
  v82 = v52;
  v83 = v23;
  v84 = v54;
  *v85 = *v65;
  *&v85[3] = *&v65[3];
  v86 = v25;
  sub_29C946BF0(&v67, &v90, &qword_2A1798CD8);
  sub_29C946C58(v73, &qword_2A1798CD8);
  *&v65[39] = v69;
  *&v65[55] = v70;
  *&v65[71] = v71;
  *&v65[87] = v72;
  *&v65[7] = v67;
  *&v65[23] = v68;
  LOBYTE(v31) = v66;
  v33 = sub_29C947360();
  v35 = v34;
  *(&v88[3] + 1) = *&v65[48];
  *(&v88[4] + 1) = *&v65[64];
  *(&v88[5] + 1) = *&v65[80];
  *(v88 + 1) = *v65;
  *(&v88[1] + 1) = *&v65[16];
  v36 = v55;
  v87 = v55;
  LOBYTE(v88[0]) = v31;
  *(&v88[2] + 1) = *&v65[32];
  v88[6] = *&v65[95];
  *&v89 = v33;
  *(&v89 + 1) = v34;
  v37 = sub_29C946068(&qword_2A1798CE0);
  v38 = &v56[*(v37 + 36)];
  v39 = v88[6];
  *(v38 + 6) = v88[5];
  *(v38 + 7) = v39;
  *(v38 + 8) = v89;
  v40 = v88[2];
  *(v38 + 2) = v88[1];
  *(v38 + 3) = v40;
  v41 = v88[4];
  *(v38 + 4) = v88[3];
  *(v38 + 5) = v41;
  v42 = v88[0];
  *v38 = v87;
  *(v38 + 1) = v42;
  v94 = *&v65[48];
  v95 = *&v65[64];
  *v96 = *&v65[80];
  *&v91[1] = *v65;
  v92 = *&v65[16];
  v90 = v36;
  v91[0] = v31;
  v93 = *&v65[32];
  *&v96[15] = *&v65[95];
  v97 = 0;
  v98 = v33;
  v99 = v35;
  sub_29C946BF0(&v87, v64, &qword_2A1798CE8);
  sub_29C946C58(&v90, &qword_2A1798CE8);
  swift_getKeyPath();
  swift_getKeyPath();
  v43 = v57;
  sub_29C947200();

  v44 = swift_allocObject();
  *(v44 + 16) = v58;
  *(v44 + 24) = v43;
  sub_29C946F2C(&qword_2A1798C98, &qword_2A1798C88);

  v45 = v59;
  sub_29C947310();

  return sub_29C946C58(v45, &qword_2A1798C88);
}

uint64_t sub_29C944A5C@<X0>(_DWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29C947200();

  *a1 = v3;
  return result;
}

uint64_t sub_29C944ADC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_29C947210();
}

uint64_t sub_29C944B74()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29C947200();

  return v1;
}

char *sub_29C944BF0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29C947200();

  v0 = v10;
  if (!(v10 >> 62))
  {
    v1 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_13:

    return MEMORY[0x29EDCA190];
  }

  v1 = sub_29C947400();
  if (!v1)
  {
    goto LABEL_13;
  }

LABEL_3:
  v11 = MEMORY[0x29EDCA190];
  result = sub_29C946108(0, v1 & ~(v1 >> 63), 0);
  if ((v1 & 0x8000000000000000) == 0)
  {
    v3 = 0;
    v4 = v11;
    do
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x29ED4CD30](v3, v0);
      }

      else
      {
        v5 = *(v0 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = [v5 correspondingState];

      v9 = *(v11 + 16);
      v8 = *(v11 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_29C946108((v8 > 1), v9 + 1, 1);
      }

      ++v3;
      *(v11 + 16) = v9 + 1;
      *(v11 + 4 * v9 + 32) = v7;
    }

    while (v1 != v3);

    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_29C944D84()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29C947200();

  return v1;
}

uint64_t sub_29C944DF8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29C947200();

  return v1;
}

uint64_t sub_29C944E6C()
{
  v1 = OBJC_IVAR____TtC27AccessibilityTextSizeModule20AppPickerButtonModel__options;
  v2 = sub_29C946068(&qword_2A1798C70);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC27AccessibilityTextSizeModule20AppPickerButtonModel__selection;
  v4 = sub_29C946068(&qword_2A1798C78);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC27AccessibilityTextSizeModule20AppPickerButtonModel__helper;
  v6 = sub_29C946068(&qword_2A1798C80);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return MEMORY[0x2A1C73398](v0, v7, v8);
}

uint64_t sub_29C944FAC()
{
  v16 = sub_29C946068(&qword_2A1798C80);
  v1 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8]();
  v3 = &v16 - v2;
  v4 = sub_29C946068(&qword_2A1798C78);
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8]();
  v7 = &v16 - v6;
  v8 = sub_29C946068(&qword_2A1798C70);
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8]();
  v11 = &v16 - v10;
  v12 = OBJC_IVAR____TtC27AccessibilityTextSizeModule20AppPickerButtonModel__options;
  v17 = MEMORY[0x29EDCA190];
  sub_29C946068(&qword_2A1798C00);
  sub_29C9471F0();
  (*(v9 + 32))(v0 + v12, v11, v8);
  v13 = OBJC_IVAR____TtC27AccessibilityTextSizeModule20AppPickerButtonModel__selection;
  LODWORD(v17) = 3;
  sub_29C9471F0();
  (*(v5 + 32))(v0 + v13, v7, v4);
  v14 = OBJC_IVAR____TtC27AccessibilityTextSizeModule20AppPickerButtonModel__helper;
  v17 = 0;
  sub_29C946068(&qword_2A1798C18);
  sub_29C9471F0();
  (*(v1 + 32))(v0 + v14, v3, v16);
  return v0;
}

uint64_t sub_29C945254@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AppPickerButtonModel();
  result = sub_29C9471E0();
  *a1 = result;
  return result;
}

uint64_t variable initialization expression of AppPickerButtonWrapperView.model()
{
  type metadata accessor for AppPickerButtonModel();
  v0 = swift_allocObject();
  sub_29C944FAC();
  return v0;
}

uint64_t type metadata accessor for AppPickerButtonModel()
{
  result = qword_2A1798D68;
  if (!qword_2A1798D68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_29C94531C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR___AXCCAppPickerButtonWrapperView_model;
  type metadata accessor for AppPickerButtonModel();
  v11 = swift_allocObject();
  sub_29C944FAC();
  *&v5[v10] = v11;
  v31.receiver = v5;
  v31.super_class = type metadata accessor for AppPickerButtonWrapperView();
  v12 = objc_msgSendSuper2(&v31, sel_initWithFrame_, a1, a2, a3, a4);
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  sub_29C946010();

  sub_29C947230();
  v13 = sub_29C946068(&qword_2A1798C30);
  v14 = objc_allocWithZone(v13);
  v15 = sub_29C947260();
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  [v12 addSubview_];
  v16 = objc_opt_self();
  v17 = sub_29C947380();
  sub_29C946068(&qword_2A1798C38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29C949150;
  *(inited + 32) = 0x56676E6974736F68;
  *(inited + 72) = v13;
  *(inited + 40) = 0xEB00000000776569;
  *(inited + 48) = v15;
  v19 = v15;
  sub_29C946638(inited);
  swift_setDeallocating();
  sub_29C946C58(inited + 32, &qword_2A1798C40);
  v20 = sub_29C947370();

  v21 = [v16 constraintsWithVisualFormat:v17 options:0 metrics:0 views:v20];

  sub_29C946768(0, &qword_2A1798C48);
  v22 = sub_29C9473C0();

  sub_29C945738(v22);
  v23 = sub_29C947380();
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_29C949150;
  *(v24 + 32) = 0x56676E6974736F68;
  *(v24 + 72) = v13;
  *(v24 + 40) = 0xEB00000000776569;
  *(v24 + 48) = v19;
  v25 = v19;
  sub_29C946638(v24);
  swift_setDeallocating();
  sub_29C946C58(v24 + 32, &qword_2A1798C40);
  v26 = sub_29C947370();

  v27 = [v16 constraintsWithVisualFormat:v23 options:0 metrics:0 views:v26];

  v28 = sub_29C9473C0();
  sub_29C945738(v28);
  v29 = sub_29C9473B0();

  [v16 activateConstraints_];

  return v12;
}

uint64_t sub_29C945738(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_29C947400();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_29C947400();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_29C9462A4(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_29C946484(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

Swift::Void __swiftcall AppPickerButtonWrapperView.setOptions(_:)(Swift::OpaquePointer a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_29C947210();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29C947200();

  if (a1._rawValue)
  {
    [a1._rawValue state];
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_29C947210();
}

Swift::Void __swiftcall AppPickerButtonWrapperView.setHelper(_:)(AXCCTextSizeHelper *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  v2 = a1;
  sub_29C947210();
}

id AppPickerButtonWrapperView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppPickerButtonWrapperView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29C945BC4@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29C947200();

  *a1 = v3;
  return result;
}

uint64_t sub_29C945C44()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_29C947210();
}

uint64_t sub_29C945CC0@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29C947200();

  *a1 = v3;
  return result;
}

uint64_t sub_29C945D40(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;

  return sub_29C947210();
}

void sub_29C945DE4()
{
  sub_29C945FB0(319, &qword_2A1798BF8, &qword_2A1798C00);
  if (v0 <= 0x3F)
  {
    sub_29C945F60();
    if (v1 <= 0x3F)
    {
      sub_29C945FB0(319, &qword_2A1798C10, &qword_2A1798C18);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_29C945F18(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_29C945F60()
{
  if (!qword_2A1798C08)
  {
    v0 = sub_29C947220();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1798C08);
    }
  }
}

void sub_29C945FB0(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    sub_29C945F18(a3);
    v4 = sub_29C947220();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_29C946010()
{
  result = qword_2A1798C28;
  if (!qword_2A1798C28)
  {
    type metadata accessor for AppPickerButtonModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1798C28);
  }

  return result;
}

uint64_t sub_29C946068(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_29C9460B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29C947270();
  *a1 = result;
  return result;
}

char *sub_29C946108(char *a1, int64_t a2, char a3)
{
  result = sub_29C946128(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_29C946128(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_29C946068(&qword_2A1798C68);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

unint64_t sub_29C94622C(uint64_t a1, uint64_t a2)
{
  sub_29C947430();
  sub_29C9473A0();
  v4 = sub_29C947440();

  return sub_29C946344(a1, a2, v4);
}

uint64_t sub_29C9462A4(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_29C947400();
LABEL_9:
  result = sub_29C9473E0();
  *v1 = result;
  return result;
}

unint64_t sub_29C946344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_29C947420())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void (*sub_29C9463FC(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x29ED4CD30](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_29C94647C;
  }

  __break(1u);
  return result;
}

uint64_t sub_29C946484(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_29C947400();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_29C947400();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_29C946F2C(&qword_2A1798C58, &qword_2A1798C50);
          for (i = 0; i != v6; ++i)
          {
            sub_29C946068(&qword_2A1798C50);
            v9 = sub_29C9463FC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_29C946768(0, &qword_2A1798C48);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_29C946638(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29C946068(&qword_2A1798C60);
    v3 = sub_29C947410();
    v4 = a1 + 32;

    while (1)
    {
      sub_29C946BF0(v4, &v13, &qword_2A1798C40);
      v5 = v13;
      v6 = v14;
      result = sub_29C94622C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_29C9467B0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x29EDCA198];
  }

  return result;
}

uint64_t sub_29C946768(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

_OWORD *sub_29C9467B0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

__n128 sub_29C9467C4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_29C9467D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_29C946818(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_29C946880()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

void sub_29C9468B8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29C947200();

  if (v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_29C947200();

    [v1 setState_];
  }
}

uint64_t sub_29C946990()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  sub_29C944BF0();
  swift_getKeyPath();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  sub_29C946068(&qword_2A1798CF0);
  sub_29C946068(&qword_2A1798CB8);
  sub_29C946F2C(&qword_2A1798CF8, &qword_2A1798CF0);
  sub_29C946B40();
  return sub_29C947350();
}

unint64_t sub_29C946ABC()
{
  result = qword_2A1798CA8;
  if (!qword_2A1798CA8)
  {
    sub_29C945F18(&qword_2A1798CA0);
    sub_29C946B40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1798CA8);
  }

  return result;
}

unint64_t sub_29C946B40()
{
  result = qword_2A1798CB0;
  if (!qword_2A1798CB0)
  {
    sub_29C945F18(&qword_2A1798CB8);
    sub_29C946F2C(&qword_2A1798CC0, &qword_2A1798CC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1798CB0);
  }

  return result;
}

uint64_t sub_29C946BF0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_29C946068(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29C946C58(uint64_t a1, uint64_t *a2)
{
  v3 = sub_29C946068(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29C946CB8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_29C946CC8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void sub_29C946CD8(int *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29C947200();

  if (v25 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29C947400())
  {
    v5 = 4;
    while (1)
    {
      v6 = v5 - 4;
      if ((v25 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x29ED4CD30](v5 - 4);
      }

      else
      {
        if (v6 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v7 = *(v25 + 8 * v5);
      }

      v8 = v7;
      v9 = __OFADD__(v6, 1);
      v10 = v5 - 3;
      if (v9)
      {
        break;
      }

      if ([v7 correspondingState] == v3)
      {

        v11 = sub_29C947290();
        v12 = [v8 image];
        v13 = sub_29C947330();
        v14 = [v8 title];
        sub_29C947390();

        sub_29C946F74();
        v15 = sub_29C9472D0();
        v17 = v16;
        v19 = v18;
        v21 = v20 & 1;
        v24 = v20 & 1;

        sub_29C946CB8(v15, v17, v21);

        sub_29C946CC8(v15, v17, v21);

        v22 = 1;
        v23 = v24;
        goto LABEL_17;
      }

      ++v5;
      if (v10 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  v11 = 0;
  v13 = 0;
  v15 = 0;
  v17 = 0;
  v19 = 0;
  v23 = 0;
  v22 = 0;
LABEL_17:
  *a2 = v11;
  a2[1] = 0;
  a2[2] = v22;
  a2[3] = v13;
  a2[4] = v15;
  a2[5] = v17;
  a2[6] = v23;
  a2[7] = v19;
}

uint64_t sub_29C946F2C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_29C945F18(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29C946F74()
{
  result = qword_2A1798D00;
  if (!qword_2A1798D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1798D00);
  }

  return result;
}

uint64_t sub_29C946FC8()
{
  sub_29C945F18(&qword_2A1798C88);
  sub_29C946F2C(&qword_2A1798C98, &qword_2A1798C88);
  return swift_getOpaqueTypeConformance2();
}

void sub_29C947078(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 description];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&dword_29C939000, a4, OS_LOG_TYPE_ERROR, "Couldn't read appName, error = %@", a1, 0xCu);
}

uint64_t sub_29C947134()
{
  dlerror();
  v0 = abort_report_np();
  return sub_29C947158(v0);
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x2A1C59BA0](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}