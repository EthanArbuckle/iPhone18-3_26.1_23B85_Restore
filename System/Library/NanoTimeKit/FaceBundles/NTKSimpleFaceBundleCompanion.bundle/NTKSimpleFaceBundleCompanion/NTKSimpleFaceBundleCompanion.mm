void sub_1394(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  switch(a3)
  {
    case 2:
      [v5 _setFaceGalleryComplicationTypesForSlots:&__NSDictionary0__struct];
      v7 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:5 zOrder:7000];
      v12 = v7;
      v8 = &v12;
      goto LABEL_7;
    case 1:
      [v5 _setFaceGalleryComplicationTypesForSlots:*(a1 + 32)];
      v7 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:5 zOrder:4000];
      v13 = v7;
      v8 = &v13;
LABEL_7:
      v9 = 3;
      goto LABEL_8;
    case 0:
      [v5 _setFaceGalleryComplicationTypesForSlots:*(a1 + 32)];
      v7 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:9000];
      v14 = v7;
      v8 = &v14;
      v9 = 5;
LABEL_8:
      v10 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:v9 zOrder:4000];
      v8[1] = v10;
      v11 = [NSArray arrayWithObjects:v8 count:2];
      [v6 setCurationPlacements:v11];

      break;
  }
}

void sub_2998(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 display];
  if ([v4 conformsToProtocol:&OBJC_PROTOCOL___NTKUtilityComplicationView])
  {
    [v4 setAccentColor:*(*(a1 + 32) + 112)];
  }
}

void sub_2F34(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 display];
  if ([v4 conformsToProtocol:&OBJC_PROTOCOL___NTKUtilityComplicationView])
  {
    [v4 setAccentColor:*(a1 + 32)];
  }
}

void sub_32DC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [a3 display];
  if ([v6 conformsToProtocol:&OBJC_PROTOCOL___NTKUtilityComplicationView])
  {
    v4 = *(a1 + 32);
    v5 = v6;
    [v5 setForegroundAlpha:v4];
    [v5 setForegroundImageAlpha:*(a1 + 40)];
  }
}

id sub_3C0C(uint64_t a1, void *a2)
{
  v3 = [a2 format];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [*(a1 + 32) drawInRect:{v5, v7, v9, v11}];
  [*(a1 + 40) drawInRect:{v5, v7, v9, v11}];
  [*(a1 + 48) drawInRect:{v5, v7, v9, v11}];
  NTKCSecondHandCenterOffset();
  v12 = *(a1 + 56);
  v14 = v5 + v9 * 0.5 - v13;
  v16 = v7 + v11 * 0.5 - v15;

  return [v12 drawAtPoint:{v14, v16}];
}

void sub_5620(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = [a3 display];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = *(a1 + 32);
    v5 = v8;
    v6 = [v4 accentColor];
    [*(a1 + 32) setComplicationColor:v6];

    v7 = [*(a1 + 32) accentColor];
    [*(a1 + 32) setInterpolatedComplicationColor:v7];

    [v5 updateMonochromeColor];
  }
}

void sub_5874(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = [a3 display];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = *(a1 + 32);
    v5 = v8;
    v6 = [v4 complicationColor];
    v7 = [*(a1 + 32) interpolatedComplicationColor];
    [*(a1 + 32) setComplicationColor:*(a1 + 40)];
    [*(a1 + 32) setInterpolatedComplicationColor:*(a1 + 40)];
    [v5 updateMonochromeColor];

    [*(a1 + 32) setComplicationColor:v6];
    [*(a1 + 32) setInterpolatedComplicationColor:v7];
  }
}

void sub_6044(void *a1@<X1>, uint64_t a2@<X8>)
{
  v8 = a1;
  os_unfair_lock_lock(&unk_15CD8);
  if (qword_15CE0)
  {
    v3 = qword_15CE0 == v8;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v8 version], v4 != qword_15CE8))
  {
    qword_15CE0 = v8;
    qword_15CE8 = [v8 version];
    sub_6158(v8, v9);
    xmmword_15CA0 = v9[4];
    unk_15CB0 = v9[5];
    xmmword_15CC0 = v9[6];
    qword_15CD0 = v10;
    xmmword_15C60 = v9[0];
    *algn_15C70 = v9[1];
    xmmword_15C80 = v9[2];
    unk_15C90 = v9[3];
  }

  v5 = unk_15CB0;
  *(a2 + 64) = xmmword_15CA0;
  *(a2 + 80) = v5;
  *(a2 + 96) = xmmword_15CC0;
  *(a2 + 112) = qword_15CD0;
  v6 = *algn_15C70;
  *a2 = xmmword_15C60;
  *(a2 + 16) = v6;
  v7 = unk_15C90;
  *(a2 + 32) = xmmword_15C80;
  *(a2 + 48) = v7;
  os_unfair_lock_unlock(&unk_15CD8);
}

void sub_6158(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 64) = 0u;
  v3 = (a2 + 64);
  *(a2 + 112) = 0;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  v4 = [CLKDeviceMetrics metricsWithDevice:a1 identitySizeClass:2];
  v54[0] = &off_10948;
  v54[1] = &off_10978;
  v55[0] = &off_10CB8;
  v55[1] = &off_10CC8;
  v5 = [NSDictionary dictionaryWithObjects:v55 forKeys:v54 count:2];
  [v4 scaledValue:v5 withOverrides:29.0];
  *a2 = v6;

  [v4 scaledValue:0 withOverride:111.0 forSizeClass:95.5];
  *(a2 + 8) = v7;
  v52[0] = &off_10948;
  v52[1] = &off_10978;
  v53[0] = &off_10CD8;
  v53[1] = &off_10CE8;
  v8 = [NSDictionary dictionaryWithObjects:v53 forKeys:v52 count:2];
  [v4 scaledValue:v8 withOverrides:23.0];
  *(a2 + 16) = v9;

  v50[0] = &off_10948;
  v50[1] = &off_10978;
  v51[0] = &off_10CF8;
  v51[1] = &off_10D08;
  v10 = [NSDictionary dictionaryWithObjects:v51 forKeys:v50 count:2];
  [v4 scaledValue:v10 withOverrides:6.0];
  *(a2 + 24) = v11;

  [v4 scaledValue:3 withOverride:64.0 forSizeClass:73.0];
  *(a2 + 32) = v12;
  *(a2 + 40) = xmmword_C120;
  v48[0] = &off_10948;
  v48[1] = &off_10960;
  v49[0] = &off_10D18;
  v49[1] = &off_10D08;
  v48[2] = &off_10978;
  v49[2] = &off_10D28;
  v13 = [NSDictionary dictionaryWithObjects:v49 forKeys:v48 count:3];
  [v4 scaledValue:v13 withOverrides:7.0];
  *(a2 + 56) = v14;

  v15 = CLKLocaleCurrentNumberSystem();
  if ((v15 - 3) < 0xC)
  {
    goto LABEL_2;
  }

  if (v15 > 0)
  {
    if (v15 == 1)
    {
      v46[0] = &off_10948;
      v46[1] = &off_10978;
      v47[0] = &off_10D38;
      v47[1] = &off_10D48;
      v29 = [NSDictionary dictionaryWithObjects:v47 forKeys:v46 count:2];
      v30 = 11.0;
    }

    else
    {
      if (v15 != 2)
      {
        goto LABEL_3;
      }

      v44[0] = &off_10948;
      v44[1] = &off_10978;
      v45[0] = &off_10D58;
      v45[1] = &off_10D48;
      v29 = [NSDictionary dictionaryWithObjects:v45 forKeys:v44 count:2];
      v30 = 11.5;
    }

    [v4 scaledValue:v29 withOverrides:v30];
    *v3 = v31;

    goto LABEL_3;
  }

  if (v15 == -1 || !v15)
  {
LABEL_2:
    [v4 scaledValue:3 withOverride:8.5 forSizeClass:9.0];
    *v3 = v16;
  }

LABEL_3:
  v42[0] = &off_10948;
  v42[1] = &off_10978;
  v43[0] = &off_10CC8;
  v43[1] = &off_10D68;
  v17 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:2];
  [v4 scaledValue:v17 withOverrides:31.0];
  *(a2 + 72) = v18;

  v40[0] = &off_10948;
  v40[1] = &off_10978;
  v41[0] = &off_10CC8;
  v41[1] = &off_10D78;
  v19 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:2];
  [v4 scaledValue:v19 withOverrides:33.0];
  *(a2 + 80) = v20;

  v38[0] = &off_10948;
  v38[1] = &off_10978;
  v39[0] = &off_10D88;
  v39[1] = &off_10D98;
  v21 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:2];
  [v4 scaledValue:v21 withOverrides:36.0];
  *(a2 + 88) = v22;

  v36[0] = &off_10948;
  v36[1] = &off_10978;
  v37[0] = &off_10DA8;
  v37[1] = &off_10DB8;
  v23 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:2];
  [v4 scaledValue:v23 withOverrides:16.5];
  *(a2 + 96) = v24;

  v34[0] = &off_10948;
  v34[1] = &off_10978;
  v35[0] = &off_10DC8;
  v35[1] = &off_10DD8;
  v25 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:2];
  [v4 scaledValue:v25 withOverrides:33.5];
  *(a2 + 104) = v26;

  v32[0] = &off_10948;
  v32[1] = &off_10978;
  v33[0] = &off_10DE8;
  v33[1] = &off_10DF8;
  v27 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:2];
  [v4 scaledValue:v27 withOverrides:55.0];
  *(a2 + 112) = v28;
}

__double2 __sincos_stret(double a1)
{
  v3 = ___sincos_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}