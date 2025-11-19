id sub_F8C(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(&unk_165F8);
  if (qword_16600)
  {
    v4 = qword_16600 == v3;
  }

  else
  {
    v4 = 0;
  }

  if (!v4 || (v5 = [v3 version], v5 != qword_16608))
  {
    qword_16600 = v3;
    qword_16608 = [v3 version];
    v6 = [*(a1 + 32) __orderedValuesForDevice:v3];
    v7 = qword_165F0;
    qword_165F0 = v6;
  }

  v8 = qword_165F0;
  os_unfair_lock_unlock(&unk_165F8);

  return v8;
}

void sub_1DB8(id a1)
{
  v3[0] = &off_10F00;
  v3[1] = &off_10F48;
  v4[0] = NTKFaceBundleStyle1;
  v4[1] = NTKFaceBundleStyle2;
  v3[2] = &off_10F30;
  v3[3] = &off_10EB8;
  v4[2] = NTKFaceBundleStyle3;
  v4[3] = NTKFaceBundleStyle4;
  v3[4] = &off_10ED0;
  v3[5] = &off_10EE8;
  v4[4] = NTKFaceBundleStyle5;
  v4[5] = NTKFaceBundleStyle6;
  v3[6] = &off_10F18;
  v3[7] = &off_10F60;
  v4[6] = NTKFaceBundleStyle7;
  v4[7] = NTKFaceBundleArabStyle1;
  v3[8] = &off_10F78;
  v4[8] = NTKFaceBundleDevaStyle1;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:9];
  v2 = qword_16610;
  qword_16610 = v1;
}

double NTKNumeralsAnalogStyleEditingBoxSize(void *a1)
{
  v1 = a1;
  sub_74AC(v1, &v5);
  v2 = *(&v5 + 1);
  sub_74AC(v1, &v4);

  return v2;
}

void sub_3DD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_3DF8(uint64_t a1, void *a2, id *a3)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _displayLinkFired];
}

void sub_4800(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 conformsToProtocol:&OBJC_PROTOCOL___NTKUtilityComplicationView])
  {
    v3 = *(a1 + 32);
    v4 = v5;
    [v4 setForegroundAlpha:v3];
    [v4 setForegroundImageAlpha:*(a1 + 40)];
  }
}

void sub_4A1C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 faceColorPalette];
  [v2 _applyFaceColorPalette:v4 toComplicationView:v3];
}

void sub_4D7C(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([v6 conformsToProtocol:&OBJC_PROTOCOL___NTKUtilityComplicationView])
  {
    v3 = *(a1 + 32);
    v4 = v6;
    v5 = [v3 foregroundColor];
    [v4 setForegroundColor:v5];
  }
}

void sub_4EE4(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if ([v8 isEqualToString:*(a1 + 32)])
  {
    v6 = *(a1 + 40);
    v7 = [v5 display];
    [v6 _configureComplicationView:v7 forSlot:v8];
  }
}

void sub_5144(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_5164(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 intValue];
  v6 = [NTKNumeralsHourView alloc];
  v7 = [WeakRetained _currentHour];
  v8 = [WeakRetained _faceConfiguration];
  v9 = [(NTKNumeralsHourView *)v6 initForHour:v7 style:v5 faceConfiguration:v8];

  [v9 frame];
  LODWORD(v7) = [v3 intValue];

  v10 = v7;
  v11 = [WeakRetained device];
  [NTKNumeralsAnalogElementsPlacement centerPointFor10NumeralInImageForStyle:v10 forDevice:v11];
  v13 = v12;
  v15 = v14;

  [v9 setFrame:{*(a1 + 48) * 0.5 - v13, *(a1 + 56) * 0.5 - v15}];

  return v9;
}

void sub_6120(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 display];
  (*(v3 + 16))(v3, v4);
}

void sub_6250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_6268(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 8);
  if (*(v2 + 24) == 1)
  {
    result = [a2 isHidden];
    v2 = *(*(a1 + 32) + 8);
  }

  else
  {
    result = 0;
  }

  *(v2 + 24) = result;
  return result;
}

void sub_6568(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_658C(uint64_t a1, double a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v9 = WeakRetained;
    if (*(a1 + 56) == 1)
    {
      [WeakRetained _updateComplicationPositionWithAnimationProgress:a2];
      WeakRetained = v9;
    }

    if (*(a1 + 57) == 1)
    {
      v5 = WeakRetained[5];
      v7 = *(a1 + 40);
      v6 = *(a1 + 48);
      v8 = [v9 _faceConfiguration];
      [v5 updateVisibleHour:v7 targetUtilitySlot:v6 faceConfiguration:v8 animationProgress:objc_msgSend(v9 forEditMode:{"toEditMode"), a2}];

      WeakRetained = v9;
    }
  }
}

void sub_665C(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (a2 && WeakRetained)
  {
    v9 = WeakRetained;
    if (*(a1 + 56) == 1)
    {
      [WeakRetained _updateComplicationPositionWithAnimationProgress:1.0];
      WeakRetained = v9;
    }

    if (*(a1 + 57) == 1)
    {
      v5 = WeakRetained[5];
      v7 = *(a1 + 40);
      v6 = *(a1 + 48);
      v8 = [v9 _faceConfiguration];
      [v5 updateVisibleHour:v7 targetUtilitySlot:v6 faceConfiguration:v8 animationProgress:objc_msgSend(v9 forEditMode:{"toEditMode"), 1.0}];

      WeakRetained = v9;
    }
  }
}

void sub_689C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [v5 configureComplicationViewDisplayWrapper:v6 forSlot:v7];
  v8 = *(a1 + 32);
  v9 = [v6 display];
  [v8 _configureComplicationView:v9 forSlot:v7];

  v10 = [v6 display];

  [v10 setNeedsLayout];
}

void sub_712C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  v9 = *(a1 + 96);
  v11[0] = *(a1 + 80);
  v11[1] = v9;
  v11[2] = *(a1 + 112);
  v10 = [NTKComplicationLayoutRule layoutRuleForDevice:v4 withReferenceFrame:3 horizontalLayout:3 verticalLayout:0 keylinePadding:v11 clip:v5 contentTransform:v6, v7, v8, -1.0, -1.0, -1.0, -1.0];
  [*(a1 + 40) setDefaultLayoutRule:v10 forState:a2];
}

void sub_73F0(id a1, UIView *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UIView *)v2 updateMonochromeColor];
  }
}

void sub_74AC(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v6 = a1;
  os_unfair_lock_lock(&unk_16660);
  if (qword_16668)
  {
    v3 = qword_16668 == v6;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v6 version], v4 != qword_16670))
  {
    qword_16668 = v6;
    qword_16670 = [v6 version];
    sub_7584(v6, v7);
    xmmword_16630 = v7[0];
    unk_16640 = v7[1];
    xmmword_16650 = v7[2];
  }

  v5 = unk_16640;
  *a2 = xmmword_16630;
  a2[1] = v5;
  a2[2] = xmmword_16650;
  os_unfair_lock_unlock(&unk_16660);
}

void sub_7584(void *a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 24) = 0;
  v3 = a1;
  v4 = [v3 sizeClass];
  CLKValueForDeviceMetrics();
  *a2 = v5;
  CLKValueForDeviceMetrics();
  *(a2 + 8) = v6;
  CLKValueForDeviceMetrics();
  v8 = v7;

  *(a2 + 16) = v8;
  *(a2 + 24) = 5;
  *(a2 + 32) = 0x4018000000000000;
  v9 = 4.0;
  if (!v4)
  {
    v9 = 2.5;
  }

  *(a2 + 40) = v9;
}

double sub_7668(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_16688);
  if (qword_16690)
  {
    v3 = qword_16690 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_16698))
  {
    v5 = qword_16678;
  }

  else
  {
    qword_16690 = v2;
    qword_16698 = [v2 version];
    v5 = sub_7730(qword_16698, v2);
    qword_16678 = v5;
    qword_16680 = v6;
  }

  os_unfair_lock_unlock(&unk_16688);

  return *&v5;
}

double sub_7730(uint64_t a1, uint64_t a2)
{
  v2 = [CLKDeviceMetrics metricsWithDevice:a2 identitySizeClass:2];
  v10[0] = &off_11098;
  v10[1] = &off_110B0;
  v11[0] = &off_11518;
  v11[1] = &off_11528;
  v10[2] = &off_110C8;
  v10[3] = &off_110E0;
  v11[2] = &off_11538;
  v11[3] = &off_11548;
  v3 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:4];
  [v2 scaledValue:v3 withOverrides:60.0];

  v8[0] = &off_11098;
  v8[1] = &off_110B0;
  v9[0] = &off_11558;
  v9[1] = &off_11568;
  v8[2] = &off_110C8;
  v8[3] = &off_110E0;
  v9[2] = &off_11578;
  v9[3] = &off_11588;
  v4 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:4];
  [v2 scaledValue:v4 withOverrides:77.5];
  v6 = v5;

  return v6;
}

double sub_78C4(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_166A8);
  if (qword_166B0)
  {
    v3 = qword_166B0 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_166B8))
  {
    v5 = qword_166A0;
  }

  else
  {
    qword_166B0 = v2;
    qword_166B8 = [v2 version];
    v5 = sub_7974(qword_166B8, v2);
    qword_166A0 = v5;
  }

  os_unfair_lock_unlock(&unk_166A8);

  return *&v5;
}

double sub_7974(uint64_t a1, uint64_t a2)
{
  v2 = [CLKDeviceMetrics metricsWithDevice:a2 identitySizeClass:2];
  v7[0] = &off_110F8;
  v7[1] = &off_11110;
  v8[0] = &off_11598;
  v8[1] = &off_115A8;
  v7[2] = &off_11128;
  v7[3] = &off_11140;
  v8[2] = &off_115B8;
  v8[3] = &off_115B8;
  v3 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:4];
  [v2 scaledValue:v3 withOverrides:17.0];
  v5 = v4;

  return v5;
}

id sub_7B28(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_166C8);
  if (qword_166D0)
  {
    v3 = qword_166D0 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != qword_166D8))
  {
    qword_166D0 = v2;
    qword_166D8 = [v2 version];
    v5 = sub_7BE8(qword_166D8, v2);
    v6 = qword_166C0;
    qword_166C0 = v5;
  }

  v7 = qword_166C0;
  os_unfair_lock_unlock(&unk_166C8);

  return v7;
}

id sub_7BE8(uint64_t a1, uint64_t a2)
{
  v2 = [CLKDeviceMetrics metricsWithDevice:a2 identitySizeClass:2];
  v14[0] = &off_11158;
  [v2 scaledPoint:{36.5, 49.5}];
  v13 = [NSValue valueWithCGPoint:?];
  v15[0] = v13;
  v14[1] = &off_11170;
  [v2 scaledPoint:{37.0, 49.5}];
  v3 = [NSValue valueWithCGPoint:?];
  v15[1] = v3;
  v14[2] = &off_11188;
  [v2 scaledPoint:{36.5, 49.5}];
  v4 = [NSValue valueWithCGPoint:?];
  v15[2] = v4;
  v14[3] = &off_110F8;
  [v2 scaledPoint:{36.5, 49.5}];
  v5 = [NSValue valueWithCGPoint:?];
  v15[3] = v5;
  v14[4] = &off_11110;
  [v2 scaledPoint:{36.5, 49.5}];
  v6 = [NSValue valueWithCGPoint:?];
  v15[4] = v6;
  v14[5] = &off_11128;
  [v2 scaledPoint:{36.5, 49.5}];
  v7 = [NSValue valueWithCGPoint:?];
  v15[5] = v7;
  v14[6] = &off_11140;
  [v2 scaledPoint:{38.0, 49.5}];
  v8 = [NSValue valueWithCGPoint:?];
  v15[6] = v8;
  v14[7] = &off_111A0;
  [v2 scaledPoint:{33.5, 50.5}];
  v9 = [NSValue valueWithCGPoint:?];
  v15[7] = v9;
  v14[8] = &off_111B8;
  [v2 scaledPoint:{33.5, 50.0}];
  v10 = [NSValue valueWithCGPoint:?];
  v15[8] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:9];

  return v11;
}

id sub_7F3C(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_166E8);
  if (qword_166F0)
  {
    v3 = qword_166F0 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != qword_166F8))
  {
    qword_166F0 = v2;
    qword_166F8 = [v2 version];
    v5 = qword_166E0;
    qword_166E0 = &off_11500;
  }

  v6 = qword_166E0;
  os_unfair_lock_unlock(&unk_166E8);

  return v6;
}