void sub_1D1C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 layer];
  v4 = [v3 CGContext];

  [v5 renderInContext:v4];
}

void sub_2140(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2164(uint64_t a1, void *a2, id *a3)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateLabels];
}

void sub_2D6C(void *a1@<X1>, uint64_t a2@<X8>)
{
  v7 = a1;
  os_unfair_lock_lock(&unk_11D38);
  if (qword_11D40)
  {
    v3 = qword_11D40 == v7;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v7 version], v4 != qword_11D48))
  {
    qword_11D40 = v7;
    qword_11D48 = [v7 version];
    sub_2E5C(v7, v8);
    xmmword_11D10 = v8[2];
    unk_11D20 = v8[3];
    qword_11D30 = v9;
    xmmword_11CF0 = v8[0];
    unk_11D00 = v8[1];
  }

  v5 = unk_11D20;
  *(a2 + 32) = xmmword_11D10;
  *(a2 + 48) = v5;
  *(a2 + 64) = qword_11D30;
  v6 = unk_11D00;
  *a2 = xmmword_11CF0;
  *(a2 + 16) = v6;
  os_unfair_lock_unlock(&unk_11D38);
}

void sub_2E5C(uint64_t a1@<X1>, void *a2@<X8>)
{
  a2[7] = 0;
  a2[8] = 0;
  v3 = [CLKDeviceMetrics metricsWithDevice:a1 identitySizeClass:2];
  [v3 setScale:4 forSizeClass:1.03];
  [v3 setScale:5 forSizeClass:1.15];
  v35[0] = &off_CEA0;
  v35[1] = &off_CEB8;
  v36[0] = &off_D6E8;
  v36[1] = &off_D6F8;
  v4 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:2];
  [v3 scaledValue:v4 withOverrides:95.0];
  *a2 = v5;

  v33[0] = &off_CEA0;
  v33[1] = &off_CEB8;
  v34[0] = &off_D708;
  v34[1] = &off_D718;
  v6 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:2];
  [v3 scaledValue:v6 withOverrides:91.0];
  a2[1] = v7;

  v31[0] = &off_CEA0;
  v31[1] = &off_CEB8;
  v32[0] = &off_D728;
  v32[1] = &off_D738;
  v8 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:2];
  [v3 scaledValue:v8 withOverrides:121.0];
  a2[2] = v9;

  v29[0] = &off_CEA0;
  v29[1] = &off_CED0;
  v30[0] = &off_D748;
  v30[1] = &off_D758;
  v29[2] = &off_CEE8;
  v29[3] = &off_CF00;
  v30[2] = &off_D768;
  v30[3] = &off_D778;
  v30[4] = &off_D778;
  v30[5] = &off_D788;
  v29[4] = &off_CF18;
  v29[5] = &off_CF30;
  v29[6] = &off_CF48;
  v29[7] = &off_CF60;
  v30[6] = &off_D798;
  v30[7] = &off_D778;
  v10 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:8];
  [v3 scaledValue:v10 withOverrides:-0.5];
  a2[3] = v11;

  v27[0] = &off_CEA0;
  v27[1] = &off_CEB8;
  v28[0] = &off_D7A8;
  v28[1] = &off_D7B8;
  v12 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:2];
  [v3 scaledValue:v12 withOverrides:-5.0];
  a2[4] = v13;

  v25[0] = &off_CEA0;
  v25[1] = &off_CEB8;
  v26[0] = &off_D7C8;
  v26[1] = &off_D7D8;
  v14 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:2];
  [v3 scaledValue:v14 withOverrides:117.5];
  a2[5] = v15;

  v23[0] = &off_CEA0;
  v23[1] = &off_CEB8;
  v24[0] = &off_D7E8;
  v24[1] = &off_D748;
  v16 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:2];
  [v3 scaledValue:v16 withOverrides:-0.5];
  a2[6] = v17;

  v21[0] = &off_CED0;
  v21[1] = &off_CEB8;
  v22[0] = &off_D7F8;
  v22[1] = &off_D808;
  v21[2] = &off_CEE8;
  v21[3] = &off_CF00;
  v22[2] = &off_D798;
  v22[3] = &off_D818;
  v21[4] = &off_CF18;
  v21[5] = &off_CF30;
  v22[4] = &off_D818;
  v22[5] = &off_D828;
  v21[6] = &off_CF48;
  v21[7] = &off_CF60;
  v22[6] = &off_D838;
  v22[7] = &off_D818;
  v18 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:8];
  [v3 scaledValue:v18 withOverrides:2.0];
  a2[7] = v19;

  [v3 scaledValue:2.0];
  a2[8] = v20;
}

id sub_34BC(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(&unk_11D58);
  if (qword_11D60)
  {
    v4 = qword_11D60 == v3;
  }

  else
  {
    v4 = 0;
  }

  if (!v4 || (v5 = [v3 version], v5 != qword_11D68))
  {
    qword_11D60 = v3;
    qword_11D68 = [v3 version];
    v6 = [*(a1 + 32) __orderedValuesForDevice:v3];
    v7 = qword_11D50;
    qword_11D50 = v6;
  }

  v8 = qword_11D50;
  os_unfair_lock_unlock(&unk_11D58);

  return v8;
}

void sub_3834(uint64_t a1)
{
  v8.receiver = *(a1 + 32);
  v8.super_class = NTKBigNumeralsDigitalColorEditOption;
  v1 = objc_msgSendSuper2(&v8, "_valueToFaceBundleStringDict");
  v2 = [v1 mutableCopy];

  v15[0] = &off_CF78;
  v15[1] = &off_CF90;
  v16[0] = NTKFaceBundleColorBigNumeralsDualTone1;
  v16[1] = NTKFaceBundleColorBigNumeralsDualTone2;
  v15[2] = &off_CFA8;
  v15[3] = &off_CFC0;
  v16[2] = NTKFaceBundleColorBigNumeralsDualTone3;
  v16[3] = NTKFaceBundleColorBigNumeralsDualTone4;
  v15[4] = &off_CFD8;
  v15[5] = &off_CFF0;
  v16[4] = NTKFaceBundleColorBigNumeralsDualTone5;
  v16[5] = NTKFaceBundleColorBigNumeralsDualTone6;
  v15[6] = &off_D008;
  v15[7] = &off_D020;
  v16[6] = NTKFaceBundleColorBigNumeralsDualTone7;
  v16[7] = NTKFaceBundleColorBigNumeralsDualTone8;
  v3 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:8];
  [v2 addEntriesFromDictionary:v3];

  v13[0] = &off_D038;
  v13[1] = &off_D050;
  v14[0] = NTKFaceBundleColorBigNumeralsDualTone9;
  v14[1] = NTKFaceBundleColorBigNumeralsDualTone10;
  v13[2] = &off_D068;
  v13[3] = &off_D080;
  v14[2] = NTKFaceBundleColorBigNumeralsDualTone11;
  v14[3] = NTKFaceBundleColorBigNumeralsDualTone12;
  v4 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:4];
  [v2 addEntriesFromDictionary:v4];

  [v2 setObject:NTKFaceBundleColorBigNumeralsDigitalMulticolorGradient1 forKey:&off_D158];
  v11[0] = &off_D098;
  v11[1] = &off_D0B0;
  v12[0] = NTKFaceBundleColorBigNumeralsDualTone13;
  v12[1] = NTKFaceBundleColorBigNumeralsDualTone14;
  v11[2] = &off_D0C8;
  v12[2] = NTKFaceBundleColorBigNumeralsDualTone15;
  v5 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:3];
  [v2 addEntriesFromDictionary:v5];

  v9[0] = &off_D0E0;
  v9[1] = &off_D0F8;
  v10[0] = NTKFaceBundleColorBigNumeralsDualTone16;
  v10[1] = NTKFaceBundleColorBigNumeralsDualTone17;
  v9[2] = &off_D110;
  v9[3] = &off_D128;
  v10[2] = NTKFaceBundleColorBigNumeralsDualTone18;
  v10[3] = NTKFaceBundleColorBigNumeralsDualTone19;
  v9[4] = &off_D140;
  v10[4] = NTKFaceBundleColorBigNumeralsDualTone20;
  v6 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:5];
  [v2 addEntriesFromDictionary:v6];

  v7 = qword_11D70;
  qword_11D70 = v2;
}

id sub_3FA8(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(&unk_11D88);
  if (qword_11D90)
  {
    v4 = qword_11D90 == v3;
  }

  else
  {
    v4 = 0;
  }

  if (!v4 || (v5 = [v3 version], v5 != qword_11D98))
  {
    qword_11D90 = v3;
    qword_11D98 = [v3 version];
    v6 = [*(a1 + 32) __orderedValuesForDevice:v3];
    v7 = qword_11D80;
    qword_11D80 = v6;
  }

  v8 = qword_11D80;
  os_unfair_lock_unlock(&unk_11D88);

  return v8;
}

void sub_41B4(id a1)
{
  v3[0] = &off_D188;
  v3[1] = &off_D1A0;
  v4[0] = NTKFaceBundleBigNumeralsTypefaceWesternArabic;
  v4[1] = NTKFaceBundleBigNumeralsTypefaceEasternArabic;
  v3[2] = &off_D1B8;
  v3[3] = &off_D170;
  v4[2] = NTKFaceBundleBigNumeralsTypefaceDevanagari;
  v4[3] = NTKFaceBundleBigNumeralsTypefaceRoman;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:4];
  v2 = qword_11DA0;
  qword_11DA0 = v1;
}

id sub_42E0(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_11DB8);
  if (qword_11DC0)
  {
    v3 = qword_11DC0 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != qword_11DC8))
  {
    qword_11DC0 = v2;
    qword_11DC8 = [v2 version];
    v5 = _EnumValueRange();
    v6 = qword_11DB0;
    qword_11DB0 = v5;
  }

  v7 = qword_11DB0;
  os_unfair_lock_unlock(&unk_11DB8);

  return v7;
}

void sub_4428(id a1)
{
  v3[0] = &off_D1D0;
  v3[1] = &off_D1E8;
  v4[0] = @"fill";
  v4[1] = @"half fill";
  v3[2] = &off_D200;
  v4[2] = @"outline";
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
  v2 = qword_11DD0;
  qword_11DD0 = v1;
}

void sub_4BE8(id a1, NTKFace *a2, unint64_t a3, BOOL *a4)
{
  v5 = a2;
  if (a3 > 3)
  {
    if (a3 == 4)
    {
      v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:12 zOrder:4000];
      v15[0] = v6;
      v7 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:16 zOrder:4000];
      v15[1] = v7;
      v8 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:2 zOrder:4000];
      v15[2] = v8;
      v9 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:5 zOrder:4000];
      v15[3] = v9;
      v11 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:13 zOrder:4000];
      v15[4] = v11;
      v12 = v15;
    }

    else
    {
      if (a3 != 5)
      {
        goto LABEL_13;
      }

      v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:16 zOrder:4000];
      v14[0] = v6;
      v7 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:12 zOrder:4000];
      v14[1] = v7;
      v8 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:2 zOrder:4000];
      v14[2] = v8;
      v9 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:5 zOrder:4000];
      v14[3] = v9;
      v11 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:13 zOrder:4000];
      v14[4] = v11;
      v12 = v14;
    }

    v13 = [NSArray arrayWithObjects:v12 count:5];
    [(NTKFace *)v5 setCurationPlacements:v13];

    goto LABEL_12;
  }

  if (a3 - 1 < 3)
  {
    v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:12 zOrder:4000];
    v16[0] = v6;
    v7 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:2 zOrder:4000];
    v16[1] = v7;
    v8 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:5 zOrder:4000];
    v16[2] = v8;
    v9 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:13 zOrder:4000];
    v16[3] = v9;
    v10 = v16;
LABEL_9:
    v11 = [NSArray arrayWithObjects:v10 count:4];
    [(NTKFace *)v5 setCurationPlacements:v11];
LABEL_12:

    goto LABEL_13;
  }

  if (!a3)
  {
    v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:5 zOrder:4000];
    v17[0] = v6;
    v7 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:13 zOrder:4000];
    v17[1] = v7;
    v8 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:12 zOrder:7000];
    v17[2] = v8;
    v9 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:2 zOrder:9000];
    v17[3] = v9;
    v10 = v17;
    goto LABEL_9;
  }

LABEL_13:
}