void sub_1F8C(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = a2;
  v5 = [v2 layer];
  v4 = [v3 CGContext];

  [v5 renderInContext:v4];
}

void sub_242C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2450(uint64_t a1, void *a2, id *a3)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateHourLabelText];
}

double sub_2B50(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_11418);
  if (qword_11420)
  {
    v3 = qword_11420 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_11428))
  {
    v5 = qword_11400;
  }

  else
  {
    qword_11420 = v2;
    qword_11428 = [v2 version];
    v5 = sub_2C38(qword_11428, v2);
    qword_11400 = v5;
    qword_11408 = v6;
    qword_11410 = v7;
  }

  os_unfair_lock_unlock(&unk_11418);

  return *&v5;
}

double sub_2C38(uint64_t a1, uint64_t a2)
{
  v2 = [CLKDeviceMetrics metricsWithDevice:a2 identitySizeClass:2];
  [v2 setScale:4 forSizeClass:1.05];
  [v2 setScale:5 forSizeClass:1.17];
  v13[0] = &off_CA38;
  v13[1] = &off_CA50;
  v14[0] = &off_CE08;
  v14[1] = &off_CE18;
  v3 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
  [v2 scaledValue:v3 withOverrides:256.0];
  v5 = v4;

  v11[0] = &off_CA38;
  v11[1] = &off_CA50;
  v12[0] = &off_CE28;
  v12[1] = &off_CE38;
  v6 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
  [v2 scaledValue:v6 withOverrides:247.0];

  v9[0] = &off_CA38;
  v9[1] = &off_CA68;
  v10[0] = &off_CE48;
  v10[1] = &off_CE58;
  v9[2] = &off_CA50;
  v10[2] = &off_CE68;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:3];
  [v2 scaledValue:v7 withOverrides:90.0];

  return v5;
}

void sub_33B0(void *a1@<X1>, uint64_t a2@<X8>)
{
  v8 = a1;
  os_unfair_lock_lock(&unk_11498);
  if (qword_114A0)
  {
    v3 = qword_114A0 == v8;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v8 version], v4 != qword_114A8))
  {
    qword_114A0 = v8;
    qword_114A8 = [v8 version];
    sub_34B4(v8, v9);
    xmmword_11470 = v9[4];
    unk_11480 = v9[5];
    qword_11490 = v10;
    xmmword_11430 = v9[0];
    unk_11440 = v9[1];
    xmmword_11450 = v9[2];
    unk_11460 = v9[3];
  }

  v5 = unk_11480;
  *(a2 + 64) = xmmword_11470;
  *(a2 + 80) = v5;
  *(a2 + 96) = qword_11490;
  v6 = unk_11440;
  *a2 = xmmword_11430;
  *(a2 + 16) = v6;
  v7 = unk_11460;
  *(a2 + 32) = xmmword_11450;
  *(a2 + 48) = v7;
  os_unfair_lock_unlock(&unk_11498);
}

void sub_34B4(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = [CLKDeviceMetrics metricsWithDevice:a1 identitySizeClass:2];
  [v3 setRoundingBehavior:3];
  [v3 scaledValue:3 withOverride:2.875 forSizeClass:3.0];
  *a2 = v4;
  [v3 scaledValue:0 withOverride:11.0 forSizeClass:11.0];
  *(a2 + 8) = v5;
  *(a2 + 16) = 0x4012000000000000;
  [v3 scaledValue:6.25];
  *(a2 + 24) = v6;
  *(a2 + 32) = xmmword_7780;
  v21[0] = &off_CA80;
  v21[1] = &off_CA98;
  v22[0] = &off_CE78;
  v22[1] = &off_CE88;
  v21[2] = &off_CAB0;
  v22[2] = &off_CE98;
  v7 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:3];
  [v3 scaledValue:v7 withOverrides:68.0];
  *(a2 + 56) = v8;

  v19[0] = &off_CA80;
  v19[1] = &off_CA98;
  v20[0] = &off_CEA8;
  v20[1] = &off_CEB8;
  v19[2] = &off_CAB0;
  v20[2] = &off_CEC8;
  v9 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:3];
  [v3 scaledValue:v9 withOverrides:41.5];
  *(a2 + 48) = v10;

  *(a2 + 64) = 0x4004000000000000;
  v17[0] = &off_CA80;
  v17[1] = &off_CA98;
  v18[0] = &off_CED8;
  v18[1] = &off_CEE8;
  v17[2] = &off_CAB0;
  v18[2] = &off_CEF8;
  v11 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:3];
  [v3 scaledValue:v11 withOverrides:81.0];
  *(a2 + 72) = v12;

  v15[0] = &off_CA80;
  v15[1] = &off_CAB0;
  v16[0] = &off_CF08;
  v16[1] = &off_CF18;
  v13 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
  [v3 scaledValue:v13 withOverrides:14.5];
  *(a2 + 80) = v14;

  *(a2 + 88) = xmmword_7790;
}

void sub_3914(id a1, NTKFace *a2, unint64_t a3, BOOL *a4)
{
  v5 = a2;
  if (a3 > 3)
  {
    if (a3 - 4 >= 2)
    {
      goto LABEL_13;
    }

    v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:5 zOrder:4000];
    v14[0] = v6;
    v7 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:12 zOrder:4000];
    v14[1] = v7;
    v8 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
    v14[2] = v8;
    v9 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:13 zOrder:4000];
    v14[3] = v9;
    v12 = v14;
LABEL_11:
    v10 = [NSArray arrayWithObjects:v12 count:4];
    [(NTKFace *)v5 setCurationPlacements:v10];
    goto LABEL_12;
  }

  if (a3 - 2 < 2)
  {
    v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:5 zOrder:4000];
    v15[0] = v6;
    v7 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:12 zOrder:4000];
    v15[1] = v7;
    v8 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:16 zOrder:4000];
    v15[2] = v8;
    v9 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
    v15[3] = v9;
    v10 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:13 zOrder:4000];
    v15[4] = v10;
    v11 = v15;
    goto LABEL_9;
  }

  if (!a3)
  {
    v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:5 zOrder:4000];
    v17[0] = v6;
    v7 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:12 zOrder:4000];
    v17[1] = v7;
    v8 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
    v17[2] = v8;
    v9 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:13 zOrder:4000];
    v17[3] = v9;
    v12 = v17;
    goto LABEL_11;
  }

  if (a3 == 1)
  {
    v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:16 zOrder:4000];
    v16[0] = v6;
    v7 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:5 zOrder:4000];
    v16[1] = v7;
    v8 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:12 zOrder:4000];
    v16[2] = v8;
    v9 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
    v16[3] = v9;
    v10 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:13 zOrder:4000];
    v16[4] = v10;
    v11 = v16;
LABEL_9:
    v13 = [NSArray arrayWithObjects:v11 count:5];
    [(NTKFace *)v5 setCurationPlacements:v13];

LABEL_12:
  }

LABEL_13:
}

id sub_4B20(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(&unk_114B8);
  if (qword_114C0)
  {
    v4 = qword_114C0 == v3;
  }

  else
  {
    v4 = 0;
  }

  if (!v4 || (v5 = [v3 version], v5 != qword_114C8))
  {
    qword_114C0 = v3;
    qword_114C8 = [v3 version];
    v6 = [*(a1 + 32) __orderedValuesForDevice:v3];
    v7 = qword_114B0;
    qword_114B0 = v6;
  }

  v8 = qword_114B0;
  os_unfair_lock_unlock(&unk_114B8);

  return v8;
}

void sub_4DFC(uint64_t a1)
{
  v4.receiver = *(a1 + 32);
  v4.super_class = NTKBigNumeralsAnalogColorEditOption;
  v1 = objc_msgSendSuper2(&v4, "_valueToFaceBundleStringDict");
  v2 = [v1 mutableCopy];

  [v2 setObject:NTKFaceBundleColorBigNumeralsAnalogMulticolorGradient1 forKey:&off_CC00];
  v3 = qword_114D0;
  qword_114D0 = v2;
}

id sub_4F68(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_114E8);
  if (qword_114F0)
  {
    v3 = qword_114F0 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != qword_114F8))
  {
    qword_114F0 = v2;
    qword_114F8 = [v2 version];
    v5 = _EnumValueRange();
    v6 = qword_114E0;
    qword_114E0 = v5;
  }

  v7 = qword_114E0;
  os_unfair_lock_unlock(&unk_114E8);

  return v7;
}

void sub_50B8(id a1)
{
  v3[0] = &off_CC18;
  v3[1] = &off_CC30;
  v4[0] = @"fill";
  v4[1] = @"outline";
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:2];
  v2 = qword_11500;
  qword_11500 = v1;
}

id sub_5330(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(&unk_11518);
  if (qword_11520)
  {
    v4 = qword_11520 == v3;
  }

  else
  {
    v4 = 0;
  }

  if (!v4 || (v5 = [v3 version], v5 != qword_11528))
  {
    qword_11520 = v3;
    qword_11528 = [v3 version];
    v6 = [*(a1 + 32) __orderedValuesForDevice:v3];
    v7 = qword_11510;
    qword_11510 = v6;
  }

  v8 = qword_11510;
  os_unfair_lock_unlock(&unk_11518);

  return v8;
}

void sub_5588(id a1)
{
  v3[0] = &off_CC48;
  v3[1] = &off_CC60;
  v4[0] = NTKFaceBundleBigNumeralsTypefaceWesternArabic;
  v4[1] = NTKFaceBundleBigNumeralsTypefaceEasternArabic;
  v3[2] = &off_CC78;
  v3[3] = &off_CC90;
  v4[2] = NTKFaceBundleBigNumeralsTypefaceDevanagari;
  v4[3] = NTKFaceBundleBigNumeralsTypefaceRoman;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:4];
  v2 = qword_11530;
  qword_11530 = v1;
}