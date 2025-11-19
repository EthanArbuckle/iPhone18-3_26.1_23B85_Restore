double sub_1148(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(&unk_154D8);
  if (qword_154E0)
  {
    v4 = qword_154E0 == v3;
  }

  else
  {
    v4 = 0;
  }

  if (!v4 || (v5 = [v3 version], v5 != qword_154E8))
  {
    qword_154E0 = v3;
    qword_154E8 = [v3 version];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_127C;
    v10[3] = &unk_105C8;
    v10[4] = *(a1 + 32);
    qword_154C0 = sub_127C(v10);
    qword_154C8 = v6;
    qword_154D0 = v7;
  }

  v8 = *&qword_154C0;
  os_unfair_lock_unlock(&unk_154D8);

  return v8;
}

double sub_127C(uint64_t a1)
{
  [*(a1 + 32) _loadLayoutRules];
  [*(a1 + 32) bounds];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1384;
  v6[3] = &unk_105A0;
  v6[4] = *(a1 + 32);
  v6[5] = v2;
  v3 = objc_retainBlock(v6);
  v4 = (v3[2])(v3, NTKComplicationSlotTopLeft);
  (v3[2])(v3, NTKComplicationSlotCenter);
  (v3[2])(v3, NTKComplicationSlotBottomLeft);

  return v4;
}

CGFloat sub_1384(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) complicationLayoutforSlot:a2];
  v4 = [v3 defaultLayoutRuleForState:0];
  [v4 referenceFrame];
  v5 = CGRectGetMidY(v7) / *(a1 + 40);

  return v5;
}

void sub_2044(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v7 = [v4 device];
  sub_4ACC(v7, v10);
  v5 = v11;
  v6 = [*(a1 + 32) device];
  sub_4ACC(v6, v8);
  [v4 _loadLayoutRulesForState:a2 withTopGap:v5 largeModuleHeight:v9];
}

void sub_2C40(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 display];
  [v4 setAlpha:*(a1 + 32)];
}

void sub_2E40(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 display];
  [v4 setAlpha:*(a1 + 32)];
}

void sub_3294(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [a3 display];
  if ([v6 conformsToProtocol:&OBJC_PROTOCOL___CDRichComplicationTintedPlatterColorOverridable])
  {
    [v6 setTintedFraction:*(a1 + 48)];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 transitionToMonochromeWithFraction:*(a1 + 56)];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = *(a1 + 32);
      v5 = v6;
      [v5 setTextColor:v4];
      [v5 setAccentColor:*(a1 + 40)];
    }
  }
}

void sub_38F4(uint64_t a1, uint64_t a2)
{
  v14 = [*(a1 + 32) normalComplicationDisplayWrapperForSlot:a2];
  v3 = [v14 display];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v5 = [v14 display];
  v6 = v5;
  if (isKindOfClass)
  {
    if (*(a1 + 48) == 1)
    {
      [v5 transitionToMonochromeWithFraction:*(a1 + 40)];
    }

    else
    {
      [v5 updateMonochromeColor];
    }
  }

  else
  {
    objc_opt_class();
    v7 = objc_opt_isKindOfClass();

    if ((v7 & 1) == 0)
    {
      goto LABEL_11;
    }

    v6 = [v14 display];
    v8 = *(a1 + 32);
    if (*(a1 + 48) == 1)
    {
      v9 = [v8 _defaultDateTextColor];
      v10 = [*(a1 + 32) complicationColor];
      v11 = *(a1 + 40);
      v12 = NTKInterpolateBetweenColors();
    }

    else
    {
      v12 = [v8 interpolatedComplicationColor];
    }

    [v6 setTextColor:v12];

    v13 = [*(a1 + 32) _defaultDateAccentColor];
    [v6 setAccentColor:v13];
  }

LABEL_11:
}

void sub_4068(uint64_t a1)
{
  v2 = [*(a1 + 32) timeView];
  [v2 setAlpha:0.33];

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_4114;
  v4[3] = &unk_10688;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v3 enumerateComplicationDisplayWrappersWithBlock:v4];
}

void sub_4114(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v4 = [v6 display];
  v5 = *(a1 + 32);

  if (v4 != v5)
  {
    [v6 setAlpha:0.33];
  }
}

id sub_4218(uint64_t a1)
{
  v2 = [*(a1 + 32) timeView];
  [v2 setAlpha:1.0];

  v3 = *(a1 + 32);

  return [v3 enumerateComplicationDisplayWrappersWithBlock:&stru_10730];
}

void sub_44BC(uint64_t a1, void *a2)
{
  v5 = a2;
  if (([v5 isEqualToString:NTKComplicationSlotDate] & 1) == 0)
  {
    v3 = *(*(a1 + 32) + 40);
    v4 = +[NTKComplication nullComplication];
    [v3 setComplication:v4 forSlot:v5];
  }
}

void sub_4634(id a1, NTKFaceViewController *a2)
{
  v2 = a2;
  [(NTKFaceViewController *)v2 setDataMode:3];
  [(NTKFaceViewController *)v2 setShowsCanonicalContent:1];
  [(NTKFaceViewController *)v2 setShowContentForUnadornedSnapshot:1];
  [(NTKFaceViewController *)v2 setShowsLockedUI:0];
  [(NTKFaceViewController *)v2 setIgnoreSnapshotImages:1];
  [(NTKFaceViewController *)v2 setShouldUseSampleTemplate:1];
}

void sub_4ACC(void *a1@<X1>, void *a2@<X8>)
{
  v5 = a1;
  os_unfair_lock_lock(&unk_15640);
  if (qword_15648)
  {
    v3 = qword_15648 == v5;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v5 version], v4 != qword_15650))
  {
    qword_15648 = v5;
    qword_15650 = [v5 version];
    sub_4BA4(v5, __src);
    memcpy(&unk_154F0, __src, 0x150uLL);
  }

  memcpy(a2, &unk_154F0, 0x150uLL);
  os_unfair_lock_unlock(&unk_15640);
}

void sub_4BA4(void *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = a1;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 224) = 0u;
  *(a2 + 240) = 0u;
  *(a2 + 256) = 0u;
  *(a2 + 272) = 0u;
  *(a2 + 288) = 0u;
  *(a2 + 304) = 0u;
  *(a2 + 320) = 0u;
  v4 = [CLKDeviceMetrics metricsWithDevice:v3 identitySizeClass:2];
  NTKWhistlerSubdialComplicationContentDiameter();
  v6 = v5;
  *(a2 + 40) = v5;
  *(a2 + 48) = v5;
  v72[0] = &off_12198;
  v72[1] = &off_121B0;
  v73[0] = &off_110C8;
  v73[1] = &off_110C8;
  v72[2] = &off_121C8;
  v72[3] = &off_121E0;
  v73[2] = &off_110D8;
  v73[3] = &off_110E8;
  v72[4] = &off_121F8;
  v72[5] = &off_12210;
  v73[4] = &off_110C8;
  v73[5] = &off_110F8;
  v72[6] = &off_12228;
  v73[6] = &off_110E8;
  v7 = [NSDictionary dictionaryWithObjects:v73 forKeys:v72 count:7];
  [v4 scaledValue:v7 withOverrides:5.0];
  v9 = v8;
  *(a2 + 72) = v8;

  v55 = v3;
  if ([v3 sizeClass] < 6)
  {
    v70[0] = &off_12198;
    v70[1] = &off_121B0;
    v71[0] = &off_11108;
    v71[1] = &off_11118;
    v70[2] = &off_121C8;
    v71[2] = &off_11128;
    v12 = [NSDictionary dictionaryWithObjects:v71 forKeys:v70 count:3];
    [v4 scaledValue:v12 withOverrides:13.0];
    v11 = v13;
  }

  else
  {
    [v3 screenBounds];
    v11 = (v10 + v6 * -3.0 + v9 * -2.0) * 0.5;
  }

  v68[0] = &off_12198;
  v68[1] = &off_121B0;
  v69[0] = &off_110C8;
  v69[1] = &off_110C8;
  v68[2] = &off_121C8;
  v68[3] = &off_121E0;
  v69[2] = &off_110D8;
  v69[3] = &off_11138;
  v68[4] = &off_121F8;
  v68[5] = &off_12210;
  v69[4] = &off_110C8;
  v69[5] = &off_11138;
  v68[6] = &off_12228;
  v69[6] = &off_11138;
  v14 = [NSDictionary dictionaryWithObjects:v69 forKeys:v68 count:7];
  [v4 scaledValue:v14 withOverrides:5.0];
  v16 = v15;

  *a2 = v11;
  *(a2 + 8) = v16;
  *(a2 + 16) = v11;
  *(a2 + 24) = v11 * 0.7;
  v66[0] = &off_12198;
  v66[1] = &off_121B0;
  v67[0] = &off_11148;
  v67[1] = &off_11148;
  v66[2] = &off_121C8;
  v66[3] = &off_121E0;
  v67[2] = &off_11158;
  v67[3] = &off_11168;
  v66[4] = &off_121F8;
  v66[5] = &off_12210;
  v67[4] = &off_11148;
  v67[5] = &off_11158;
  v66[6] = &off_12228;
  v67[6] = &off_11168;
  v17 = [NSDictionary dictionaryWithObjects:v67 forKeys:v66 count:7];
  [v4 scaledValue:v17 withOverrides:29.0];
  *(a2 + 32) = v18;

  NTKWhistlerLargeRectangularComplicationSize();
  *(a2 + 56) = v19;
  *(a2 + 64) = v20;
  __asm { FMOV            V0.2D, #4.0 }

  *(a2 + 192) = _Q0;
  *(a2 + 208) = _Q0;
  v64[0] = &off_12198;
  v64[1] = &off_121B0;
  v65[0] = &off_110C8;
  v65[1] = &off_110D8;
  v64[2] = &off_121C8;
  v64[3] = &off_121E0;
  v65[2] = &off_11178;
  v65[3] = &off_11188;
  v64[4] = &off_121F8;
  v64[5] = &off_12210;
  v65[4] = &off_110D8;
  v65[5] = &off_11198;
  v64[6] = &off_12228;
  v65[6] = &off_111A8;
  v26 = [NSDictionary dictionaryWithObjects:v65 forKeys:v64 count:7];
  [v4 scaledValue:v26 withOverrides:5.0];
  *(a2 + 80) = v27;

  v62[0] = &off_12240;
  v62[1] = &off_12258;
  v63[0] = &off_111B8;
  v63[1] = &off_111C8;
  v62[2] = &off_12198;
  v62[3] = &off_121B0;
  v63[2] = &off_111D8;
  v63[3] = &off_111E8;
  v62[4] = &off_121C8;
  v62[5] = &off_121E0;
  v63[4] = &off_111F8;
  v63[5] = &off_111F8;
  v62[6] = &off_121F8;
  v62[7] = &off_12210;
  v63[6] = &off_11208;
  v63[7] = &off_111F8;
  v62[8] = &off_12228;
  v63[8] = &off_11218;
  v28 = [NSDictionary dictionaryWithObjects:v63 forKeys:v62 count:9];
  [v4 scaledValue:v28 withOverrides:63.0];
  *(a2 + 88) = v29;

  v60[0] = &off_12198;
  v30 = [NSValue valueWithCGSize:8.0, 10.5];
  v61[0] = v30;
  v60[1] = &off_121B0;
  v31 = [NSValue valueWithCGSize:8.0, 12.0];
  v61[1] = v31;
  v60[2] = &off_121C8;
  v32 = [NSValue valueWithCGSize:8.0, 16.0];
  v61[2] = v32;
  v60[3] = &off_121E0;
  v33 = [NSValue valueWithCGSize:17.0, 15.5];
  v61[3] = v33;
  v60[4] = &off_121F8;
  v34 = [NSValue valueWithCGSize:8.0, 12.0];
  v61[4] = v34;
  v60[5] = &off_12210;
  v35 = [NSValue valueWithCGSize:14.5, 15.5];
  v61[5] = v35;
  v60[6] = &off_12228;
  v36 = [NSValue valueWithCGSize:15.5, 13.5];
  v61[6] = v36;
  v37 = [NSDictionary dictionaryWithObjects:v61 forKeys:v60 count:7];
  [v4 scaledSize:v37 withOverrides:{7.5, 6.5}];
  v39 = v38;
  v41 = v40;
  *(a2 + 96) = v38;
  *(a2 + 104) = v40;

  [v4 scaledValue:3 withOverride:10.5 forSizeClass:10.0];
  *(a2 + 112) = v39 + v42;
  *(a2 + 120) = v41 + 10.0;
  [v4 scaledValue:3 withOverride:2.0 forSizeClass:2.5];
  v44 = v43;
  NTKKeylineWidth();
  v46 = v44 + v45;
  *(a2 + 128) = v46;
  *(a2 + 136) = v46;
  *(a2 + 144) = v46;
  *(a2 + 152) = v46;
  *(a2 + 160) = v46;
  *(a2 + 168) = v46 + 3.0;
  *(a2 + 176) = v46;
  *(a2 + 184) = v46 + 3.0;
  [v55 screenBounds];
  v48 = v47 - *(a2 + 40) - *(a2 + 72) - v11 - v39;
  [v4 scaledValue:22.0];
  *(a2 + 224) = v48;
  *(a2 + 232) = v49;
  v58[0] = &off_12198;
  v58[1] = &off_121B0;
  v59[0] = &off_11228;
  v59[1] = &off_11238;
  v58[2] = &off_121C8;
  v58[3] = &off_121E0;
  v59[2] = &off_11248;
  v59[3] = &off_11248;
  v58[4] = &off_121F8;
  v58[5] = &off_12210;
  v59[4] = &off_11258;
  v59[5] = &off_11268;
  v58[6] = &off_12228;
  v59[6] = &off_11248;
  v50 = [NSDictionary dictionaryWithObjects:v59 forKeys:v58 count:7];
  [v4 scaledValue:v50 withOverrides:16.5];
  *(a2 + 240) = v51;

  v56[0] = &off_12198;
  v56[1] = &off_121B0;
  v57[0] = &off_11278;
  v57[1] = &off_11288;
  v56[2] = &off_121C8;
  v56[3] = &off_121E0;
  v57[2] = &off_11298;
  v57[3] = &off_11298;
  v56[4] = &off_121F8;
  v56[5] = &off_12210;
  v57[4] = &off_11288;
  v57[5] = &off_11298;
  v56[6] = &off_12228;
  v57[6] = &off_11298;
  v52 = [NSDictionary dictionaryWithObjects:v57 forKeys:v56 count:7];
  [v4 scaledValue:v52 withOverrides:45.0];
  *(a2 + 248) = v53;

  *(a2 + 256) = -v41;
  *(a2 + 264) = v48 * -0.5;
  *(a2 + 272) = 0;
  *(a2 + 280) = -v39;
  *(a2 + 288) = 0x4008000000000000;
  *(a2 + 296) = 0;
  *(a2 + 304) = 0;
  *(a2 + 312) = 0;
  *(a2 + 320) = 0x4020000000000000;
  [v55 screenBounds];
  +[NTKGossamerColorPalette contentScaleForTintedBackground];
  CLKFloorForDevice();
  *(a2 + 328) = v54;
}

void sub_60B8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3 > 2)
  {
    switch(a3)
    {
      case 3:
        if ([*(a1 + 32) supportsCharon])
        {
          v58[0] = NTKComplicationSlotTopLeft;
          v23 = +[NTKComplication compassComplication];
          v59[0] = v23;
          v58[1] = NTKComplicationSlotCenter;
          v24 = +[NTKComplication depthComplication];
          v59[1] = v24;
          v58[2] = NTKComplicationSlotBottomLeft;
          v25 = +[NTKComplication swellComplication];
          v59[2] = v25;
          v58[3] = NTKComplicationSlotBottomCenter;
          v26 = +[NTKComplication waterTemperatureComplication];
          v59[3] = v26;
          v58[4] = NTKComplicationSlotBottomRight;
          v27 = +[NTKComplication depthComplication];
          v59[4] = v27;
          v28 = [NSDictionary dictionaryWithObjects:v59 forKeys:v58 count:5];
          [v5 setComplicationsForSlots:v28];
        }

        else
        {
          v56[0] = NTKComplicationSlotCenter;
          v23 = [NTKComplication anyComplicationOfType:8];
          v57[0] = v23;
          v56[1] = NTKComplicationSlotBottomLeft;
          v24 = [NTKComplication anyComplicationOfType:22];
          v57[1] = v24;
          v56[2] = NTKComplicationSlotBottomCenter;
          v25 = [NTKComplication anyComplicationOfType:13];
          v57[2] = v25;
          v56[3] = NTKComplicationSlotBottomRight;
          v26 = [NTKComplication anyComplicationOfType:4];
          v57[3] = v26;
          v27 = [NSDictionary dictionaryWithObjects:v57 forKeys:v56 count:4];
          [v5 setComplicationsForSlots:v27];
        }

        v20 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:16 zOrder:4000];
        v55[0] = v20;
        v21 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:2 zOrder:4000];
        v55[1] = v21;
        v22 = v55;
        break;
      case 4:
        if ([*(a1 + 32) supportsCharon])
        {
          v53[0] = NTKComplicationSlotTopLeft;
          v36 = [NTKComplication anyComplicationOfType:43];
          v54[0] = v36;
          v53[1] = NTKComplicationSlotCenter;
          v37 = +[NTKComplication tidesComplication];
          v54[1] = v37;
          v53[2] = NTKComplicationSlotBottomLeft;
          v38 = +[NTKComplication compassComplication];
          v54[2] = v38;
          v53[3] = NTKComplicationSlotBottomCenter;
          v39 = +[NTKComplication waterTemperatureComplication];
          v54[3] = v39;
          v53[4] = NTKComplicationSlotBottomRight;
          v40 = +[NTKComplication depthComplication];
          v54[4] = v40;
          v41 = v54;
          v42 = v53;
        }

        else
        {
          v51[0] = NTKComplicationSlotTopLeft;
          v36 = +[NTKComplication stateOfMindComplication];
          v52[0] = v36;
          v51[1] = NTKComplicationSlotCenter;
          v37 = +[NTKComplication activityTimelineComplication];
          v52[1] = v37;
          v51[2] = NTKComplicationSlotBottomLeft;
          v38 = +[NTKComplication musicRecognitionComplication];
          v52[2] = v38;
          v51[3] = NTKComplicationSlotBottomCenter;
          v39 = [NTKComplication anyComplicationOfType:17];
          v52[3] = v39;
          v51[4] = NTKComplicationSlotBottomRight;
          v40 = +[NTKComplication vitalsComplication];
          v52[4] = v40;
          v41 = v52;
          v42 = v51;
        }

        v46 = [NSDictionary dictionaryWithObjects:v41 forKeys:v42 count:5];
        [v5 setComplicationsForSlots:v46];

        v20 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:16 zOrder:4000];
        v50[0] = v20;
        v21 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:2 zOrder:4000];
        v50[1] = v21;
        v22 = v50;
        break;
      case 5:
        v48[0] = NTKComplicationSlotTopLeft;
        v14 = [NTKComplication anyComplicationOfType:12];
        v49[0] = v14;
        v48[1] = NTKComplicationSlotCenter;
        v15 = +[NTKComplication weatherLocationComplication];
        v49[1] = v15;
        v48[2] = NTKComplicationSlotBottomLeft;
        v16 = [NTKComplication anyComplicationOfType:43];
        v49[2] = v16;
        v48[3] = NTKComplicationSlotBottomCenter;
        v17 = +[NTKComplication humidityComplication];
        v49[3] = v17;
        v18 = [NSDictionary dictionaryWithObjects:v49 forKeys:v48 count:4];
        [v5 setComplicationsForSlots:v18];

        if ([*(a1 + 32) supportsCharon])
        {
          +[NTKComplication depthComplication];
        }

        else
        {
          +[NTKComplication rainComplication];
        }
        v45 = ;
        [v5 setComplication:v45 forSlot:NTKComplicationSlotBottomRight];

        v20 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:7 zOrder:4000];
        v47[0] = v20;
        v21 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:2 zOrder:4000];
        v47[1] = v21;
        v22 = v47;
        break;
      default:
        goto LABEL_29;
    }

LABEL_27:
    v34 = [NSArray arrayWithObjects:v22 count:2];
    [v5 setCurationPlacements:v34];
    goto LABEL_28;
  }

  switch(a3)
  {
    case 0:
      v19 = [NTKComplication anyComplicationOfType:17];
      [v5 setComplication:v19 forSlot:NTKComplicationSlotBottomCenter];

      v20 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:7 zOrder:8000];
      v70[0] = v20;
      v21 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:2 zOrder:8000];
      v70[1] = v21;
      v22 = v70;
      goto LABEL_27;
    case 1:
      v68[0] = NTKComplicationSlotCenter;
      v29 = [NTKComplication anyComplicationOfType:15];
      v69[0] = v29;
      v68[1] = NTKComplicationSlotBottomLeft;
      v30 = [NTKComplication anyComplicationOfType:18];
      v69[1] = v30;
      v68[2] = NTKComplicationSlotBottomCenter;
      v31 = [NTKComplication anyComplicationOfType:19];
      v69[2] = v31;
      v68[3] = NTKComplicationSlotBottomRight;
      v32 = +[NTKComplication vitalsComplication];
      v69[3] = v32;
      v33 = [NSDictionary dictionaryWithObjects:v69 forKeys:v68 count:4];
      [v5 setComplicationsForSlots:v33];

      v20 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:9 zOrder:4000];
      v67[0] = v20;
      v21 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:7 zOrder:4000];
      v67[1] = v21;
      v34 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:2 zOrder:4000];
      v67[2] = v34;
      v35 = v67;
LABEL_22:
      v44 = [NSArray arrayWithObjects:v35 count:3];
      [v5 setCurationPlacements:v44];

LABEL_28:
      break;
    case 2:
      v65[0] = NTKComplicationSlotTopLeft;
      v6 = [NTKComplication anyComplicationOfType:18];
      v66[0] = v6;
      v65[1] = NTKComplicationSlotBottomCenter;
      v7 = [NTKComplication anyComplicationOfType:7];
      v66[1] = v7;
      v8 = [NSDictionary dictionaryWithObjects:v66 forKeys:v65 count:2];
      [v5 setComplicationsForSlots:v8];

      if ([*(a1 + 32) supportsUrsa])
      {
        v63[0] = NTKComplicationSlotCenter;
        v9 = +[NTKComplication waypointsComplication];
        v64[0] = v9;
        v63[1] = NTKComplicationSlotBottomLeft;
        v10 = +[NTKComplication elevationComplication];
        v64[1] = v10;
        v63[2] = NTKComplicationSlotBottomRight;
        v11 = +[NTKComplication compassComplication];
        v64[2] = v11;
        v12 = v64;
        v13 = v63;
      }

      else
      {
        v61[0] = NTKComplicationSlotCenter;
        v9 = [NTKComplication anyComplicationOfType:22];
        v62[0] = v9;
        v61[1] = NTKComplicationSlotBottomLeft;
        v10 = [NTKComplication anyComplicationOfType:17];
        v62[1] = v10;
        v61[2] = NTKComplicationSlotBottomRight;
        v11 = [NTKComplication anyComplicationOfType:12];
        v62[2] = v11;
        v12 = v62;
        v13 = v61;
      }

      v43 = [NSDictionary dictionaryWithObjects:v12 forKeys:v13 count:3];
      [v5 setComplicationsForSlots:v43];

      v20 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:16 zOrder:4000];
      v60[0] = v20;
      v21 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:9 zOrder:4000];
      v60[1] = v21;
      v34 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:2 zOrder:4000];
      v60[2] = v34;
      v35 = v60;
      goto LABEL_22;
  }

LABEL_29:
}

uint64_t sub_6B50(uint64_t a1, uint64_t a2)
{
  v3 = [NTKPigmentEditOption pigmentNamed:a2];
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }

  return _objc_release_x1();
}

void sub_6BB8(uint64_t a1, void *a2, char a3)
{
  v70 = a2;
  v5 = [*(a1 + 32) defaultFaceForDevice:*(a1 + 40)];
  v6 = v5;
  if (v5)
  {
    [v5 selectOption:v70 forCustomEditMode:10 slot:0];
    v7 = [NTKFaceBackgroundStyleEditOption optionWithBackgroundStyle:1 forDevice:*(a1 + 40)];
    [v6 selectOption:v7 forCustomEditMode:17 slot:0];
    v8 = [NTKComplication anyComplicationOfType:7];
    v69 = [NTKComplication anyComplicationOfType:18];
    v9 = [NTKBundleComplication bundledComplicationWithBundleIdentifier:@"com.apple.Depth.depth" appBundleIdentifier:@"com.apple.Depth" complicationDescriptor:0];
    v10 = _complicationOrDie(v9);

    if ([*(a1 + 40) supportsUrsa])
    {
      v11 = [NTKBundleComplication bundledComplicationWithBundleIdentifier:NTKBundleComplicationUrsaCompassBundleIdentifier appBundleIdentifier:NTKBundleComplicationUrsaAppBundleIdentifier complicationDescriptor:0];
      v68 = _complicationOrDie(v11);
    }

    else
    {
      v68 = _complicationOrDie(0);
    }

    v12 = [NTKBundleComplication bundledComplicationWithBundleIdentifier:@"com.apple.Depth.temperature" appBundleIdentifier:@"com.apple.Depth" complicationDescriptor:0];
    v13 = _complicationOrDie(v12);

    v14 = a3 & 7;
    if (v14 > 3)
    {
      v66 = v10;
      if ((a3 & 7u) > 5uLL)
      {
        v62 = v8;
        v64 = v7;
        if (v14 == 6)
        {
          v79[0] = NTKComplicationSlotTopLeft;
          v79[1] = NTKComplicationSlotBottomRight;
          v80[0] = &off_11940;
          v80[1] = &off_11958;
          v25 = [NSDictionary dictionaryWithObjects:v80 forKeys:v79 count:2];
          v60 = [[INAppIntent alloc] initWithAppBundleIdentifier:@"com.apple.NanoHome.NanoHomeWidgets" appIntentIdentifier:@"NHOSmartStackActionIntent" serializedParameters:&off_12660];
          v33 = [[CLKWidgetComplicationDescriptor alloc] initWithExtensionBundleIdentifier:@"com.apple.NanoHome.NanoHomeWidgets" containerBundleIdentifier:@"com.apple.NanoHome" kind:@"com.apple.NanoHome.NHOSmartStackActionWidget" intent:v60];
          v34 = [NTKWidgetComplication complicationWithDescriptor:v33];
          v35 = _complicationOrDie(v34);

          v36 = [[CLKWidgetComplicationDescriptor alloc] initWithExtensionBundleIdentifier:@"com.apple.NanoMaps.NanoMapsWidgetKitComplications" containerBundleIdentifier:@"com.apple.NanoMaps" kind:@"NearByTransitComplication" intent:0];
          v37 = [NTKWidgetComplication complicationWithDescriptor:v36];
          v38 = _complicationOrDie(v37);

          v39 = [*(a1 + 32) _createTimer15Complication];
          v40 = _complicationOrDie(v39);

          v77[0] = NTKComplicationSlotCenter;
          v77[1] = NTKComplicationSlotBottomLeft;
          v78[0] = v35;
          v78[1] = v38;
          v77[2] = NTKComplicationSlotBottomCenter;
          v78[2] = v40;
          v23 = [NSDictionary dictionaryWithObjects:v78 forKeys:v77 count:3];
        }

        else
        {
          v60 = [[CLKWidgetComplicationDescriptor alloc] initWithExtensionBundleIdentifier:@"com.apple.Mind.MindComplication" containerBundleIdentifier:@"com.apple.Mind" kind:@"MentalHealthLauncherComplication" intent:0];
          v54 = [NTKWidgetComplication complicationWithDescriptor:v60];
          v33 = _complicationOrDie(v54);

          v35 = [[CLKWidgetComplicationDescriptor alloc] initWithExtensionBundleIdentifier:@"com.apple.nanomusicrecognition.NanoMusicRecognitionWidget" containerBundleIdentifier:@"com.apple.nanomusicrecognition" kind:@"com.apple.nanomusicrecognition.NanoMusicRecognitionWidget" intent:0];
          v36 = [NTKWidgetComplication complicationWithDescriptor:v35];
          v55 = [[CLKWidgetComplicationDescriptor alloc] initWithExtensionBundleIdentifier:@"com.apple.NanoHealthBalance.NanoHealthBalanceWidgetExtension" containerBundleIdentifier:@"com.apple.NanoHealthBalance" kind:@"BalanceOneDayWidgetKind" intent:0];
          v56 = [NTKWidgetComplication complicationWithDescriptor:v55];
          v75[0] = NTKComplicationSlotCenter;
          v75[1] = NTKComplicationSlotBottomCenter;
          v76[0] = &off_11970;
          v76[1] = &off_11988;
          v25 = [NSDictionary dictionaryWithObjects:v76 forKeys:v75 count:2];
          v73[0] = NTKComplicationSlotTopLeft;
          v73[1] = NTKComplicationSlotBottomLeft;
          v74[0] = v33;
          v74[1] = v36;
          v73[2] = NTKComplicationSlotBottomRight;
          v74[2] = v56;
          v23 = [NSDictionary dictionaryWithObjects:v74 forKeys:v73 count:3];
        }

        v8 = v62;
        v7 = v64;
      }

      else
      {
        if (v14 == 4)
        {
          v87[0] = NTKComplicationSlotTopLeft;
          v87[1] = NTKComplicationSlotBottomLeft;
          v88[0] = &off_118B0;
          v88[1] = &off_118C8;
          v25 = [NSDictionary dictionaryWithObjects:v88 forKeys:v87 count:2];
          v61 = [[CLKWidgetComplicationDescriptor alloc] initWithExtensionBundleIdentifier:@"com.apple.weather.watchapp.widgets" containerBundleIdentifier:@"com.apple.weather.watchapp" kind:@"com.apple.weather.widget.threeup" intent:0];
          [NTKWidgetComplication complicationWithDescriptor:v61];
          v63 = v13;
          v27 = v26 = v8;
          v28 = _complicationOrDie(v27);

          v29 = [[CLKWidgetComplicationDescriptor alloc] initWithExtensionBundleIdentifier:@"com.apple.weather.watchapp.widgets" containerBundleIdentifier:@"com.apple.weather.watchapp" kind:@"com.apple.weather.widget.humidity" intent:0];
          v30 = [NTKWidgetComplication complicationWithDescriptor:v29];
          v31 = _complicationOrDie(v30);

          v85[0] = NTKComplicationSlotCenter;
          v85[1] = NTKComplicationSlotBottomCenter;
          v86[0] = v28;
          v86[1] = v31;
          v85[2] = NTKComplicationSlotBottomRight;
          if ([*(a1 + 40) supportsCharon])
          {
            v32 = v10;
          }

          else
          {
            v32 = v26;
          }

          v86[2] = v32;
          v23 = [NSDictionary dictionaryWithObjects:v86 forKeys:v85 count:3];

          v8 = v26;
          v13 = v63;

          goto LABEL_39;
        }

        v83[0] = NTKComplicationSlotTopLeft;
        v83[1] = NTKComplicationSlotCenter;
        v84[0] = &off_118E0;
        v84[1] = &off_118F8;
        v83[2] = NTKComplicationSlotBottomLeft;
        v83[3] = NTKComplicationSlotBottomCenter;
        v84[2] = &off_11910;
        v84[3] = &off_11928;
        v25 = [NSDictionary dictionaryWithObjects:v84 forKeys:v83 count:4];
        v43 = [[CLKWidgetComplicationDescriptor alloc] initWithExtensionBundleIdentifier:@"com.apple.NanoTranslate.Widget" containerBundleIdentifier:@"com.apple.NanoTranslate" kind:@"NanoTranslateStaticWidget" intent:0];
        v44 = [NTKWidgetComplication complicationWithDescriptor:v43];
        v45 = _complicationOrDie(v44);

        v81 = NTKComplicationSlotBottomRight;
        v82 = v45;
        v23 = [NSDictionary dictionaryWithObjects:&v82 forKeys:&v81 count:1];
      }

      v10 = v66;
    }

    else
    {
      if ((a3 & 7u) <= 1uLL)
      {
        if ((a3 & 7) != 0)
        {
          v67 = v10;
          v97[0] = NTKComplicationSlotTopLeft;
          v97[1] = NTKComplicationSlotBottomCenter;
          v98[0] = &off_117F0;
          v98[1] = &off_11808;
          v25 = [NSDictionary dictionaryWithObjects:v98 forKeys:v97 count:2];
          if ([*(a1 + 40) supportsUrsa])
          {
            v41 = [NTKBundleComplication bundledComplicationWithBundleIdentifier:NTKComplicationCompassSmartWaypointIdentifier appBundleIdentifier:NTKBundleComplicationUrsaAppBundleIdentifier complicationDescriptor:0];
            v42 = _complicationOrDie(v41);
          }

          else
          {
            v42 = _complicationOrDie(0);
          }

          if ([*(a1 + 40) supportsUrsa])
          {
            v58 = [NTKBundleComplication bundledComplicationWithBundleIdentifier:@"com.apple.NanoCompass.complications.altitude" appBundleIdentifier:NTKBundleComplicationUrsaAppBundleIdentifier complicationDescriptor:0];
            v59 = _complicationOrDie(v58);
          }

          else
          {
            v59 = _complicationOrDie(0);
          }

          v95[0] = NTKComplicationSlotCenter;
          v95[1] = NTKComplicationSlotBottomLeft;
          v96[0] = v42;
          v96[1] = v59;
          v95[2] = NTKComplicationSlotBottomRight;
          v24 = v68;
          v96[2] = v68;
          v23 = [NSDictionary dictionaryWithObjects:v96 forKeys:v95 count:3];

          v10 = v67;
        }

        else
        {
          v15 = v10;
          v16 = [[CLKWidgetComplicationDescriptor alloc] initWithExtensionBundleIdentifier:@"com.apple.boardwalk.watchapp.widgets" containerBundleIdentifier:@"com.apple.boardwalk.watchapp" kind:@"Swell" intent:0];
          v17 = [NTKWidgetComplication complicationWithDescriptor:v16];
          v18 = _complicationOrDie(v17);

          v100[0] = v68;
          v99[0] = NTKComplicationSlotTopLeft;
          v99[1] = NTKComplicationSlotCenter;
          if ([*(a1 + 40) supportsCharon])
          {
            v19 = v15;
          }

          else
          {
            v19 = v8;
          }

          v100[1] = v19;
          v100[2] = v18;
          v99[2] = NTKComplicationSlotBottomLeft;
          v99[3] = NTKComplicationSlotBottomCenter;
          v20 = [*(a1 + 40) supportsCharon];
          v21 = v69;
          if (v20)
          {
            v21 = v13;
          }

          v100[3] = v21;
          v99[4] = NTKComplicationSlotBottomRight;
          if ([*(a1 + 40) supportsCharon])
          {
            v22 = v15;
          }

          else
          {
            v22 = v8;
          }

          v100[4] = v22;
          v23 = [NSDictionary dictionaryWithObjects:v100 forKeys:v99 count:5];

          v10 = v15;
          v24 = v68;
          v25 = 0;
        }

        goto LABEL_40;
      }

      if (v14 != 2)
      {
        v91 = NTKComplicationSlotTopLeft;
        v92 = &off_11898;
        v65 = [NSDictionary dictionaryWithObjects:&v92 forKeys:&v91 count:1];
        v46 = v13;
        v47 = v10;
        v48 = [[CLKWidgetComplicationDescriptor alloc] initWithExtensionBundleIdentifier:@"com.apple.boardwalk.watchapp.widgets" containerBundleIdentifier:@"com.apple.boardwalk.watchapp" kind:@"Tides" intent:0];
        v49 = [NTKWidgetComplication complicationWithDescriptor:v48];
        v50 = _complicationOrDie(v49);

        v89[0] = NTKComplicationSlotCenter;
        v89[1] = NTKComplicationSlotBottomLeft;
        v24 = v68;
        v90[0] = v50;
        v90[1] = v68;
        v89[2] = NTKComplicationSlotBottomCenter;
        if ([*(a1 + 40) supportsCharon])
        {
          v51 = v46;
        }

        else
        {
          v51 = v8;
        }

        v90[2] = v51;
        v89[3] = NTKComplicationSlotBottomRight;
        v52 = [*(a1 + 40) supportsCharon];
        v53 = v69;
        if (v52)
        {
          v53 = v47;
        }

        v90[3] = v53;
        v23 = [NSDictionary dictionaryWithObjects:v90 forKeys:v89 count:4];

        v10 = v47;
        v13 = v46;
        v25 = v65;

        goto LABEL_40;
      }

      v93[0] = NTKComplicationSlotTopLeft;
      v93[1] = NTKComplicationSlotCenter;
      v94[0] = &off_11820;
      v94[1] = &off_11838;
      v93[2] = NTKComplicationSlotBottomLeft;
      v93[3] = NTKComplicationSlotBottomCenter;
      v94[2] = &off_11850;
      v94[3] = &off_11868;
      v93[4] = NTKComplicationSlotBottomRight;
      v94[4] = &off_11880;
      v25 = [NSDictionary dictionaryWithObjects:v94 forKeys:v93 count:5];
      v23 = 0;
    }

LABEL_39:
    v24 = v68;
LABEL_40:
    [v6 _setFaceGalleryComplicationTypesForSlots:v25 canRepeat:{1, v60}];
    [v6 setComplication:*(a1 + 48) forSlot:NTKComplicationSlotDate];
    v71[0] = _NSConcreteStackBlock;
    v71[1] = 3221225472;
    v71[2] = sub_7940;
    v71[3] = &unk_10858;
    v57 = v6;
    v72 = v57;
    [v23 enumerateKeysAndObjectsUsingBlock:v71];
    [*(a1 + 56) addObject:v57];
  }
}

id _complicationOrDie(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = +[NTKComplication nullComplication];
  }

  v4 = v3;

  return v4;
}

void sub_794C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [NTKFaceBackgroundStyleEditOption optionWithBackgroundStyle:1 forDevice:*(a1 + 32)];
  [v5 selectOption:v6 forCustomEditMode:17 slot:0];
  v7 = 0;
  if (a3 > 3)
  {
    if (a3 <= 5)
    {
      if (a3 == 4)
      {
        v48[0] = NTKComplicationSlotTopLeft;
        v48[1] = NTKComplicationSlotBottomLeft;
        v49[0] = &off_11B20;
        v49[1] = &off_11B38;
        v48[2] = NTKComplicationSlotBottomCenter;
        v48[3] = NTKComplicationSlotBottomRight;
        v49[2] = &off_11B50;
        v49[3] = &off_11B68;
        v9 = [NSDictionary dictionaryWithObjects:v49 forKeys:v48 count:4];
        if ([*(a1 + 32) supportsUrsa])
        {
          v19 = [NTKBundleComplication bundledComplicationWithBundleIdentifier:NTKBundleComplicationUrsaBearingBundleIdentifier appBundleIdentifier:NTKBundleComplicationUrsaAppBundleIdentifier complicationDescriptor:0];
          v11 = v19;
          if (v19)
          {
            v46 = NTKComplicationSlotCenter;
            v47 = v19;
            v12 = &v47;
            v13 = &v46;
            goto LABEL_28;
          }

          goto LABEL_31;
        }
      }

      else
      {
        v44[0] = NTKComplicationSlotTopLeft;
        v44[1] = NTKComplicationSlotCenter;
        v45[0] = &off_11B80;
        v45[1] = &off_11B98;
        v44[2] = NTKComplicationSlotBottomLeft;
        v44[3] = NTKComplicationSlotBottomRight;
        v45[2] = &off_11BB0;
        v45[3] = &off_11BC8;
        v9 = [NSDictionary dictionaryWithObjects:v45 forKeys:v44 count:4];
        if ([*(a1 + 32) supportsUrsa])
        {
          v14 = [NTKBundleComplication bundledComplicationWithBundleIdentifier:NTKBundleComplicationUrsaCompassBundleIdentifier appBundleIdentifier:NTKBundleComplicationUrsaAppBundleIdentifier complicationDescriptor:0];
          v11 = v14;
          if (v14)
          {
            v42 = NTKComplicationSlotBottomCenter;
            v43 = v14;
            v12 = &v43;
            v13 = &v42;
            goto LABEL_28;
          }

LABEL_31:
          v8 = 0;
          goto LABEL_32;
        }
      }

      goto LABEL_35;
    }

    if (a3 == 6)
    {
      v21 = *(a1 + 32);
      if (NTKShowCarbonara())
      {
        v22 = [CLKWidgetComplicationDescriptor alloc];
        v23 = NTKCarbonaraWidgetIntent();
        v24 = [v22 initWithExtensionBundleIdentifier:@"com.apple.NanoHome.NanoHomeWidgets" containerBundleIdentifier:@"com.apple.NanoHome" kind:@"com.apple.HomeEnergyUI.EnergyForecastComplication" intent:v23];

        v25 = [NTKWidgetComplication complicationWithDescriptor:v24];
        v26 = [[CLKWidgetComplicationDescriptor alloc] initWithExtensionBundleIdentifier:@"com.apple.NanoMaps.NanoMapsWidgetKitComplications" containerBundleIdentifier:@"com.apple.NanoMaps" kind:@"NearByTransitComplication" intent:0];
        v27 = [NTKWidgetComplication complicationWithDescriptor:v26];
        v40[0] = NTKComplicationSlotTopLeft;
        v40[1] = NTKComplicationSlotCenter;
        v41[0] = v25;
        v41[1] = v25;
        v40[2] = NTKComplicationSlotBottomCenter;
        v41[2] = v27;
        v7 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:3];
        v38[0] = NTKComplicationSlotBottomLeft;
        v38[1] = NTKComplicationSlotBottomRight;
        v39[0] = &off_11BE0;
        v39[1] = &off_11BF8;
        v9 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:2];

LABEL_36:
        v8 = 0;
        goto LABEL_37;
      }

      v36[0] = NTKComplicationSlotTopLeft;
      v36[1] = NTKComplicationSlotCenter;
      v37[0] = &off_11C10;
      v37[1] = &off_11C28;
      v36[2] = NTKComplicationSlotBottomLeft;
      v36[3] = NTKComplicationSlotBottomCenter;
      v37[2] = &off_11C40;
      v37[3] = &off_11C58;
      v36[4] = NTKComplicationSlotBottomRight;
      v37[4] = &off_11C70;
      v17 = v37;
      v18 = v36;
    }

    else
    {
      v8 = 0;
      v9 = 0;
      if (a3 != 7)
      {
        goto LABEL_37;
      }

      v34[0] = NTKComplicationSlotTopLeft;
      v34[1] = NTKComplicationSlotCenter;
      v35[0] = &off_11C88;
      v35[1] = &off_11CA0;
      v34[2] = NTKComplicationSlotBottomLeft;
      v34[3] = NTKComplicationSlotBottomCenter;
      v35[2] = &off_11CB8;
      v35[3] = &off_11CD0;
      v34[4] = NTKComplicationSlotBottomRight;
      v35[4] = &off_11CE8;
      v17 = v35;
      v18 = v34;
    }

    goto LABEL_34;
  }

  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v56[0] = NTKComplicationSlotTopLeft;
      v56[1] = NTKComplicationSlotCenter;
      v57[0] = &off_11A78;
      v57[1] = &off_11A90;
      v56[2] = NTKComplicationSlotBottomLeft;
      v56[3] = NTKComplicationSlotBottomRight;
      v57[2] = &off_11AA8;
      v57[3] = &off_11AC0;
      v9 = [NSDictionary dictionaryWithObjects:v57 forKeys:v56 count:4];
      if ([*(a1 + 32) supportsUrsa])
      {
        v20 = [NTKBundleComplication bundledComplicationWithBundleIdentifier:NTKBundleComplicationUrsaCompassBundleIdentifier appBundleIdentifier:NTKBundleComplicationUrsaAppBundleIdentifier complicationDescriptor:0];
        v11 = v20;
        if (v20)
        {
          v54 = NTKComplicationSlotBottomCenter;
          v55 = v20;
          v12 = &v55;
          v13 = &v54;
          goto LABEL_28;
        }

        goto LABEL_31;
      }
    }

    else
    {
      v52[0] = NTKComplicationSlotTopLeft;
      v52[1] = NTKComplicationSlotCenter;
      v53[0] = &off_11AD8;
      v53[1] = &off_11AF0;
      v52[2] = NTKComplicationSlotBottomRight;
      v53[2] = &off_11B08;
      v9 = [NSDictionary dictionaryWithObjects:v53 forKeys:v52 count:3];
      if ([*(a1 + 32) supportsUrsa])
      {
        v11 = [NTKBundleComplication bundledComplicationWithBundleIdentifier:NTKBundleComplicationUrsaCompassBundleIdentifier appBundleIdentifier:NTKBundleComplicationUrsaAppBundleIdentifier complicationDescriptor:0];
        v15 = [NTKBundleComplication bundledComplicationWithBundleIdentifier:NTKBundleComplicationWeatherRainBundleIdentifier appBundleIdentifier:NTKBundleComplicationWeatherAppBundleIdentifier complicationDescriptor:0];
        v16 = v15;
        v8 = 0;
        if (v11 && v15)
        {
          v50[0] = NTKComplicationSlotBottomLeft;
          v50[1] = NTKComplicationSlotBottomCenter;
          v51[0] = v15;
          v51[1] = v11;
          v8 = [NSDictionary dictionaryWithObjects:v51 forKeys:v50 count:2];
        }

        goto LABEL_32;
      }
    }

    goto LABEL_35;
  }

  if (!a3)
  {
    v62[0] = NTKComplicationSlotTopLeft;
    v62[1] = NTKComplicationSlotCenter;
    v63[0] = &off_119A0;
    v63[1] = &off_119B8;
    v62[2] = NTKComplicationSlotBottomLeft;
    v62[3] = NTKComplicationSlotBottomCenter;
    v63[2] = &off_119D0;
    v63[3] = &off_119E8;
    v62[4] = NTKComplicationSlotBottomRight;
    v63[4] = &off_11A00;
    v17 = v63;
    v18 = v62;
LABEL_34:
    v9 = [NSDictionary dictionaryWithObjects:v17 forKeys:v18 count:5];
LABEL_35:
    v7 = 0;
    goto LABEL_36;
  }

  v8 = 0;
  v9 = 0;
  if (a3 == 1)
  {
    v60[0] = NTKComplicationSlotTopLeft;
    v60[1] = NTKComplicationSlotCenter;
    v61[0] = &off_11A18;
    v61[1] = &off_11A30;
    v60[2] = NTKComplicationSlotBottomCenter;
    v60[3] = NTKComplicationSlotBottomRight;
    v61[2] = &off_11A48;
    v61[3] = &off_11A60;
    v9 = [NSDictionary dictionaryWithObjects:v61 forKeys:v60 count:4];
    v10 = [NTKBundleComplication bundledComplicationWithBundleIdentifier:NTKBundleComplicationNoiseBundleIdentifier appBundleIdentifier:NTKBundleComplicationNoiseAppBundleIdentifier complicationDescriptor:0];
    v11 = v10;
    if (v10)
    {
      v58 = NTKComplicationSlotBottomLeft;
      v59 = v10;
      v12 = &v59;
      v13 = &v58;
LABEL_28:
      v8 = [NSDictionary dictionaryWithObjects:v12 forKeys:v13 count:1];
LABEL_32:

      v7 = 0;
      goto LABEL_37;
    }

    goto LABEL_31;
  }

LABEL_37:
  [v5 _setFaceGalleryComplicationTypesForSlots:v9 canRepeat:1];
  [v5 setComplication:*(a1 + 40) forSlot:NTKComplicationSlotDate];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_8374;
  v32[3] = &unk_108A8;
  v28 = v5;
  v33 = v28;
  [v8 enumerateKeysAndObjectsUsingBlock:v32];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_8380;
  v30[3] = &unk_108D0;
  v31 = v28;
  v29 = v28;
  [v7 enumerateKeysAndObjectsUsingBlock:v30];
}