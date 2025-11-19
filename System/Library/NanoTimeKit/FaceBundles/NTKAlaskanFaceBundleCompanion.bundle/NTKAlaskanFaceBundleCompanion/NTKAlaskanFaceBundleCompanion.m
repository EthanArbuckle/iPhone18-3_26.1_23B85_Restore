void sub_1164(id a1, NTKFace *a2, unint64_t a3, BOOL *a4)
{
  v5 = a2;
  v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:4 zOrder:4000];
  v7 = v6;
  if (a3)
  {
    v11 = v6;
    v8 = &v11;
  }

  else
  {
    v12 = v6;
    v8 = &v12;
  }

  v9 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
  v8[1] = v9;
  v10 = [NSArray arrayWithObjects:v8 count:2];
  [(NTKFace *)v5 setCurationPlacements:v10];
}

NSString *__cdecl sub_17BC(id a1, unint64_t a2)
{
  if (a2)
  {
    v2 = a2;
  }

  else
  {
    v2 = 12;
  }

  v3 = [NSNumber numberWithUnsignedInteger:v2];
  v4 = [NSString localizedStringWithFormat:@"%@", v3];

  return v4;
}

NSString *__cdecl sub_1984(id a1, unint64_t a2)
{
  v2 = 5 * a2;
  if (!a2)
  {
    v2 = 60;
  }

  return [NSString localizedStringWithFormat:@"%02lu", v2];
}

BOOL sub_1C44(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSNumber numberWithUnsignedInteger:a2];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = v4 != 0;

  return v5;
}

id sub_1CA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSNumber numberWithUnsignedInteger:a2];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", @"%02lu", [v4 longValue]);

  return v5;
}

BOOL sub_1FA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSNumber numberWithUnsignedInteger:a2];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = v4 != 0;

  return v5;
}

id sub_2004(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSNumber numberWithUnsignedInteger:a2];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = [NSString localizedStringWithFormat:@"%@", v4];

  return v5;
}

BOOL sub_2264(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSNumber numberWithUnsignedInteger:a2];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = v4 != 0;

  return v5;
}

id sub_22C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSNumber numberWithUnsignedInteger:a2];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = [NSString localizedStringWithFormat:@"%@", v4];

  return v5;
}

BOOL sub_251C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSNumber numberWithUnsignedInteger:a2];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = v4 != 0;

  return v5;
}

id sub_2578(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSNumber numberWithUnsignedInteger:a2];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = [NSString localizedStringWithFormat:@"%@", v4];

  return v5;
}

NSString *__cdecl sub_26F8(id a1, unint64_t a2)
{
  if (a2)
  {
    v2 = 5 * a2;
  }

  else
  {
    v2 = 60;
  }

  v3 = [NSNumber numberWithUnsignedInteger:v2];
  v4 = [NSString localizedStringWithFormat:@"%@", v3];

  return v4;
}

void sub_297C(void *a1@<X1>, uint64_t a2@<X8>)
{
  v7 = a1;
  os_unfair_lock_lock(&unk_46A48);
  if (qword_46A50)
  {
    v3 = qword_46A50 == v7;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v7 version], v4 != qword_46A58))
  {
    qword_46A50 = v7;
    qword_46A58 = [v7 version];
    sub_2A7C(v7, v8);
    xmmword_46A10 = v8[2];
    unk_46A20 = v8[3];
    xmmword_46A30 = v8[4];
    qword_46A40 = v9;
    xmmword_469F0 = v8[0];
    unk_46A00 = v8[1];
  }

  v5 = unk_46A20;
  *(a2 + 32) = xmmword_46A10;
  *(a2 + 48) = v5;
  *(a2 + 64) = xmmword_46A30;
  *(a2 + 80) = qword_46A40;
  v6 = unk_46A00;
  *a2 = xmmword_469F0;
  *(a2 + 16) = v6;
  os_unfair_lock_unlock(&unk_46A48);
}

void sub_2A7C(uint64_t a1@<X1>, void *a2@<X8>)
{
  v3 = [CLKDeviceMetrics metricsWithDevice:a1 identitySizeClass:2];
  [v3 setScale:3 forSizeClass:1.13580247];
  [v3 scaledSize:{1.0, 3.5}];
  *a2 = v4;
  a2[1] = v5;
  [v3 scaledSize:{1.0, 2.0}];
  a2[2] = v6;
  a2[3] = v7;
  [v3 scaledSize:{40.0, 40.0}];
  a2[4] = v8;
  a2[5] = v9;
  [v3 scaledValue:24.0];
  a2[7] = v10;
  [v3 scaledValue:20.0];
  a2[8] = v11;
  [v3 scaledValue:22.0];
  a2[9] = v12;
  [v3 scaledValue:0.5];
  a2[6] = v13;
  v16[0] = &off_3A2F0;
  v16[1] = &off_3A308;
  v17[0] = &off_3AD90;
  v17[1] = &off_3AD90;
  v14 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];
  [v3 scaledValue:v14 withOverrides:6.5];
  a2[10] = v15;
}

double sub_4794(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_46A88);
  if (qword_46A90)
  {
    v3 = qword_46A90 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_46A98))
  {
    v5 = qword_46A70;
  }

  else
  {
    qword_46A90 = v2;
    qword_46A98 = [v2 version];
    v5 = sub_487C(qword_46A98, v2);
    qword_46A70 = v5;
    qword_46A78 = v6;
    qword_46A80 = v7;
  }

  os_unfair_lock_unlock(&unk_46A88);

  return *&v5;
}

double sub_487C(uint64_t a1, void *a2)
{
  v2 = a2;
  [NTKAnalogUtilities largeDialDiameterForDevice:v2];
  v4 = v3;
  v5 = [CLKDeviceMetrics metricsWithDevice:v2 identitySizeClass:2];

  [v5 setRoundingBehavior:2];
  [v5 scaledSize:3 withOverride:160.0 forSizeClass:{195.0, 180.0, 220.0}];

  return v4;
}

id sub_4948(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_46AA8);
  if (qword_46AB0)
  {
    v3 = qword_46AB0 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != qword_46AB8))
  {
    qword_46AB0 = v2;
    qword_46AB8 = [v2 version];
    v5 = _EnumValueRange();
    v6 = qword_46AA0;
    qword_46AA0 = v5;
  }

  v7 = qword_46AA0;
  os_unfair_lock_unlock(&unk_46AA8);

  return v7;
}

void sub_4ACC(id a1)
{
  v3[0] = &off_3A350;
  v3[1] = &off_3A368;
  v4[0] = NTKFaceBundleStyle1;
  v4[1] = NTKFaceBundleStyle2;
  v3[2] = &off_3A380;
  v3[3] = &off_3A398;
  v4[2] = NTKFaceBundleStyle3;
  v4[3] = NTKFaceBundleStyle4;
  v3[4] = &off_3A3B0;
  v4[4] = NTKFaceBundleStyle5;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:5];
  v2 = qword_46AC0;
  qword_46AC0 = v1;
}

void sub_4D28(id a1)
{
  qword_46AD0 = objc_alloc_init(NTKAlaskanComplicationsConfiguration);

  _objc_release_x1();
}

id sub_507C(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(&unk_46AE8);
  if (qword_46AF0)
  {
    v4 = qword_46AF0 == v3;
  }

  else
  {
    v4 = 0;
  }

  if (!v4 || (v5 = [v3 version], v5 != qword_46AF8))
  {
    qword_46AF0 = v3;
    qword_46AF8 = [v3 version];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_51A0;
    v10[3] = &unk_38A28;
    v10[4] = *(a1 + 32);
    v6 = sub_51A0(v10, v3);
    v7 = qword_46AE0;
    qword_46AE0 = v6;
  }

  v8 = qword_46AE0;
  os_unfair_lock_unlock(&unk_46AE8);

  return v8;
}

id sub_51A0(uint64_t a1, uint64_t a2)
{
  v4.receiver = *(a1 + 32);
  v4.super_class = &OBJC_METACLASS___NTKSalmonColorEditOption;
  v2 = objc_msgSendSuper2(&v4, "_orderedValuesForDevice:", a2);

  return v2;
}

void sub_5658(id a1, NTKFace *a2, unint64_t a3, BOOL *a4)
{
  v5 = a2;
  if (a3)
  {
    v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:4 zOrder:4000];
    v10 = v6;
    v7 = &v10;
  }

  else
  {
    v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:4 zOrder:9000];
    v11 = v6;
    v7 = &v11;
  }

  v8 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
  v7[1] = v8;
  v9 = [NSArray arrayWithObjects:v7 count:2];
  [(NTKFace *)v5 setCurationPlacements:v9];
}

void sub_7120(void *a1@<X1>, uint64_t a2@<X8>)
{
  v6 = a1;
  os_unfair_lock_lock(&unk_46B30);
  if (qword_46B38)
  {
    v3 = qword_46B38 == v6;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v6 version], v4 != qword_46B40))
  {
    qword_46B38 = v6;
    qword_46B40 = [v6 version];
    sub_71FC(v6, v7);
    xmmword_46B08 = v7[0];
    unk_46B18 = v7[1];
    qword_46B28 = v8;
  }

  v5 = unk_46B18;
  *a2 = xmmword_46B08;
  *(a2 + 16) = v5;
  *(a2 + 32) = qword_46B28;
  os_unfair_lock_unlock(&unk_46B30);
}

void sub_71FC(void *a1@<X1>, void *a2@<X8>)
{
  v3 = a1;
  v10 = [CLKDeviceMetrics metricsWithDevice:v3 identitySizeClass:2];
  [v10 setScale:3 forSizeClass:1.13580247];
  [NTKAnalogUtilities largeDialDiameterForDevice:v3];
  v5 = v4;

  *a2 = v5;
  [v10 scaledValue:20.0];
  a2[1] = v6;
  [v10 scaledValue:40.0];
  a2[2] = v7;
  [v10 scaledValue:32.0];
  a2[3] = v8;
  [v10 scaledValue:12.0];
  a2[4] = v9;
}

void sub_7448(id a1)
{
  qword_46B48 = [[NTKCornerComplicationConfiguration alloc] initWithTopLeftComplication:43 topRightComplication:10 bottomLeftComplication:3 bottomRightComplication:7];

  _objc_release_x1();
}

void sub_8BC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_8BE0(uint64_t a1, double a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateCrownInputHandlerProgress:a2 / 360.0];
}

void sub_8DA8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_8DC4(uint64_t a1, void *a2, id *a3)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained diverView];
  [v6 updateTicksForCurrentTime];

  [WeakRetained updateTimeViewHandsVisibility];
}

void sub_92A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_92D0(uint64_t a1, double a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateCrownInputHandlerProgress:a2 / 360.0];
}

void sub_9328(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained diverView];
  [v2 setStartDate:0];

  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }
}

void sub_9608(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_963C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained faceView];
    v4 = [v3 timeView];
    v5 = [v4 secondHandView];
    [v5 setAlpha:0.0];

    CGAffineTransformMakeScale(&v10, 0.9, 0.9);
    v6 = [v2 faceView];
    v7 = [v6 timeView];
    v9 = v10;
    [v7 setTransform:&v9];

    v8 = [v2 faceView];
    [v8 changeComplicationsAlpha:NTKEditModeDimmedAlpha];

    [v2 updateTimeViewHandsVisibility];
  }
}

void sub_9734(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained diverView];
    [v2 setHasRotatedToMinuteHand:1];

    WeakRetained = v3;
  }
}

void sub_9904(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_9928(uint64_t a1, double a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained updateCrownInputHandlerProgress:a2 / 360.0];
    WeakRetained = v4;
  }
}

void sub_9984(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained updateCrownInputHandlerProgress:*(a1 + 40) / 360.0];
    [v3 setAnimationInProgress:0];
    WeakRetained = v3;
  }
}

void sub_9DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(va);
  objc_destroyWeak((v16 - 104));
  _Unwind_Resume(a1);
}

void sub_9E0C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained diverView];
  v3 = [v2 currentMode];

  if (!v3)
  {
    v4 = [WeakRetained faceView];
    v5 = [v4 timeView];
    v6 = [v5 secondHandView];
    [v6 setAlpha:1.0];

    v7 = [WeakRetained faceView];
    v8 = [v7 timeView];
    v9 = *&CGAffineTransformIdentity.c;
    v11[0] = *&CGAffineTransformIdentity.a;
    v11[1] = v9;
    v11[2] = *&CGAffineTransformIdentity.tx;
    [v8 setTransform:v11];

    [WeakRetained updateTimeViewHandsVisibility];
  }

  v10 = [WeakRetained faceView];
  [v10 changeComplicationsAlpha:1.0];
}

void sub_9F08(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained diverView];
    [v2 setHasRotatedToMinuteHand:0];

    WeakRetained = v3;
  }
}

void sub_BA8C(void *a1@<X1>, uint64_t a2@<X8>)
{
  v6 = a1;
  os_unfair_lock_lock(&unk_46B88);
  if (qword_46B90)
  {
    v3 = qword_46B90 == v6;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v6 version], v4 != qword_46B98))
  {
    qword_46B90 = v6;
    qword_46B98 = [v6 version];
    sub_BB68(v6, v7);
    xmmword_46B60 = v7[0];
    *algn_46B70 = v7[1];
    qword_46B80 = v8;
  }

  v5 = *algn_46B70;
  *a2 = xmmword_46B60;
  *(a2 + 16) = v5;
  *(a2 + 32) = qword_46B80;
  os_unfair_lock_unlock(&unk_46B88);
}

void sub_BB68(void *a1@<X1>, void *a2@<X8>)
{
  v3 = a1;
  v10 = [CLKDeviceMetrics metricsWithDevice:v3 identitySizeClass:2];
  [v10 setScale:3 forSizeClass:1.13580247];
  [NTKAnalogUtilities largeDialDiameterForDevice:v3];
  v5 = v4;

  *a2 = v5;
  [v10 scaledValue:20.0];
  a2[1] = v6;
  [v10 scaledValue:40.0];
  a2[2] = v7;
  [v10 scaledValue:26.5];
  a2[3] = v8;
  [v10 scaledValue:12.0];
  a2[4] = v9;
}

double sub_C4A0(uint64_t a1, unint64_t a2)
{
  v2 = 48;
  if ((a2 & 1) == 0)
  {
    v2 = 64;
  }

  v3 = 32;
  if (a2 % 0xA)
  {
    v3 = v2;
  }

  return *(a1 + v3);
}

NSString *__cdecl sub_C4FC(id a1, unint64_t a2)
{
  if (a2)
  {
    v2 = a2;
  }

  else
  {
    v2 = 12;
  }

  v3 = [NSNumber numberWithUnsignedInteger:v2];
  v4 = [NSString localizedStringWithFormat:@"%@", v3];

  return v4;
}

id sub_CB98(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  v3 = [NSString localizedStringWithFormat:@"%@", v2];

  return v3;
}

double sub_CC28(uint64_t a1, unint64_t a2)
{
  v4 = [*(a1 + 32) count];
  v5 = 120;
  if (v4 > a2)
  {
    v5 = 88;
  }

  return *(a1 + v5);
}

double sub_CEC0(uint64_t a1, unint64_t a2)
{
  v2 = 48;
  if ((a2 & 1) == 0)
  {
    v2 = 64;
  }

  v3 = 32;
  if (a2 % 0xA)
  {
    v3 = v2;
  }

  return *(a1 + v3);
}

NSString *__cdecl sub_CF34(id a1, unint64_t a2)
{
  v2 = 60;
  if (a2)
  {
    v2 = a2;
  }

  return [NSString localizedStringWithFormat:@"%02lu", v2];
}

double sub_D1A4(uint64_t a1, char a2)
{
  v2 = 48;
  if ((a2 & 1) == 0)
  {
    v2 = 64;
  }

  if ((a2 & 3) == 0)
  {
    v2 = 32;
  }

  return *(a1 + v2);
}

NSString *__cdecl sub_D1EC(id a1, unint64_t a2)
{
  v2 = 30;
  if (a2)
  {
    v2 = a2;
  }

  return [NSString localizedStringWithFormat:@"%02lu", v2];
}

NSString *__cdecl sub_D48C(id a1, unint64_t a2)
{
  if (a2 >= 5)
  {
    v2 = a2 / 5;
  }

  else
  {
    v2 = 6;
  }

  v3 = [NSNumber numberWithUnsignedInteger:v2];
  v4 = [NSString localizedStringWithFormat:@"%@", v3];

  return v4;
}

NSString *__cdecl sub_D538(id a1, unint64_t a2)
{
  v2 = [NSNumber numberWithUnsignedInteger:10 * (a2 % 5)];
  v3 = [NSString localizedStringWithFormat:@"%@", v2];

  return v3;
}

NSString *__cdecl sub_D834(id a1, unint64_t a2)
{
  if (a2 >= 0xA)
  {
    v2 = a2 / 0xA;
  }

  else
  {
    v2 = 3;
  }

  v3 = [NSNumber numberWithUnsignedInteger:v2];
  v4 = [NSString localizedStringWithFormat:@"%@", v3];

  return v4;
}

NSString *__cdecl sub_D8E8(id a1, unint64_t a2)
{
  v2 = [NSNumber numberWithUnsignedInteger:10 * (a2 % 0xA)];
  v3 = [NSString localizedStringWithFormat:@"%@", v2];

  return v3;
}

void sub_D99C(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v12 = a1;
  os_unfair_lock_lock(&unk_46C90);
  if (qword_46C98)
  {
    v3 = qword_46C98 == v12;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v12 version], v4 != qword_46CA0))
  {
    qword_46C98 = v12;
    qword_46CA0 = [v12 version];
    sub_DADC(v12, v13);
    xmmword_46C60 = v13[12];
    unk_46C70 = v13[13];
    xmmword_46C80 = v13[14];
    xmmword_46C20 = v13[8];
    unk_46C30 = v13[9];
    xmmword_46C40 = v13[10];
    unk_46C50 = v13[11];
    xmmword_46BE0 = v13[4];
    unk_46BF0 = v13[5];
    xmmword_46C00 = v13[6];
    unk_46C10 = v13[7];
    xmmword_46BA0 = v13[0];
    *algn_46BB0 = v13[1];
    xmmword_46BC0 = v13[2];
    unk_46BD0 = v13[3];
  }

  v5 = unk_46C70;
  a2[12] = xmmword_46C60;
  a2[13] = v5;
  a2[14] = xmmword_46C80;
  v6 = unk_46C30;
  a2[8] = xmmword_46C20;
  a2[9] = v6;
  v7 = unk_46C50;
  a2[10] = xmmword_46C40;
  a2[11] = v7;
  v8 = unk_46BF0;
  a2[4] = xmmword_46BE0;
  a2[5] = v8;
  v9 = unk_46C10;
  a2[6] = xmmword_46C00;
  a2[7] = v9;
  v10 = *algn_46BB0;
  *a2 = xmmword_46BA0;
  a2[1] = v10;
  v11 = unk_46BD0;
  a2[2] = xmmword_46BC0;
  a2[3] = v11;
  os_unfair_lock_unlock(&unk_46C90);
}

void sub_DADC(uint64_t a1@<X1>, void *a2@<X8>)
{
  v33 = [CLKDeviceMetrics metricsWithDevice:a1 identitySizeClass:2];
  [v33 setScale:3 forSizeClass:1.13580247];
  [v33 scaledSize:{2.0, 7.0}];
  *a2 = v3;
  a2[1] = v4;
  [v33 scaledSize:{1.0, 3.5}];
  a2[2] = v5;
  a2[3] = v6;
  [v33 scaledSize:{1.0, 5.0}];
  a2[4] = v7;
  a2[5] = v8;
  [v33 scaledValue:9 withOverride:1.0 forSizeClass:3.0];
  a2[12] = v9;
  [v33 scaledValue:45.5];
  a2[13] = v10;
  [v33 scaledSize:{2.0, 6.5}];
  a2[6] = v11;
  a2[7] = v12;
  [v33 scaledSize:{1.0, 3.5}];
  a2[8] = v13;
  a2[9] = v14;
  [v33 scaledSize:{1.0, 2.0}];
  a2[10] = v15;
  a2[11] = v16;
  [v33 scaledValue:11.5];
  a2[14] = v17;
  [v33 scaledValue:8.0];
  a2[15] = v18;
  [v33 scaledValue:11.0];
  a2[16] = v19;
  [v33 scaledValue:10.0];
  a2[17] = v20;
  [v33 scaledValue:14.0];
  a2[18] = v21;
  [v33 scaledValue:8.5];
  a2[19] = v22;
  [v33 scaledValue:14.0];
  a2[20] = v23;
  [v33 scaledValue:8.5];
  a2[21] = v24;
  [v33 scaledValue:9 withOverride:126.0 forSizeClass:154.0];
  a2[22] = v25;
  [v33 scaledValue:144.0];
  a2[23] = v26;
  [v33 scaledValue:9 withOverride:126.0 forSizeClass:154.5];
  a2[24] = v27;
  [v33 scaledValue:9 withOverride:126.0 forSizeClass:154.0];
  a2[25] = v28;
  [v33 scaledValue:126.5];
  a2[26] = v29;
  [v33 scaledValue:129.0];
  a2[27] = v30;
  [v33 scaledValue:126.5];
  a2[28] = v31;
  [v33 scaledValue:129.0];
  a2[29] = v32;
}

id sub_DDB4(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(&unk_46CB0);
  if (qword_46CB8)
  {
    v4 = qword_46CB8 == v3;
  }

  else
  {
    v4 = 0;
  }

  if (!v4 || (v5 = [v3 version], v5 != qword_46CC0))
  {
    qword_46CB8 = v3;
    qword_46CC0 = [v3 version];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_DED8;
    v10[3] = &unk_38A28;
    v10[4] = *(a1 + 32);
    v6 = sub_DED8(v10, v3);
    v7 = qword_46CA8;
    qword_46CA8 = v6;
  }

  v8 = qword_46CA8;
  os_unfair_lock_unlock(&unk_46CB0);

  return v8;
}

id sub_DED8(uint64_t a1, uint64_t a2)
{
  v4.receiver = *(a1 + 32);
  v4.super_class = &OBJC_METACLASS___NTKSharkColorEditOption;
  v2 = objc_msgSendSuper2(&v4, "_orderedValuesForDevice:", a2);

  return v2;
}

void sub_E7B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_E7CC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = *(a1 + 32);
  v3 = [WeakRetained gmtView];
  [v3 setDate:v2];
}

void sub_E964(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_E980(uint64_t a1, void *a2, id *a3)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained gmtView];
  v7 = [WeakRetained faceView];
  v8 = [v7 currentDisplayDate];
  [v6 setDate:v8];
}

void sub_EDAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_EDD8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained faceView];
  v2 = [v1 timeView];
  [v2 setAlpha:0.0];

  v3 = [WeakRetained faceView];
  v4 = [v3 timeView];
  v5 = [v4 secondHandView];
  [v5 setAlpha:0.0];

  v6 = [WeakRetained faceView];
  [v6 changeComplicationsAlpha:0.0];
}

void sub_F1C0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_F1E8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained faceView];
  v2 = [v1 timeView];
  [v2 setAlpha:1.0];

  v3 = [WeakRetained faceView];
  v4 = [v3 timeView];
  v5 = [v4 secondHandView];
  [v5 setAlpha:1.0];

  v6 = [WeakRetained faceView];
  [v6 changeComplicationsAlpha:1.0];
}

int64_t sub_F4C8(id a1, NTKAlaskanGMTTimezoneLocation *a2, NTKAlaskanGMTTimezoneLocation *a3)
{
  v4 = a3;
  [(NTKAlaskanGMTTimezoneLocation *)a2 hourOffset];
  v5 = [NSNumber numberWithFloat:?];
  [(NTKAlaskanGMTTimezoneLocation *)v4 hourOffset];
  v7 = v6;

  LODWORD(v8) = v7;
  v9 = [NSNumber numberWithFloat:v8];
  v10 = [v5 compare:v9];

  return v10;
}

int64_t sub_F950(id a1, NTKAlaskanGMTTimezoneLocation *a2, NTKAlaskanGMTTimezoneLocation *a3)
{
  v4 = a2;
  v5 = a3;
  [(NTKAlaskanGMTTimezoneLocation *)v5 hourOffset];
  v6 = [NSNumber numberWithFloat:?];
  [(NTKAlaskanGMTTimezoneLocation *)v4 hourOffset];
  v7 = [NSNumber numberWithFloat:?];
  v8 = [v6 compare:v7];

  if (!v8)
  {
    v9 = [(NTKAlaskanGMTTimezoneLocation *)v5 locationName];
    v10 = [(NTKAlaskanGMTTimezoneLocation *)v4 locationName];
    v8 = [v9 compare:v10];
  }

  return v8;
}

void sub_10314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1032C(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 alCityId];
  v6 = [v5 isEqual:*(a1 + 32)];

  if (v6)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }
}

id sub_10998(uint64_t a1)
{
  [*(a1 + 32) _updateDefaultLocations];
  v2 = *(a1 + 32);

  return [v2 updateWorldClockCities];
}

id sub_10A48(uint64_t a1)
{
  [*(a1 + 32) setTransitInfoByCity:0];
  [*(a1 + 32) _updateDefaultLocations];
  v2 = *(a1 + 32);

  return [v2 updateWorldClockCities];
}

id sub_10B04(uint64_t a1)
{
  [*(a1 + 32) _updateDefaultLocations];
  v2 = *(a1 + 32);

  return [v2 updateWorldClockCities];
}

void sub_10BB4(uint64_t a1)
{
  v2 = [*(a1 + 32) gmtView];
  v1 = +[NSDate date];
  [v2 setDate:v1];
}

void sub_11538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, id a40)
{
  objc_destroyWeak((v41 + 40));
  objc_destroyWeak((v40 + 40));
  objc_destroyWeak(&a40);
  objc_destroyWeak((v42 - 144));
  _Unwind_Resume(a1);
}

id sub_11598(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = [*(a1 + 32) largerTicksTestBlock];
    v6 = v5[2](v5, a2);

    v7 = objc_opt_new();
    v8 = *(a1 + 32);
    if (v6)
    {
      [v8 largeTickSize];
      v10 = v9;
      [*(a1 + 32) largeTickSize];
      v12 = v11;
      v13 = [*(a1 + 32) tickSizeAtIndexBlock];

      if (v13)
      {
        v14 = [*(a1 + 32) tickSizeAtIndexBlock];
        v10 = v14[2](v14, a2);
        v12 = v15;
      }

      [v7 setFrame:{0.0, 0.0, v10, v12}];
      [v7 bounds];
      CLKRoundForDevice();
      [v7 setCornerRadius:?];
      v16 = [WeakRetained palette];
      v17 = [v16 dialTicks];
      [v7 setBackgroundColor:{objc_msgSend(v17, "CGColor")}];

      [*(a1 + 32) largeTicksAnchorPoint];
      v19 = v18;
      [*(a1 + 32) largeTicksAnchorPoint];
    }

    else
    {
      [v8 smallTickSize];
      v21 = v20;
      [*(a1 + 32) smallTickSize];
      v23 = v22;
      v24 = [*(a1 + 32) tickSizeAtIndexBlock];

      if (v24)
      {
        v25 = [*(a1 + 32) tickSizeAtIndexBlock];
        v21 = v25[2](v25, a2);
        v23 = v26;
      }

      [v7 setFrame:{0.0, 0.0, v21, v23}];
      [v7 bounds];
      CLKRoundForDevice();
      [v7 setCornerRadius:?];
      v27 = [WeakRetained palette];
      v28 = [v27 dialTicksSecondary];
      [v7 setBackgroundColor:{objc_msgSend(v28, "CGColor")}];

      [*(a1 + 32) smallTicksAnchorPoint];
      v19 = v29;
      [*(a1 + 32) smallTicksAnchorPoint];
    }

    [v7 setAnchorPoint:v19];
    v30 = [objc_opt_class() layerDisabledActions];
    [v7 setActions:v30];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id sub_11830(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) ticksAngleProvider];

  if (v4)
  {
    v5 = [*(a1 + 32) ticksAngleProvider];
    v6 = v5[2](v5, a2);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_118BC(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = objc_alloc_init(UILabel);
    v6 = [*(a1 + 32) visibleMarkersTestBlock];
    v7 = v6[2](v6, a2);

    if (v7)
    {
      v8 = [*(a1 + 32) markersFont];
      [v5 setFont:v8];

      v9 = [*(a1 + 32) markerTextBlock];
      v10 = v9[2](v9, a2);
      [v5 setText:v10];

      v11 = [WeakRetained palette];
      v12 = [v11 hourMarkers];
      [v5 setTextColor:v12];
    }

    [v5 sizeToFit];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_119F0(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) markersAngleProvider];

  if (v4)
  {
    v5 = [*(a1 + 32) markersAngleProvider];
    v6 = v5[2](v5, a2);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_11A7C(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = objc_alloc_init(UILabel);
    v6 = [*(a1 + 32) visibleSecondaryMarkersTestBlock];
    v7 = v6[2](v6, a2);

    if (v7)
    {
      v8 = [*(a1 + 32) secondaryMarkersFont];
      [v5 setFont:v8];

      v9 = [*(a1 + 32) secondaryMarkerTextBlock];
      v10 = v9[2](v9, a2);
      [v5 setText:v10];

      v11 = [WeakRetained palette];
      v12 = [v11 dialTicksSecondary];
      [v5 setTextColor:v12];
    }

    [v5 sizeToFit];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_11E40(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 options];
  v8 = [v7 largerTicksTestBlock];
  LODWORD(a3) = v8[2](v8, a3);

  v9 = *(a1 + 40);
  if (a3)
  {
    [v9 dialTicks];
  }

  else
  {
    [v9 dialTicksSecondary];
  }
  v11 = ;
  v10 = v11;
  [v6 setBackgroundColor:{objc_msgSend(v11, "CGColor")}];
}

void sub_11F10(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  v5 = [*(a1 + 32) options];
  v6 = [v5 visibleMarkersTestBlock];
  LODWORD(a3) = v6[2](v6, a3);

  if (a3)
  {
    v7 = [*(a1 + 40) hourMarkers];
    [v8 setTextColor:v7];
  }
}

void sub_11FBC(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  v5 = [*(a1 + 32) options];
  v6 = [v5 visibleSecondaryMarkersTestBlock];
  LODWORD(a3) = v6[2](v6, a3);

  if (a3)
  {
    v7 = [*(a1 + 40) hourMarkers];
    [v8 setTextColor:v7];
  }
}

void sub_12AD0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak(&STACK[0x308]);
  _Unwind_Resume(a1);
}

id sub_12B2C(uint64_t a1, id a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      v5 = [WeakRetained currentHighlightedHour];
      v6 = [v5 integerValue];

      if (v6 == a2)
      {
        [v4 createHourMarkerForBezelView:a2];
      }

      else
      {
        [v4 createTickMarkerForBezelView];
      }
      v7 = ;
    }

    else
    {
      v7 = [WeakRetained heroMarker];
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id sub_12BD8(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_alloc_init(UILabel);
  v6 = [CLKFont compactSoftFontOfSize:*(a1 + 72) weight:UIFontWeightSemibold];
  [v5 setFont:v6];

  v7 = a2;
  if (!a2)
  {
    v7 = *(a1 + 352);
  }

  v8 = [NSNumber numberWithUnsignedInteger:v7];
  v9 = [NSString localizedStringWithFormat:@"%@", v8];
  [v5 setText:v9];

  v10 = [WeakRetained palette];
  v11 = [v10 innerMarkersColor];
  [v5 setTextColor:v11];

  [v5 sizeToFit];
  if (a2 == 10)
  {
    v12 = 0.3;
  }

  else
  {
    if (a2 != 11)
    {
      goto LABEL_8;
    }

    v12 = 0.4;
  }

  v13 = [v5 layer];
  [v13 anchorPoint];
  v15 = v14;
  v16 = [v5 layer];
  [v16 setAnchorPoint:{v12, v15}];

LABEL_8:

  return v5;
}

id sub_12D74(uint64_t a1, unint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = a2 % (*(a1 + 48) / 0x18uLL);
  v6 = +[CALayer layer];
  [v6 setActions:*(a1 + 32)];
  v7 = 184;
  if (!v5)
  {
    v7 = 168;
  }

  v8 = 192;
  if (!v5)
  {
    v8 = 176;
  }

  [v6 setFrame:{0.0, 0.0, *(a1 + v7), *(a1 + v8)}];
  v9 = [WeakRetained palette];
  v10 = [v9 ticksDialColor];
  [v6 setBackgroundColor:{objc_msgSend(v10, "CGColor")}];

  [v6 anchorPoint];
  [v6 setAnchorPoint:?];

  return v6;
}

void sub_13364(uint64_t a1, void *a2)
{
  v7 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (isKindOfClass)
  {
    [v4 gmtCurrentHourLabelColor];
  }

  else
  {
    [v4 outerMarkersColor];
  }
  v6 = ;
  [v5 updateColor:v6 object:v7];
}

void sub_133F8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 innerMarkersColor];
  [v2 updateColor:v5 object:v4];
}

void sub_13468(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 outerMarkersColor];
  [v2 updateColor:v5 object:v4];
}

void sub_134D8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 outerMarkersColor];
  [v2 updateColor:v5 object:v4];
}

void sub_13548(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 ticksDialColor];
  [v2 updateColor:v5 object:v4];
}

int64_t sub_13C10(id a1, NTKAlaskanGMTTimezoneLocation *a2, NTKAlaskanGMTTimezoneLocation *a3)
{
  v4 = a3;
  [(NTKAlaskanGMTTimezoneLocation *)a2 hourOffset];
  v5 = [NSNumber numberWithFloat:?];
  [(NTKAlaskanGMTTimezoneLocation *)v4 hourOffset];
  v7 = v6;

  LODWORD(v8) = v7;
  v9 = [NSNumber numberWithFloat:v8];
  v10 = [v5 compare:v9];

  return v10;
}

uint64_t sub_13FEC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_14004(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_14414(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    [v4 center];
    v6 = v5;
    v8 = v7;
    if (v4)
    {
      [v4 transform];
      v10 = v20;
      v9 = v21;
      v12 = v22;
      v11 = v23;
      v14 = v24;
      v13 = v25;
    }

    else
    {
      v13 = 0.0;
      v11 = 0.0;
      v9 = 0.0;
      v14 = 0.0;
      v12 = 0.0;
      v10 = 0.0;
    }

    atan2(v14 + v8 * v12 + v10 * v6 - *(a1 + 40), v13 + v8 * v11 + v9 * v6 - *(a1 + 48));
    CLKRadiansToDegrees();
    v16 = *(a1 + 56);
    if (v16 <= v15)
    {
      v17 = v15 - v16;
    }

    else
    {
      v17 = v16 - v15;
    }

    if (v17 > 180.0)
    {
      v17 = 360.0 - v17;
    }

    if (v17 < 110.0)
    {
      CLKInterpolateBetweenFloatsClipped();
      v19 = [*(*(a1 + 32) + 8) objectAtIndex:v18];
      [v4 setFont:v19];

      [v4 sizeToFit];
    }
  }
}

void sub_1682C(void *a1@<X1>, void *a2@<X8>)
{
  v5 = a1;
  os_unfair_lock_lock(&unk_46E00);
  if (qword_46E08)
  {
    v3 = qword_46E08 == v5;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v5 version], v4 != qword_46E10))
  {
    qword_46E08 = v5;
    qword_46E10 = [v5 version];
    sub_16904(v5, __src);
    memcpy(&unk_46CC8, __src, 0x138uLL);
  }

  memcpy(a2, &unk_46CC8, 0x138uLL);
  os_unfair_lock_unlock(&unk_46E00);
}

void sub_16904(void *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = a1;
  v4 = [CLKDeviceMetrics metricsWithDevice:v3 identitySizeClass:2];
  [v4 setScale:3 forSizeClass:1.13580247];
  [NTKAnalogUtilities largeDialDiameterForDevice:v3];
  v6 = v5;

  *(a2 + 288) = v6;
  [v4 scaledValue:16.0];
  *a2 = v7;
  [v4 scaledValue:101.0];
  *(a2 + 8) = v8;
  [v4 scaledValue:5.0];
  *(a2 + 16) = v9;
  [v4 scaledValue:1.0];
  *(a2 + 24) = v10;
  [v4 scaledValue:19.0];
  *(a2 + 32) = v11;
  [v4 scaledValue:0.5];
  *(a2 + 56) = v12;
  [v4 scaledValue:14.0];
  *(a2 + 72) = v13;
  [v4 scaledValue:8.0];
  *(a2 + 224) = v14;
  [v4 scaledValue:12.5];
  *(a2 + 64) = v15;
  [v4 scaledValue:12.0];
  *(a2 + 88) = v16;
  [v4 scaledSize:{2.0, 5.0}];
  *(a2 + 96) = v17;
  *(a2 + 104) = v18;
  [v4 scaledSize:{1.0, 4.0}];
  *(a2 + 112) = v19;
  *(a2 + 120) = v20;
  [v4 scaledSize:{1.0, 2.0}];
  *(a2 + 128) = v21;
  *(a2 + 136) = v22;
  [v4 scaledValue:15.0];
  *(a2 + 80) = v23;
  [v4 scaledValue:15.0];
  *(a2 + 232) = v24;
  [v4 scaledValue:24.0];
  *(a2 + 256) = v25;
  [v4 scaledValue:2.0];
  *(a2 + 248) = v26;
  [v4 scaledValue:136.0];
  *(a2 + 240) = v27;
  v40[0] = &off_3A950;
  v40[1] = &off_3A968;
  v41[0] = &off_3ADA0;
  v41[1] = &off_3ADB0;
  v40[2] = &off_3A980;
  v40[3] = &off_3A998;
  v41[2] = &off_3ADC0;
  v41[3] = &off_3ADD0;
  v40[4] = &off_3A9B0;
  v40[5] = &off_3A9C8;
  v41[4] = &off_3ADD0;
  v41[5] = &off_3ADC0;
  v28 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:6];
  [v4 scaledValue:v28 withOverrides:6.0];
  *(a2 + 144) = v29;

  *(a2 + 152) = 0x3FC999999999999ALL;
  [v4 scaledValue:14.0];
  *(a2 + 160) = v30;
  [v4 scaledValue:5.0];
  *(a2 + 168) = v31;
  [v4 scaledValue:12.0];
  *(a2 + 192) = v32;
  [v4 scaledValue:10.5];
  *(a2 + 200) = v33;
  *(a2 + 184) = 0x3FE28F5C28F5C28FLL;
  [v4 scaledValue:9.0];
  *(a2 + 208) = v34;
  *(a2 + 216) = 0x4000000000000000;
  *(a2 + 264) = 0x3FACAC083126E979;
  *(a2 + 272) = xmmword_36000;
  [v4 scaledValue:3 withOverride:29.0 forSizeClass:29.0];
  *(a2 + 296) = v35;
  [v4 scaledValue:3 withOverride:12.0 forSizeClass:12.0];
  *(a2 + 304) = v36;
  [v4 setRoundingBehavior:2];
  [v4 scaledValue:18.0];
  *(a2 + 176) = v37;
  [v4 scaledValue:11.0];
  *(a2 + 40) = v38;
  [v4 scaledValue:17.0];
  *(a2 + 48) = v39;
}

double sub_17380(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_46E28);
  if (qword_46E30)
  {
    v3 = qword_46E30 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_46E38))
  {
    v5 = qword_46E18;
  }

  else
  {
    qword_46E30 = v2;
    qword_46E38 = [v2 version];
    v5 = sub_17448(qword_46E38, v2);
    qword_46E18 = v5;
    qword_46E20 = v6;
  }

  os_unfair_lock_unlock(&unk_46E28);

  return *&v5;
}

double sub_17448(uint64_t a1, uint64_t a2)
{
  v2 = [CLKDeviceMetrics metricsWithDevice:a2 identitySizeClass:2];
  [v2 scaledValue:3 withOverride:5.0 forSizeClass:5.0];
  v4 = v3;
  [v2 scaledValue:3 withOverride:3.0 forSizeClass:3.0];

  return v4;
}

void sub_17624(id a1)
{
  v1 = [[NTKAlaskanComplicationsConfiguration alloc] initWithTopLeftComplication:43 topRightComplication:10 bottomLeftComplication:11 bottomRightComplication:7];
  qword_46E40 = v1;

  _objc_release_x1(v1);
}

void sub_18888(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_188B0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained currentStopwatchDate];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_18A5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_18A7C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained currentStopwatchDate];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_1C2A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C2C4(uint64_t a1, void *a2, id *a3)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateTachymeterLabel];
}

void sub_1CDA8(void *a1@<X1>, uint64_t a2@<X8>)
{
  v7 = a1;
  os_unfair_lock_lock(&unk_46EA8);
  if (qword_46EB0)
  {
    v3 = qword_46EB0 == v7;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v7 version], v4 != qword_46EB8))
  {
    qword_46EB0 = v7;
    qword_46EB8 = [v7 version];
    sub_1CEA8(v7, v8);
    xmmword_46E70 = v8[2];
    unk_46E80 = v8[3];
    xmmword_46E90 = v8[4];
    qword_46EA0 = v9;
    xmmword_46E50 = v8[0];
    unk_46E60 = v8[1];
  }

  v5 = unk_46E80;
  *(a2 + 32) = xmmword_46E70;
  *(a2 + 48) = v5;
  *(a2 + 64) = xmmword_46E90;
  *(a2 + 80) = qword_46EA0;
  v6 = unk_46E60;
  *a2 = xmmword_46E50;
  *(a2 + 16) = v6;
  os_unfair_lock_unlock(&unk_46EA8);
}

void sub_1CEA8(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = [CLKDeviceMetrics metricsWithDevice:a1 identitySizeClass:2];
  [v3 setScale:3 forSizeClass:1.13580247];
  [v3 scaledValue:25.0];
  *a2 = v4;
  [v3 scaledValue:12.0];
  *(a2 + 8) = v5;
  [v3 scaledValue:10.0];
  *(a2 + 16) = v6;
  [v3 scaledValue:-0.5];
  *(a2 + 24) = v7;
  [v3 scaledValue:30.5];
  *(a2 + 32) = v8;
  [v3 scaledValue:6.0];
  *(a2 + 40) = v9;
  v13[0] = &off_3AA28;
  v13[1] = &off_3AA40;
  v14[0] = &off_3AE00;
  v14[1] = &off_3AE10;
  v13[2] = &off_3AA58;
  v14[2] = &off_3AE10;
  v10 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:3];
  [v3 scaledValue:v10 withOverrides:29.0];
  *(a2 + 48) = v11;

  [v3 scaledValue:20.0];
  *(a2 + 56) = v12;
  *(a2 + 64) = xmmword_36050;
  *(a2 + 80) = 0xBFE0000000000000;
}

void sub_1D800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, id a49)
{
  objc_destroyWeak((v49 + 40));
  objc_destroyWeak(&a49);
  objc_destroyWeak(&STACK[0x258]);
  objc_destroyWeak(&STACK[0x378]);
  objc_destroyWeak(&STACK[0x468]);
  _Unwind_Resume(a1);
}

id sub_1D8C4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_opt_new();
  [v3 setFrame:{0.0, 0.0, *(a1 + 64), *(a1 + 64)}];
  [v3 setActions:*(a1 + 32)];
  [v3 bounds];
  v4 = [WeakRetained device];
  CLKRoundForDevice();
  [v3 setCornerRadius:?];

  v5 = [WeakRetained palette];
  v6 = [v5 hourDots];
  [v3 setBackgroundColor:{objc_msgSend(v6, "CGColor")}];

  return v3;
}

id sub_1D9B4(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (a2)
  {
    if (a2)
    {
      v5 = +[CALayer layer];
      [v5 setActions:*(a1 + 32)];
      [v5 setFrame:{0.0, 0.0, *(a1 + 96), *(a1 + 104)}];
      v19 = [WeakRetained palette];
      v20 = [v19 markers];
      [v5 setBackgroundColor:{objc_msgSend(v20, "CGColor")}];

      [v5 bounds];
      v21 = [WeakRetained device];
      CLKRoundForDevice();
      [v5 setCornerRadius:?];
    }

    else
    {
      v5 = objc_alloc_init(UILabel);
      v6 = [CLKFont compactSoftFontOfSize:*(a1 + 80) weight:UIFontWeightSemibold];
      [v5 setFont:v6];

      v7 = [NSNumber numberWithUnsignedInteger:0x3CuLL / *(a1 + 280) * a2];
      v8 = [NSString localizedStringWithFormat:@"%@", v7];
      [v5 setText:v8];

      v9 = [WeakRetained palette];
      v10 = [v9 markers];
      [v5 setTextColor:v10];

      [v5 sizeToFit];
    }
  }

  else
  {
    v11 = [NTKAlaskanFaceBundle imageWithName:@"count-up-fill-icon"];
    v5 = [[UIImageView alloc] initWithImage:v11];
    v12 = [WeakRetained palette];
    v13 = [v12 markerFillColor];
    [v5 setTintColor:v13];

    y = CGPointZero.y;
    [v5 setBounds:{CGPointZero.x, y, *(a1 + 264), *(a1 + 272)}];
    [WeakRetained setMarkerFillIcon:v5];
    v15 = [NTKAlaskanFaceBundle imageWithName:@"count-up-outline-icon"];
    v16 = [[UIImageView alloc] initWithImage:v15];
    v17 = [WeakRetained palette];
    v18 = [v17 markerOutlineColor];
    [v16 setTintColor:v18];

    [v16 setBounds:{CGPointZero.x, y, *(a1 + 264), *(a1 + 272)}];
    [WeakRetained setMarkerOutlineIcon:v16];
    [v5 bounds];
    CLKRectGetCenter();
    [v16 setCenter:?];
    [v5 addSubview:v16];
  }

  return v5;
}

id sub_1DCE0(uint64_t a1, unint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([*(a1 + 32) containsIndex:a2] & 1) != 0 || (objc_msgSend(*(a1 + 32), "containsIndex:", a2 - 1))
  {
    v5 = 0;
  }

  else
  {
    v7 = a2 % 5;
    v8 = [*(a1 + 32) containsIndex:a2 + 1];
    v5 = 0;
    if (v7 && (v8 & 1) == 0)
    {
      v5 = +[CALayer layer];
      v9 = +[NSNull null];
      v14[0] = @"contents";
      v14[1] = @"backgroundColor";
      v15[0] = v9;
      v15[1] = v9;
      v14[2] = @"transform";
      v14[3] = @"bounds";
      v15[2] = v9;
      v15[3] = v9;
      v14[4] = @"position";
      v15[4] = v9;
      v10 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:5];
      [v5 setActions:v10];

      [v5 setFrame:{0.0, 0.0, *(a1 + 112), *(a1 + 120)}];
      v11 = [WeakRetained palette];
      v12 = [v11 markers];
      [v5 setBackgroundColor:{objc_msgSend(v12, "CGColor")}];

      [v5 bounds];
      v13 = [WeakRetained device];
      CLKRoundForDevice();
      [v5 setCornerRadius:?];

      [v5 setAnchorPoint:{0.5, 0.0}];
    }
  }

  return v5;
}

id sub_1DEFC(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = +[CALayer layer];
  [v5 setActions:*(a1 + 32)];
  if (0xCCCCCCCCCCCCCCCDLL * a2 <= 0x3333333333333333)
  {
    v6 = *(a1 + 216);
    v7 = *(a1 + 224);
  }

  else
  {
    v6 = *(a1 + 200);
    v7 = *(a1 + 208);
  }

  [v5 setFrame:{0.0, 0.0, v6, v7}];
  v8 = [WeakRetained hasCountUpStarted];
  v9 = [WeakRetained palette];
  v10 = v9;
  if (v8)
  {
    [v9 activeDialTicks];
  }

  else
  {
    [v9 dialTicks];
  }
  v11 = ;
  [v5 setBackgroundColor:{objc_msgSend(v11, "CGColor")}];

  [v5 anchorPoint];
  [v5 setAnchorPoint:?];

  return v5;
}

void sub_1E2D4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 hourDots];
  [v2 updateColor:v5 object:v4];
}

void sub_1E344(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 markers];
  [v2 updateColor:v5 object:v4];
}

void sub_1E3B4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 markers];
  [v2 updateColor:v5 object:v4];
}

void sub_1E424(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 hasCountUpStarted];
  v6 = *(a1 + 40);
  if (v5)
  {
    [v6 activeDialTicks];
  }

  else
  {
    [v6 dialTicks];
  }
  v7 = ;
  [v3 updateColor:v7 object:v4];
}

void sub_1EA60(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1EA80(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained innerDialViewBackgroundColor];
  v4 = [WeakRetained innerDialView];
  [v4 setBackgroundColor:v3];

  v5 = [WeakRetained countUpLabelColor];
  v6 = [v5 CGColor];
  v7 = [WeakRetained countUpBackgroundLayer];
  [v7 setBackgroundColor:v6];

  v8 = [WeakRetained _countUpLabelTextColor];
  v9 = [WeakRetained countUpLabel];
  [v9 setTextColor:v8];

  [WeakRetained countUpLabelAlpha];
  v11 = v10;
  v12 = [WeakRetained countUpLabel];
  [v12 setAlpha:v11];

  [WeakRetained countUpLabelAlpha];
  *&v11 = v13;
  v14 = [WeakRetained countUpBackgroundLayer];
  LODWORD(v15) = LODWORD(v11);
  [v14 setOpacity:v15];

  v16 = [WeakRetained ticksView];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1EC44;
  v17[3] = &unk_39358;
  objc_copyWeak(&v18, (a1 + 32));
  [v16 enumerateMarkers:v17];

  objc_destroyWeak(&v18);
}

void sub_1EC44(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained hasCountUpStarted];
  v5 = [WeakRetained palette];
  v6 = v5;
  if (v4)
  {
    [v5 activeDialTicks];
  }

  else
  {
    [v5 dialTicks];
  }
  v7 = ;
  [WeakRetained updateColor:v7 object:v3];
}

void sub_1F294(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_1F2CC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained currentDate];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_1F328(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateFrameForCountUpLabel];
}

void sub_20354(void *a1@<X1>, uint64_t a2@<X8>)
{
  v12 = a1;
  os_unfair_lock_lock(&unk_46FA8);
  if (qword_46FB0)
  {
    v3 = qword_46FB0 == v12;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v12 version], v4 != qword_46FB8))
  {
    qword_46FB0 = v12;
    qword_46FB8 = [v12 version];
    sub_204B0(v12, v13);
    xmmword_46F80 = v13[12];
    unk_46F90 = v13[13];
    qword_46FA0 = v14;
    xmmword_46F40 = v13[8];
    unk_46F50 = v13[9];
    xmmword_46F60 = v13[10];
    unk_46F70 = v13[11];
    xmmword_46F00 = v13[4];
    unk_46F10 = v13[5];
    xmmword_46F20 = v13[6];
    unk_46F30 = v13[7];
    xmmword_46EC0 = v13[0];
    *algn_46ED0 = v13[1];
    xmmword_46EE0 = v13[2];
    unk_46EF0 = v13[3];
  }

  v5 = unk_46F90;
  *(a2 + 192) = xmmword_46F80;
  *(a2 + 208) = v5;
  *(a2 + 224) = qword_46FA0;
  v6 = unk_46F50;
  *(a2 + 128) = xmmword_46F40;
  *(a2 + 144) = v6;
  v7 = unk_46F70;
  *(a2 + 160) = xmmword_46F60;
  *(a2 + 176) = v7;
  v8 = unk_46F10;
  *(a2 + 64) = xmmword_46F00;
  *(a2 + 80) = v8;
  v9 = unk_46F30;
  *(a2 + 96) = xmmword_46F20;
  *(a2 + 112) = v9;
  v10 = *algn_46ED0;
  *a2 = xmmword_46EC0;
  *(a2 + 16) = v10;
  v11 = unk_46EF0;
  *(a2 + 32) = xmmword_46EE0;
  *(a2 + 48) = v11;
  os_unfair_lock_unlock(&unk_46FA8);
}

void sub_204B0(void *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = a1;
  v24 = [CLKDeviceMetrics metricsWithDevice:v3 identitySizeClass:2];
  [v24 setScale:3 forSizeClass:1.13580247];
  *a2 = xmmword_36130;
  [v24 scaledValue:13.0];
  v5 = v4;
  *(a2 + 16) = v4;
  [v24 scaledValue:100.0];
  *(a2 + 24) = v6 + v5 * -0.5;
  [v24 scaledValue:12.0];
  *(a2 + 32) = v7;
  [v24 scaledValue:10.0];
  *(a2 + 40) = v8;
  [v24 scaledSize:{2.0, 7.5}];
  *(a2 + 48) = v9;
  *(a2 + 56) = v10;
  [v24 scaledSize:{2.0, 3.5}];
  *(a2 + 64) = v11;
  *(a2 + 72) = v12;
  [v24 scaledValue:18.0];
  *(a2 + 80) = v13;
  *(a2 + 88) = 0x4022000000000000;
  [v24 scaledValue:16.5];
  *(a2 + 96) = v14;
  *(a2 + 104) = xmmword_36140;
  *(a2 + 120) = xmmword_36150;
  *(a2 + 136) = xmmword_36150;
  [v24 scaledSize:{1.25, 2.5}];
  *(a2 + 152) = v15;
  *(a2 + 160) = v16;
  [v24 scaledSize:{1.25, 4.5}];
  *(a2 + 168) = v17;
  *(a2 + 176) = v18;
  [v24 scaledValue:1.5];
  *(a2 + 184) = v19;
  *(a2 + 192) = xmmword_36160;
  [NTKAnalogUtilities largeDialDiameterForDevice:v3];
  v21 = v20;

  *(a2 + 208) = v21;
  [v24 scaledSize:3 withOverride:14.0 forSizeClass:{13.0, 14.0, 13.0}];
  *(a2 + 216) = v22;
  *(a2 + 224) = v23;
}

id sub_20780(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(&unk_46FC8);
  if (qword_46FD0)
  {
    v4 = qword_46FD0 == v3;
  }

  else
  {
    v4 = 0;
  }

  if (!v4 || (v5 = [v3 version], v5 != qword_46FD8))
  {
    qword_46FD0 = v3;
    qword_46FD8 = [v3 version];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_208A4;
    v10[3] = &unk_38A28;
    v10[4] = *(a1 + 32);
    v6 = sub_208A4(v10, v3);
    v7 = qword_46FC0;
    qword_46FC0 = v6;
  }

  v8 = qword_46FC0;
  os_unfair_lock_unlock(&unk_46FC8);

  return v8;
}

id sub_208A4(uint64_t a1, uint64_t a2)
{
  v4.receiver = *(a1 + 32);
  v4.super_class = &OBJC_METACLASS___NTKTroutColorEditOption;
  v2 = objc_msgSendSuper2(&v4, "_orderedValuesForDevice:", a2);

  return v2;
}

void sub_20BD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_20C10(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = objc_opt_new();
    v6 = [*(a1 + 32) largerTicksTestBlock];
    v7 = v6[2](v6, a2);

    v8 = *(a1 + 32);
    if (v7)
    {
      [v8 largeTickSize];
      v10 = v9;
      [*(a1 + 32) largeTickSize];
      [v5 setFrame:{0.0, 0.0, v10, v11}];
      v12 = [WeakRetained palette];
      [v12 subdialClockTicks];
    }

    else
    {
      [v8 smallTickSize];
      v14 = v13;
      [*(a1 + 32) smallTickSize];
      [v5 setFrame:{0.0, 0.0, v14, v15}];
      v12 = [WeakRetained palette];
      [v12 subdialClockTicksSecondary];
    }
    v16 = ;
    [v5 setBackgroundColor:{objc_msgSend(v16, "CGColor")}];

    [v5 bounds];
    CLKRoundForDevice();
    [v5 setCornerRadius:?];
    [v5 anchorPoint];
    [v5 setAnchorPoint:?];
    v17 = [objc_opt_class() layerDisabledActions];
    [v5 setActions:v17];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_20DB8(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && ([*(a1 + 32) visibleMarkersTestBlock], v5 = objc_claimAutoreleasedReturnValue(), v6 = v5[2](v5, a2), v5, v6))
  {
    v7 = objc_alloc_init(UILabel);
    v8 = [*(a1 + 32) markersFont];
    [v7 setFont:v8];

    v9 = [*(a1 + 32) markerTextBlock];
    v10 = v9[2](v9, a2);
    [v7 setText:v10];

    v11 = [WeakRetained palette];
    v12 = [v11 subdialClockTicks];
    [v7 setTextColor:v12];

    [v7 sizeToFit];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_21548(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 options];
  v8 = [v7 largerTicksTestBlock];
  LODWORD(a3) = v8[2](v8, a3);

  v9 = *(a1 + 40);
  if (a3)
  {
    [v9 subdialClockTicks];
  }

  else
  {
    [v9 subdialClockTicksSecondary];
  }
  v11 = ;
  v10 = v11;
  [v6 setBackgroundColor:{objc_msgSend(v11, "CGColor")}];
}

void sub_21618(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  v5 = [*(a1 + 32) options];
  v6 = [v5 visibleMarkersTestBlock];
  LODWORD(a3) = v6[2](v6, a3);

  if (a3)
  {
    v7 = [*(a1 + 40) subdialClockTicks];
    [v8 setTextColor:v7];
  }
}

void sub_21B84(id a1, NTKFace *a2, unint64_t a3, BOOL *a4)
{
  v5 = a2;
  if (a3)
  {
    v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:4 zOrder:4000];
    v10 = v6;
    v7 = &v10;
  }

  else
  {
    v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:4 zOrder:7000];
    v11 = v6;
    v7 = &v11;
  }

  v8 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
  v7[1] = v8;
  v9 = [NSArray arrayWithObjects:v7 count:2];
  [(NTKFace *)v5 setCurationPlacements:v9];
}