void sub_17A4(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v6 = 32;
  if (*(a1 + 48) > a3)
  {
    v6 = 40;
  }

  v7 = [*(a1 + v6) CGColor];
  v8 = [v5 contentsMultiplyColor];
  [v5 setBackgroundColor:v7];
  if (!CGColorEqualToColor(v7, v8))
  {
    v9 = dbl_A100[0xCCCCCCCCCCCCCCCDLL * a3 < 0x3333333333333334];
    v10 = objc_opt_new();
    [v10 setDuration:1.0];
    v11 = [CASpringAnimation animationWithKeyPath:@"transform.scale.xy"];
    [v11 setDuration:0.5];
    v12 = [NSNumber numberWithDouble:v9];
    [v11 setByValue:v12];

    [v11 setCumulative:1];
    [v11 setMass:0.25];
    [v11 setStiffness:80.0];
    [v11 setDamping:5.0];
    [v11 setFillMode:kCAFillModeBoth];
    v13 = [CASpringAnimation animationWithKeyPath:@"transform.scale.xy"];
    [v13 setDuration:0.8];
    v14 = [NSNumber numberWithDouble:-v9];
    [v13 setByValue:v14];

    [v13 setBeginTime:0.2];
    [v13 setCumulative:1];
    [v13 setMass:0.8];
    [v13 setStiffness:90.0];
    [v13 setDamping:10.0];
    v17[0] = v11;
    v17[1] = v13;
    v15 = [NSArray arrayWithObjects:v17 count:2];
    [v10 setAnimations:v15];

    LODWORD(v16) = 2.0;
    [v10 setSpeed:v16];

    [v5 addAnimation:v10 forKey:@"Key"];
  }
}

double sub_1ED4(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_15648);
  if (qword_15650)
  {
    v3 = qword_15650 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_15658))
  {
    v5 = qword_15630;
  }

  else
  {
    qword_15650 = v2;
    qword_15658 = [v2 version];
    v5 = sub_1FBC(qword_15658, v2);
    qword_15630 = v5;
    qword_15638 = v6;
    qword_15640 = v7;
  }

  os_unfair_lock_unlock(&unk_15648);

  return *&v5;
}

double sub_1FBC(uint64_t a1, uint64_t a2)
{
  v2 = [CLKDeviceMetrics metricsWithDevice:a2 identitySizeClass:3];
  [v2 setRoundingBehavior:2];
  v10[0] = &off_10A68;
  v10[1] = &off_10A80;
  v11[0] = &off_10EA0;
  v11[1] = &off_10EA0;
  v3 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];
  [v2 scaledValue:v3 withOverrides:4.0];
  v5 = v4;

  v8[0] = &off_10A98;
  v8[1] = &off_10A68;
  v9[0] = &off_10EB0;
  v9[1] = &off_10EC0;
  v8[2] = &off_10A80;
  v9[2] = &off_10EC0;
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:3];
  [v2 scaledValue:v6 withOverrides:25.0];

  return v5;
}

id sub_2E3C(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_15668);
  if (qword_15670)
  {
    v3 = qword_15670 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != qword_15678))
  {
    qword_15670 = v2;
    qword_15678 = [v2 version];
    if ([v2 deviceCategory] == &dword_0 + 1)
    {
      v5 = &off_11240;
    }

    else
    {
      v5 = &off_11228;
    }

    objc_storeStrong(&qword_15660, v5);
  }

  v6 = qword_15660;
  os_unfair_lock_unlock(&unk_15668);

  return v6;
}

void sub_2FC8(id a1)
{
  v3[0] = &off_10BA0;
  v3[1] = &off_10B88;
  v4[0] = NTKFaceBundleColorStyleDial;
  v4[1] = NTKFaceBundleColorStyleCircular;
  v3[2] = &off_10B70;
  v4[2] = NTKFaceBundleColorStyleFullscreen;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
  v2 = qword_15680;
  qword_15680 = v1;
}

void sub_335C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) complicationTypesBySlot];
  [v5 _setFaceGalleryComplicationTypesForSlots:v6];

  if (a3 <= 1)
  {
    if (!a3)
    {
      v7 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:5 zOrder:4000];
      v19[0] = v7;
      v8 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:13 zOrder:4000];
      v19[1] = v8;
      v9 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
      v19[2] = v9;
      v10 = v19;
      goto LABEL_12;
    }

    if (a3 == 1)
    {
      v7 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:5 zOrder:4000];
      v18[0] = v7;
      v8 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:13 zOrder:4000];
      v18[1] = v8;
      v9 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
      v18[2] = v9;
      v10 = v18;
LABEL_12:
      v14 = [NSArray arrayWithObjects:v10 count:3];
      [v5 setCurationPlacements:v14];

      goto LABEL_13;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    v13 = [NTKComplication anyComplicationOfType:14];
    [v5 setComplication:v13 forSlot:NTKComplicationSlotMonogram];

    v7 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:5 zOrder:4000];
    v17[0] = v7;
    v8 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:13 zOrder:4000];
    v17[1] = v8;
    v9 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
    v17[2] = v9;
    v10 = v17;
    goto LABEL_12;
  }

  if (a3 != 5)
  {
LABEL_8:
    v7 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:13 zOrder:4000];
    v8 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000, v7];
    v15[1] = v8;
    v12 = v15;
    goto LABEL_9;
  }

  v11 = [NTKComplication anyComplicationOfType:14];
  [v5 setComplication:v11 forSlot:NTKComplicationSlotMonogram];

  v7 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:13 zOrder:4000];
  v16[0] = v7;
  v8 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
  v16[1] = v8;
  v12 = v16;
LABEL_9:
  v9 = [NSArray arrayWithObjects:v12 count:2];
  [v5 setCurationPlacements:v9];
LABEL_13:
}

void sub_4E38(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _keylinePaddingForState:a2];
  v5 = v4;
  [*(a1 + 32) _edgeGapForState:a2];
  v7 = v5 + v6;
  v8 = [*(a1 + 32) device];
  NTKCircularSmallComplicationDiameter();
  v10 = v9;
  v11 = [*(a1 + 32) device];
  NTKCircularSmallComplicationDiameter();
  v13 = v12;

  v14 = [*(a1 + 32) device];
  v15 = [NTKComplicationLayoutRule layoutRuleForDevice:v14 withReferenceFrame:3 horizontalLayout:3 verticalLayout:v7 keylinePadding:v7, v10, v13, v5, v5, v5, v5];

  v16 = [*(a1 + 32) complicationLayoutforSlot:NTKComplicationSlotTopLeft];
  [v16 setDefaultLayoutRule:v15 forState:a2];

  v17 = *(a1 + 56) - v10 - v7;
  [*(a1 + 32) _lisaGapForState:a2];
  v19 = v17 - v18;
  v20 = [*(a1 + 32) device];
  v21 = [NTKComplicationLayoutRule layoutRuleForDevice:v20 withReferenceFrame:3 horizontalLayout:3 verticalLayout:v19 keylinePadding:v7, v10, v13, v5, v5, v5, v5];

  v22 = [*(a1 + 32) complicationLayoutforSlot:NTKComplicationSlotTopRight];
  [v22 setDefaultLayoutRule:v21 forState:a2];

  v23 = *(a1 + 64) - v13 - v7;
  v24 = [*(a1 + 32) device];
  v25 = [NTKComplicationLayoutRule layoutRuleForDevice:v24 withReferenceFrame:3 horizontalLayout:3 verticalLayout:v7 keylinePadding:v23, v10, v13, v5, v5, v5, v5];

  v26 = [*(a1 + 32) complicationLayoutforSlot:NTKComplicationSlotBottomLeft];
  [v26 setDefaultLayoutRule:v25 forState:a2];

  v27 = *(a1 + 56) - v10 - v7;
  v28 = [*(a1 + 32) device];
  v29 = [NTKComplicationLayoutRule layoutRuleForDevice:v28 withReferenceFrame:3 horizontalLayout:3 verticalLayout:v27 keylinePadding:v23, v10, v13, v5, v5, v5, v5];

  v30 = [*(a1 + 32) complicationLayoutforSlot:NTKComplicationSlotBottomRight];
  [v30 setDefaultLayoutRule:v29 forState:a2];

  [*(a1 + 32) _monogramReferenceFrame];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  [*(a1 + 32) _monogramKeylinePadding];
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = [*(a1 + 32) device];
  v49 = [NTKComplicationLayoutRule layoutRuleForDevice:v47 withReferenceFrame:1 horizontalLayout:1 verticalLayout:v32 keylinePadding:v34, v36, v38, v40, v42, v44, v46];

  v48 = [*(a1 + 32) complicationLayoutforSlot:NTKComplicationSlotMonogram];
  [v48 setDefaultLayoutRule:v49 forState:a2];
}

id _MonogramDarkForegroundColor()
{
  if (qword_15698 != -1)
  {
    sub_7CB0();
  }

  v1 = qword_15690;

  return v1;
}

void sub_5930(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = [a3 display];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = NTKComplicationSlotMonogram;
    v7 = v5;
    v8 = [v10 isEqualToString:v6];
    v9 = &OBJC_IVAR___NTKColorAnalogFaceView__complicationForegroundColor;
    if (v8)
    {
      v9 = &OBJC_IVAR___NTKColorAnalogFaceView__monogramForegroundColor;
    }

    [v7 setForegroundColor:*(*(a1 + 32) + *v9)];
    [v7 setPlatterColor:*(*(a1 + 32) + 24)];
  }
}

void sub_5FEC(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _monogramReferenceFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [*(a1 + 32) _monogramKeylinePadding];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [*(a1 + 32) device];
  v22 = [NTKComplicationLayoutRule layoutRuleForDevice:v20 withReferenceFrame:1 horizontalLayout:1 verticalLayout:v5 keylinePadding:v7, v9, v11, v13, v15, v17, v19];

  v21 = [*(a1 + 32) complicationLayoutforSlot:NTKComplicationSlotMonogram];
  [v21 setDefaultLayoutRule:v22 forState:a2];
}

double _HandAlphaForEditMode(uint64_t a1)
{
  if (!a1)
  {
    return 1.0;
  }

  v1 = a1 == 15 || a1 == 10;
  result = NTKEditModeDimmedAlpha;
  if (!v1)
  {
    return 0.0;
  }

  return result;
}

double _BackgroundAlphaForEditMode(uint64_t a1)
{
  result = NTKEditModeDimmedAlpha;
  if (a1 != 1)
  {
    return 1.0;
  }

  return result;
}

double _BackgroundScaleForEditMode(unint64_t a1)
{
  result = 0.975;
  if (a1 < 2)
  {
    return 1.0;
  }

  return result;
}

void sub_68C8(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 display];
  (*(v4 + 16))(v4, v5, v6);
}

void sub_6990(id a1)
{
  qword_15690 = [UIColor colorWithWhite:0.0 alpha:0.35];

  _objc_release_x1();
}

void sub_7064(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) device];
  [*(a1 + 32) _monogramReferenceFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [*(a1 + 32) _monogramKeylinePadding];
  v18 = [NTKComplicationLayoutRule layoutRuleForDevice:v4 withReferenceFrame:1 horizontalLayout:1 verticalLayout:v6 keylinePadding:v8, v10, v12, v13, v14, v15, v16];

  v17 = [*(a1 + 32) complicationLayoutforSlot:NTKComplicationSlotMonogram];
  [v17 setDefaultLayoutRule:v18 forState:a2];
}

void sub_72DC(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = [a3 display];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = *(a1 + 32);
    v5 = v8;
    v6 = [v4 complicationForegroundColor];
    [*(a1 + 32) setComplicationColor:v6];

    v7 = [*(a1 + 32) complicationForegroundColor];
    [*(a1 + 32) setInterpolatedComplicationColor:v7];

    [v5 updateMonochromeColor];
  }
}

void sub_755C(void *a1@<X1>, uint64_t a2@<X8>)
{
  v6 = a1;
  os_unfair_lock_lock(&unk_156E0);
  if (qword_156E8)
  {
    v3 = qword_156E8 == v6;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v6 version], v4 != qword_156F0))
  {
    qword_156E8 = v6;
    qword_156F0 = [v6 version];
    sub_7648(v6, v7);
    xmmword_156A8 = v7[0];
    unk_156B8 = v7[1];
    xmmword_156C8 = v7[2];
    qword_156D8 = v8;
  }

  v5 = unk_156B8;
  *a2 = xmmword_156A8;
  *(a2 + 16) = v5;
  *(a2 + 32) = xmmword_156C8;
  *(a2 + 48) = qword_156D8;
  os_unfair_lock_unlock(&unk_156E0);
}

void sub_7648(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = [CLKDeviceMetrics metricsWithDevice:a1 identitySizeClass:3];
  v22[0] = &off_10E58;
  v22[1] = &off_10E70;
  v23[0] = &off_10ED0;
  v23[1] = &off_10EE0;
  v22[2] = &off_10E88;
  v23[2] = &off_10EE0;
  v4 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:3];
  [v3 scaledValue:v4 withOverrides:78.5];
  *a2 = v5;

  v20[0] = &off_10E58;
  v20[1] = &off_10E70;
  v21[0] = &off_10EF0;
  v21[1] = &off_10F00;
  v20[2] = &off_10E88;
  v21[2] = &off_10F10;
  v6 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:3];
  [v3 scaledValue:v6 withOverrides:30.0];
  *(a2 + 8) = v7;

  v18[0] = &off_10E58;
  v18[1] = &off_10E70;
  v19[0] = &off_10F20;
  v19[1] = &off_10F30;
  v18[2] = &off_10E88;
  v19[2] = &off_10F30;
  v8 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:3];
  [v3 scaledValue:v8 withOverrides:56.5];
  *(a2 + 16) = v9;

  v16[0] = &off_10E58;
  v16[1] = &off_10E70;
  v17[0] = &off_10F40;
  v17[1] = &off_10F50;
  v16[2] = &off_10E88;
  v17[2] = &off_10F50;
  v10 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:3];
  [v3 scaledValue:v10 withOverrides:48.5];
  *(a2 + 24) = v11;

  v14[0] = &off_10E58;
  v14[1] = &off_10E70;
  v15[0] = &off_10F60;
  v15[1] = &off_10F70;
  v14[2] = &off_10E88;
  v15[2] = &off_10F80;
  v12 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:3];
  [v3 scaledValue:v12 withOverrides:65.5];
  *(a2 + 32) = v13;

  *(a2 + 40) = xmmword_A1C0;
}

void sub_7B84(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v9 = a1;
  os_unfair_lock_lock(&unk_15790);
  if (qword_15798)
  {
    v3 = qword_15798 == v9;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v9 version], v4 != qword_157A0))
  {
    qword_15798 = v9;
    qword_157A0 = [v9 version];
    xmmword_15700 = xmmword_A1D0;
    *algn_15710 = xmmword_A1E0;
    xmmword_15720 = xmmword_A1F0;
    unk_15730 = xmmword_A1D0;
    xmmword_15740 = xmmword_A1E0;
    unk_15750 = xmmword_A1F0;
    xmmword_15760 = xmmword_A200;
    unk_15770 = xmmword_A210;
    xmmword_15780 = xmmword_A220;
  }

  v5 = unk_15770;
  a2[6] = xmmword_15760;
  a2[7] = v5;
  a2[8] = xmmword_15780;
  v6 = unk_15730;
  a2[2] = xmmword_15720;
  a2[3] = v6;
  v7 = unk_15750;
  a2[4] = xmmword_15740;
  a2[5] = v7;
  v8 = *algn_15710;
  *a2 = xmmword_15700;
  a2[1] = v8;
  os_unfair_lock_unlock(&unk_15790);
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