id sub_1048(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_229B8);
  if (qword_229C0)
  {
    v3 = qword_229C0 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != qword_229C8))
  {
    qword_229C0 = v2;
    qword_229C8 = [v2 version];
    v5 = sub_1108(qword_229C8, v2);
    v6 = qword_229B0;
    qword_229B0 = v5;
  }

  v7 = qword_229B0;
  os_unfair_lock_unlock(&unk_229B8);

  return v7;
}

id sub_1108(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _EnumValueRange();
  if ([v2 supportsPDRCapability:360081074])
  {
    v4 = [v3 arrayByAddingObject:&off_1E9D0];

    v3 = v4;
  }

  if (NTKShowIndicScriptNumerals())
  {
    v5 = [NTKCaliforniaStyleEditOption _orderedIndicNumeralsEditOptionsForDevice:v2];
    v6 = [v3 arrayByAddingObjectsFromArray:v5];

    v3 = v6;
  }

  return v3;
}

void sub_174C(id a1)
{
  v3[0] = &off_1E9E8;
  v3[1] = &off_1EA00;
  v4[0] = NTKFaceBundleStyle1;
  v4[1] = NTKFaceBundleStyle2;
  v3[2] = &off_1EA18;
  v3[3] = &off_1EA30;
  v4[2] = NTKFaceBundleStyle3;
  v4[3] = NTKFaceBundleStyle4;
  v3[4] = &off_1EA48;
  v3[5] = &off_1EA60;
  v4[4] = NTKFaceBundleStyle5;
  v4[5] = NTKFaceBundleStyle6;
  v3[6] = &off_1EA78;
  v3[7] = &off_1E9D0;
  v4[6] = NTKFaceBundleStyle7;
  v4[7] = NTKFaceBundleStyle8;
  v3[8] = &off_1EA90;
  v3[9] = &off_1EAA8;
  v4[8] = NTKFaceBundleStyle9;
  v4[9] = NTKFaceBundleStyle10;
  v3[10] = &off_1EAC0;
  v3[11] = &off_1EAD8;
  v4[10] = NTKFaceBundleStyle11;
  v4[11] = NTKFaceBundleStyle12;
  v3[12] = &off_1EAF0;
  v3[13] = &off_1EB08;
  v4[12] = NTKFaceBundleStyle13;
  v4[13] = NTKFaceBundleStyle14;
  v3[14] = &off_1EB20;
  v3[15] = &off_1EB38;
  v4[14] = NTKFaceBundleStyle15;
  v4[15] = NTKFaceBundleStyle16;
  v3[16] = &off_1EB50;
  v3[17] = &off_1EB68;
  v4[16] = NTKFaceBundleStyle17;
  v4[17] = NTKFaceBundleStyle18;
  v3[18] = &off_1EB80;
  v3[19] = &off_1EB98;
  v4[18] = NTKFaceBundleStyle19;
  v4[19] = NTKFaceBundleStyle20;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:20];
  v2 = qword_229D0;
  qword_229D0 = v1;
}

void sub_2130(id a1)
{
  qword_229E0 = objc_alloc_init(NTKCaliforniaFaceComplicationDescriptor);

  _objc_release_x1();
}

id sub_22F8(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(&unk_229F8);
  if (qword_22A00)
  {
    v4 = qword_22A00 == v3;
  }

  else
  {
    v4 = 0;
  }

  if (!v4 || (v5 = [v3 version], v5 != qword_22A08))
  {
    qword_22A00 = v3;
    qword_22A08 = [v3 version];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_241C;
    v10[3] = &unk_1C628;
    v10[4] = *(a1 + 32);
    v6 = sub_241C(v10, v3);
    v7 = qword_229F0;
    qword_229F0 = v6;
  }

  v8 = qword_229F0;
  os_unfair_lock_unlock(&unk_229F8);

  return v8;
}

id sub_241C(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 collectionType] == &dword_8 + 2)
  {
    v4 = 3006;
  }

  else if ([v3 collectionType] == &dword_8 + 1)
  {
    v4 = 3005;
  }

  else if ([v3 collectionType] == &dword_4 + 3)
  {
    v4 = 3007;
  }

  else if ([v3 collectionType] == &dword_8)
  {
    v4 = 3008;
  }

  else
  {
    v4 = 3000;
  }

  v5 = [*(a1 + 32) device];
  v6 = [NTKCaliforniaColorEditOption optionWithCaliforniaColor:v4 forDevice:v5];

  return v6;
}

void sub_3224(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) complicationTypesBySlotForDevice:*(a1 + 40)];
  [v5 _setFaceGalleryComplicationTypesForSlots:v6];

  if (a3 > 2)
  {
    if ((a3 - 4) < 2)
    {
      v10 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
      v16[0] = v10;
      v11 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:16 zOrder:4000];
      v16[1] = v11;
      v12 = [NSArray arrayWithObjects:v16 count:2];
      [v5 setCurationPlacements:v12];

      v7 = [NTKComplication timerComplicationWithDuration:180.0];
      [v5 setComplication:v7 forSlot:NTKComplicationSlotBottomLeft];
LABEL_15:

      goto LABEL_16;
    }

    if (a3 != 3)
    {
      goto LABEL_16;
    }

    v7 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:8 zOrder:4000];
    v17[0] = v7;
    v8 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:16 zOrder:4000];
    v17[1] = v8;
    v13 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
    v17[2] = v13;
    v14 = v17;
LABEL_11:
    v15 = [NSArray arrayWithObjects:v14 count:3];
    [v5 setCurationPlacements:v15];

LABEL_14:
    goto LABEL_15;
  }

  switch(a3)
  {
    case 0:
      v7 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:16 zOrder:4000];
      v20[0] = v7;
      v8 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:8 zOrder:7000];
      v20[1] = v8;
      v13 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
      v20[2] = v13;
      v14 = v20;
      goto LABEL_11;
    case 1:
      v7 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
      v19[0] = v7;
      v8 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:8 zOrder:4000];
      v19[1] = v8;
      v9 = v19;
      goto LABEL_13;
    case 2:
      v7 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:16 zOrder:4000];
      v18[0] = v7;
      v8 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
      v18[1] = v8;
      v9 = v18;
LABEL_13:
      v13 = [NSArray arrayWithObjects:v9 count:2];
      [v5 setCurationPlacements:v13];
      goto LABEL_14;
  }

LABEL_16:
}

void sub_38F8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v12 = a2;
  v7 = [NTKCaliforniaFace defaultFaceOfStyle:39 forDevice:*(a1 + 32)];
  v8 = v7;
  if (v7)
  {
    [v7 selectOption:v12 forCustomEditMode:10 slot:0];
    v9 = [NTKCaliforniaStyleEditOption optionWithStyle:a3 forDevice:*(a1 + 32)];
    [v8 selectOption:v9 forCustomEditMode:13 slot:0];

    v10 = [NTKAnalogDialShapeEditOption optionWithShape:a4 forDevice:*(a1 + 32)];
    [v8 selectOption:v10 forCustomEditMode:15 slot:0];

    v11 = [*(a1 + 40) complicationTypesBySlotForDevice:*(a1 + 32)];
    [v8 _setFaceGalleryComplicationTypesForSlots:v11];

    [*(a1 + 48) addObject:v8];
  }
}

void sub_400C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = v4[3];
  v8 = a2;
  v7 = [v4 hourMarkersCenterPointConstantsForStyle:v5 dial:v6];
  [v8 setCenter:{v7[2 * a3], v7[2 * a3 + 1]}];
}

void sub_4468(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = v4[4];
  v6 = v4[3];
  v7 = a2;
  v9 = [v4 tickColorForIndex:a3 palette:v5 dial:v6];
  v8 = v9;
  [v7 setBackgroundColor:{objc_msgSend(v9, "CGColor")}];
}

void sub_4510(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v7 = [v4 colorPalette];
  v6 = [v7 colorForHourMarker:a3];
  [v4 setColorInHourMarkerView:v5 color:v6];
}

void sub_4B78(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v6 = a3 % 5;
  v7 = (a1 + 8 * a3);
  v8 = v7[606];
  v9 = *(v7 + 666);
  v10 = *(a1 + 6384);
  v11 = *(a1 + 6392);
  CLKInterpolateBetweenFloatsClipped();
  v13 = v12;
  v14 = *(a1 + 6400);
  v15 = *(a1 + 6408);
  v16 = 6288;
  v17 = *(a1 + 6392);
  if (!(a3 % 5))
  {
    v16 = 6296;
  }

  v18 = 6304;
  if (v6)
  {
    v19 = 6320;
  }

  else
  {
    v18 = 6312;
    v19 = 6328;
  }

  v20 = *(a1 + v16);
  v21 = *(a1 + v18);
  CLKInterpolateBetweenFloatsClipped();
  v23 = v22;
  v24 = *(v7 + 726);
  v25 = *(a1 + v19);
  v26 = *(a1 + 6392);
  CLKInterpolateBetweenFloatsClipped();
  v28 = v27;
  v29 = [*(a1 + 32) tickColorForIndex:a3 palette:*(*(a1 + 32) + 32) dial:1];
  v30 = [*(a1 + 32) tickColorForIndex:a3 palette:*(*(a1 + 32) + 32) dial:0];
  memset(&v44, 0, sizeof(v44));
  CGAffineTransformMakeRotation(&v44, v8);
  v31 = *(a1 + 32);
  if (*(v31 + 10) == 1)
  {
    v32 = [*(v31 + 96) objectAtIndexedSubscript:a3];
    [v32 doubleValue];
    v34 = v33 * *(*(a1 + 32) + 40);

    v31 = *(a1 + 32);
  }

  v35 = __sincos_stret(v8);
  v36 = *(v31 + 8);
  v37 = *&CGAffineTransformIdentity.c;
  *&v43.a = *&CGAffineTransformIdentity.a;
  *&v43.c = v37;
  *&v43.tx = *&CGAffineTransformIdentity.tx;
  [v5 setAffineTransform:&v43];
  [v5 setFrame:{0.0, 0.0, v28, v23}];
  [v5 setCornerRadius:v23 * 0.5];
  [v5 setAnchorPoint:{1.0, 0.5}];
  [v5 setPosition:{v14 + v13 * v35.__cosval, v15 + v13 * v35.__sinval}];
  v43 = v44;
  [v5 setAffineTransform:&v43];
  v38 = *(a1 + 6392);
  v39 = NTKInterpolateBetweenColors();
  [v5 setBackgroundColor:{objc_msgSend(v39, "CGColor")}];

  v40 = *(a1 + 6416);
  CLKInterpolateBetweenFloatsClipped();
  *&v41 = v41;
  [v5 setOpacity:v41];
  v42 = &OBJC_IVAR___NTKCaliforniaContentView__minuteTicks;
  if (!v6)
  {
    v42 = &OBJC_IVAR___NTKCaliforniaContentView__hourTicks;
  }

  [*(*(a1 + 32) + *v42) addSublayer:v5];
}

void sub_502C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v8 = a2;
  v6 = [v5 colorPalette];
  v7 = [v6 colorForHourMarker:a3];
  [v5 setColorInHourMarkerView:v8 color:v7];

  [*(a1 + 32) addSubview:v8];
}

void sub_51E8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v8 = a2;
  v6 = [v5 colorPalette];
  v7 = [v6 colorForHourMarker:a3];
  [v5 setColorInHourMarkerView:v8 color:v7];

  [*(a1 + 32) addSubview:v8];
}

void sub_630C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4[0] = @"contents";
  v4[1] = @"contentsMultiplyColor";
  v5[0] = v1;
  v5[1] = v1;
  v4[2] = @"transform";
  v4[3] = @"bounds";
  v5[2] = v1;
  v5[3] = v1;
  v4[4] = @"position";
  v4[5] = @"opacity";
  v5[4] = v1;
  v5[5] = v1;
  v4[6] = @"backgroundColor";
  v5[6] = v1;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:7];
  v3 = qword_24420;
  qword_24420 = v2;
}

void sub_6D44(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = v5[3];
  v8 = a2;
  v12 = [v5 tickColorForIndex:a3 palette:v6 dial:v7];
  v9 = [*(a1 + 32) tickColorForIndex:a3 palette:*(a1 + 48) dial:*(*(a1 + 32) + 24)];
  v10 = *(a1 + 56);
  v11 = NTKInterpolateBetweenColors();
  [v8 setBackgroundColor:{objc_msgSend(v11, "CGColor")}];
}

void sub_6E24(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 colorForHourMarker:a3];
  v8 = [*(a1 + 40) colorForHourMarker:a3];
  v9 = *(a1 + 56);
  v10 = NTKInterpolateBetweenColors();

  [*(a1 + 48) setColorInHourMarkerView:v6 color:v10];
}

void sub_792C(void *a1@<X1>, void *a2@<X8>)
{
  v3 = a1;
  os_unfair_lock_lock(&unk_25CF0);
  if (qword_25CF8)
  {
    v4 = qword_25CF8 == v3;
  }

  else
  {
    v4 = 0;
  }

  if (!v4 || (v5 = [v3 version], v5 != qword_25D00))
  {
    qword_25CF8 = v3;
    qword_25D00 = [v3 version];
    sub_7A00(v3, __src);
    memcpy(&unk_24428, __src, 0x18C8uLL);
  }

  memcpy(a2, &unk_24428, 0x18C8uLL);
  os_unfair_lock_unlock(&unk_25CF0);
}

void sub_7A00(void *a1@<X1>, uint64_t a2@<X8>)
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
  *(a2 + 208) = 0u;
  *(a2 + 224) = 0u;
  *(a2 + 240) = 0u;
  *(a2 + 256) = 0u;
  *(a2 + 272) = 0u;
  *(a2 + 288) = 0u;
  *(a2 + 304) = 0u;
  *(a2 + 320) = 0u;
  *(a2 + 336) = 0u;
  *(a2 + 352) = 0u;
  *(a2 + 368) = 0u;
  *(a2 + 384) = 0u;
  *(a2 + 400) = 0u;
  *(a2 + 416) = 0u;
  *(a2 + 432) = 0u;
  *(a2 + 448) = 0u;
  *(a2 + 464) = 0u;
  *(a2 + 480) = 0u;
  *(a2 + 496) = 0u;
  *(a2 + 192) = 0u;
  v1049 = a2 + 384;
  v4 = [CLKDeviceMetrics metricsWithDevice:v3 identitySizeClass:2];
  [v4 setScale:3 forSizeClass:1.13580247];
  v5.f64[0] = 276.0;
  v6 = sub_BE68(v5, 57.0, 312.0, 67.0);
  [v4 scaledPoint:v6 withOverrides:?];
  v1050 = a2 + 192;
  *(a2 + 192) = v7;
  *(a2 + 200) = v8;

  v9.f64[0] = 315.0;
  v10 = sub_BE68(v9, 143.0, 354.0, 154.0);
  [v4 scaledPoint:v10 withOverrides:58.0];
  *(a2 + 208) = v11;
  *(a2 + 216) = v12;

  v13.f64[0] = 315.0;
  v14 = sub_BE68(v13, 226.0, 354.0, 247.0);
  [v4 scaledPoint:v14 withOverrides:{58.0, -1.0}];
  *(a2 + 224) = v15;
  *(a2 + 232) = v16;

  v17.f64[0] = 315.0;
  v18 = sub_BE68(v17, 307.0, 352.0, 340.0);
  [v4 scaledPoint:v18 withOverrides:{58.0, 37.5}];
  *(a2 + 240) = v19;
  *(a2 + 248) = v20;

  v21.f64[0] = 282.0;
  v22 = sub_BE68(v21, 386.0, 311.0, 426.0);
  [v4 scaledPoint:v22 withOverrides:?];
  *(a2 + 256) = v23;
  *(a2 + 264) = v24;

  v25.f64[0] = 187.0;
  v26 = sub_BE68(v25, 386.0, 210.0, 426.0);
  [v4 scaledPoint:v26 withOverrides:{0.5, 73.5}];
  *(a2 + 272) = v27;
  *(a2 + 280) = v28;

  v29.f64[0] = 93.0;
  v30 = sub_BE68(v29, 386.0, 104.0, 426.0);
  [v4 scaledPoint:v30 withOverrides:?];
  *(a2 + 288) = v31;
  *(a2 + 296) = v32;

  v33.f64[0] = 57.0;
  v34 = sub_BE68(v33, 307.0, 64.0, 340.0);
  [v4 scaledPoint:v34 withOverrides:?];
  *(a2 + 304) = v35;
  *(a2 + 312) = v36;

  v37.f64[0] = 57.0;
  v38 = sub_BE68(v37, 226.0, 63.0, 247.0);
  [v4 scaledPoint:v38 withOverrides:?];
  *(a2 + 320) = v39;
  *(a2 + 328) = v40;

  v41.f64[0] = 69.0;
  v42 = sub_BE68(v41, 143.0, 76.0, 154.0);
  [v4 scaledPoint:v42 withOverrides:?];
  *(a2 + 336) = v43;
  *(a2 + 344) = v44;

  v45.f64[0] = 101.0;
  v46 = sub_BE68(v45, 57.0, 113.0, 67.0);
  [v4 scaledPoint:v46 withOverrides:?];
  *(a2 + 352) = v47;
  *(a2 + 360) = v48;

  v49.f64[0] = 188.0;
  v50 = sub_BE68(v49, 57.0, 210.0, 68.0);
  [v4 scaledPoint:v50 withOverrides:{1.0, -73.0}];
  *(a2 + 368) = v51;
  *(a2 + 376) = v52;

  v53.f64[0] = 283.0;
  v54 = sub_BE68(v53, 58.0, 315.0, 68.0);
  [v4 scaledPoint:v54 withOverrides:?];
  *(a2 + 384) = v55;
  *(a2 + 392) = v56;

  v57.f64[0] = 322.0;
  v58 = sub_BE68(v57, 137.0, 354.0, 154.0);
  [v4 scaledPoint:v58 withOverrides:{58.0, -38.0}];
  *(a2 + 400) = v59;
  *(a2 + 408) = v60;

  v61.f64[0] = 314.0;
  v62 = sub_BE68(v61, 221.0, 346.0, 246.0);
  [v4 scaledPoint:v62 withOverrides:?];
  *(a2 + 416) = v63;
  *(a2 + 424) = v64;

  v65.f64[0] = 306.0;
  v66 = sub_BE68(v65, 307.0, 338.0, 340.0);
  [v4 scaledPoint:v66 withOverrides:{50.5, 38.0}];
  *(a2 + 432) = v67;
  *(a2 + 440) = v68;

  v69.f64[0] = 282.0;
  v70 = sub_BE68(v69, 385.0, 311.0, 426.0);
  [v4 scaledPoint:v70 withOverrides:?];
  *(a2 + 448) = v71;
  *(a2 + 456) = v72;

  v73.f64[0] = 187.0;
  v74 = sub_BE68(v73, 385.0, 208.0, 426.0);
  [v4 scaledPoint:v74 withOverrides:{0.5, 72.5}];
  *(a2 + 464) = v75;
  *(a2 + 472) = v76;

  v77.f64[0] = 108.0;
  v78 = sub_BE68(v77, 385.0, 121.0, 426.0);
  [v4 scaledPoint:v78 withOverrides:{-35.0, 72.5}];
  *(a2 + 480) = v79;
  *(a2 + 488) = v80;

  v81.f64[0] = 76.0;
  v82 = sub_BE68(v81, 307.0, 87.0, 340.0);
  [v4 scaledPoint:v82 withOverrides:{-46.5, 38.0}];
  *(a2 + 496) = v83;
  *(a2 + 504) = v84;

  v85.f64[0] = 61.0;
  v86 = sub_BE68(v85, 221.0, 70.0, 246.0);
  [v4 scaledPoint:v86 withOverrides:{-54.0, 0.0}];
  *(a2 + 512) = v87;
  *(a2 + 520) = v88;

  v89.f64[0] = 52.0;
  v90 = sub_BE68(v89, 137.0, 61.0, 154.0);
  [v4 scaledPoint:v90 withOverrides:{-57.5, -38.0}];
  *(a2 + 528) = v91;
  *(a2 + 536) = v92;

  v93.f64[0] = 93.0;
  v94 = sub_BE68(v93, 58.0, 104.0, 68.0);
  [v4 scaledPoint:v94 withOverrides:?];
  *(a2 + 544) = v95;
  *(a2 + 552) = v96;

  v97.f64[0] = 187.0;
  v98 = sub_BE68(v97, 58.0, 208.0, 68.0);
  [v4 scaledPoint:v98 withOverrides:{0.5, -72.5}];
  *(a2 + 560) = v99;
  *(a2 + 568) = v100;

  v1048 = a2 + 1152;
  [v4 scaledPoint:{42.5, -74.0}];
  *(a2 + 1152) = v101;
  *(a2 + 1160) = v102;
  [v4 scaledPoint:{57.0, -33.5}];
  *(a2 + 1168) = v103;
  *(a2 + 1176) = v104;
  [v4 scaledPoint:{57.0, 0.0}];
  *(a2 + 1184) = v105;
  *(a2 + 1192) = v106;
  [v4 scaledPoint:{57.0, 33.0}];
  *(a2 + 1200) = v107;
  *(a2 + 1208) = v108;
  [v4 scaledPoint:{42.5, 74.0}];
  *(a2 + 1216) = v109;
  *(a2 + 1224) = v110;
  [v4 scaledPoint:{0.0, 74.0}];
  *(a2 + 1232) = v111;
  *(a2 + 1240) = v112;
  [v4 scaledPoint:{-42.5, 74.0}];
  *(a2 + 1248) = v113;
  *(a2 + 1256) = v114;
  [v4 scaledPoint:{-57.0, 33.0}];
  *(a2 + 1264) = v115;
  *(a2 + 1272) = v116;
  [v4 scaledPoint:{-57.0, 0.0}];
  *(a2 + 1280) = v117;
  *(a2 + 1288) = v118;
  [v4 scaledPoint:{-57.0, -33.5}];
  *(a2 + 1296) = v119;
  *(a2 + 1304) = v120;
  [v4 scaledPoint:{-42.5, -74.0}];
  *(a2 + 1312) = v121;
  *(a2 + 1320) = v122;
  [v4 scaledPoint:{0.0, -74.0}];
  *(a2 + 1328) = v123;
  *(a2 + 1336) = v124;
  v1047 = a2 + 768;
  v125 = *(a2 + 400);
  *(a2 + 768) = *(a2 + 384);
  *(a2 + 784) = v125;
  [v4 scaledPoint:{54.5, 0.0}];
  *(a2 + 800) = v126;
  *(a2 + 808) = v127;
  v128 = *(a2 + 256);
  *(a2 + 816) = *(a2 + 240);
  *(a2 + 832) = v128;
  [v4 scaledPoint:{0.0, 78.0}];
  *(a2 + 848) = v129;
  *(a2 + 856) = v130;
  v131 = *(a2 + 304);
  *(a2 + 864) = *(a2 + 288);
  *(a2 + 880) = v131;
  [v4 scaledPoint:{-54.5, 0.0}];
  *(a2 + 896) = v132;
  *(a2 + 904) = v133;
  v134 = *(a2 + 544);
  *(a2 + 912) = *(a2 + 528);
  *(a2 + 928) = v134;
  [v4 scaledPoint:{0.0, -68.5}];
  *(a2 + 944) = v135;
  *(a2 + 952) = v136;
  v1046 = a2 + 1800;
  v137.f64[0] = 276.0;
  v138 = sub_BE68(v137, 57.0, 312.0, 67.0);
  [v4 scaledPoint:v138 withOverrides:{45.0, -73.0}];
  *(a2 + 1800) = v139;
  *(a2 + 1808) = v140;

  v141.f64[0] = 315.0;
  v142 = sub_BE68(v141, 143.0, 354.0, 154.0);
  [v4 scaledPoint:v142 withOverrides:{58.0, -37.5}];
  *(a2 + 1816) = v143;
  *(a2 + 1824) = v144;

  v145.f64[0] = 315.0;
  v146 = sub_BE68(v145, 226.0, 354.0, 247.0);
  [v4 scaledPoint:v146 withOverrides:{58.0, -1.0}];
  *(a2 + 1832) = v147;
  *(a2 + 1840) = v148;

  v149.f64[0] = 315.0;
  v150 = sub_BE68(v149, 307.0, 352.0, 340.0);
  [v4 scaledPoint:v150 withOverrides:{58.0, 37.5}];
  *(a2 + 1848) = v151;
  *(a2 + 1856) = v152;

  v153.f64[0] = 282.0;
  v154 = sub_BE68(v153, 386.0, 311.0, 426.0);
  [v4 scaledPoint:v154 withOverrides:{43.0, 73.5}];
  *(a2 + 1864) = v155;
  *(a2 + 1872) = v156;

  v157.f64[0] = 187.0;
  v158 = sub_BE68(v157, 386.0, 210.0, 426.0);
  [v4 scaledPoint:v158 withOverrides:{0.5, 73.5}];
  *(a2 + 1880) = v159;
  *(a2 + 1888) = v160;

  v161.f64[0] = 93.0;
  v162 = sub_BE68(v161, 386.0, 104.0, 426.0);
  [v4 scaledPoint:v162 withOverrides:{-43.5, 73.0}];
  *(a2 + 1896) = v163;
  *(a2 + 1904) = v164;

  v165.f64[0] = 57.0;
  v166 = sub_BE68(v165, 307.0, 64.0, 340.0);
  [v4 scaledPoint:v166 withOverrides:{-57.5, 37.5}];
  *(a2 + 1912) = v167;
  *(a2 + 1920) = v168;

  v169.f64[0] = 57.0;
  v170 = sub_BE68(v169, 226.0, 63.0, 247.0);
  [v4 scaledPoint:v170 withOverrides:{-58.0, -1.0}];
  *(a2 + 1928) = v171;
  *(a2 + 1936) = v172;

  v173.f64[0] = 69.0;
  v174 = sub_BE68(v173, 143.0, 76.0, 154.0);
  [v4 scaledPoint:v174 withOverrides:{-52.5, -38.0}];
  *(a2 + 1944) = v175;
  *(a2 + 1952) = v176;

  v177.f64[0] = 101.0;
  v178 = sub_BE68(v177, 57.0, 113.0, 67.0);
  [v4 scaledPoint:v178 withOverrides:{-41.0, -73.0}];
  *(a2 + 1960) = v179;
  *(a2 + 1968) = v180;

  v181.f64[0] = 188.0;
  v182 = sub_BE68(v181, 57.0, 210.0, 68.0);
  [v4 scaledPoint:v182 withOverrides:{1.0, -73.0}];
  *(a2 + 1976) = v183;
  *(a2 + 1984) = v184;

  v1045 = a2 + 1992;
  v185.f64[0] = 290.0;
  v186 = sub_BE68(v185, 58.0, 320.0, 69.0);
  [v4 scaledPoint:v186 withOverrides:{45.0, -73.0}];
  *(a2 + 1992) = v187;
  *(a2 + 2000) = v188;

  v189.f64[0] = 326.0;
  v190 = sub_BE68(v189, 136.0, 359.0, 154.0);
  [v4 scaledPoint:v190 withOverrides:{58.0, -37.5}];
  *(a2 + 2008) = v191;
  *(a2 + 2016) = v192;

  v193.f64[0] = 324.0;
  v194 = sub_BE68(v193, 220.0, 358.0, 247.0);
  [v4 scaledPoint:v194 withOverrides:{58.0, -1.0}];
  *(a2 + 2024) = v195;
  *(a2 + 2032) = v196;

  v197.f64[0] = 315.0;
  v198 = sub_BE68(v197, 307.0, 352.0, 340.0);
  [v4 scaledPoint:v198 withOverrides:{58.0, 37.5}];
  *(a2 + 2040) = v199;
  *(a2 + 2048) = v200;

  v201.f64[0] = 282.0;
  v202 = sub_BE68(v201, 386.0, 313.0, 426.0);
  [v4 scaledPoint:v202 withOverrides:{43.0, 73.5}];
  *(a2 + 2056) = v203;
  *(a2 + 2064) = v204;

  v205.f64[0] = 188.0;
  v206 = sub_BE68(v205, 386.0, 210.0, 426.0);
  [v4 scaledPoint:v206 withOverrides:{0.5, 73.5}];
  *(a2 + 2072) = v207;
  *(a2 + 2080) = v208;

  v209.f64[0] = 99.0;
  v210 = sub_BE68(v209, 386.0, 108.0, 426.0);
  [v4 scaledPoint:v210 withOverrides:{-43.5, 73.0}];
  *(a2 + 2088) = v211;
  *(a2 + 2096) = v212;

  v213.f64[0] = 50.0;
  v214 = sub_BE68(v213, 307.0, 54.0, 340.0);
  [v4 scaledPoint:v214 withOverrides:{-57.5, 37.5}];
  *(a2 + 2104) = v215;
  *(a2 + 2112) = v216;

  v217.f64[0] = 50.0;
  v218 = sub_BE68(v217, 220.0, 55.0, 247.0);
  [v4 scaledPoint:v218 withOverrides:{-58.0, -1.0}];
  *(a2 + 2120) = v219;
  *(a2 + 2128) = v220;

  v221.f64[0] = 63.0;
  v222 = sub_BE68(v221, 136.0, 69.0, 154.0);
  [v4 scaledPoint:v222 withOverrides:{-52.5, -38.0}];
  *(a2 + 2136) = v223;
  *(a2 + 2144) = v224;

  v225.f64[0] = 101.0;
  v226 = sub_BE68(v225, 58.0, 111.0, 68.0);
  [v4 scaledPoint:v226 withOverrides:{-41.0, -73.0}];
  *(a2 + 2152) = v227;
  *(a2 + 2160) = v228;

  v229.f64[0] = 188.0;
  v230 = sub_BE68(v229, 58.0, 208.0, 68.0);
  [v4 scaledPoint:v230 withOverrides:{1.0, -73.0}];
  *(a2 + 2168) = v231;
  *(a2 + 2176) = v232;

  v1053 = a2 + 1352;
  v233.f64[0] = 289.0;
  v234 = sub_BE68(v233, 57.0, 320.0, 63.0);
  [v4 scaledPoint:v234 withOverrides:{44.5, -72.5}];
  *(a2 + 1352) = v235;
  *(a2 + 1360) = v236;

  v237.f64[0] = 322.0;
  v238 = sub_BE68(v237, 138.0, 358.0, 158.0);
  [v4 scaledPoint:v238 withOverrides:59.0];
  *(a2 + 1368) = v239;
  *(a2 + 1376) = v240;

  v241.f64[0] = 322.0;
  v242 = sub_BE68(v241, 224.0, 358.0, 248.0);
  [v4 scaledPoint:v242 withOverrides:{59.0, -0.5}];
  *(a2 + 1384) = v243;
  *(a2 + 1392) = v244;

  v245.f64[0] = 322.0;
  v246 = sub_BE68(v245, 311.0, 358.0, 340.0);
  [v4 scaledPoint:v246 withOverrides:{59.0, 37.5}];
  *(a2 + 1400) = v247;
  *(a2 + 1408) = v248;

  v249.f64[0] = 290.0;
  v250 = sub_BE68(v249, 390.0, 321.0, 435.0);
  [v4 scaledPoint:v250 withOverrides:{44.5, 73.5}];
  *(a2 + 1416) = v251;
  *(a2 + 1424) = v252;

  v253.f64[0] = 186.0;
  v254 = sub_BE68(v253, 390.0, 207.0, 435.0);
  [v4 scaledPoint:v254 withOverrides:{0.0, 73.5}];
  *(a2 + 1432) = v255;
  *(a2 + 1440) = v256;

  v257.f64[0] = 88.0;
  v258 = sub_BE68(v257, 390.0, 102.0, 435.0);
  [v4 scaledPoint:v258 withOverrides:{-42.5, 73.5}];
  *(a2 + 1448) = v259;
  *(a2 + 1456) = v260;

  v261.f64[0] = 52.0;
  v262 = sub_BE68(v261, 311.0, 59.0, 340.0);
  [v4 scaledPoint:v262 withOverrides:{-57.0, 37.5}];
  *(a2 + 1464) = v263;
  *(a2 + 1472) = v264;

  v265.f64[0] = 52.0;
  v266 = sub_BE68(v265, 222.0, 59.0, 248.0);
  [v4 scaledPoint:v266 withOverrides:{-57.0, -0.5}];
  *(a2 + 1480) = v267;
  *(a2 + 1488) = v268;

  v269.f64[0] = 52.0;
  v270 = sub_BE68(v269, 137.0, 59.0, 151.0);
  [v4 scaledPoint:v270 withOverrides:{-57.0, -38.5}];
  *(a2 + 1496) = v271;
  *(a2 + 1504) = v272;

  v273.f64[0] = 88.0;
  v274 = sub_BE68(v273, 52.0, 101.0, 54.0);
  [v4 scaledPoint:v274 withOverrides:{-42.5, -75.5}];
  *(a2 + 1512) = v275;
  *(a2 + 1520) = v276;

  v277.f64[0] = 187.0;
  v278 = sub_BE68(v277, 52.0, 208.0, 54.0);
  [v4 scaledPoint:v278 withOverrides:{0.0, -75.5}];
  *(a2 + 1528) = v279;
  *(a2 + 1536) = v280;

  v281.f64[0] = 88.0;
  v282 = sub_BE68(v281, 86.0, 101.0, 90.0);
  [v4 scaledPoint:v282 withOverrides:{-42.5, -58.5}];
  *(a2 + 1544) = v283;
  *(a2 + 1552) = v284;

  v285.f64[0] = 187.0;
  v286 = sub_BE68(v285, 90.0, 208.0, 93.0);
  [v4 scaledPoint:v286 withOverrides:{0.0, -58.5}];
  *(a2 + 1560) = v287;
  *(a2 + 1568) = v288;

  v1044 = a2 + 2184;
  v289.f64[0] = 276.0;
  v290 = sub_BE68(v289, 57.0, 312.0, 67.0);
  [v4 scaledPoint:v290 withOverrides:{45.0, -73.0}];
  *(a2 + 2184) = v291;
  *(a2 + 2192) = v292;

  v293.f64[0] = 315.0;
  v294 = sub_BE68(v293, 143.0, 354.0, 154.0);
  [v4 scaledPoint:v294 withOverrides:{58.0, -37.5}];
  *(a2 + 2200) = v295;
  *(a2 + 2208) = v296;

  v297.f64[0] = 315.0;
  v298 = sub_BE68(v297, 226.0, 354.0, 247.0);
  [v4 scaledPoint:v298 withOverrides:{58.0, -1.0}];
  *(a2 + 2216) = v299;
  *(a2 + 2224) = v300;

  v301.f64[0] = 315.0;
  v302 = sub_BE68(v301, 307.0, 352.0, 340.0);
  [v4 scaledPoint:v302 withOverrides:{58.0, 37.5}];
  *(a2 + 2232) = v303;
  *(a2 + 2240) = v304;

  v305.f64[0] = 282.0;
  v306 = sub_BE68(v305, 386.0, 311.0, 426.0);
  [v4 scaledPoint:v306 withOverrides:{43.0, 73.5}];
  *(a2 + 2248) = v307;
  *(a2 + 2256) = v308;

  v309.f64[0] = 187.0;
  v310 = sub_BE68(v309, 386.0, 210.0, 426.0);
  [v4 scaledPoint:v310 withOverrides:{0.5, 73.5}];
  *(a2 + 2264) = v311;
  *(a2 + 2272) = v312;

  v313.f64[0] = 93.0;
  v314 = sub_BE68(v313, 386.0, 104.0, 426.0);
  [v4 scaledPoint:v314 withOverrides:{-43.5, 73.0}];
  *(a2 + 2280) = v315;
  *(a2 + 2288) = v316;

  v317.f64[0] = 57.0;
  v318 = sub_BE68(v317, 307.0, 64.0, 340.0);
  [v4 scaledPoint:v318 withOverrides:{-57.5, 37.5}];
  *(a2 + 2296) = v319;
  *(a2 + 2304) = v320;

  v321.f64[0] = 57.0;
  v322 = sub_BE68(v321, 226.0, 63.0, 247.0);
  [v4 scaledPoint:v322 withOverrides:{-53.0, -1.0}];
  *(a2 + 2312) = v323;
  *(a2 + 2320) = v324;

  v325.f64[0] = 69.0;
  v326 = sub_BE68(v325, 143.0, 76.0, 154.0);
  [v4 scaledPoint:v326 withOverrides:{-52.5, -38.0}];
  *(a2 + 2328) = v327;
  *(a2 + 2336) = v328;

  v329.f64[0] = 101.0;
  v330 = sub_BE68(v329, 57.0, 113.0, 67.0);
  [v4 scaledPoint:v330 withOverrides:{-41.0, -73.0}];
  *(a2 + 2344) = v331;
  *(a2 + 2352) = v332;

  v333.f64[0] = 188.0;
  v334 = sub_BE68(v333, 57.0, 210.0, 68.0);
  [v4 scaledPoint:v334 withOverrides:{1.0, -73.0}];
  *(a2 + 2360) = v335;
  *(a2 + 2368) = v336;

  v1043 = a2 + 2376;
  v337.f64[0] = 276.0;
  v338 = sub_BE68(v337, 57.0, 312.0, 67.0);
  [v4 scaledPoint:v338 withOverrides:{45.0, -73.0}];
  *(a2 + 2376) = v339;
  *(a2 + 2384) = v340;

  v341.f64[0] = 315.0;
  v342 = sub_BE68(v341, 143.0, 354.0, 154.0);
  [v4 scaledPoint:v342 withOverrides:{58.0, -37.5}];
  *(a2 + 2392) = v343;
  *(a2 + 2400) = v344;

  v345.f64[0] = 315.0;
  v346 = sub_BE68(v345, 226.0, 354.0, 247.0);
  [v4 scaledPoint:v346 withOverrides:{58.0, -1.0}];
  *(a2 + 2408) = v347;
  *(a2 + 2416) = v348;

  v349.f64[0] = 315.0;
  v350 = sub_BE68(v349, 307.0, 352.0, 340.0);
  [v4 scaledPoint:v350 withOverrides:{58.0, 37.5}];
  *(a2 + 2424) = v351;
  *(a2 + 2432) = v352;

  v353.f64[0] = 282.0;
  v354 = sub_BE68(v353, 386.0, 311.0, 426.0);
  [v4 scaledPoint:v354 withOverrides:{43.0, 73.5}];
  *(a2 + 2440) = v355;
  *(a2 + 2448) = v356;

  v357.f64[0] = 187.0;
  v358 = sub_BE68(v357, 386.0, 210.0, 426.0);
  [v4 scaledPoint:v358 withOverrides:{0.5, 73.5}];
  *(a2 + 2456) = v359;
  *(a2 + 2464) = v360;

  v361.f64[0] = 93.0;
  v362 = sub_BE68(v361, 386.0, 104.0, 426.0);
  [v4 scaledPoint:v362 withOverrides:{-43.5, 73.0}];
  *(a2 + 2472) = v363;
  *(a2 + 2480) = v364;

  v365.f64[0] = 57.0;
  v366 = sub_BE68(v365, 307.0, 64.0, 340.0);
  [v4 scaledPoint:v366 withOverrides:{-57.5, 37.5}];
  *(a2 + 2488) = v367;
  *(a2 + 2496) = v368;

  v369.f64[0] = 57.0;
  v370 = sub_BE68(v369, 226.0, 63.0, 247.0);
  [v4 scaledPoint:v370 withOverrides:{-58.0, -1.0}];
  *(a2 + 2504) = v371;
  *(a2 + 2512) = v372;

  v373.f64[0] = 69.0;
  v374 = sub_BE68(v373, 143.0, 76.0, 154.0);
  [v4 scaledPoint:v374 withOverrides:{-52.5, -38.0}];
  *(a2 + 2520) = v375;
  *(a2 + 2528) = v376;

  v377.f64[0] = 101.0;
  v378 = sub_BE68(v377, 57.0, 113.0, 67.0);
  [v4 scaledPoint:v378 withOverrides:{-41.0, -73.0}];
  *(a2 + 2536) = v379;
  *(a2 + 2544) = v380;

  v381.f64[0] = 188.0;
  v382 = sub_BE68(v381, 57.0, 210.0, 68.0);
  [v4 scaledPoint:v382 withOverrides:{1.0, -73.0}];
  *(a2 + 2552) = v383;
  *(a2 + 2560) = v384;

  v1042 = a2 + 2568;
  v385.f64[0] = 276.0;
  v386 = sub_BE68(v385, 57.0, 312.0, 67.0);
  [v4 scaledPoint:v386 withOverrides:{45.0, -73.0}];
  *(a2 + 2568) = v387;
  *(a2 + 2576) = v388;

  v389.f64[0] = 315.0;
  v390 = sub_BE68(v389, 143.0, 354.0, 154.0);
  [v4 scaledPoint:v390 withOverrides:{58.0, -37.5}];
  *(a2 + 2584) = v391;
  *(a2 + 2592) = v392;

  v393.f64[0] = 315.0;
  v394 = sub_BE68(v393, 226.0, 354.0, 247.0);
  [v4 scaledPoint:v394 withOverrides:{58.0, -1.0}];
  *(a2 + 2600) = v395;
  *(a2 + 2608) = v396;

  v397.f64[0] = 315.0;
  v398 = sub_BE68(v397, 307.0, 352.0, 340.0);
  [v4 scaledPoint:v398 withOverrides:{58.0, 37.5}];
  *(a2 + 2616) = v399;
  *(a2 + 2624) = v400;

  v401.f64[0] = 282.0;
  v402 = sub_BE68(v401, 386.0, 311.0, 426.0);
  [v4 scaledPoint:v402 withOverrides:{43.0, 73.5}];
  *(a2 + 2632) = v403;
  *(a2 + 2640) = v404;

  v405.f64[0] = 187.0;
  v406 = sub_BE68(v405, 386.0, 210.0, 426.0);
  [v4 scaledPoint:v406 withOverrides:{0.5, 73.5}];
  *(a2 + 2648) = v407;
  *(a2 + 2656) = v408;

  v409.f64[0] = 93.0;
  v410 = sub_BE68(v409, 386.0, 104.0, 426.0);
  [v4 scaledPoint:v410 withOverrides:{-43.5, 73.0}];
  *(a2 + 2664) = v411;
  *(a2 + 2672) = v412;

  v413.f64[0] = 57.0;
  v414 = sub_BE68(v413, 307.0, 64.0, 340.0);
  [v4 scaledPoint:v414 withOverrides:{-57.5, 37.5}];
  *(a2 + 2680) = v415;
  *(a2 + 2688) = v416;

  v417.f64[0] = 57.0;
  v418 = sub_BE68(v417, 226.0, 63.0, 247.0);
  [v4 scaledPoint:v418 withOverrides:{-58.0, -1.0}];
  *(a2 + 2696) = v419;
  *(a2 + 2704) = v420;

  v421.f64[0] = 69.0;
  v422 = sub_BE68(v421, 143.0, 76.0, 154.0);
  [v4 scaledPoint:v422 withOverrides:{-52.5, -38.0}];
  *(a2 + 2712) = v423;
  *(a2 + 2720) = v424;

  v425.f64[0] = 101.0;
  v426 = sub_BE68(v425, 57.0, 113.0, 67.0);
  [v4 scaledPoint:v426 withOverrides:{-41.0, -73.0}];
  *(a2 + 2728) = v427;
  *(a2 + 2736) = v428;

  v429.f64[0] = 188.0;
  v430 = sub_BE68(v429, 57.0, 210.0, 68.0);
  [v4 scaledPoint:v430 withOverrides:{1.0, -73.0}];
  *(a2 + 2744) = v431;
  *(a2 + 2752) = v432;

  v1041 = a2 + 2760;
  v433.f64[0] = 276.0;
  v434 = sub_BE68(v433, 57.0, 312.0, 67.0);
  [v4 scaledPoint:v434 withOverrides:{45.0, -73.0}];
  *(a2 + 2760) = v435;
  *(a2 + 2768) = v436;

  v437.f64[0] = 315.0;
  v438 = sub_BE68(v437, 143.0, 354.0, 154.0);
  [v4 scaledPoint:v438 withOverrides:{58.0, -37.5}];
  *(a2 + 2776) = v439;
  *(a2 + 2784) = v440;

  v441.f64[0] = 315.0;
  v442 = sub_BE68(v441, 226.0, 354.0, 247.0);
  [v4 scaledPoint:v442 withOverrides:{58.0, -1.0}];
  *(a2 + 2792) = v443;
  *(a2 + 2800) = v444;

  v445.f64[0] = 315.0;
  v446 = sub_BE68(v445, 307.0, 352.0, 340.0);
  [v4 scaledPoint:v446 withOverrides:{58.0, 37.5}];
  *(a2 + 2808) = v447;
  *(a2 + 2816) = v448;

  v449.f64[0] = 282.0;
  v450 = sub_BE68(v449, 386.0, 311.0, 426.0);
  [v4 scaledPoint:v450 withOverrides:{43.0, 73.5}];
  *(a2 + 2824) = v451;
  *(a2 + 2832) = v452;

  v453.f64[0] = 187.0;
  v454 = sub_BE68(v453, 386.0, 210.0, 426.0);
  [v4 scaledPoint:v454 withOverrides:{0.5, 73.5}];
  *(a2 + 2840) = v455;
  *(a2 + 2848) = v456;

  v457.f64[0] = 93.0;
  v458 = sub_BE68(v457, 386.0, 104.0, 426.0);
  [v4 scaledPoint:v458 withOverrides:{-43.5, 73.0}];
  *(a2 + 2856) = v459;
  *(a2 + 2864) = v460;

  v461.f64[0] = 57.0;
  v462 = sub_BE68(v461, 307.0, 64.0, 340.0);
  [v4 scaledPoint:v462 withOverrides:{-57.5, 37.5}];
  *(a2 + 2872) = v463;
  *(a2 + 2880) = v464;

  v465.f64[0] = 57.0;
  v466 = sub_BE68(v465, 226.0, 63.0, 247.0);
  [v4 scaledPoint:v466 withOverrides:{-58.0, -1.0}];
  *(a2 + 2888) = v467;
  *(a2 + 2896) = v468;

  v469.f64[0] = 69.0;
  v470 = sub_BE68(v469, 143.0, 76.0, 154.0);
  [v4 scaledPoint:v470 withOverrides:{-52.5, -38.0}];
  *(a2 + 2904) = v471;
  *(a2 + 2912) = v472;

  v473.f64[0] = 101.0;
  v474 = sub_BE68(v473, 57.0, 113.0, 67.0);
  [v4 scaledPoint:v474 withOverrides:{-41.0, -73.0}];
  *(a2 + 2920) = v475;
  *(a2 + 2928) = v476;

  v477.f64[0] = 188.0;
  v478 = sub_BE68(v477, 57.0, 210.0, 68.0);
  [v4 scaledPoint:v478 withOverrides:{1.0, -73.0}];
  *(a2 + 2936) = v479;
  *(a2 + 2944) = v480;

  v1040 = a2 + 2952;
  v481.f64[0] = 276.0;
  v482 = sub_BE68(v481, 57.0, 312.0, 67.0);
  [v4 scaledPoint:v482 withOverrides:{45.0, -73.0}];
  *(a2 + 2952) = v483;
  *(a2 + 2960) = v484;

  v485.f64[0] = 315.0;
  v486 = sub_BE68(v485, 143.0, 354.0, 154.0);
  [v4 scaledPoint:v486 withOverrides:{58.0, -37.5}];
  *(a2 + 2968) = v487;
  *(a2 + 2976) = v488;

  v489.f64[0] = 315.0;
  v490 = sub_BE68(v489, 226.0, 354.0, 247.0);
  [v4 scaledPoint:v490 withOverrides:{58.0, -1.0}];
  *(a2 + 2984) = v491;
  *(a2 + 2992) = v492;

  v493.f64[0] = 315.0;
  v494 = sub_BE68(v493, 307.0, 352.0, 340.0);
  [v4 scaledPoint:v494 withOverrides:{58.0, 37.5}];
  *(a2 + 3000) = v495;
  *(a2 + 3008) = v496;

  v497.f64[0] = 282.0;
  v498 = sub_BE68(v497, 386.0, 311.0, 426.0);
  [v4 scaledPoint:v498 withOverrides:{43.0, 73.5}];
  *(a2 + 3016) = v499;
  *(a2 + 3024) = v500;

  v501.f64[0] = 187.0;
  v502 = sub_BE68(v501, 386.0, 210.0, 426.0);
  [v4 scaledPoint:v502 withOverrides:{0.5, 73.5}];
  *(a2 + 3032) = v503;
  *(a2 + 3040) = v504;

  v505.f64[0] = 93.0;
  v506 = sub_BE68(v505, 386.0, 104.0, 426.0);
  [v4 scaledPoint:v506 withOverrides:{-43.5, 73.0}];
  *(a2 + 3048) = v507;
  *(a2 + 3056) = v508;

  v509.f64[0] = 57.0;
  v510 = sub_BE68(v509, 307.0, 64.0, 340.0);
  [v4 scaledPoint:v510 withOverrides:{-57.5, 37.5}];
  *(a2 + 3064) = v511;
  *(a2 + 3072) = v512;

  v513.f64[0] = 57.0;
  v514 = sub_BE68(v513, 226.0, 63.0, 247.0);
  [v4 scaledPoint:v514 withOverrides:{-58.0, -1.0}];
  *(a2 + 3080) = v515;
  *(a2 + 3088) = v516;

  v517.f64[0] = 69.0;
  v518 = sub_BE68(v517, 143.0, 76.0, 154.0);
  [v4 scaledPoint:v518 withOverrides:{-52.5, -38.0}];
  *(a2 + 3096) = v519;
  *(a2 + 3104) = v520;

  v521.f64[0] = 101.0;
  v522 = sub_BE68(v521, 57.0, 113.0, 67.0);
  [v4 scaledPoint:v522 withOverrides:{-41.0, -73.0}];
  *(a2 + 3112) = v523;
  *(a2 + 3120) = v524;

  v525.f64[0] = 188.0;
  v526 = sub_BE68(v525, 57.0, 210.0, 68.0);
  [v4 scaledPoint:v526 withOverrides:{1.0, -73.0}];
  *(a2 + 3128) = v527;
  *(a2 + 3136) = v528;

  v1039 = a2 + 3144;
  v529.f64[0] = 276.0;
  v530 = sub_BE68(v529, 57.0, 312.0, 67.0);
  [v4 scaledPoint:v530 withOverrides:{45.0, -73.0}];
  *(a2 + 3144) = v531;
  *(a2 + 3152) = v532;

  v533.f64[0] = 315.0;
  v534 = sub_BE68(v533, 143.0, 354.0, 154.0);
  [v4 scaledPoint:v534 withOverrides:{58.0, -37.5}];
  *(a2 + 3160) = v535;
  *(a2 + 3168) = v536;

  v537.f64[0] = 315.0;
  v538 = sub_BE68(v537, 226.0, 354.0, 247.0);
  [v4 scaledPoint:v538 withOverrides:{58.0, -1.0}];
  *(a2 + 3176) = v539;
  *(a2 + 3184) = v540;

  v541.f64[0] = 315.0;
  v542 = sub_BE68(v541, 307.0, 352.0, 340.0);
  [v4 scaledPoint:v542 withOverrides:{58.0, 37.5}];
  *(a2 + 3192) = v543;
  *(a2 + 3200) = v544;

  v545.f64[0] = 282.0;
  v546 = sub_BE68(v545, 386.0, 311.0, 426.0);
  [v4 scaledPoint:v546 withOverrides:{43.0, 73.5}];
  *(a2 + 3208) = v547;
  *(a2 + 3216) = v548;

  v549.f64[0] = 187.0;
  v550 = sub_BE68(v549, 386.0, 210.0, 426.0);
  [v4 scaledPoint:v550 withOverrides:{0.5, 73.5}];
  *(a2 + 3224) = v551;
  *(a2 + 3232) = v552;

  v553.f64[0] = 93.0;
  v554 = sub_BE68(v553, 386.0, 104.0, 426.0);
  [v4 scaledPoint:v554 withOverrides:{-43.5, 73.0}];
  *(a2 + 3240) = v555;
  *(a2 + 3248) = v556;

  v557.f64[0] = 57.0;
  v558 = sub_BE68(v557, 307.0, 64.0, 340.0);
  [v4 scaledPoint:v558 withOverrides:{-57.5, 37.5}];
  *(a2 + 3256) = v559;
  *(a2 + 3264) = v560;

  v561.f64[0] = 57.0;
  v562 = sub_BE68(v561, 226.0, 63.0, 247.0);
  [v4 scaledPoint:v562 withOverrides:{-58.0, -1.0}];
  *(a2 + 3272) = v563;
  *(a2 + 3280) = v564;

  v565.f64[0] = 69.0;
  v566 = sub_BE68(v565, 143.0, 76.0, 154.0);
  [v4 scaledPoint:v566 withOverrides:{-52.5, -38.0}];
  *(a2 + 3288) = v567;
  *(a2 + 3296) = v568;

  v569.f64[0] = 101.0;
  v570 = sub_BE68(v569, 57.0, 113.0, 67.0);
  [v4 scaledPoint:v570 withOverrides:{-41.0, -73.0}];
  *(a2 + 3304) = v571;
  *(a2 + 3312) = v572;

  v573.f64[0] = 188.0;
  v574 = sub_BE68(v573, 57.0, 210.0, 68.0);
  [v4 scaledPoint:v574 withOverrides:{1.0, -73.0}];
  *(a2 + 3320) = v575;
  *(a2 + 3328) = v576;

  v577 = a2 + 3336;
  v578.f64[0] = 276.0;
  v579 = sub_BE68(v578, 57.0, 312.0, 67.0);
  [v4 scaledPoint:v579 withOverrides:{45.0, -73.0}];
  *(a2 + 3336) = v580;
  *(a2 + 3344) = v581;

  v582.f64[0] = 315.0;
  v583 = sub_BE68(v582, 143.0, 354.0, 154.0);
  [v4 scaledPoint:v583 withOverrides:{58.0, -37.5}];
  *(a2 + 3352) = v584;
  *(a2 + 3360) = v585;

  v586.f64[0] = 315.0;
  v587 = sub_BE68(v586, 226.0, 354.0, 247.0);
  [v4 scaledPoint:v587 withOverrides:{58.0, -1.0}];
  *(a2 + 3368) = v588;
  *(a2 + 3376) = v589;

  v590.f64[0] = 315.0;
  v591 = sub_BE68(v590, 307.0, 352.0, 340.0);
  [v4 scaledPoint:v591 withOverrides:{58.0, 37.5}];
  *(a2 + 3384) = v592;
  *(a2 + 3392) = v593;

  v594.f64[0] = 282.0;
  v595 = sub_BE68(v594, 386.0, 311.0, 426.0);
  [v4 scaledPoint:v595 withOverrides:{43.0, 73.5}];
  *(a2 + 3400) = v596;
  *(a2 + 3408) = v597;

  v598.f64[0] = 187.0;
  v599 = sub_BE68(v598, 386.0, 210.0, 426.0);
  [v4 scaledPoint:v599 withOverrides:{0.5, 73.5}];
  *(a2 + 3416) = v600;
  *(a2 + 3424) = v601;

  v602.f64[0] = 93.0;
  v603 = sub_BE68(v602, 386.0, 104.0, 426.0);
  [v4 scaledPoint:v603 withOverrides:{-43.5, 73.0}];
  *(a2 + 3432) = v604;
  *(a2 + 3440) = v605;

  v606.f64[0] = 57.0;
  v607 = sub_BE68(v606, 307.0, 64.0, 340.0);
  [v4 scaledPoint:v607 withOverrides:{-57.5, 37.5}];
  *(a2 + 3448) = v608;
  *(a2 + 3456) = v609;

  v610.f64[0] = 57.0;
  v611 = sub_BE68(v610, 226.0, 63.0, 247.0);
  [v4 scaledPoint:v611 withOverrides:{-58.0, -1.0}];
  *(a2 + 3464) = v612;
  *(a2 + 3472) = v613;

  v614.f64[0] = 69.0;
  v615 = sub_BE68(v614, 143.0, 76.0, 154.0);
  [v4 scaledPoint:v615 withOverrides:{-52.5, -38.0}];
  *(a2 + 3480) = v616;
  *(a2 + 3488) = v617;

  v618.f64[0] = 101.0;
  v619 = sub_BE68(v618, 57.0, 113.0, 67.0);
  [v4 scaledPoint:v619 withOverrides:{-41.0, -73.0}];
  *(a2 + 3496) = v620;
  *(a2 + 3504) = v621;

  v622.f64[0] = 188.0;
  v623 = sub_BE68(v622, 57.0, 210.0, 68.0);
  [v4 scaledPoint:v623 withOverrides:{1.0, -73.0}];
  *(a2 + 3512) = v624;
  *(a2 + 3520) = v625;

  v626 = a2 + 3528;
  v627.f64[0] = 276.0;
  v628 = sub_BE68(v627, 57.0, 312.0, 67.0);
  [v4 scaledPoint:v628 withOverrides:{45.0, -73.0}];
  *(a2 + 3528) = v629;
  *(a2 + 3536) = v630;

  v631.f64[0] = 315.0;
  v632 = sub_BE68(v631, 143.0, 354.0, 154.0);
  [v4 scaledPoint:v632 withOverrides:{58.0, -37.5}];
  *(a2 + 3544) = v633;
  *(a2 + 3552) = v634;

  v635.f64[0] = 315.0;
  v636 = sub_BE68(v635, 226.0, 354.0, 247.0);
  [v4 scaledPoint:v636 withOverrides:{58.0, -1.0}];
  *(a2 + 3560) = v637;
  *(a2 + 3568) = v638;

  v639.f64[0] = 315.0;
  v640 = sub_BE68(v639, 307.0, 352.0, 340.0);
  [v4 scaledPoint:v640 withOverrides:{58.0, 37.5}];
  *(a2 + 3576) = v641;
  *(a2 + 3584) = v642;

  v643.f64[0] = 282.0;
  v644 = sub_BE68(v643, 386.0, 311.0, 426.0);
  [v4 scaledPoint:v644 withOverrides:{43.0, 73.5}];
  *(a2 + 3592) = v645;
  *(a2 + 3600) = v646;

  v647.f64[0] = 187.0;
  v648 = sub_BE68(v647, 386.0, 210.0, 426.0);
  [v4 scaledPoint:v648 withOverrides:{0.5, 73.5}];
  *(a2 + 3608) = v649;
  *(a2 + 3616) = v650;

  v651.f64[0] = 93.0;
  v652 = sub_BE68(v651, 386.0, 104.0, 426.0);
  [v4 scaledPoint:v652 withOverrides:{-43.5, 73.0}];
  *(a2 + 3624) = v653;
  *(a2 + 3632) = v654;

  v655.f64[0] = 57.0;
  v656 = sub_BE68(v655, 307.0, 64.0, 340.0);
  [v4 scaledPoint:v656 withOverrides:{-57.5, 37.5}];
  *(a2 + 3640) = v657;
  *(a2 + 3648) = v658;

  v659.f64[0] = 57.0;
  v660 = sub_BE68(v659, 226.0, 63.0, 247.0);
  [v4 scaledPoint:v660 withOverrides:{-58.0, -1.0}];
  *(a2 + 3656) = v661;
  *(a2 + 3664) = v662;

  v663.f64[0] = 69.0;
  v664 = sub_BE68(v663, 143.0, 76.0, 154.0);
  [v4 scaledPoint:v664 withOverrides:{-52.5, -38.0}];
  *(a2 + 3672) = v665;
  *(a2 + 3680) = v666;

  v667.f64[0] = 101.0;
  v668 = sub_BE68(v667, 57.0, 113.0, 67.0);
  [v4 scaledPoint:v668 withOverrides:{-41.0, -73.0}];
  *(a2 + 3688) = v669;
  *(a2 + 3696) = v670;

  v671.f64[0] = 188.0;
  v672 = sub_BE68(v671, 57.0, 210.0, 68.0);
  [v4 scaledPoint:v672 withOverrides:{1.0, -73.0}];
  *(a2 + 3704) = v673;
  *(a2 + 3712) = v674;

  v675 = a2 + 3720;
  v676.f64[0] = 276.0;
  v677 = sub_BE68(v676, 57.0, 312.0, 67.0);
  [v4 scaledPoint:v677 withOverrides:{45.0, -73.0}];
  *(a2 + 3720) = v678;
  *(a2 + 3728) = v679;

  v680.f64[0] = 315.0;
  v681 = sub_BE68(v680, 143.0, 354.0, 154.0);
  [v4 scaledPoint:v681 withOverrides:{58.0, -37.5}];
  *(a2 + 3736) = v682;
  *(a2 + 3744) = v683;

  v684.f64[0] = 315.0;
  v685 = sub_BE68(v684, 226.0, 354.0, 247.0);
  [v4 scaledPoint:v685 withOverrides:{58.0, -1.0}];
  *(a2 + 3752) = v686;
  *(a2 + 3760) = v687;

  v688.f64[0] = 315.0;
  v689 = sub_BE68(v688, 307.0, 352.0, 340.0);
  [v4 scaledPoint:v689 withOverrides:{58.0, 37.5}];
  *(a2 + 3768) = v690;
  *(a2 + 3776) = v691;

  v692.f64[0] = 282.0;
  v693 = sub_BE68(v692, 386.0, 311.0, 426.0);
  [v4 scaledPoint:v693 withOverrides:{43.0, 73.5}];
  *(a2 + 3784) = v694;
  *(a2 + 3792) = v695;

  v696.f64[0] = 187.0;
  v697 = sub_BE68(v696, 386.0, 210.0, 426.0);
  [v4 scaledPoint:v697 withOverrides:{0.5, 73.5}];
  *(a2 + 3800) = v698;
  *(a2 + 3808) = v699;

  v700.f64[0] = 93.0;
  v701 = sub_BE68(v700, 386.0, 104.0, 426.0);
  [v4 scaledPoint:v701 withOverrides:{-43.5, 73.0}];
  *(a2 + 3816) = v702;
  *(a2 + 3824) = v703;

  v704.f64[0] = 57.0;
  v705 = sub_BE68(v704, 307.0, 64.0, 340.0);
  [v4 scaledPoint:v705 withOverrides:{-57.5, 37.5}];
  *(a2 + 3832) = v706;
  *(a2 + 3840) = v707;

  v708.f64[0] = 57.0;
  v709 = sub_BE68(v708, 226.0, 63.0, 247.0);
  [v4 scaledPoint:v709 withOverrides:{-58.0, -1.0}];
  *(a2 + 3848) = v710;
  *(a2 + 3856) = v711;

  v712.f64[0] = 69.0;
  v713 = sub_BE68(v712, 143.0, 76.0, 154.0);
  [v4 scaledPoint:v713 withOverrides:{-52.5, -38.0}];
  *(a2 + 3864) = v714;
  *(a2 + 3872) = v715;

  v716.f64[0] = 101.0;
  v717 = sub_BE68(v716, 57.0, 113.0, 67.0);
  [v4 scaledPoint:v717 withOverrides:{-41.0, -73.0}];
  *(a2 + 3880) = v718;
  *(a2 + 3888) = v719;

  v720.f64[0] = 188.0;
  v721 = sub_BE68(v720, 57.0, 210.0, 68.0);
  [v4 scaledPoint:v721 withOverrides:{1.0, -73.0}];
  *(a2 + 3896) = v722;
  *(a2 + 3904) = v723;

  v724 = a2 + 3912;
  v725.f64[0] = 276.0;
  v726 = sub_BE68(v725, 57.0, 312.0, 67.0);
  [v4 scaledPoint:v726 withOverrides:{45.0, -73.0}];
  *(a2 + 3912) = v727;
  *(a2 + 3920) = v728;

  v729.f64[0] = 315.0;
  v730 = sub_BE68(v729, 143.0, 354.0, 154.0);
  [v4 scaledPoint:v730 withOverrides:{58.0, -37.5}];
  *(a2 + 3928) = v731;
  *(a2 + 3936) = v732;

  v733.f64[0] = 315.0;
  v734 = sub_BE68(v733, 226.0, 354.0, 247.0);
  [v4 scaledPoint:v734 withOverrides:{58.0, -1.0}];
  *(a2 + 3944) = v735;
  *(a2 + 3952) = v736;

  v737.f64[0] = 315.0;
  v738 = sub_BE68(v737, 307.0, 352.0, 340.0);
  [v4 scaledPoint:v738 withOverrides:{58.0, 37.5}];
  *(a2 + 3960) = v739;
  *(a2 + 3968) = v740;

  v741.f64[0] = 282.0;
  v742 = sub_BE68(v741, 386.0, 311.0, 426.0);
  [v4 scaledPoint:v742 withOverrides:{43.0, 73.5}];
  *(a2 + 3976) = v743;
  *(a2 + 3984) = v744;

  v745.f64[0] = 187.0;
  v746 = sub_BE68(v745, 386.0, 210.0, 426.0);
  [v4 scaledPoint:v746 withOverrides:{0.5, 73.5}];
  *(a2 + 3992) = v747;
  *(a2 + 4000) = v748;

  v749.f64[0] = 93.0;
  v750 = sub_BE68(v749, 386.0, 104.0, 426.0);
  [v4 scaledPoint:v750 withOverrides:{-43.5, 73.0}];
  *(a2 + 4008) = v751;
  *(a2 + 4016) = v752;

  v753.f64[0] = 57.0;
  v754 = sub_BE68(v753, 307.0, 64.0, 340.0);
  [v4 scaledPoint:v754 withOverrides:{-57.5, 37.5}];
  *(a2 + 4024) = v755;
  *(a2 + 4032) = v756;

  v757.f64[0] = 57.0;
  v758 = sub_BE68(v757, 226.0, 63.0, 247.0);
  [v4 scaledPoint:v758 withOverrides:{-58.0, -1.0}];
  *(a2 + 4040) = v759;
  *(a2 + 4048) = v760;

  v761.f64[0] = 69.0;
  v762 = sub_BE68(v761, 143.0, 76.0, 154.0);
  [v4 scaledPoint:v762 withOverrides:{-52.5, -38.0}];
  *(a2 + 4056) = v763;
  *(a2 + 4064) = v764;

  v765.f64[0] = 101.0;
  v766 = sub_BE68(v765, 57.0, 113.0, 67.0);
  [v4 scaledPoint:v766 withOverrides:{-41.0, -73.0}];
  *(a2 + 4072) = v767;
  *(a2 + 4080) = v768;

  v769.f64[0] = 188.0;
  v770 = sub_BE68(v769, 57.0, 210.0, 68.0);
  [v4 scaledPoint:v770 withOverrides:{1.0, -73.0}];
  *(a2 + 4088) = v771;
  *(a2 + 4096) = v772;

  v773 = a2 + 4104;
  v774.f64[0] = 276.0;
  v775 = sub_BE68(v774, 57.0, 312.0, 67.0);
  [v4 scaledPoint:v775 withOverrides:{45.0, -73.0}];
  *(a2 + 4104) = v776;
  *(a2 + 4112) = v777;

  v778.f64[0] = 315.0;
  v779 = sub_BE68(v778, 143.0, 354.0, 154.0);
  [v4 scaledPoint:v779 withOverrides:{58.0, -37.5}];
  *(a2 + 4120) = v780;
  *(a2 + 4128) = v781;

  v782.f64[0] = 315.0;
  v783 = sub_BE68(v782, 226.0, 354.0, 247.0);
  [v4 scaledPoint:v783 withOverrides:{58.0, -1.0}];
  *(a2 + 4136) = v784;
  *(a2 + 4144) = v785;

  v786.f64[0] = 315.0;
  v787 = sub_BE68(v786, 307.0, 352.0, 340.0);
  [v4 scaledPoint:v787 withOverrides:{58.0, 37.5}];
  *(a2 + 4152) = v788;
  *(a2 + 4160) = v789;

  v790.f64[0] = 282.0;
  v791 = sub_BE68(v790, 386.0, 311.0, 426.0);
  [v4 scaledPoint:v791 withOverrides:{43.0, 73.5}];
  *(a2 + 4168) = v792;
  *(a2 + 4176) = v793;

  v794.f64[0] = 187.0;
  v795 = sub_BE68(v794, 386.0, 210.0, 426.0);
  [v4 scaledPoint:v795 withOverrides:{0.5, 73.5}];
  *(a2 + 4184) = v796;
  *(a2 + 4192) = v797;

  v798.f64[0] = 93.0;
  v799 = sub_BE68(v798, 386.0, 104.0, 426.0);
  [v4 scaledPoint:v799 withOverrides:{-43.5, 73.0}];
  *(a2 + 4200) = v800;
  *(a2 + 4208) = v801;

  v802.f64[0] = 57.0;
  v803 = sub_BE68(v802, 307.0, 64.0, 340.0);
  [v4 scaledPoint:v803 withOverrides:{-57.5, 37.5}];
  *(a2 + 4216) = v804;
  *(a2 + 4224) = v805;

  v806.f64[0] = 57.0;
  v807 = sub_BE68(v806, 226.0, 63.0, 247.0);
  [v4 scaledPoint:v807 withOverrides:{-58.0, -1.0}];
  *(a2 + 4232) = v808;
  *(a2 + 4240) = v809;

  v810.f64[0] = 69.0;
  v811 = sub_BE68(v810, 143.0, 76.0, 154.0);
  [v4 scaledPoint:v811 withOverrides:{-52.5, -38.0}];
  *(a2 + 4248) = v812;
  *(a2 + 4256) = v813;

  v814.f64[0] = 101.0;
  v815 = sub_BE68(v814, 57.0, 113.0, 67.0);
  [v4 scaledPoint:v815 withOverrides:{-41.0, -73.0}];
  *(a2 + 4264) = v816;
  *(a2 + 4272) = v817;

  v818.f64[0] = 188.0;
  v819 = sub_BE68(v818, 57.0, 210.0, 68.0);
  [v4 scaledPoint:v819 withOverrides:{1.0, -73.0}];
  *(a2 + 4280) = v820;
  *(a2 + 4288) = v821;

  v822 = a2 + 4296;
  v823.f64[0] = 276.0;
  v824 = sub_BE68(v823, 57.0, 312.0, 67.0);
  [v4 scaledPoint:v824 withOverrides:{45.0, -73.0}];
  *(a2 + 4296) = v825;
  *(a2 + 4304) = v826;

  v827.f64[0] = 315.0;
  v828 = sub_BE68(v827, 143.0, 354.0, 154.0);
  [v4 scaledPoint:v828 withOverrides:{58.0, -37.5}];
  *(a2 + 4312) = v829;
  *(a2 + 4320) = v830;

  v831.f64[0] = 315.0;
  v832 = sub_BE68(v831, 226.0, 354.0, 247.0);
  [v4 scaledPoint:v832 withOverrides:{58.0, -1.0}];
  *(a2 + 4328) = v833;
  *(a2 + 4336) = v834;

  v835.f64[0] = 315.0;
  v836 = sub_BE68(v835, 307.0, 352.0, 340.0);
  [v4 scaledPoint:v836 withOverrides:{58.0, 37.5}];
  *(a2 + 4344) = v837;
  *(a2 + 4352) = v838;

  v839.f64[0] = 282.0;
  v840 = sub_BE68(v839, 386.0, 311.0, 426.0);
  [v4 scaledPoint:v840 withOverrides:{43.0, 73.5}];
  *(a2 + 4360) = v841;
  *(a2 + 4368) = v842;

  v843.f64[0] = 187.0;
  v844 = sub_BE68(v843, 386.0, 210.0, 426.0);
  [v4 scaledPoint:v844 withOverrides:{0.5, 73.5}];
  *(a2 + 4376) = v845;
  *(a2 + 4384) = v846;

  v847.f64[0] = 93.0;
  v848 = sub_BE68(v847, 386.0, 104.0, 426.0);
  [v4 scaledPoint:v848 withOverrides:{-43.5, 73.0}];
  *(a2 + 4392) = v849;
  *(a2 + 4400) = v850;

  v851.f64[0] = 57.0;
  v852 = sub_BE68(v851, 307.0, 64.0, 340.0);
  [v4 scaledPoint:v852 withOverrides:{-57.5, 37.5}];
  *(a2 + 4408) = v853;
  *(a2 + 4416) = v854;

  v855.f64[0] = 57.0;
  v856 = sub_BE68(v855, 226.0, 63.0, 247.0);
  [v4 scaledPoint:v856 withOverrides:{-58.0, -1.0}];
  *(a2 + 4424) = v857;
  *(a2 + 4432) = v858;

  v859.f64[0] = 69.0;
  v860 = sub_BE68(v859, 143.0, 76.0, 154.0);
  [v4 scaledPoint:v860 withOverrides:{-52.5, -38.0}];
  *(a2 + 4440) = v861;
  *(a2 + 4448) = v862;

  v863.f64[0] = 101.0;
  v864 = sub_BE68(v863, 57.0, 113.0, 67.0);
  [v4 scaledPoint:v864 withOverrides:{-41.0, -73.0}];
  *(a2 + 4456) = v865;
  *(a2 + 4464) = v866;

  v867.f64[0] = 188.0;
  v868 = sub_BE68(v867, 57.0, 210.0, 68.0);
  v1052 = v4;
  [v4 scaledPoint:v868 withOverrides:{1.0, -73.0}];
  *(a2 + 4472) = v869;
  v1038 = a2;
  *(a2 + 4480) = v870;

  [v3 screenBounds];
  v1051 = v3;
  [v3 screenBounds];
  for (i = 0; i != 12; ++i)
  {
    v872 = 0;
    v1056[0] = v1050;
    v1056[1] = v1049;
    v1056[2] = v1048;
    v1056[3] = v1047;
    v1056[4] = v1046;
    v1056[5] = v1045;
    v1056[6] = v1053;
    v1056[7] = v1044;
    v1056[8] = v1043;
    v1056[9] = v1042;
    v1056[10] = v1041;
    v1056[11] = v1040;
    v1056[12] = v1039;
    v1056[13] = v577;
    v1056[14] = v626;
    v1056[15] = v675;
    v1056[16] = v724;
    v1056[17] = v773;
    v1056[18] = v822;
    do
    {
      v873 = (v1056[v872] + 16 * i);
      v874 = *v873;
      v875 = v873[1];
      CLKAddPoints();
      *v873 = v876;
      v873[1] = v877;
      ++v872;
    }

    while (v872 != 19);
    if (i > 9)
    {
      v878 = v1053 + 16 * i;
      v879 = *(v878 + 32);
      v880 = *(v878 + 40);
      CLKAddPoints();
      *(v878 + 32) = v881;
      *(v878 + 40) = v882;
    }
  }

  [v1052 scaledPoint:{31.5, -47.0}];
  v883 = v1038;
  *v1038 = v884;
  *(v1038 + 8) = v885;
  [v1052 scaledPoint:{50.0, -25.0}];
  *(v1038 + 16) = v886;
  *(v1038 + 24) = v887;
  [v1052 scaledPoint:?];
  *(v1038 + 32) = v888;
  *(v1038 + 40) = v889;
  [v1052 scaledPoint:{50.0, 25.5}];
  *(v1038 + 48) = v890;
  *(v1038 + 56) = v891;
  [v1052 scaledPoint:{31.5, 47.0}];
  *(v1038 + 64) = v892;
  *(v1038 + 72) = v893;
  [v1052 scaledPoint:-0.5];
  *(v1038 + 80) = v894;
  *(v1038 + 88) = v895;
  [v1052 scaledPoint:{-31.0, 47.0}];
  *(v1038 + 96) = v896;
  *(v1038 + 104) = v897;
  [v1052 scaledPoint:?];
  *(v1038 + 112) = v898;
  *(v1038 + 120) = v899;
  [v1052 scaledPoint:{-59.0, 0.0}];
  *(v1038 + 128) = v900;
  *(v1038 + 136) = v901;
  [v1052 scaledPoint:{-46.0, -25.0}];
  *(v1038 + 144) = v902;
  *(v1038 + 152) = v903;
  [v1052 scaledPoint:{-29.5, -47.0}];
  *(v1038 + 160) = v904;
  *(v1038 + 168) = v905;
  [v1052 scaledPoint:{0.0, -57.0}];
  *(v1038 + 176) = v906;
  *(v1038 + 184) = v907;
  [v1052 scaledPoint:{33.0, -47.0}];
  *(v1038 + 576) = v908;
  *(v1038 + 584) = v909;
  [v1052 scaledPoint:{51.0, -27.0}];
  *(v1038 + 592) = v910;
  *(v1038 + 600) = v911;
  [v1052 scaledPoint:{56.5, -1.0}];
  *(v1038 + 608) = v912;
  *(v1038 + 616) = v913;
  [v1052 scaledPoint:{46.0, 24.5}];
  *(v1038 + 624) = v914;
  *(v1038 + 632) = v915;
  [v1052 scaledPoint:{31.0, 46.0}];
  *(v1038 + 640) = v916;
  *(v1038 + 648) = v917;
  [v1052 scaledPoint:{0.5, 56.5}];
  *(v1038 + 656) = v918;
  *(v1038 + 664) = v919;
  [v1052 scaledPoint:{-27.0, 46.0}];
  *(v1038 + 672) = v920;
  *(v1038 + 680) = v921;
  [v1052 scaledPoint:{-42.5, 24.5}];
  *(v1038 + 688) = v922;
  *(v1038 + 696) = v923;
  [v1052 scaledPoint:{-56.0, -1.0}];
  *(v1038 + 704) = v924;
  *(v1038 + 712) = v925;
  [v1052 scaledPoint:{-49.5, -27.0}];
  *(v1038 + 720) = v926;
  *(v1038 + 728) = v927;
  [v1052 scaledPoint:{-29.0, -47.0}];
  *(v1038 + 736) = v928;
  *(v1038 + 744) = v929;
  [v1052 scaledPoint:{1.0, -57.5}];
  *(v1038 + 752) = v930;
  *(v1038 + 760) = v931;
  [v1052 scaledValue:3 withOverride:55.5 forSizeClass:63.0];
  *(v1038 + 1344) = v932;
  v933 = *(v1038 + 592);
  *(v1038 + 960) = *(v1038 + 576);
  *(v1038 + 976) = v933;
  [v1052 scaledPoint:{56.0, 0.0}];
  *(v1038 + 992) = v934;
  *(v1038 + 1000) = v935;
  v936 = *(v1038 + 64);
  *(v1038 + 1008) = *(v1038 + 48);
  *(v1038 + 1024) = v936;
  [v1052 scaledPoint:{0.5, 61.0}];
  *(v1038 + 1040) = v937;
  *(v1038 + 1048) = v938;
  v939 = *(v1038 + 112);
  *(v1038 + 1056) = *(v1038 + 96);
  *(v1038 + 1072) = v939;
  [v1052 scaledPoint:{-56.0, 0.0}];
  *(v1038 + 1088) = v940;
  *(v1038 + 1096) = v941;
  v942 = *(v1038 + 736);
  *(v1038 + 1104) = *(v1038 + 720);
  *(v1038 + 1120) = v942;
  [v1052 scaledPoint:{0.0, -55.5}];
  *(v1038 + 1136) = v943;
  *(v1038 + 1144) = v944;
  [v1052 scaledPoint:{30.0, -48.5}];
  *(v1038 + 1576) = v945;
  *(v1038 + 1584) = v946;
  [v1052 scaledPoint:{49.5, -27.0}];
  *(v1038 + 1592) = v947;
  *(v1038 + 1600) = v948;
  [v1052 scaledPoint:{58.5, -0.5}];
  *(v1038 + 1608) = v949;
  *(v1038 + 1616) = v950;
  [v1052 scaledPoint:{49.5, 26.5}];
  *(v1038 + 1624) = v951;
  *(v1038 + 1632) = v952;
  [v1052 scaledPoint:{30.0, 47.0}];
  *(v1038 + 1640) = v953;
  *(v1038 + 1648) = v954;
  [v1052 scaledPoint:{0.5, 56.5}];
  *(v1038 + 1656) = v955;
  *(v1038 + 1664) = v956;
  [v1052 scaledPoint:{-30.5, 47.0}];
  *(v1038 + 1672) = v957;
  *(v1038 + 1680) = v958;
  [v1052 scaledPoint:{-49.5, 26.5}];
  *(v1038 + 1688) = v959;
  *(v1038 + 1696) = v960;
  [v1052 scaledPoint:{-57.5, -0.5}];
  *(v1038 + 1704) = v961;
  *(v1038 + 1712) = v962;
  [v1052 scaledPoint:{-49.5, -27.0}];
  *(v1038 + 1720) = v963;
  *(v1038 + 1728) = v964;
  [v1052 scaledPoint:{-30.5, -51.5}];
  *(v1038 + 1736) = v965;
  *(v1038 + 1744) = v966;
  [v1052 scaledPoint:{0.5, -57.5}];
  *(v1038 + 1752) = v967;
  *(v1038 + 1760) = v968;
  [v1052 scaledPoint:{-30.5, -39.0}];
  *(v1038 + 1768) = v969;
  *(v1038 + 1776) = v970;
  [v1052 scaledPoint:{0.5, -41.0}];
  v971 = 0;
  *(v1038 + 1784) = v972;
  *(v1038 + 1792) = v973;
  do
  {
    v974 = *v883;
    v975 = v883[1];
    CLKAddPoints();
    *v883 = v976;
    v883[1] = v977;
    v978 = v883[72];
    v979 = v883[73];
    CLKAddPoints();
    v883[72] = v980;
    v883[73] = v981;
    v982 = v883[120];
    v983 = v883[121];
    CLKAddPoints();
    v883[120] = v984;
    v883[121] = v985;
    v986 = v883[197];
    v987 = v883[198];
    CLKAddPoints();
    v883[197] = v988;
    v883[198] = v989;
    if (v971 >= 0xA)
    {
      v990 = v883[201];
      v991 = v883[202];
      CLKAddPoints();
      v883[201] = v992;
      v883[202] = v993;
    }

    ++v971;
    v883 += 2;
  }

  while (v971 != 12);
  [v1052 scaledSize:{5.0, 19.0}];
  *(v1038 + 4752) = v994;
  *(v1038 + 4760) = v995;
  [v1052 scaledSize:{5.0, 20.5}];
  *(v1038 + 4576) = v996;
  *(v1038 + 4584) = v997;
  [v1052 scaledSize:{5.0, 21.0}];
  *(v1038 + 4592) = v998;
  *(v1038 + 4600) = v999;
  [v1052 scaledSize:{5.0, 19.0}];
  *(v1038 + 4608) = v1000;
  *(v1038 + 4616) = v1001;
  v1002 = *(v1038 + 4592);
  *(v1038 + 4624) = v1002;
  v1003 = *(v1038 + 4576);
  *(v1038 + 4640) = v1003;
  *(v1038 + 4656) = *(v1038 + 4752);
  *(v1038 + 4672) = v1003;
  *(v1038 + 4688) = v1002;
  *(v1038 + 4704) = *(v1038 + 4608);
  *(v1038 + 4720) = v1002;
  *(v1038 + 4736) = v1003;
  [v1052 scaledValue:28.5];
  *(v1038 + 4496) = v1004;
  [v1052 scaledValue:3 withOverride:23.0 forSizeClass:26.0];
  *(v1038 + 4504) = v1005;
  [v1052 scaledValue:24.0];
  *(v1038 + 4512) = v1006;
  [v1052 scaledValue:21.0];
  *(v1038 + 4520) = v1007;
  [v1052 scaledValue:20.0];
  *(v1038 + 4528) = v1008;
  [v1052 scaledValue:19.0];
  *(v1038 + 4536) = v1009;
  *(v1038 + 4488) = 0x3FF0000000000000;
  [v1052 scaledSize:3 withOverride:6.5 forSizeClass:{21.0, 6.5, 23.0}];
  *(v1038 + 4544) = v1010;
  *(v1038 + 4552) = v1011;
  [v1052 scaledSize:3 withOverride:6.5 forSizeClass:{18.0, 6.5, 20.0}];
  *(v1038 + 4560) = v1012;
  *(v1038 + 4568) = v1013;
  [v1052 scaledSize:3 withOverride:5.5 forSizeClass:{19.0, 6.0, 22.0}];
  *(v1038 + 4768) = v1014;
  *(v1038 + 4776) = v1015;
  [v1052 scaledValue:18.0];
  *(v1038 + 4784) = v1016;
  v1017 = (v1038 + 4808);
  v1018 = -60;
  do
  {
    v1054[0] = &off_1EDA8;
    v1054[1] = &off_1EDC0;
    v1055[0] = &off_1F8A8;
    v1055[1] = &off_1F8A8;
    v1019 = [NSDictionary dictionaryWithObjects:v1055 forKeys:v1054 count:2];
    [v1052 scaledValue:v1019 withOverrides:1.5];

    [v1052 scaledValue:8.0];
    if (-858993459 * (v1018 + 60) <= 0x33333333)
    {
      [v1052 scaledValue:10.5];
    }

    NTKScreenRadiusAtAngleWithInset();
    v1021 = v1020;
    NTKScreenRadiusAtAngleWithInset();
    v1017[60] = v1021;
    v1017[120] = v1021 - v1022;
    *v1017++ = ((v1018 + 60) + (v1018 + 60)) * 3.14159265 / 60.0 + -1.57079633;
  }

  while (!__CFADD__(v1018++, 1));
  [v1052 scaledValue:3.0];
  *(v1038 + 6248) = v1024;
  [v1052 scaledValue:3.5];
  *(v1038 + 6256) = v1025;
  [v1052 scaledValue:3 withOverride:3.0 forSizeClass:3.5];
  *(v1038 + 6264) = v1026;
  [v1052 scaledValue:3 withOverride:3.0 forSizeClass:3.5];
  *(v1038 + 6272) = v1027;
  [v1052 scaledValue:3 withOverride:5.0 forSizeClass:6.0];
  *(v1038 + 6280) = v1028;
  [v1052 scaledValue:3 withOverride:7.0 forSizeClass:8.0];
  *(v1038 + 6288) = v1029;
  [v1052 scaledValue:3 withOverride:77.5 forSizeClass:88.0];
  *(v1038 + 4792) = v1030;
  [v1052 scaledValue:3 withOverride:81.0526316 forSizeClass:94.7368421];
  *(v1038 + 4800) = v1031;
  [v1052 scaledValue:2.5];
  *(v1038 + 6328) = v1032;
  [v1052 scaledValue:2.5];
  *(v1038 + 6336) = v1033;
  [v1052 scaledSize:{21.0, 24.0}];
  UISizeRoundToScale();
  *(v1038 + 6296) = v1034;
  *(v1038 + 6304) = v1035;
  [v1052 scaledSize:{19.0, 19.0}];
  UISizeRoundToScale();
  *(v1038 + 6312) = v1036;
  *(v1038 + 6320) = v1037;
}

id sub_BE68(float64x2_t a1, float64_t a2, float64_t a3, float64_t a4)
{
  v19[0] = &off_1EDA8;
  a1.f64[1] = a2;
  __asm { FMOV            V1.2D, #0.5 }

  v14 = _Q1;
  v18 = vmulq_f64(vaddq_f64(a1, xmmword_179B0), _Q1);
  v9 = [NSValue valueWithBytes:&v18 objCType:"{CGPoint=dd}"];
  v19[1] = &off_1EDC0;
  v20[0] = v9;
  v10.f64[0] = a3;
  v10.f64[1] = a4;
  v17 = vmulq_f64(vaddq_f64(v10, xmmword_179C0), v14);
  v11 = [NSValue valueWithBytes:&v17 objCType:"{CGPoint=dd}"];
  v20[1] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];

  return v12;
}

void sub_CF44(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [v5 display];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v9 isEqualToString:NTKComplicationSlotSubdialBottom];

    if (!v7)
    {
      goto LABEL_5;
    }

    [*(a1 + 32) setComplicationColor:*(a1 + 40)];
    v8 = [*(a1 + 32) complicationColor];
    [*(a1 + 32) setInterpolatedComplicationColor:v8];

    [*(a1 + 32) setAlternateComplicationColor:*(a1 + 48)];
    v6 = [v5 display];
    [v6 updateMonochromeColor];
  }

LABEL_5:
}

void sub_D0C8(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [v5 display];
  if ([v6 conformsToProtocol:&OBJC_PROTOCOL___NTKUtilityComplicationView])
  {
    v7 = [v8 isEqualToString:NTKComplicationSlotBezel];

    if (!v7)
    {
      goto LABEL_5;
    }

    v6 = [v5 display];
    [v6 setForegroundColor:*(a1 + 32)];
  }

LABEL_5:
}

void sub_D94C(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (([v8 isEqualToString:NTKComplicationSlotBezel] & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", NTKComplicationSlotTopLeft) & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", NTKComplicationSlotTopRight) & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", NTKComplicationSlotBottomRight) & 1) != 0 || objc_msgSend(v8, "isEqualToString:", NTKComplicationSlotBottomLeft))
  {
    v6 = *(a1 + 32);
  }

  else
  {
    v7 = *(a1 + 40);
  }

  CLKInterpolateBetweenFloatsClipped();
  [v5 setAlpha:?];
}

void sub_EBA8(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = a3;
  v4 = [v11 display];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v6 = [v11 display];
  v7 = v6;
  if (isKindOfClass)
  {
    v8 = *(a1 + 32);
    v9 = [v6 label];
    [v9 setTextColor:v8];
  }

  else
  {
    objc_opt_class();
    v10 = objc_opt_isKindOfClass();

    if ((v10 & 1) == 0)
    {
      goto LABEL_6;
    }

    v7 = [v11 display];
    [v7 setTextColor:*(a1 + 32)];
  }

LABEL_6:
}

void sub_F3A4(void *a1@<X1>, uint64_t a2@<X8>)
{
  v6 = a1;
  os_unfair_lock_lock(&unk_25D48);
  if (qword_25D50)
  {
    v3 = qword_25D50 == v6;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v6 version], v4 != qword_25D58))
  {
    qword_25D50 = v6;
    qword_25D58 = [v6 version];
    sub_F490(v6, v7);
    xmmword_25D10 = v7[0];
    unk_25D20 = v7[1];
    xmmword_25D30 = v7[2];
    qword_25D40 = v8;
  }

  v5 = unk_25D20;
  *a2 = xmmword_25D10;
  *(a2 + 16) = v5;
  *(a2 + 32) = xmmword_25D30;
  *(a2 + 48) = qword_25D40;
  os_unfair_lock_unlock(&unk_25D48);
}

void sub_F490(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v8 = [CLKDeviceMetrics metricsWithDevice:a1 identitySizeClass:2];
  [v8 scaledValue:3 withOverride:135.0 forSizeClass:154.0];
  *a2 = v3;
  [v8 scaledValue:3 withOverride:158.0 forSizeClass:180.0];
  *(a2 + 8) = v4;
  [v8 scaledValue:3 withOverride:162.0 forSizeClass:184.0];
  *(a2 + 16) = v5;
  [v8 scaledValue:3 withOverride:35.5 forSizeClass:38.5];
  *(a2 + 24) = 0;
  *(a2 + 32) = v6;
  [v8 scaledValue:3 withOverride:-61.5 forSizeClass:-67.0];
  *(a2 + 40) = v7;
  *(a2 + 48) = v7 + 10.0;
}

void sub_F5D4(id a1)
{
  qword_25D60 = [NTKFontLoader fontDescriptorForSectName:@"__SFNumeralsB" fromMachO:&dword_0];

  _objc_release_x1();
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