void sub_1634(id a1, NTKFace *a2, unint64_t a3, BOOL *a4)
{
  v5 = a2;
  if (a3 > 2)
  {
    switch(a3)
    {
      case 3uLL:
        v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:13 zOrder:4000];
        v16 = v6;
        v7 = &v16;
        goto LABEL_14;
      case 4uLL:
        v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:5 zOrder:4000];
        v15 = v6;
        v7 = &v15;
        goto LABEL_14;
      case 5uLL:
        v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:5 zOrder:4000];
        v14 = v6;
        v7 = &v14;
        goto LABEL_14;
    }
  }

  else
  {
    switch(a3)
    {
      case 0uLL:
        v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:6 zOrder:4000];
        v19 = v6;
        v7 = &v19;
        v8 = 3;
        v9 = 5;
LABEL_15:
        v10 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:8 zOrder:4000];
        v7[1] = v10;
        v11 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:v9 zOrder:4000];
        v7[2] = v11;
        v12 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:v8 zOrder:4000];
        v7[3] = v12;
        v13 = [NSArray arrayWithObjects:v7 count:4];
        [(NTKFace *)v5 setCurationPlacements:v13];

        break;
      case 1uLL:
        v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:5 zOrder:4000];
        v18 = v6;
        v7 = &v18;
        goto LABEL_14;
      case 2uLL:
        v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:13 zOrder:4000];
        v17 = v6;
        v7 = &v17;
LABEL_14:
        v8 = 6;
        v9 = 3;
        goto LABEL_15;
    }
  }
}

void sub_242C(uint64_t a1, uint64_t a2)
{
  v4 = [NTKFace defaultFaceOfStyle:14 forDevice:*(a1 + 32)];
  if (v4)
  {
    v9 = v4;
    v5 = [NTKZeusAnalogDensityEditOption optionWithDensity:3 forDevice:*(a1 + 32)];
    [v9 selectOption:v5 forCustomEditMode:11 slot:0];

    v6 = [NTKZeusAnalogStyleEditOption optionWithStyle:1 forDevice:*(a1 + 32)];
    [v9 selectOption:v6 forCustomEditMode:13 slot:0];

    v7 = [NTKZeusColorEditOption optionWithColor:a2 forDevice:*(a1 + 32)];
    [v9 selectOption:v7 forCustomEditMode:10 slot:0];

    v8 = [*(a1 + 40) complicationTypesBySlot];
    [v9 _setFaceGalleryComplicationTypesForSlots:v8];

    [*(a1 + 48) addObject:v9];
    v4 = v9;
  }
}

void sub_26B8(uint64_t a1, uint64_t a2)
{
  v4 = [NTKFace defaultFaceOfStyle:14 forDevice:*(a1 + 32)];
  if (v4)
  {
    v9 = v4;
    v5 = [NTKZeusAnalogDensityEditOption optionWithDensity:3 forDevice:*(a1 + 32)];
    [v9 selectOption:v5 forCustomEditMode:11 slot:0];

    v6 = [NTKZeusAnalogStyleEditOption optionWithStyle:1 forDevice:*(a1 + 32)];
    [v9 selectOption:v6 forCustomEditMode:13 slot:0];

    v7 = [NTKZeusColorEditOption optionWithColor:a2 forDevice:*(a1 + 32)];
    [v9 selectOption:v7 forCustomEditMode:10 slot:0];

    v8 = [*(a1 + 40) complicationTypesBySlot];
    [v9 _setFaceGalleryComplicationTypesForSlots:v8];

    [*(a1 + 48) addObject:v9];
    v4 = v9;
  }
}

id *sub_2DAC(id *result, uint64_t a2)
{
  if (a2)
  {
    return [result[4] addObject:a2];
  }

  return result;
}

void sub_3C78(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v3 = [*(a1 + 32) digitsColor];
    [v4 setTextColor:v3];
  }
}

void sub_3CF8(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v3 = [*(a1 + 32) digitsColor];
    [v4 setTextColor:v3];
  }
}

void sub_4080(void *a1@<X1>, void *a2@<X8>)
{
  v5 = a1;
  os_unfair_lock_lock(&unk_58540);
  if (qword_58548)
  {
    v3 = qword_58548 == v5;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v5 version], v4 != qword_58550))
  {
    qword_58548 = v5;
    qword_58550 = [v5 version];
    sub_4158(v5, __src);
    memcpy(&unk_58310, __src, 0x230uLL);
  }

  memcpy(a2, &unk_58310, 0x230uLL);
  os_unfair_lock_unlock(&unk_58540);
}

void sub_4158(void *a1@<X1>, uint64_t a2@<X8>)
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
  *(a2 + 336) = 0u;
  *(a2 + 352) = 0u;
  *(a2 + 368) = 0u;
  v4 = [CLKDeviceMetrics metricsWithDevice:v3 identitySizeClass:2];
  [v4 setScale:6 forSizeClass:1.105];
  [v4 setScale:7 forSizeClass:1.04];
  [v4 setScale:8 forSizeClass:1.1];
  [v4 setScale:9 forSizeClass:1.12];
  v5 = [CLKDeviceMetrics metricsWithDevice:v3 identitySizeClass:2];
  [v5 scaledValue:6 withOverride:29.5 forSizeClass:35.5];
  *(a2 + 480) = v6;
  [v5 scaledValue:6 withOverride:40.0 forSizeClass:48.5];
  *(a2 + 488) = v7;
  *(a2 + 384) = 0u;
  *(a2 + 400) = 0u;
  *(a2 + 416) = 0u;
  *(a2 + 432) = 0u;
  *(a2 + 448) = 0;
  *(a2 + 456) = 0x3FD999999999999ALL;
  *(a2 + 464) = xmmword_374C0;
  *(a2 + 496) = xmmword_374D0;
  *(a2 + 512) = 0x3FE199999999999ALL;
  v60[0] = &off_46E60;
  v60[1] = &off_46E78;
  v61[0] = &off_48070;
  v61[1] = &off_48080;
  v60[2] = &off_46E90;
  v61[2] = &off_48090;
  v8 = [NSDictionary dictionaryWithObjects:v61 forKeys:v60 count:3];
  [v5 scaledValue:v8 withOverrides:0.9];
  *(a2 + 544) = v9;

  v58[0] = &off_46E60;
  v58[1] = &off_46E78;
  v59[0] = &off_48070;
  v59[1] = &off_48080;
  v58[2] = &off_46E90;
  v59[2] = &off_480A0;
  v10 = [NSDictionary dictionaryWithObjects:v59 forKeys:v58 count:3];
  [v5 scaledValue:v10 withOverrides:0.9];
  *(a2 + 552) = v11;

  v56[0] = &off_46E60;
  v56[1] = &off_46E78;
  v57[0] = &off_480B0;
  v57[1] = &off_480C0;
  v56[2] = &off_46E90;
  v57[2] = &off_480C0;
  v12 = [NSDictionary dictionaryWithObjects:v57 forKeys:v56 count:3];
  [v5 scaledValue:v12 withOverrides:-1.5];
  *(a2 + 536) = v13;

  v54[0] = &off_46E60;
  v54[1] = &off_46E78;
  v55[0] = &off_46EA8;
  v55[1] = &off_46EC0;
  v54[2] = &off_46E90;
  v55[2] = &off_46EC0;
  v14 = [NSDictionary dictionaryWithObjects:v55 forKeys:v54 count:3];
  [v5 scaledValue:v14 withOverrides:0.0];
  *(a2 + 528) = v15;

  v52[0] = &off_46E60;
  v52[1] = &off_46E78;
  v53[0] = &off_48080;
  v53[1] = &off_48070;
  v52[2] = &off_46E90;
  v53[2] = &off_48070;
  v16 = [NSDictionary dictionaryWithObjects:v53 forKeys:v52 count:3];
  v40 = v5;
  [v5 scaledValue:v16 withOverrides:0.4];
  v41 = a2;
  *(a2 + 520) = v17;

  [v3 screenBounds];
  [v3 screenBounds];
  for (i = 0; i != 12; ++i)
  {
    v50[0] = &off_46E60;
    v47 = xmmword_37660[i];
    v19 = [NSValue valueWithBytes:&v47 objCType:"{CGPoint=dd}"];
    v51[0] = v19;
    v50[1] = &off_46E78;
    v46 = xmmword_37720[i];
    v20 = [NSValue valueWithBytes:&v46 objCType:"{CGPoint=dd}"];
    v51[1] = v20;
    v50[2] = &off_46E90;
    v45 = xmmword_375A0[i];
    v21 = [NSValue valueWithBytes:&v45 objCType:"{CGPoint=dd}"];
    v51[2] = v21;
    v22 = [NSDictionary dictionaryWithObjects:v51 forKeys:v50 count:3];
    [v4 scaledPoint:v22 withOverrides:{*(&unk_374E0 + i * 16), *(&unk_374E0 + i * 16 + 8)}];
    v24 = v23;
    v26 = v25;

    [v4 scaledPoint:{v24, v26}];
    v27 = (v41 + i * 16);
    CLKAddPoints();
    *v27 = v28;
    v27[1] = v29;
    v48[0] = &off_46E60;
    v44 = xmmword_37960[i];
    v30 = [NSValue valueWithBytes:&v44 objCType:"{CGPoint=dd}"];
    v49[0] = v30;
    v48[1] = &off_46E78;
    v43 = xmmword_37A20[i];
    v31 = [NSValue valueWithBytes:&v43 objCType:"{CGPoint=dd}"];
    v49[1] = v31;
    v48[2] = &off_46E90;
    v42 = xmmword_378A0[i];
    v32 = [NSValue valueWithBytes:&v42 objCType:"{CGPoint=dd}"];
    v49[2] = v32;
    v33 = [NSDictionary dictionaryWithObjects:v49 forKeys:v48 count:3];
    [v4 scaledPoint:v33 withOverrides:{*(&unk_377E0 + i * 16), *(&unk_377E0 + i * 16 + 8)}];
    v35 = v34;
    v37 = v36;

    [v4 scaledPoint:{v35, v37}];
    CLKAddPoints();
    v27[24] = v38;
    v27[25] = v39;
  }
}

void sub_573C(id a1)
{
  v3[0] = &off_46FB0;
  v3[1] = &off_46FC8;
  v4[0] = @"white";
  v4[1] = @"black";
  v3[2] = &off_46FE0;
  v3[3] = &off_46FF8;
  v4[2] = @"indigo";
  v4[3] = @"orange";
  v3[4] = &off_47010;
  v3[5] = &off_47028;
  v4[4] = @"yellow";
  v4[5] = @"green";
  v3[6] = &off_47040;
  v3[7] = &off_47058;
  v4[6] = @"blue";
  v4[7] = @"purple";
  v3[8] = &off_47070;
  v3[9] = &off_47088;
  v4[8] = @"roseMexico";
  v4[9] = @"red";
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:10];
  v2 = qword_58558;
  qword_58558 = v1;
}

void sub_5934(void *a1@<X1>, uint64_t a2@<X8>)
{
  v7 = a1;
  os_unfair_lock_lock(&unk_585B0);
  if (qword_585B8)
  {
    v3 = qword_585B8 == v7;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v7 version], v4 != qword_585C0))
  {
    qword_585B8 = v7;
    qword_585C0 = [v7 version];
    sub_5A24(v7, v8);
    xmmword_58588 = v8[2];
    unk_58598 = v8[3];
    qword_585A8 = v9;
    xmmword_58568 = v8[0];
    unk_58578 = v8[1];
  }

  v5 = unk_58598;
  *(a2 + 32) = xmmword_58588;
  *(a2 + 48) = v5;
  *(a2 + 64) = qword_585A8;
  v6 = unk_58578;
  *a2 = xmmword_58568;
  *(a2 + 16) = v6;
  os_unfair_lock_unlock(&unk_585B0);
}

void sub_5A24(uint64_t a1@<X1>, void *a2@<X8>)
{
  v3 = [CLKDeviceMetrics metricsWithDevice:a1 identitySizeClass:2];
  v13 = &off_470A0;
  v14 = &off_480D0;
  v4 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  [v3 scaledValue:v4 withOverrides:41.5];
  *a2 = v5;

  [v3 scaledSize:3 withOverride:53.5 forSizeClass:{10.5, 62.0, 12.0}];
  a2[2] = v6;
  a2[3] = v7;
  [v3 scaledSize:3 withOverride:36.0 forSizeClass:{7.5, 41.5, 8.0}];
  a2[4] = v8;
  a2[5] = v9;
  a2[1] = 0x4004000000000000;
  [v3 scaledSize:3 withOverride:58.0 forSizeClass:{57.5, 58.0, 60.0}];
  a2[6] = v10;
  a2[7] = v11;
  [v3 scaledValue:3 withOverride:46.5 forSizeClass:53.0];
  a2[8] = v12;
}

id sub_72AC(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_585D8);
  if (qword_585E0)
  {
    v3 = qword_585E0 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != qword_585E8))
  {
    qword_585E0 = v2;
    qword_585E8 = [v2 version];
    v5 = qword_585D0;
    qword_585D0 = &off_47E90;
  }

  v6 = qword_585D0;
  os_unfair_lock_unlock(&unk_585D8);

  return v6;
}

void sub_7460(id a1)
{
  v3[0] = &off_470D0;
  v3[1] = &off_470E8;
  v4[0] = NTKFaceBundleStyle1;
  v4[1] = NTKFaceBundleStyle2;
  v3[2] = &off_47100;
  v3[3] = &off_470B8;
  v4[2] = NTKFaceBundleStyle3;
  v4[3] = NTKFaceBundleStyle4;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:4];
  v2 = qword_585F0;
  qword_585F0 = v1;
}

id sub_7534(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_58608);
  if (qword_58610)
  {
    v3 = qword_58610 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != qword_58618))
  {
    qword_58610 = v2;
    qword_58618 = [v2 version];
    v9 = 3;
    v5 = [NSIndexSet indexSetWithIndexes:&v9 count:1];
    v6 = qword_58600;
    qword_58600 = v5;
  }

  v7 = qword_58600;
  os_unfair_lock_unlock(&unk_58608);

  return v7;
}

id sub_764C(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_58628);
  if (qword_58630)
  {
    v3 = qword_58630 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != qword_58638))
  {
    qword_58630 = v2;
    qword_58638 = [v2 version];
    v5 = qword_58620;
    qword_58620 = &off_47EA8;
  }

  v6 = qword_58620;
  os_unfair_lock_unlock(&unk_58628);

  return v6;
}

id sub_7A8C()
{
  if (qword_58678 != -1)
  {
    sub_2ED74();
  }

  v1 = qword_58670;

  return v1;
}

id sub_7B54(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(&unk_58648);
  if (qword_58650)
  {
    v4 = qword_58650 == v3;
  }

  else
  {
    v4 = 0;
  }

  if (!v4 || (v5 = [v3 version], v5 != qword_58658))
  {
    qword_58650 = v3;
    qword_58658 = [v3 version];
    v6 = [*(a1 + 32) __orderedValuesForDevice:v3];
    v7 = qword_58640;
    qword_58640 = v6;
  }

  v8 = qword_58640;
  os_unfair_lock_unlock(&unk_58648);

  return v8;
}

void sub_7EA0(id a1)
{
  v3[0] = &off_47130;
  v3[1] = &off_47118;
  v4[0] = NTKFaceBundleColorExplorer;
  v4[1] = NTKFaceBundleColorZeus;
  v3[2] = &off_47190;
  v3[3] = &off_47268;
  v4[2] = NTKFaceBundleColorWhite;
  v4[3] = @"sakura";
  v3[4] = &off_47280;
  v3[5] = &off_472B0;
  v4[4] = @"bleu";
  v4[5] = @"feu";
  v3[6] = &off_472C8;
  v3[7] = &off_472E0;
  v4[6] = @"rose";
  v4[7] = @"ambre";
  v3[8] = &off_47220;
  v3[9] = &off_47238;
  v4[8] = @"encre";
  v4[9] = @"etain";
  v3[10] = &off_47250;
  v3[11] = &off_47148;
  v4[10] = @"brique";
  v4[11] = @"noir";
  v3[12] = &off_47298;
  v3[13] = &off_47160;
  v4[12] = @"noir dual tone";
  v4[13] = @"blanc";
  v3[14] = &off_47208;
  v3[15] = &off_471A8;
  v4[14] = @"rouge piment";
  v4[15] = @"jaune ambre";
  v3[16] = &off_471C0;
  v3[17] = &off_471D8;
  v4[16] = @"bambou";
  v4[17] = @"navy";
  v3[18] = &off_471F0;
  v3[19] = &off_47178;
  v4[18] = @"anemone";
  v4[19] = @"argent";
  v3[20] = &off_472F8;
  v4[20] = @"rose-mexico";
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:21];
  v2 = qword_58660;
  qword_58660 = v1;
}

void sub_8520(id a1)
{
  v3 = xmmword_37B70;
  v4 = 3002;
  v1 = [NSIndexSet indexSetWithIndexes:&v3 count:3];
  v2 = qword_58670;
  qword_58670 = v1;
}

void sub_85A8(id a1)
{
  v3 = xmmword_37B50;
  v1 = [NSIndexSet indexSetWithIndexes:&v3 count:2];
  v2 = qword_58680;
  qword_58680 = v1;
}

void sub_8628(id a1)
{
  v3[0] = xmmword_37B88;
  v3[1] = unk_37B98;
  v1 = [NSIndexSet indexSetWithIndexes:v3 count:4];
  v2 = qword_58690;
  qword_58690 = v1;
}

void sub_86A8(id a1)
{
  v3 = xmmword_37B60;
  v1 = [NSIndexSet indexSetWithIndexes:&v3 count:2];
  v2 = qword_586A0;
  qword_586A0 = v1;
}

void sub_8728(id a1)
{
  v3[0] = xmmword_37B20;
  v3[1] = xmmword_37B30;
  v3[2] = xmmword_37B40;
  v1 = [NSIndexSet indexSetWithIndexes:v3 count:6];
  v2 = qword_586B0;
  qword_586B0 = v1;
}

void sub_87B8(id a1)
{
  v3 = 3018;
  v1 = [NSIndexSet indexSetWithIndexes:&v3 count:1];
  v2 = qword_586C0;
  qword_586C0 = v1;
}

void _NTKZeusApplyLegibilityToView(void *a1)
{
  v1 = a1;
  v4 = [v1 layer];
  v2 = +[UIColor blackColor];
  [v4 setShadowColor:{objc_msgSend(v2, "CGColor")}];

  [v4 setShadowOffset:{0.0, 2.0}];
  LODWORD(v3) = 1.0;
  [v4 setShadowOpacity:v3];
  [v4 setShadowRadius:3.0];
  [v1 setClipsToBounds:0];
}

void sub_AF20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_AF3C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setNeedsLayout];
}

void sub_C038(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v11 = a1;
  os_unfair_lock_lock(&unk_587A0);
  if (qword_587A8)
  {
    v3 = qword_587A8 == v11;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v11 version], v4 != qword_587B0))
  {
    qword_587A8 = v11;
    qword_587B0 = [v11 version];
    sub_C168(v11, v12);
    xmmword_58770 = v12[10];
    unk_58780 = v12[11];
    xmmword_58790 = v12[12];
    xmmword_58730 = v12[6];
    unk_58740 = v12[7];
    xmmword_58750 = v12[8];
    unk_58760 = v12[9];
    xmmword_586F0 = v12[2];
    unk_58700 = v12[3];
    xmmword_58710 = v12[4];
    unk_58720 = v12[5];
    xmmword_586D0 = v12[0];
    unk_586E0 = v12[1];
  }

  v5 = unk_58780;
  a2[10] = xmmword_58770;
  a2[11] = v5;
  a2[12] = xmmword_58790;
  v6 = unk_58740;
  a2[6] = xmmword_58730;
  a2[7] = v6;
  v7 = unk_58760;
  a2[8] = xmmword_58750;
  a2[9] = v7;
  v8 = unk_58700;
  a2[2] = xmmword_586F0;
  a2[3] = v8;
  v9 = unk_58720;
  a2[4] = xmmword_58710;
  a2[5] = v9;
  v10 = unk_586E0;
  *a2 = xmmword_586D0;
  a2[1] = v10;
  os_unfair_lock_unlock(&unk_587A0);
}

void sub_C168(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 200) = 0;
  *(a2 + 184) = 0u;
  *(a2 + 168) = 0u;
  *(a2 + 152) = 0u;
  *(a2 + 136) = 0u;
  *(a2 + 120) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 56) = 0u;
  v3 = [CLKDeviceMetrics metricsWithDevice:a1 identitySizeClass:2];
  v53[0] = &off_47310;
  v53[1] = &off_47328;
  v54[0] = &off_480E0;
  v54[1] = &off_480E0;
  v53[2] = &off_47340;
  v54[2] = &off_480F0;
  v4 = [NSDictionary dictionaryWithObjects:v54 forKeys:v53 count:3];
  [v3 scaledValue:v4 withOverrides:3.5];
  *a2 = v5;

  v51[0] = &off_47310;
  v51[1] = &off_47328;
  v52[0] = &off_480E0;
  v52[1] = &off_480E0;
  v51[2] = &off_47340;
  v52[2] = &off_48100;
  v6 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:3];
  [v3 scaledValue:v6 withOverrides:5.0];
  *(a2 + 8) = v7;

  v49[0] = &off_47310;
  v49[1] = &off_47328;
  v50[0] = &off_480E0;
  v50[1] = &off_480E0;
  v49[2] = &off_47340;
  v50[2] = &off_48100;
  v8 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:3];
  [v3 scaledValue:v8 withOverrides:5.0];
  *(a2 + 16) = v9;

  v47[0] = &off_47328;
  v47[1] = &off_47340;
  v48[0] = &off_480E0;
  v48[1] = &off_48110;
  v10 = [NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:2];
  [v3 scaledValue:v10 withOverrides:3.0];
  *(a2 + 24) = v11;

  v45[0] = &off_47310;
  v45[1] = &off_47340;
  v46[0] = &off_480F0;
  v46[1] = &off_480F0;
  v12 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:2];
  [v3 scaledValue:v12 withOverrides:3.5];
  *(a2 + 32) = v13;

  *(a2 + 40) = 0x3FF0000000000000;
  v43[0] = &off_47358;
  v43[1] = &off_47370;
  v44[0] = &off_48120;
  v44[1] = &off_48130;
  v44[2] = &off_48130;
  v44[3] = &off_48140;
  v43[2] = &off_47388;
  v43[3] = &off_473A0;
  v43[4] = &off_473B8;
  v43[5] = &off_473D0;
  v44[4] = &off_48150;
  v44[5] = &off_48130;
  v14 = [NSDictionary dictionaryWithObjects:v44 forKeys:v43 count:6];
  [v3 scaledValue:v14 withOverrides:17.0];
  *(a2 + 48) = v15;

  v41[0] = &off_47358;
  v41[1] = &off_47370;
  v42[0] = &off_48160;
  v42[1] = &off_48170;
  v41[2] = &off_47388;
  v41[3] = &off_473A0;
  v42[2] = &off_48170;
  v42[3] = &off_48180;
  v41[4] = &off_473B8;
  v41[5] = &off_473D0;
  v42[4] = &off_48190;
  v42[5] = &off_48170;
  v16 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:6];
  [v3 scaledValue:v16 withOverrides:22.5];
  *(a2 + 56) = v17;

  v39[0] = &off_47358;
  v39[1] = &off_47370;
  v40[0] = &off_481A0;
  v40[1] = &off_481B0;
  v40[2] = &off_481B0;
  v40[3] = &off_481C0;
  v39[2] = &off_47388;
  v39[3] = &off_473A0;
  v39[4] = &off_473B8;
  v39[5] = &off_473D0;
  v40[4] = &off_481D0;
  v40[5] = &off_481B0;
  v18 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:6];
  [v3 scaledValue:v18 withOverrides:16.0];
  *(a2 + 64) = v19;

  v37[0] = &off_47358;
  v37[1] = &off_47370;
  v38[0] = &off_481E0;
  v38[1] = &off_481F0;
  v37[2] = &off_47388;
  v37[3] = &off_473A0;
  v38[2] = &off_481F0;
  v38[3] = &off_481D0;
  v37[4] = &off_473B8;
  v37[5] = &off_473D0;
  v38[4] = &off_48180;
  v38[5] = &off_481F0;
  v20 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:6];
  [v3 scaledValue:v20 withOverrides:19.5];
  *(a2 + 72) = v21;

  [v3 scaledSize:{2.0, 3.0}];
  *(a2 + 80) = v22;
  *(a2 + 88) = v23;
  [v3 scaledSize:{2.5, 3.0}];
  *(a2 + 96) = v24;
  *(a2 + 104) = v25;
  [v3 scaledSize:{3.5, 3.0}];
  *(a2 + 112) = v26;
  *(a2 + 120) = v27;
  [v3 scaledSize:{4.0, 3.5}];
  *(a2 + 128) = v28;
  *(a2 + 136) = v29;
  [v3 scaledValue:24.0];
  *(a2 + 144) = v30;
  [v3 scaledSize:{6.5, 7.0}];
  *(a2 + 152) = v31;
  *(a2 + 160) = v32;
  [v3 scaledSize:{9.0, 7.5}];
  *(a2 + 168) = v33;
  *(a2 + 176) = v34;
  [v3 scaledValue:3.0];
  *(a2 + 184) = v35;
  [v3 scaledValue:3 withOverride:13.5 forSizeClass:13.5];
  *(a2 + 192) = v36;
  *(a2 + 200) = 0x4020000000000000;
}

void sub_CC48(id a1, NTKFace *a2, unint64_t a3, BOOL *a4)
{
  v5 = a2;
  if (a3)
  {
    v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:6 zOrder:4000];
    v12 = v6;
    v7 = &v12;
  }

  else
  {
    v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:6 zOrder:8000];
    v13 = v6;
    v7 = &v13;
  }

  v8 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:15 zOrder:4000];
  v7[1] = v8;
  v9 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:13 zOrder:4000];
  v7[2] = v9;
  v10 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
  v7[3] = v10;
  v11 = [NSArray arrayWithObjects:v7 count:4];
  [(NTKFace *)v5 setCurationPlacements:v11];
}

double sub_D6FC(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_587C8);
  if (qword_587D0)
  {
    v3 = qword_587D0 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_587D8))
  {
    v5 = qword_587B8;
  }

  else
  {
    qword_587D0 = v2;
    qword_587D8 = [v2 version];
    v5 = sub_D7C4(qword_587D8, v2);
    qword_587B8 = v5;
    qword_587C0 = v6;
  }

  os_unfair_lock_unlock(&unk_587C8);

  return *&v5;
}

double sub_D7C4(uint64_t a1, uint64_t a2)
{
  v2 = [CLKDeviceMetrics metricsWithDevice:a2 identitySizeClass:2];
  [v2 scaledValue:5.0];
  v4 = v3;
  v7[0] = &off_47448;
  v7[1] = &off_47460;
  v8[0] = &off_48200;
  v8[1] = &off_48210;
  v7[2] = &off_47478;
  v8[2] = &off_48220;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:3];
  [v2 scaledValue:v5 withOverrides:17.5];

  return v4;
}

void sub_DBA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_DBC0(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[6] == 0;
    [WeakRetained setLocation:v7];
    [v5 _updateDisplayForced:v6];
  }
}

void sub_E60C(id a1, NTKComplicationDisplayWrapperView *a2)
{
  v2 = [(NTKComplicationDisplayWrapperView *)a2 display];
  [v2 setStopwatchState:0 elapsedTime:1 shouldPauseTextCountdown:0 timeTravelDate:0.0];
}

void sub_EFA4(id a1)
{
  qword_587E0 = [NTKFontLoader fontDescriptorForSectName:@"__ClipperFont" fromMachO:&dword_0];

  _objc_release_x1();
}

void sub_F038(id a1)
{
  qword_587F0 = [NTKFontLoader fontDescriptorForSectName:@"__CapeCodFont" fromMachO:&dword_0];

  _objc_release_x1();
}

void sub_F0CC(id a1)
{
  qword_58800 = [NTKFontLoader fontDescriptorForSectName:@"__EspaceFont" fromMachO:&dword_0];

  _objc_release_x1();
}

void sub_F160(id a1)
{
  qword_58810 = [NTKFontLoader fontDescriptorForSectName:@"__CarrickFont" fromMachO:&dword_0];

  _objc_release_x1();
}

void sub_F2B8(id a1)
{
  qword_58820 = [NTKFontLoader fontDescriptorForSectName:@"__InlineFont" fromMachO:&dword_0];

  _objc_release_x1();
}

void sub_FCD0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (*(a1 + 32) != v4 && *(a1 + 40) != v4)
  {
    v5 = v4;
    [v4 setOpacity:0.0];
    v4 = v5;
  }
}

void sub_FDEC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = a3;
  CGAffineTransformMakeRotation(&v6, v3);
  v5 = v6;
  [v4 setAffineTransform:&v5];
}

void sub_10174(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  switch(a3)
  {
    case 2:
      v16[0] = NTKComplicationSlotBottomCenter;
      v10 = +[NTKComplication nullComplication];
      v17[0] = v10;
      v16[1] = NTKComplicationSlotDate;
      v11 = [NTKDateComplication complicationWithDateStyle:4];
      v17[1] = v11;
      v12 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];
      [v5 setComplicationsForSlots:v12];

      v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:5 zOrder:4000];
      v15[0] = v6;
      v7 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:8 zOrder:4000];
      v15[1] = v7;
      v9 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:6 zOrder:4000];
      v15[2] = v9;
      v13 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
      v15[3] = v13;
      v14 = [NSArray arrayWithObjects:v15 count:4];
      [v5 setCurationPlacements:v14];

      goto LABEL_8;
    case 1:
      v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:6 zOrder:4000];
      v18[0] = v6;
      v7 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
      v18[1] = v7;
      v8 = v18;
      goto LABEL_6;
    case 0:
      v6 = +[NTKFaceCurationPlacementValue placementWithWatchOS12Group:zOrder:](NTKFaceCurationPlacementValue, "placementWithWatchOS12Group:zOrder:", 6, [*(a1 + 32) _hermesGroupZOrderForDevice:*(a1 + 40)]);
      v19[0] = v6;
      v7 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
      v19[1] = v7;
      v8 = v19;
LABEL_6:
      v9 = [NSArray arrayWithObjects:v8 count:2];
      [v5 setCurationPlacements:v9];
LABEL_8:

      break;
  }
}

double sub_10980(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_58838);
  if (qword_58840)
  {
    v3 = qword_58840 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_58848))
  {
    v5 = qword_58830;
  }

  else
  {
    qword_58840 = v2;
    qword_58848 = [v2 version];
    v5 = sub_10A30(qword_58848, v2);
    qword_58830 = v5;
  }

  os_unfair_lock_unlock(&unk_58838);

  return *&v5;
}

double sub_10A30(uint64_t a1, uint64_t a2)
{
  v2 = [CLKDeviceMetrics metricsWithDevice:a2 identitySizeClass:2];
  [v2 scaledValue:3 withOverride:3.5 forSizeClass:3.5];
  v4 = v3;

  return v4;
}

void sub_10A8C(id a1)
{
  v1 = +[NSNull null];
  v4[0] = @"backgroundColor";
  v4[1] = @"borderColor";
  v5[0] = v1;
  v5[1] = v1;
  v4[2] = @"borderWidth";
  v4[3] = @"cornerCurve";
  v5[2] = v1;
  v5[3] = v1;
  v4[4] = @"cornerRadius";
  v4[5] = @"affineTransform";
  v5[4] = v1;
  v5[5] = v1;
  v4[6] = @"transform";
  v4[7] = @"bounds";
  v5[6] = v1;
  v5[7] = v1;
  v4[8] = @"position";
  v4[9] = @"opacity";
  v5[8] = v1;
  v5[9] = v1;
  v4[10] = @"shadowOpacity";
  v5[10] = v1;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:11];
  v3 = qword_58850;
  qword_58850 = v2;
}

id sub_11BC0()
{
  if (qword_58920 != -1)
  {
    sub_2EE28();
  }

  v1 = qword_58918;

  return v1;
}

id sub_1237C(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setDefaultLayoutRule:*(a1 + 40) forState:a2];
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);

  return [v4 setDefaultLayoutRule:v5 forState:a2];
}

long double _shapeNoirAlphaTransition(long double result)
{
  if (NTKEditModeDimmedAlpha <= result)
  {
    return pow((result - NTKEditModeDimmedAlpha) / 0.8, 3.0) * 0.8 + 0.2;
  }

  return result;
}

void sub_14868(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 layer];
  [v5 renderInContext:{objc_msgSend(v4, "CGContext")}];

  v7 = [*(a1 + 40) layer];
  v6 = [v4 CGContext];

  [v7 renderInContext:v6];
}

void sub_14A28(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    [v2 faceViewDidChangeWantsStatusBarIconShadow];

    WeakRetained = v3;
  }
}

void sub_14DA4(void *a1@<X1>, uint64_t a2@<X8>)
{
  v9 = a1;
  os_unfair_lock_lock(&unk_58900);
  if (qword_58908)
  {
    v3 = qword_58908 == v9;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v9 version], v4 != qword_58910))
  {
    qword_58908 = v9;
    qword_58910 = [v9 version];
    sub_14ECC(v9, v10);
    xmmword_588C8 = v10[6];
    unk_588D8 = v10[7];
    xmmword_588E8 = v10[8];
    qword_588F8 = v11;
    xmmword_58888 = v10[2];
    unk_58898 = v10[3];
    xmmword_588A8 = v10[4];
    unk_588B8 = v10[5];
    xmmword_58868 = v10[0];
    unk_58878 = v10[1];
  }

  v5 = unk_588D8;
  *(a2 + 96) = xmmword_588C8;
  *(a2 + 112) = v5;
  *(a2 + 128) = xmmword_588E8;
  *(a2 + 144) = qword_588F8;
  v6 = unk_58898;
  *(a2 + 32) = xmmword_58888;
  *(a2 + 48) = v6;
  v7 = unk_588B8;
  *(a2 + 64) = xmmword_588A8;
  *(a2 + 80) = v7;
  v8 = unk_58878;
  *a2 = xmmword_58868;
  *(a2 + 16) = v8;
  os_unfair_lock_unlock(&unk_58900);
}

void sub_14ECC(uint64_t a1@<X1>, void *a2@<X8>)
{
  v3 = [CLKDeviceMetrics metricsWithDevice:a1 identitySizeClass:2];
  [v3 setScale:3 forSizeClass:1.13580247];
  v21[0] = &off_47580;
  v21[1] = &off_47598;
  v22[0] = &off_48230;
  v22[1] = &off_48240;
  v4 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];
  [v3 scaledValue:v4 withOverrides:117.5];
  v6 = v5;

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0x4055000000000000;
  a2[3] = v6;
  [v3 scaledSize:{162.0, 197.0}];
  a2[4] = v7;
  a2[5] = v8;
  [v3 scaledValue:6 withOverride:-28.5 forSizeClass:-35.0];
  a2[6] = v9;
  [v3 scaledValue:36.0];
  a2[9] = v10;
  [v3 scaledValue:35.5];
  a2[10] = v11;
  [v3 scaledValue:34.5];
  a2[11] = v12;
  [v3 scaledValue:36.0];
  a2[12] = v13;
  [v3 scaledSize:{46.5, 8.5}];
  a2[13] = v14;
  a2[14] = v15;
  [v3 scaledSize:{31.0, 6.0}];
  a2[15] = v16;
  a2[16] = v17;
  [v3 scaledValue:6 withOverride:-47.0 forSizeClass:-58.0];
  a2[17] = v18;
  a2[18] = 0x4004000000000000;
  [v3 setRoundingBehavior:2];
  [v3 scaledSize:{58.0, 57.5}];
  a2[7] = v19;
  a2[8] = v20;
}

void sub_150DC(id a1)
{
  v1 = +[NSNull null];
  v4[0] = @"transform";
  v4[1] = @"borderColor";
  v5[0] = v1;
  v5[1] = v1;
  v4[2] = @"borderWidth";
  v4[3] = @"backgroundColor";
  v5[2] = v1;
  v5[3] = v1;
  v4[4] = @"opacity";
  v4[5] = @"cornerRadius";
  v5[4] = v1;
  v5[5] = v1;
  v4[6] = @"compositingFilter";
  v5[6] = v1;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:7];
  v3 = qword_58918;
  qword_58918 = v2;
}

void sub_15688(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a2;
    v5 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:6 zOrder:4000];
    v12 = v5;
    v6 = &v12;
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = a2;
    v5 = +[NTKFaceCurationPlacementValue placementWithWatchOS12Group:zOrder:](NTKFaceCurationPlacementValue, "placementWithWatchOS12Group:zOrder:", 6, [v7 _hermesGroupZOrderForDevice:v8]);
    v13 = v5;
    v6 = &v13;
  }

  v10 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
  v6[1] = v10;
  v11 = [NSArray arrayWithObjects:v6 count:2];
  [a2 setCurationPlacements:v11];
}

id sub_1607C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 format];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [*(a1 + 32) background];
  [v13 setFill];

  [v3 fillRect:{v6, v8, v10, v12}];
  v14 = [*(a1 + 32) numbers];
  [v14 set];

  v15 = *(a1 + 40);

  return [v15 drawInRect:{v6, v8, v10, v12}];
}

void sub_16240(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v6 = a1;
  os_unfair_lock_lock(&unk_58958);
  if (qword_58960)
  {
    v3 = qword_58960 == v6;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v6 version], v4 != qword_58968))
  {
    qword_58960 = v6;
    qword_58968 = [v6 version];
    sub_16318(v6, v7);
    xmmword_58928 = v7[0];
    unk_58938 = v7[1];
    xmmword_58948 = v7[2];
  }

  v5 = unk_58938;
  *a2 = xmmword_58928;
  a2[1] = v5;
  a2[2] = xmmword_58948;
  os_unfair_lock_unlock(&unk_58958);
}

void sub_16318(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  v3 = [CLKDeviceMetrics metricsWithDevice:a1 identitySizeClass:2];
  CLKDegreesToRadians();
  v5 = v4;
  [v3 scaledSize:{72.25696, 48.49784}];
  v7 = v6;
  v9 = v8;
  [v3 sizeCompact:CGSizeZero.width regular:CGSizeZero.height luxoCompact:CGSizeZero.width luxoRegular:CGSizeZero.height aloeCompact:-1.5 aloeRegular:{-23.0, -0.85, -23.5, 0xBFEB333333333333, 0xC036CCCCCCCCCCCDLL, 0xBFEB333333333333, 0xC039333333333333}];
  v11 = v10;
  v13 = v12;
  memset(&v18, 0, sizeof(v18));
  CGAffineTransformMakeTranslation(&v18, v7, v9);
  v16 = v18;
  CGAffineTransformRotate(&v17, &v16, v5);
  v18 = v17;
  v16 = v17;
  CGAffineTransformScale(&v17, &v16, 1.25, 1.25);
  v18 = v17;
  v16 = v17;
  CGAffineTransformTranslate(&v17, &v16, v11, v13);
  v15 = *&v17.c;
  v14 = *&v17.tx;
  v18 = v17;
  *a2 = *&v17.a;
  a2[1] = v15;
  a2[2] = v14;
}

id sub_16AD8()
{
  if (qword_589B8 != -1)
  {
    sub_2EE3C();
  }

  v1 = qword_589B0;

  return v1;
}

void sub_16F44(void *a1@<X1>, uint64_t a2@<X8>)
{
  v6 = a1;
  os_unfair_lock_lock(&unk_58998);
  if (qword_589A0)
  {
    v3 = qword_589A0 == v6;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v6 version], v4 != qword_589A8))
  {
    qword_589A0 = v6;
    qword_589A8 = [v6 version];
    sub_17020(v6, v7);
    xmmword_58970 = v7[0];
    unk_58980 = v7[1];
    qword_58990 = v8;
  }

  v5 = unk_58980;
  *a2 = xmmword_58970;
  *(a2 + 16) = v5;
  *(a2 + 32) = qword_58990;
  os_unfair_lock_unlock(&unk_58998);
}

void sub_17020(uint64_t a1@<X1>, void *a2@<X8>)
{
  v3 = [CLKDeviceMetrics metricsWithDevice:a1 identitySizeClass:2];
  [v3 scaledValue:3 withOverride:27.5 forSizeClass:31.0];
  *a2 = v4;
  v8[0] = &off_475E0;
  v8[1] = &off_475F8;
  v9[0] = &off_48250;
  v9[1] = &off_47610;
  v8[2] = &off_47628;
  v9[2] = &off_47640;
  v5 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:3];
  [v3 scaledValue:v5 withOverrides:160.0];
  v7 = v6;

  a2[1] = 0;
  a2[2] = 0;
  a2[3] = v7;
  a2[4] = v7;
}

void sub_17140(id a1)
{
  v1 = +[NSNull null];
  v4[0] = @"backgroundColor";
  v4[1] = @"borderColor";
  v5[0] = v1;
  v5[1] = v1;
  v4[2] = @"borderWidth";
  v4[3] = @"cornerCurve";
  v5[2] = v1;
  v5[3] = v1;
  v4[4] = @"cornerRadius";
  v4[5] = @"affineTransform";
  v5[4] = v1;
  v5[5] = v1;
  v4[6] = @"transform";
  v4[7] = @"bounds";
  v5[6] = v1;
  v5[7] = v1;
  v4[8] = @"position";
  v4[9] = @"opacity";
  v5[8] = v1;
  v5[9] = v1;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:10];
  v3 = qword_589B0;
  qword_589B0 = v2;
}

void sub_18404(id a1, NSString *a2, NTKComplicationDisplayWrapperView *a3)
{
  v3 = [(NTKComplicationDisplayWrapperView *)a3 display];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 transitionToMonochromeWithFraction:1.0];
  }
}

void sub_18A3C(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = [v5 display];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v5 display];
    v8 = [v7 conformsToProtocol:&OBJC_PROTOCOL___NTKBellonaNumeralsDelegate];

    if (v8)
    {
      v9 = [v5 display];
      [*(*(a1 + 32) + 16) setBackgroundView:v9];

      v10 = [*(*(a1 + 32) + 16) backgroundView];
      v11 = [*(a1 + 32) palette];
      [v10 applyPalette:v11];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v12 = *(a1 + 32);
  v10 = [v12 palette];
  v11 = [v5 display];
  [v12 _updateComplicationColorForPalette:v10 slot:v13 view:v11];
LABEL_6:
}

void sub_18C50(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = [v5 display];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v5 display];
    v8 = [v7 conformsToProtocol:&OBJC_PROTOCOL___NTKBellonaNumeralsDelegate];

    if (v8)
    {
      v9 = [v5 display];
      [*(*(a1 + 32) + 16) setBackgroundView:v9];

      v10 = [*(*(a1 + 32) + 16) backgroundView];
      v11 = [*(a1 + 32) interpolatedColorPalette];
      [v10 applyPalette:v11];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v12 = *(a1 + 32);
  v10 = [v12 interpolatedColorPalette];
  v11 = [v5 display];
  [v12 _updateComplicationColorForPalette:v10 slot:v13 view:v11];
LABEL_6:
}

void sub_19124(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _lowerComplicationFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [*(a1 + 32) device];
  v24 = [NTKComplicationLayoutRule layoutRuleForDevice:v12 withReferenceFrame:3 horizontalLayout:3 verticalLayout:v5 keylinePadding:v7, v9, v11, UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];

  v13 = [*(a1 + 32) complicationLayoutforSlot:NTKComplicationSlotBottomCenter];
  [v13 setDefaultLayoutRule:v24 forState:a2];

  v14 = *(a1 + 144);
  [*(a1 + 32) bounds];
  v16 = *(a1 + 152) + v15 * 0.5;
  v17 = *(a1 + 128);
  v18 = *(a1 + 136);
  v19 = *(a1 + 112);
  v20 = *(a1 + 120);
  v21 = [*(a1 + 32) device];
  v22 = [NTKComplicationLayoutRule layoutRuleForDevice:v21 withReferenceFrame:3 horizontalLayout:3 verticalLayout:v14 keylinePadding:v16, v17, v18, v19, v20, v19, v20];

  v23 = [*(a1 + 32) complicationLayoutforSlot:NTKComplicationSlotDate];
  [v23 setDefaultLayoutRule:v22 forState:a2];
}

void sub_19440(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    [v2 faceViewDidChangeWantsStatusBarIconShadow];

    WeakRetained = v3;
  }
}

void sub_19810(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19834(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = *a3;
  v9 = v7;
  v8 = *(a3 + 24);
  v10 = *(a3 + 8);
  v11 = v8;
  if (WeakRetained)
  {
    [WeakRetained _handleTimeUpdate:&v9];
  }

  else
  {
  }
}

void sub_199C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_199E4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = *a3;
  v9 = v7;
  v8 = *(a3 + 24);
  v10 = *(a3 + 8);
  v11 = v8;
  if (WeakRetained)
  {
    [WeakRetained _handleTimeUpdate:&v9];
  }

  else
  {
  }
}

void sub_19B70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19B94(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = *a3;
  v9 = v7;
  v8 = *(a3 + 24);
  v10 = *(a3 + 8);
  v11 = v8;
  if (WeakRetained)
  {
    [WeakRetained _handleTimeUpdate:&v9];
  }

  else
  {
  }
}

void sub_19EE4(void *a1@<X1>, uint64_t a2@<X8>)
{
  v9 = a1;
  os_unfair_lock_lock(&unk_58A48);
  if (qword_58A50)
  {
    v3 = qword_58A50 == v9;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v9 version], v4 != qword_58A58))
  {
    qword_58A50 = v9;
    qword_58A58 = [v9 version];
    sub_19FFC(v9, v10);
    xmmword_58A20 = v10[6];
    unk_58A30 = v10[7];
    qword_58A40 = v11;
    xmmword_589E0 = v10[2];
    unk_589F0 = v10[3];
    xmmword_58A00 = v10[4];
    unk_58A10 = v10[5];
    xmmword_589C0 = v10[0];
    *algn_589D0 = v10[1];
  }

  v5 = unk_58A30;
  *(a2 + 96) = xmmword_58A20;
  *(a2 + 112) = v5;
  *(a2 + 128) = qword_58A40;
  v6 = unk_589F0;
  *(a2 + 32) = xmmword_589E0;
  *(a2 + 48) = v6;
  v7 = unk_58A10;
  *(a2 + 64) = xmmword_58A00;
  *(a2 + 80) = v7;
  v8 = *algn_589D0;
  *a2 = xmmword_589C0;
  *(a2 + 16) = v8;
  os_unfair_lock_unlock(&unk_58A48);
}

void sub_19FFC(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 128) = 0;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v3 = [CLKDeviceMetrics metricsWithDevice:a1 identitySizeClass:2];
  v59[0] = &off_47688;
  v52 = xmmword_37CA0;
  v37 = [NSValue valueWithBytes:&v52 objCType:"{CGPoint=dd}"];
  v60[0] = v37;
  v59[1] = &off_476A0;
  v51 = xmmword_37CB0;
  v36 = [NSValue valueWithBytes:&v51 objCType:"{CGPoint=dd}"];
  v60[1] = v36;
  v59[2] = &off_476B8;
  v50 = xmmword_37CC0;
  v4 = [NSValue valueWithBytes:&v50 objCType:"{CGPoint=dd}"];
  v60[2] = v4;
  v59[3] = &off_476D0;
  v49 = xmmword_37CD0;
  v5 = [NSValue valueWithBytes:&v49 objCType:"{CGPoint=dd}"];
  v60[3] = v5;
  v59[4] = &off_476E8;
  v48 = xmmword_37CE0;
  v6 = [NSValue valueWithBytes:&v48 objCType:"{CGPoint=dd}"];
  v60[4] = v6;
  v59[5] = &off_47700;
  v47 = xmmword_37CD0;
  v7 = [NSValue valueWithBytes:&v47 objCType:"{CGPoint=dd}"];
  v60[5] = v7;
  v59[6] = &off_47718;
  v46 = xmmword_37CD0;
  v8 = [NSValue valueWithBytes:&v46 objCType:"{CGPoint=dd}"];
  v60[6] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v60 forKeys:v59 count:7];
  [v3 scaledPoint:v9 withOverrides:{-34.0, 0.0}];
  *(a2 + 24) = v10;
  *(a2 + 32) = v11;

  v57[0] = &off_47688;
  v45 = xmmword_37CF0;
  v38 = [NSValue valueWithBytes:&v45 objCType:"{CGPoint=dd}"];
  v58[0] = v38;
  v57[1] = &off_476A0;
  v44 = xmmword_37D00;
  v12 = [NSValue valueWithBytes:&v44 objCType:"{CGPoint=dd}"];
  v58[1] = v12;
  v57[2] = &off_476B8;
  v43 = xmmword_37D10;
  v13 = [NSValue valueWithBytes:&v43 objCType:"{CGPoint=dd}"];
  v58[2] = v13;
  v57[3] = &off_476D0;
  v42 = xmmword_37D00;
  v14 = [NSValue valueWithBytes:&v42 objCType:"{CGPoint=dd}"];
  v58[3] = v14;
  v57[4] = &off_476E8;
  v41 = xmmword_37CF0;
  v15 = [NSValue valueWithBytes:&v41 objCType:"{CGPoint=dd}"];
  v58[4] = v15;
  v57[5] = &off_47700;
  v40 = xmmword_37D00;
  v16 = [NSValue valueWithBytes:&v40 objCType:"{CGPoint=dd}"];
  v58[5] = v16;
  v57[6] = &off_47718;
  v39 = xmmword_37D00;
  v17 = [NSValue valueWithBytes:&v39 objCType:"{CGPoint=dd}"];
  v58[6] = v17;
  v18 = [NSDictionary dictionaryWithObjects:v58 forKeys:v57 count:7];
  [v3 scaledSize:v18 withOverrides:{50.0, 18.0}];
  *(a2 + 8) = v19;
  *(a2 + 16) = v20;

  [v3 scaledValue:38.0];
  *(a2 + 56) = v21;
  [v3 scaledValue:50.0];
  *(a2 + 64) = v22;
  [v3 scaledValue:4.0];
  *(a2 + 72) = v23;
  [v3 scaledValue:3.0];
  *(a2 + 80) = v24;
  [v3 scaledValue:30.5];
  *(a2 + 88) = v25;
  [v3 scaledValue:20.5];
  *(a2 + 96) = v26;
  v55[0] = &off_47688;
  v55[1] = &off_476A0;
  v56[0] = &off_48260;
  v56[1] = &off_48260;
  v55[2] = &off_476B8;
  v55[3] = &off_476D0;
  v56[2] = &off_47730;
  v56[3] = &off_48270;
  v55[4] = &off_476E8;
  v55[5] = &off_47700;
  v56[4] = &off_48280;
  v56[5] = &off_48290;
  v55[6] = &off_47718;
  v56[6] = &off_48270;
  v27 = [NSDictionary dictionaryWithObjects:v56 forKeys:v55 count:7];
  [v3 scaledValue:v27 withOverrides:131.5];
  v29 = v28;

  [v3 scaledValue:v29];
  *(a2 + 104) = v30;
  v53[0] = &off_47688;
  v53[1] = &off_476A0;
  v54[0] = &off_482A0;
  v54[1] = &off_482B0;
  v53[2] = &off_476B8;
  v53[3] = &off_476D0;
  v54[2] = &off_482B0;
  v54[3] = &off_482A0;
  v53[4] = &off_476E8;
  v53[5] = &off_47700;
  v54[4] = &off_482A0;
  v54[5] = &off_482A0;
  v53[6] = &off_47718;
  v54[6] = &off_482A0;
  v31 = [NSDictionary dictionaryWithObjects:v54 forKeys:v53 count:7];
  [v3 scaledValue:v31 withOverrides:-10.0];
  v33 = v32;

  [v3 scaledValue:v33];
  *(a2 + 112) = v34;
  *(a2 + 120) = xmmword_37D20;
  [v3 scaledValue:29.0];
  *a2 = v35;
}

void sub_1ACF8(uint64_t a1, uint64_t a2)
{
  v24 = 0;
  v23 = 0u;
  memset(v22, 0, sizeof(v22));
  v4 = [*(a1 + 32) device];
  sub_1B768(v4, v22);

  [*(a1 + 32) bounds];
  v5 = (CGRectGetMidX(v25) - *&v23) * 0.5;
  [*(a1 + 32) bounds];
  MidY = CGRectGetMidY(v26);
  v7 = *v22;
  v8 = (MidY - *(&v22[3] + 1)) * 0.5;
  v9 = [*(a1 + 32) device];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v19 = *(v22 + 8);
  v20 = *(&v22[1] + 8);
  v21 = *(&v22[2] + 8);
  v13 = [NTKComplicationLayoutRule layoutRuleForDevice:v9 withReferenceFrame:3 horizontalLayout:3 verticalLayout:0 keylinePadding:&v19 clip:v5 contentTransform:v8, v7, v7, UIEdgeInsetsZero.top, left, bottom, right];

  v14 = [*(a1 + 32) complicationLayoutforSlot:NTKComplicationSlotTopLeft];
  [v14 setDefaultLayoutRule:v13 forState:a2];

  [*(a1 + 32) bounds];
  v15 = CGRectGetWidth(v27) - v5 - v7;
  v16 = [*(a1 + 32) device];
  v19 = *(v22 + 8);
  v20 = *(&v22[1] + 8);
  v21 = *(&v22[2] + 8);
  v17 = [NTKComplicationLayoutRule layoutRuleForDevice:v16 withReferenceFrame:3 horizontalLayout:3 verticalLayout:0 keylinePadding:&v19 clip:v15 contentTransform:v8, v7, v7, UIEdgeInsetsZero.top, left, bottom, right];

  v18 = [*(a1 + 32) complicationLayoutforSlot:NTKComplicationSlotTopRight];
  [v18 setDefaultLayoutRule:v17 forState:a2];
}

void sub_1B3E0(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  if ([a2 isEqualToString:*(a1 + 32)])
  {
    v5 = *(a1 + 40);
    v6 = [v5 colorPalette];
    v7 = *(a1 + 32);
    v8 = [v9 display];
    [v5 _updateComplicationColorForPalette:v6 slot:v7 view:v8];
  }
}

void sub_1B768(void *a1@<X1>, uint64_t a2@<X8>)
{
  v7 = a1;
  os_unfair_lock_lock(&unk_58AB8);
  if (qword_58AC0)
  {
    v3 = qword_58AC0 == v7;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v7 version], v4 != qword_58AC8))
  {
    qword_58AC0 = v7;
    qword_58AC8 = [v7 version];
    sub_1B868(v7, v8);
    xmmword_58A80 = v8[2];
    unk_58A90 = v8[3];
    xmmword_58AA0 = v8[4];
    qword_58AB0 = v9;
    xmmword_58A60 = v8[0];
    *algn_58A70 = v8[1];
  }

  v5 = unk_58A90;
  *(a2 + 32) = xmmword_58A80;
  *(a2 + 48) = v5;
  *(a2 + 64) = xmmword_58AA0;
  *(a2 + 80) = qword_58AB0;
  v6 = *algn_58A70;
  *a2 = xmmword_58A60;
  *(a2 + 16) = v6;
  os_unfair_lock_unlock(&unk_58AB8);
}

void sub_1B868(void *a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 72) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 8) = 0u;
  v3 = (a2 + 8);
  v4 = a1;
  v13 = [CLKDeviceMetrics metricsWithDevice:v4 identitySizeClass:2];
  [v13 scaledValue:30.0];
  v6 = v5;
  NTKWhistlerSubdialComplicationContentDiameter();
  v8 = v7;

  *a2 = v8;
  CGAffineTransformMakeScale(v3, v6 / v8, v6 / v8);
  [v13 scaledValue:94.5];
  *(a2 + 56) = v9;
  [v13 scaledValue:73.0];
  *(a2 + 64) = v10;
  [v13 scaledPoint:{-136.0, -245.5}];
  *(a2 + 72) = v11;
  *(a2 + 80) = v12;
}

void sub_1C090(void *a1@<X1>, uint64_t a2@<X8>)
{
  v6 = a1;
  os_unfair_lock_lock(&unk_58AF8);
  if (qword_58B00)
  {
    v3 = qword_58B00 == v6;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v6 version], v4 != qword_58B08))
  {
    qword_58B00 = v6;
    qword_58B08 = [v6 version];
    sub_1C16C(v6, v7);
    xmmword_58AD0 = v7[0];
    unk_58AE0 = v7[1];
    qword_58AF0 = v8;
  }

  v5 = unk_58AE0;
  *a2 = xmmword_58AD0;
  *(a2 + 16) = v5;
  *(a2 + 32) = qword_58AF0;
  os_unfair_lock_unlock(&unk_58AF8);
}

void sub_1C16C(uint64_t a1@<X1>, void *a2@<X8>)
{
  v3 = [CLKDeviceMetrics metricsWithDevice:a1 identitySizeClass:2];
  [v3 scaledValue:4.5];
  a2[3] = v4;
  v16[0] = &off_47760;
  v16[1] = &off_47778;
  v17[0] = &off_482C0;
  v17[1] = &off_482D0;
  v16[2] = &off_47790;
  v17[2] = &off_482E0;
  v5 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:3];
  [v3 scaledValue:v5 withOverrides:6.5];
  *a2 = v6;

  v14[0] = &off_47760;
  v14[1] = &off_47778;
  v15[0] = &off_482F0;
  v15[1] = &off_48300;
  v14[2] = &off_47790;
  v15[2] = &off_48310;
  v7 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:3];
  [v3 scaledValue:v7 withOverrides:4.5];
  a2[1] = v8;

  v12[0] = &off_47760;
  v12[1] = &off_47778;
  v13[0] = &off_48320;
  v13[1] = &off_48330;
  v12[2] = &off_47790;
  v13[2] = &off_48320;
  v9 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:3];
  [v3 scaledValue:v9 withOverrides:2.0];
  a2[2] = v10;

  [v3 scaledValue:16.0];
  a2[4] = v11;
}

void sub_1C998(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateHour:*(a3 + 8)];
}

void sub_1CE78(uint64_t a1, void *a2, void *a3)
{
  v14 = a3;
  v5 = a2;
  [v14 bounds];
  v6 = [*(a1 + 32) device];
  CLKRectCenteredXInRectForDevice();
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = a1 + 8 * [v5 integerValue];
  [v14 ntk_setBoundsAndPositionFromFrame:{v8, *(v13 + 72), v10, v12}];
}

void sub_1D0E0(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([v6 integerValue] != *(*(a1 + 32) + 32))
  {
    [v5 removeFromSuperview];
    [*(a1 + 40) addObject:v6];
  }
}

void **sub_1D8F0(void **result, uint64_t a2, void *a3)
{
  if (result[4] != a3)
  {
    return [a3 removeFromSuperview];
  }

  return result;
}

void sub_1D908(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (*(a1 + 32) != v4 && *(a1 + 40) != v4)
  {
    v5 = v4;
    [v4 removeFromSuperview];
    v4 = v5;
  }
}

double sub_1DE88(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_58B28);
  if (qword_58B30)
  {
    v3 = qword_58B30 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_58B38))
  {
    v5 = qword_58B18;
  }

  else
  {
    qword_58B30 = v2;
    qword_58B38 = [v2 version];
    v5 = sub_1DF50(qword_58B38, v2);
    qword_58B18 = v5;
    qword_58B20 = v6;
  }

  os_unfair_lock_unlock(&unk_58B28);

  return *&v5;
}

double sub_1DF50(uint64_t a1, uint64_t a2)
{
  v2 = [CLKDeviceMetrics metricsWithDevice:a2 identitySizeClass:2];
  [v2 scaledValue:60.0];
  v4 = v3;
  [v2 scaledValue:45.5];

  return v4;
}

void sub_1E474(id a1)
{
  v1 = qword_58B40;
  qword_58B40 = &off_48028;
}

void sub_1E58C(id a1)
{
  v3[0] = &off_47808;
  v3[1] = &off_47820;
  v4[0] = NTKFaceBundleStyle1;
  v4[1] = NTKFaceBundleStyle2;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:2];
  v2 = qword_58B50;
  qword_58B50 = v1;
}

void sub_1E820(id a1, NTKFace *a2, unint64_t a3, BOOL *a4)
{
  v5 = a2;
  if (a3)
  {
    v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:6 zOrder:4000];
    v10 = v6;
    v7 = &v10;
  }

  else
  {
    v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:6 zOrder:5000];
    v11 = v6;
    v7 = &v11;
  }

  v8 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
  v7[1] = v8;
  v9 = [NSArray arrayWithObjects:v7 count:2];
  [(NTKFace *)v5 setCurationPlacements:v9];
}

double sub_1EDA8(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = -sub_1F3FC(a1, a1);
  v11 = -v10;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;

  *&result = CGRectInset(*&v12, v9, v11);
  return result;
}

double sub_1F3FC(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_58B78);
  if (qword_58B80)
  {
    v3 = qword_58B80 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_58B88))
  {
    v5 = qword_58B60;
  }

  else
  {
    qword_58B80 = v2;
    qword_58B88 = [v2 version];
    v5 = sub_1F4E4(qword_58B88, v2);
    qword_58B60 = v5;
    qword_58B68 = v6;
    qword_58B70 = v7;
  }

  os_unfair_lock_unlock(&unk_58B78);

  return *&v5;
}

double sub_1F4E4(uint64_t a1, uint64_t a2)
{
  v2 = [CLKDeviceMetrics metricsWithDevice:a2 identitySizeClass:2];
  [v2 scaledValue:3 withOverride:5.0 forSizeClass:5.0];
  v4 = v3;
  [v2 scaledValue:3 withOverride:4.5 forSizeClass:4.5];
  [v2 scaledValue:3 withOverride:15.0 forSizeClass:17.0];

  return v4;
}

double sub_1FC5C(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_58BB0);
  if (qword_58BB8)
  {
    v3 = qword_58BB8 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_58BC0))
  {
    v5 = qword_58B90;
  }

  else
  {
    qword_58BB8 = v2;
    qword_58BC0 = [v2 version];
    v5 = sub_1FD5C(qword_58BC0, v2);
    qword_58B90 = v5;
    qword_58B98 = v6;
    qword_58BA0 = v7;
    qword_58BA8 = v8;
  }

  os_unfair_lock_unlock(&unk_58BB0);

  return *&v5;
}

double sub_1FD5C(uint64_t a1, uint64_t a2)
{
  v2 = [CLKDeviceMetrics metricsWithDevice:a2 identitySizeClass:2];
  [v2 scaledPoint:{59.0, -217.5}];
  v4 = v3;
  [v2 scaledPoint:{-10.0, -181.5}];

  return v4;
}

void sub_20A54(id a1)
{
  qword_58BC8 = +[NSMapTable strongToWeakObjectsMapTable];

  _objc_release_x1();
}

void sub_20E20(void *a1@<X1>, void *a2@<X8>)
{
  v3 = a1;
  os_unfair_lock_lock(&unk_597D8);
  if (qword_597E0)
  {
    v4 = qword_597E0 == v3;
  }

  else
  {
    v4 = 0;
  }

  if (!v4 || (v5 = [v3 version], v5 != qword_597E8))
  {
    qword_597E0 = v3;
    qword_597E8 = [v3 version];
    sub_20EEC();
    memcpy(&unk_58BD8, v6, 0xC00uLL);
  }

  memcpy(a2, &unk_58BD8, 0xC00uLL);
  os_unfair_lock_unlock(&unk_597D8);
}

void sub_20EEC()
{
  __chkstk_darwin();
  v1 = v0;
  v0[30] = 0u;
  v0[31] = 0u;
  v0[28] = 0u;
  v0[29] = 0u;
  v0[26] = 0u;
  v0[27] = 0u;
  v0[24] = 0u;
  v0[25] = 0u;
  v0[22] = 0u;
  v0[23] = 0u;
  v0[20] = 0u;
  v0[21] = 0u;
  v0[18] = 0u;
  v0[19] = 0u;
  v0[16] = 0u;
  v0[17] = 0u;
  v0[14] = 0u;
  v0[15] = 0u;
  v0[12] = 0u;
  v0[13] = 0u;
  v0[10] = 0u;
  v0[11] = 0u;
  v0[8] = 0u;
  v0[9] = 0u;
  v0[6] = 0u;
  v0[7] = 0u;
  v0[4] = 0u;
  v0[5] = 0u;
  v0[2] = 0u;
  v0[3] = 0u;
  *v0 = 0u;
  v0[1] = 0u;
  v3 = [CLKDeviceMetrics metricsWithDevice:v2 identitySizeClass:2];
  [v3 setScale:6 forSizeClass:1.25];
  [v3 setScale:9 forSizeClass:1.28];
  v2110[0] = &off_47910;
  v1727 = xmmword_37E50;
  v4 = [NSValue valueWithBytes:&v1727 objCType:"{CGPoint=dd}"];
  v2111[0] = v4;
  v2110[1] = &off_47928;
  v1726 = xmmword_37E60;
  v5 = [NSValue valueWithBytes:&v1726 objCType:"{CGPoint=dd}"];
  v2111[1] = v5;
  v2110[2] = &off_47940;
  v1725 = xmmword_37E70;
  v6 = [NSValue valueWithBytes:&v1725 objCType:"{CGPoint=dd}"];
  v2111[2] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v2111 forKeys:v2110 count:3];
  [v3 scaledPoint:v7 withOverrides:?];
  *v1 = v8;
  v1[1] = v9;

  v2108[0] = &off_47910;
  v1724 = xmmword_37E80;
  v10 = [NSValue valueWithBytes:&v1724 objCType:"{CGPoint=dd}"];
  v2109[0] = v10;
  v2108[1] = &off_47928;
  v1723 = xmmword_37E90;
  v11 = [NSValue valueWithBytes:&v1723 objCType:"{CGPoint=dd}"];
  v2109[1] = v11;
  v2108[2] = &off_47940;
  v1722 = xmmword_37EA0;
  v12 = [NSValue valueWithBytes:&v1722 objCType:"{CGPoint=dd}"];
  v2109[2] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v2109 forKeys:v2108 count:3];
  [v3 scaledPoint:v13 withOverrides:61.0];
  v1[2] = v14;
  v1[3] = v15;

  v2106[0] = &off_47910;
  v1721 = xmmword_37EB0;
  v16 = [NSValue valueWithBytes:&v1721 objCType:"{CGPoint=dd}"];
  v2107[0] = v16;
  v2106[1] = &off_47928;
  v1720 = xmmword_37EC0;
  v17 = [NSValue valueWithBytes:&v1720 objCType:"{CGPoint=dd}"];
  v2107[1] = v17;
  v2106[2] = &off_47940;
  v1719 = xmmword_37ED0;
  v18 = [NSValue valueWithBytes:&v1719 objCType:"{CGPoint=dd}"];
  v2107[2] = v18;
  v19 = [NSDictionary dictionaryWithObjects:v2107 forKeys:v2106 count:3];
  [v3 scaledPoint:v19 withOverrides:{61.0, 0.0}];
  v1[4] = v20;
  v1[5] = v21;

  v2104[0] = &off_47910;
  v1718 = xmmword_37EE0;
  v22 = [NSValue valueWithBytes:&v1718 objCType:"{CGPoint=dd}"];
  v2105[0] = v22;
  v2104[1] = &off_47928;
  v1717 = xmmword_37EF0;
  v23 = [NSValue valueWithBytes:&v1717 objCType:"{CGPoint=dd}"];
  v2105[1] = v23;
  v2104[2] = &off_47940;
  v1716 = xmmword_37F00;
  v24 = [NSValue valueWithBytes:&v1716 objCType:"{CGPoint=dd}"];
  v2105[2] = v24;
  v25 = [NSDictionary dictionaryWithObjects:v2105 forKeys:v2104 count:3];
  [v3 scaledPoint:v25 withOverrides:?];
  v1[6] = v26;
  v1[7] = v27;

  v2102[0] = &off_47910;
  v1715 = xmmword_37F10;
  v28 = [NSValue valueWithBytes:&v1715 objCType:"{CGPoint=dd}"];
  v2103[0] = v28;
  v2102[1] = &off_47928;
  v1714 = xmmword_37F20;
  v29 = [NSValue valueWithBytes:&v1714 objCType:"{CGPoint=dd}"];
  v2103[1] = v29;
  v2102[2] = &off_47940;
  v1713 = xmmword_37F30;
  v30 = [NSValue valueWithBytes:&v1713 objCType:"{CGPoint=dd}"];
  v2103[2] = v30;
  v31 = [NSDictionary dictionaryWithObjects:v2103 forKeys:v2102 count:3];
  [v3 scaledPoint:v31 withOverrides:{44.0, 75.5}];
  v1[8] = v32;
  v1[9] = v33;

  v2100[0] = &off_47910;
  v1712 = xmmword_37F40;
  v34 = [NSValue valueWithBytes:&v1712 objCType:"{CGPoint=dd}"];
  v2101[0] = v34;
  v2100[1] = &off_47928;
  v1711 = xmmword_37F50;
  v35 = [NSValue valueWithBytes:&v1711 objCType:"{CGPoint=dd}"];
  v2101[1] = v35;
  v2100[2] = &off_47940;
  v1710 = xmmword_37F60;
  v36 = [NSValue valueWithBytes:&v1710 objCType:"{CGPoint=dd}"];
  v2101[2] = v36;
  v37 = [NSDictionary dictionaryWithObjects:v2101 forKeys:v2100 count:3];
  [v3 scaledPoint:v37 withOverrides:{1.5, 75.5}];
  v1[10] = v38;
  v1[11] = v39;

  v2098[0] = &off_47910;
  v1709 = xmmword_37F70;
  v40 = [NSValue valueWithBytes:&v1709 objCType:"{CGPoint=dd}"];
  v2099[0] = v40;
  v2098[1] = &off_47928;
  v1708 = xmmword_37F80;
  v41 = [NSValue valueWithBytes:&v1708 objCType:"{CGPoint=dd}"];
  v2099[1] = v41;
  v2098[2] = &off_47940;
  v1707 = xmmword_37F90;
  v42 = [NSValue valueWithBytes:&v1707 objCType:"{CGPoint=dd}"];
  v2099[2] = v42;
  v43 = [NSDictionary dictionaryWithObjects:v2099 forKeys:v2098 count:3];
  [v3 scaledPoint:v43 withOverrides:?];
  v1[12] = v44;
  v1[13] = v45;

  v2096[0] = &off_47910;
  v1706 = xmmword_37FA0;
  v46 = [NSValue valueWithBytes:&v1706 objCType:"{CGPoint=dd}"];
  v2097[0] = v46;
  v2096[1] = &off_47928;
  v1705 = xmmword_37FB0;
  v47 = [NSValue valueWithBytes:&v1705 objCType:"{CGPoint=dd}"];
  v2097[1] = v47;
  v2096[2] = &off_47940;
  v1704 = xmmword_37FC0;
  v48 = [NSValue valueWithBytes:&v1704 objCType:"{CGPoint=dd}"];
  v2097[2] = v48;
  v49 = [NSDictionary dictionaryWithObjects:v2097 forKeys:v2096 count:3];
  [v3 scaledPoint:v49 withOverrides:{-59.0, 37.0}];
  v1[14] = v50;
  v1[15] = v51;

  v2094[0] = &off_47910;
  v1703 = xmmword_37FD0;
  v52 = [NSValue valueWithBytes:&v1703 objCType:"{CGPoint=dd}"];
  v2095[0] = v52;
  v2094[1] = &off_47928;
  v1702 = xmmword_37FE0;
  v53 = [NSValue valueWithBytes:&v1702 objCType:"{CGPoint=dd}"];
  v2095[1] = v53;
  v2094[2] = &off_47940;
  v1701 = xmmword_37FF0;
  v54 = [NSValue valueWithBytes:&v1701 objCType:"{CGPoint=dd}"];
  v2095[2] = v54;
  v55 = [NSDictionary dictionaryWithObjects:v2095 forKeys:v2094 count:3];
  [v3 scaledPoint:v55 withOverrides:{-59.0, 0.0}];
  v1[16] = v56;
  v1[17] = v57;

  v2092[0] = &off_47910;
  v1700 = xmmword_38000;
  v58 = [NSValue valueWithBytes:&v1700 objCType:"{CGPoint=dd}"];
  v2093[0] = v58;
  v2092[1] = &off_47928;
  v1699 = xmmword_38010;
  v59 = [NSValue valueWithBytes:&v1699 objCType:"{CGPoint=dd}"];
  v2093[1] = v59;
  v2092[2] = &off_47940;
  v1698 = xmmword_38020;
  v60 = [NSValue valueWithBytes:&v1698 objCType:"{CGPoint=dd}"];
  v2093[2] = v60;
  v61 = [NSDictionary dictionaryWithObjects:v2093 forKeys:v2092 count:3];
  [v3 scaledPoint:v61 withOverrides:{-59.0, -36.5}];
  v1[18] = v62;
  v1[19] = v63;

  v2090[0] = &off_47910;
  v1697 = xmmword_38030;
  v64 = [NSValue valueWithBytes:&v1697 objCType:"{CGPoint=dd}"];
  v2091[0] = v64;
  v2090[1] = &off_47928;
  v1696 = xmmword_38040;
  v65 = [NSValue valueWithBytes:&v1696 objCType:"{CGPoint=dd}"];
  v2091[1] = v65;
  v2090[2] = &off_47940;
  v1695 = xmmword_38050;
  v66 = [NSValue valueWithBytes:&v1695 objCType:"{CGPoint=dd}"];
  v2091[2] = v66;
  v67 = [NSDictionary dictionaryWithObjects:v2091 forKeys:v2090 count:3];
  [v3 scaledPoint:v67 withOverrides:?];
  v1[20] = v68;
  v1[21] = v69;

  v2088[0] = &off_47910;
  v1694 = xmmword_38060;
  v70 = [NSValue valueWithBytes:&v1694 objCType:"{CGPoint=dd}"];
  v2089[0] = v70;
  v2088[1] = &off_47928;
  v1693 = xmmword_38070;
  v71 = [NSValue valueWithBytes:&v1693 objCType:"{CGPoint=dd}"];
  v2089[1] = v71;
  v2088[2] = &off_47940;
  v1692 = xmmword_38080;
  v72 = [NSValue valueWithBytes:&v1692 objCType:"{CGPoint=dd}"];
  v2089[2] = v72;
  v73 = [NSDictionary dictionaryWithObjects:v2089 forKeys:v2088 count:3];
  [v3 scaledPoint:v73 withOverrides:{1.0, -79.0}];
  v1[22] = v74;
  v1[23] = v75;

  v2086[0] = &off_47910;
  v1691 = xmmword_38090;
  v76 = [NSValue valueWithBytes:&v1691 objCType:"{CGPoint=dd}"];
  v2087[0] = v76;
  v2086[1] = &off_47928;
  v1690 = xmmword_380A0;
  v77 = [NSValue valueWithBytes:&v1690 objCType:"{CGPoint=dd}"];
  v2087[1] = v77;
  v2086[2] = &off_47940;
  v1689 = xmmword_380B0;
  v78 = [NSValue valueWithBytes:&v1689 objCType:"{CGPoint=dd}"];
  v2087[2] = v78;
  v79 = [NSDictionary dictionaryWithObjects:v2087 forKeys:v2086 count:3];
  [v3 scaledPoint:v79 withOverrides:44.5];
  v1[96] = v80;
  v1[97] = v81;

  v2084[0] = &off_47910;
  v1688 = xmmword_37E80;
  v82 = [NSValue valueWithBytes:&v1688 objCType:"{CGPoint=dd}"];
  v2085[0] = v82;
  v2084[1] = &off_47928;
  v1687 = xmmword_37E90;
  v83 = [NSValue valueWithBytes:&v1687 objCType:"{CGPoint=dd}"];
  v2085[1] = v83;
  v2084[2] = &off_47940;
  v1686 = xmmword_37EA0;
  v84 = [NSValue valueWithBytes:&v1686 objCType:"{CGPoint=dd}"];
  v2085[2] = v84;
  v85 = [NSDictionary dictionaryWithObjects:v2085 forKeys:v2084 count:3];
  [v3 scaledPoint:v85 withOverrides:{61.0, -36.5}];
  v1[98] = v86;
  v1[99] = v87;

  v2082[0] = &off_47910;
  v1685 = xmmword_37EB0;
  v88 = [NSValue valueWithBytes:&v1685 objCType:"{CGPoint=dd}"];
  v2083[0] = v88;
  v2082[1] = &off_47928;
  v1684 = xmmword_37EC0;
  v89 = [NSValue valueWithBytes:&v1684 objCType:"{CGPoint=dd}"];
  v2083[1] = v89;
  v2082[2] = &off_47940;
  v1683 = xmmword_37ED0;
  v90 = [NSValue valueWithBytes:&v1683 objCType:"{CGPoint=dd}"];
  v2083[2] = v90;
  v91 = [NSDictionary dictionaryWithObjects:v2083 forKeys:v2082 count:3];
  [v3 scaledPoint:v91 withOverrides:{61.0, 0.0}];
  v1[100] = v92;
  v1[101] = v93;

  v2080[0] = &off_47910;
  v1682 = xmmword_37EE0;
  v94 = [NSValue valueWithBytes:&v1682 objCType:"{CGPoint=dd}"];
  v2081[0] = v94;
  v2080[1] = &off_47928;
  v1681 = xmmword_37EF0;
  v95 = [NSValue valueWithBytes:&v1681 objCType:"{CGPoint=dd}"];
  v2081[1] = v95;
  v2080[2] = &off_47940;
  v1680 = xmmword_37F00;
  v96 = [NSValue valueWithBytes:&v1680 objCType:"{CGPoint=dd}"];
  v2081[2] = v96;
  v97 = [NSDictionary dictionaryWithObjects:v2081 forKeys:v2080 count:3];
  [v3 scaledPoint:v97 withOverrides:{62.0, 37.0}];
  v1[102] = v98;
  v1[103] = v99;

  v2078[0] = &off_47910;
  v1679 = xmmword_37F10;
  v100 = [NSValue valueWithBytes:&v1679 objCType:"{CGPoint=dd}"];
  v2079[0] = v100;
  v2078[1] = &off_47928;
  v1678 = xmmword_37F20;
  v101 = [NSValue valueWithBytes:&v1678 objCType:"{CGPoint=dd}"];
  v2079[1] = v101;
  v2078[2] = &off_47940;
  v1677 = xmmword_37F30;
  v102 = [NSValue valueWithBytes:&v1677 objCType:"{CGPoint=dd}"];
  v2079[2] = v102;
  v103 = [NSDictionary dictionaryWithObjects:v2079 forKeys:v2078 count:3];
  [v3 scaledPoint:v103 withOverrides:{44.0, 75.5}];
  v1[104] = v104;
  v1[105] = v105;

  v2076[0] = &off_47910;
  v1676 = xmmword_37F40;
  v106 = [NSValue valueWithBytes:&v1676 objCType:"{CGPoint=dd}"];
  v2077[0] = v106;
  v2076[1] = &off_47928;
  v1675 = xmmword_37F50;
  v107 = [NSValue valueWithBytes:&v1675 objCType:"{CGPoint=dd}"];
  v2077[1] = v107;
  v2076[2] = &off_47940;
  v1674 = xmmword_37F60;
  v108 = [NSValue valueWithBytes:&v1674 objCType:"{CGPoint=dd}"];
  v2077[2] = v108;
  v109 = [NSDictionary dictionaryWithObjects:v2077 forKeys:v2076 count:3];
  [v3 scaledPoint:v109 withOverrides:{1.5, 75.5}];
  v1[106] = v110;
  v1[107] = v111;

  v2074[0] = &off_47910;
  v1673 = xmmword_37F70;
  v112 = [NSValue valueWithBytes:&v1673 objCType:"{CGPoint=dd}"];
  v2075[0] = v112;
  v2074[1] = &off_47928;
  v1672 = xmmword_37F80;
  v113 = [NSValue valueWithBytes:&v1672 objCType:"{CGPoint=dd}"];
  v2075[1] = v113;
  v2074[2] = &off_47940;
  v1671 = xmmword_37F90;
  v114 = [NSValue valueWithBytes:&v1671 objCType:"{CGPoint=dd}"];
  v2075[2] = v114;
  v115 = [NSDictionary dictionaryWithObjects:v2075 forKeys:v2074 count:3];
  [v3 scaledPoint:v115 withOverrides:{-42.5, 75.5}];
  v1[108] = v116;
  v1[109] = v117;

  v2072[0] = &off_47910;
  v1670 = xmmword_37FA0;
  v118 = [NSValue valueWithBytes:&v1670 objCType:"{CGPoint=dd}"];
  v2073[0] = v118;
  v2072[1] = &off_47928;
  v1669 = xmmword_37FB0;
  v119 = [NSValue valueWithBytes:&v1669 objCType:"{CGPoint=dd}"];
  v2073[1] = v119;
  v2072[2] = &off_47940;
  v1668 = xmmword_37FC0;
  v120 = [NSValue valueWithBytes:&v1668 objCType:"{CGPoint=dd}"];
  v2073[2] = v120;
  v121 = [NSDictionary dictionaryWithObjects:v2073 forKeys:v2072 count:3];
  [v3 scaledPoint:v121 withOverrides:{-59.0, 37.0}];
  v1[110] = v122;
  v1[111] = v123;

  v2070[0] = &off_47910;
  v1667 = xmmword_37FD0;
  v124 = [NSValue valueWithBytes:&v1667 objCType:"{CGPoint=dd}"];
  v2071[0] = v124;
  v2070[1] = &off_47928;
  v1666 = xmmword_37FE0;
  v125 = [NSValue valueWithBytes:&v1666 objCType:"{CGPoint=dd}"];
  v2071[1] = v125;
  v2070[2] = &off_47940;
  v1665 = xmmword_37FF0;
  v126 = [NSValue valueWithBytes:&v1665 objCType:"{CGPoint=dd}"];
  v2071[2] = v126;
  v127 = [NSDictionary dictionaryWithObjects:v2071 forKeys:v2070 count:3];
  [v3 scaledPoint:v127 withOverrides:{-59.0, 0.0}];
  v1[112] = v128;
  v1[113] = v129;

  v2068[0] = &off_47910;
  v1664 = xmmword_38000;
  v130 = [NSValue valueWithBytes:&v1664 objCType:"{CGPoint=dd}"];
  v2069[0] = v130;
  v2068[1] = &off_47928;
  v1663 = xmmword_38010;
  v131 = [NSValue valueWithBytes:&v1663 objCType:"{CGPoint=dd}"];
  v2069[1] = v131;
  v2068[2] = &off_47940;
  v1662 = xmmword_38020;
  v132 = [NSValue valueWithBytes:&v1662 objCType:"{CGPoint=dd}"];
  v2069[2] = v132;
  v133 = [NSDictionary dictionaryWithObjects:v2069 forKeys:v2068 count:3];
  [v3 scaledPoint:v133 withOverrides:{-59.0, -36.5}];
  v1[114] = v134;
  v1[115] = v135;

  v2066[0] = &off_47910;
  v1661 = xmmword_380C0;
  v136 = [NSValue valueWithBytes:&v1661 objCType:"{CGPoint=dd}"];
  v2067[0] = v136;
  v2066[1] = &off_47928;
  v1660 = xmmword_380D0;
  v137 = [NSValue valueWithBytes:&v1660 objCType:"{CGPoint=dd}"];
  v2067[1] = v137;
  v2066[2] = &off_47940;
  v1659 = xmmword_380E0;
  v138 = [NSValue valueWithBytes:&v1659 objCType:"{CGPoint=dd}"];
  v2067[2] = v138;
  v139 = [NSDictionary dictionaryWithObjects:v2067 forKeys:v2066 count:3];
  [v3 scaledPoint:v139 withOverrides:{-43.0, -74.5}];
  v1[116] = v140;
  v1[117] = v141;

  v2064[0] = &off_47910;
  v1658 = xmmword_380F0;
  v142 = [NSValue valueWithBytes:&v1658 objCType:"{CGPoint=dd}"];
  v2065[0] = v142;
  v2064[1] = &off_47928;
  v1657 = xmmword_38100;
  v143 = [NSValue valueWithBytes:&v1657 objCType:"{CGPoint=dd}"];
  v2065[1] = v143;
  v2064[2] = &off_47940;
  v1656 = xmmword_38110;
  v144 = [NSValue valueWithBytes:&v1656 objCType:"{CGPoint=dd}"];
  v2065[2] = v144;
  v145 = [NSDictionary dictionaryWithObjects:v2065 forKeys:v2064 count:3];
  [v3 scaledPoint:v145 withOverrides:{1.0, -74.5}];
  v1[118] = v146;
  v1[119] = v147;

  v2062[0] = &off_47910;
  v1655 = xmmword_37E50;
  v148 = [NSValue valueWithBytes:&v1655 objCType:"{CGPoint=dd}"];
  v2063[0] = v148;
  v2062[1] = &off_47928;
  v1654 = xmmword_37E60;
  v149 = [NSValue valueWithBytes:&v1654 objCType:"{CGPoint=dd}"];
  v2063[1] = v149;
  v2062[2] = &off_47940;
  v1653 = xmmword_380B0;
  v150 = [NSValue valueWithBytes:&v1653 objCType:"{CGPoint=dd}"];
  v2063[2] = v150;
  v151 = [NSDictionary dictionaryWithObjects:v2063 forKeys:v2062 count:3];
  [v3 scaledPoint:v151 withOverrides:{44.5, -74.5}];
  v1[192] = v152;
  v1[193] = v153;

  v2060[0] = &off_47910;
  v1652 = xmmword_37E80;
  v154 = [NSValue valueWithBytes:&v1652 objCType:"{CGPoint=dd}"];
  v2061[0] = v154;
  v2060[1] = &off_47928;
  v1651 = xmmword_37E90;
  v155 = [NSValue valueWithBytes:&v1651 objCType:"{CGPoint=dd}"];
  v2061[1] = v155;
  v2060[2] = &off_47940;
  v1650 = xmmword_38120;
  v156 = [NSValue valueWithBytes:&v1650 objCType:"{CGPoint=dd}"];
  v2061[2] = v156;
  v157 = [NSDictionary dictionaryWithObjects:v2061 forKeys:v2060 count:3];
  [v3 scaledPoint:v157 withOverrides:{61.0, -36.5}];
  v1[194] = v158;
  v1[195] = v159;

  v2058[0] = &off_47910;
  v1649 = xmmword_37EB0;
  v160 = [NSValue valueWithBytes:&v1649 objCType:"{CGPoint=dd}"];
  v2059[0] = v160;
  v2058[1] = &off_47928;
  v1648 = xmmword_37EC0;
  v161 = [NSValue valueWithBytes:&v1648 objCType:"{CGPoint=dd}"];
  v2059[1] = v161;
  v2058[2] = &off_47940;
  v1647 = xmmword_38130;
  v162 = [NSValue valueWithBytes:&v1647 objCType:"{CGPoint=dd}"];
  v2059[2] = v162;
  v163 = [NSDictionary dictionaryWithObjects:v2059 forKeys:v2058 count:3];
  [v3 scaledPoint:v163 withOverrides:{61.0, 0.0}];
  v1[196] = v164;
  v1[197] = v165;

  v2056[0] = &off_47910;
  v1646 = xmmword_37EE0;
  v166 = [NSValue valueWithBytes:&v1646 objCType:"{CGPoint=dd}"];
  v2057[0] = v166;
  v2056[1] = &off_47928;
  v1645 = xmmword_37EF0;
  v167 = [NSValue valueWithBytes:&v1645 objCType:"{CGPoint=dd}"];
  v2057[1] = v167;
  v2056[2] = &off_47940;
  v1644 = xmmword_38140;
  v168 = [NSValue valueWithBytes:&v1644 objCType:"{CGPoint=dd}"];
  v2057[2] = v168;
  v169 = [NSDictionary dictionaryWithObjects:v2057 forKeys:v2056 count:3];
  [v3 scaledPoint:v169 withOverrides:{62.0, 37.0}];
  v1[198] = v170;
  v1[199] = v171;

  v2054[0] = &off_47910;
  v1643 = xmmword_37F10;
  v172 = [NSValue valueWithBytes:&v1643 objCType:"{CGPoint=dd}"];
  v2055[0] = v172;
  v2054[1] = &off_47928;
  v1642 = xmmword_37F20;
  v173 = [NSValue valueWithBytes:&v1642 objCType:"{CGPoint=dd}"];
  v2055[1] = v173;
  v2054[2] = &off_47940;
  v1641 = xmmword_38150;
  v174 = [NSValue valueWithBytes:&v1641 objCType:"{CGPoint=dd}"];
  v2055[2] = v174;
  v175 = [NSDictionary dictionaryWithObjects:v2055 forKeys:v2054 count:3];
  [v3 scaledPoint:v175 withOverrides:{44.0, 70.5}];
  v1[200] = v176;
  v1[201] = v177;

  v2052[0] = &off_47910;
  v1640 = xmmword_37F40;
  v178 = [NSValue valueWithBytes:&v1640 objCType:"{CGPoint=dd}"];
  v2053[0] = v178;
  v2052[1] = &off_47928;
  v1639 = xmmword_37F50;
  v179 = [NSValue valueWithBytes:&v1639 objCType:"{CGPoint=dd}"];
  v2053[1] = v179;
  v2052[2] = &off_47940;
  v1638 = xmmword_38160;
  v180 = [NSValue valueWithBytes:&v1638 objCType:"{CGPoint=dd}"];
  v2053[2] = v180;
  v181 = [NSDictionary dictionaryWithObjects:v2053 forKeys:v2052 count:3];
  [v3 scaledPoint:v181 withOverrides:{1.5, 70.5}];
  v1[202] = v182;
  v1[203] = v183;

  v2050[0] = &off_47910;
  v1637 = xmmword_37F70;
  v184 = [NSValue valueWithBytes:&v1637 objCType:"{CGPoint=dd}"];
  v2051[0] = v184;
  v2050[1] = &off_47928;
  v1636 = xmmword_37F80;
  v185 = [NSValue valueWithBytes:&v1636 objCType:"{CGPoint=dd}"];
  v2051[1] = v185;
  v2050[2] = &off_47940;
  v1635 = xmmword_38170;
  v186 = [NSValue valueWithBytes:&v1635 objCType:"{CGPoint=dd}"];
  v2051[2] = v186;
  v187 = [NSDictionary dictionaryWithObjects:v2051 forKeys:v2050 count:3];
  [v3 scaledPoint:v187 withOverrides:{-42.5, 70.5}];
  v1[204] = v188;
  v1[205] = v189;

  v2048[0] = &off_47910;
  v1634 = xmmword_37FA0;
  v190 = [NSValue valueWithBytes:&v1634 objCType:"{CGPoint=dd}"];
  v2049[0] = v190;
  v2048[1] = &off_47928;
  v1633 = xmmword_37FB0;
  v191 = [NSValue valueWithBytes:&v1633 objCType:"{CGPoint=dd}"];
  v2049[1] = v191;
  v192 = [NSDictionary dictionaryWithObjects:v2049 forKeys:v2048 count:2];
  [v3 scaledPoint:v192 withOverrides:{-59.0, 37.0}];
  v1[206] = v193;
  v1[207] = v194;

  v2046[0] = &off_47910;
  v1632 = xmmword_37FD0;
  v195 = [NSValue valueWithBytes:&v1632 objCType:"{CGPoint=dd}"];
  v2047[0] = v195;
  v2046[1] = &off_47928;
  v1631 = xmmword_37FE0;
  v196 = [NSValue valueWithBytes:&v1631 objCType:"{CGPoint=dd}"];
  v2047[1] = v196;
  v2046[2] = &off_47940;
  v1630 = xmmword_38180;
  v197 = [NSValue valueWithBytes:&v1630 objCType:"{CGPoint=dd}"];
  v2047[2] = v197;
  v198 = [NSDictionary dictionaryWithObjects:v2047 forKeys:v2046 count:3];
  [v3 scaledPoint:v198 withOverrides:{-59.0, 0.0}];
  v1[208] = v199;
  v1[209] = v200;

  v2044[0] = &off_47910;
  v1629 = xmmword_38000;
  v201 = [NSValue valueWithBytes:&v1629 objCType:"{CGPoint=dd}"];
  v2045[0] = v201;
  v2044[1] = &off_47928;
  v1628 = xmmword_38010;
  v202 = [NSValue valueWithBytes:&v1628 objCType:"{CGPoint=dd}"];
  v2045[1] = v202;
  v2044[2] = &off_47940;
  v1627 = xmmword_38190;
  v203 = [NSValue valueWithBytes:&v1627 objCType:"{CGPoint=dd}"];
  v2045[2] = v203;
  v204 = [NSDictionary dictionaryWithObjects:v2045 forKeys:v2044 count:3];
  [v3 scaledPoint:v204 withOverrides:{-59.0, -36.5}];
  v1[210] = v205;
  v1[211] = v206;

  v2042[0] = &off_47910;
  v1626 = xmmword_38030;
  v207 = [NSValue valueWithBytes:&v1626 objCType:"{CGPoint=dd}"];
  v2043[0] = v207;
  v2042[1] = &off_47928;
  v1625 = xmmword_38040;
  v208 = [NSValue valueWithBytes:&v1625 objCType:"{CGPoint=dd}"];
  v2043[1] = v208;
  v2042[2] = &off_47940;
  v1624 = xmmword_380E0;
  v209 = [NSValue valueWithBytes:&v1624 objCType:"{CGPoint=dd}"];
  v2043[2] = v209;
  v210 = [NSDictionary dictionaryWithObjects:v2043 forKeys:v2042 count:3];
  [v3 scaledPoint:v210 withOverrides:{-43.0, -74.5}];
  v1[212] = v211;
  v1[213] = v212;

  v2040[0] = &off_47910;
  v1623 = xmmword_38060;
  v213 = [NSValue valueWithBytes:&v1623 objCType:"{CGPoint=dd}"];
  v2041[0] = v213;
  v2040[1] = &off_47928;
  v1622 = xmmword_38070;
  v214 = [NSValue valueWithBytes:&v1622 objCType:"{CGPoint=dd}"];
  v2041[1] = v214;
  v2040[2] = &off_47940;
  v1621 = xmmword_38110;
  v215 = [NSValue valueWithBytes:&v1621 objCType:"{CGPoint=dd}"];
  v2041[2] = v215;
  v216 = [NSDictionary dictionaryWithObjects:v2041 forKeys:v2040 count:3];
  [v3 scaledPoint:v216 withOverrides:{1.0, -74.5}];
  v1[214] = v217;
  v1[215] = v218;

  v2038[0] = &off_47910;
  v1620 = xmmword_37E50;
  v219 = [NSValue valueWithBytes:&v1620 objCType:"{CGPoint=dd}"];
  v2039[0] = v219;
  v2038[1] = &off_47928;
  v1619 = xmmword_37E60;
  v220 = [NSValue valueWithBytes:&v1619 objCType:"{CGPoint=dd}"];
  v2039[1] = v220;
  v2038[2] = &off_47940;
  v1618 = xmmword_380B0;
  v221 = [NSValue valueWithBytes:&v1618 objCType:"{CGPoint=dd}"];
  v2039[2] = v221;
  v222 = [NSDictionary dictionaryWithObjects:v2039 forKeys:v2038 count:3];
  [v3 scaledPoint:v222 withOverrides:{44.5, -74.5}];
  v1[288] = v223;
  v1[289] = v224;

  v2036[0] = &off_47910;
  v1617 = xmmword_37E80;
  v225 = [NSValue valueWithBytes:&v1617 objCType:"{CGPoint=dd}"];
  v2037[0] = v225;
  v2036[1] = &off_47928;
  v1616 = xmmword_37E90;
  v226 = [NSValue valueWithBytes:&v1616 objCType:"{CGPoint=dd}"];
  v2037[1] = v226;
  v2036[2] = &off_47940;
  v1615 = xmmword_38120;
  v227 = [NSValue valueWithBytes:&v1615 objCType:"{CGPoint=dd}"];
  v2037[2] = v227;
  v228 = [NSDictionary dictionaryWithObjects:v2037 forKeys:v2036 count:3];
  [v3 scaledPoint:v228 withOverrides:{61.0, -36.5}];
  v1[290] = v229;
  v1[291] = v230;

  v2034[0] = &off_47910;
  v1614 = xmmword_37EB0;
  v231 = [NSValue valueWithBytes:&v1614 objCType:"{CGPoint=dd}"];
  v2035[0] = v231;
  v2034[1] = &off_47928;
  v1613 = xmmword_37EC0;
  v232 = [NSValue valueWithBytes:&v1613 objCType:"{CGPoint=dd}"];
  v2035[1] = v232;
  v2034[2] = &off_47940;
  v1612 = xmmword_38130;
  v233 = [NSValue valueWithBytes:&v1612 objCType:"{CGPoint=dd}"];
  v2035[2] = v233;
  v234 = [NSDictionary dictionaryWithObjects:v2035 forKeys:v2034 count:3];
  [v3 scaledPoint:v234 withOverrides:{61.0, 0.0}];
  v1[292] = v235;
  v1[293] = v236;

  v2032[0] = &off_47910;
  v1611 = xmmword_37EE0;
  v237 = [NSValue valueWithBytes:&v1611 objCType:"{CGPoint=dd}"];
  v2033[0] = v237;
  v2032[1] = &off_47928;
  v1610 = xmmword_37EF0;
  v238 = [NSValue valueWithBytes:&v1610 objCType:"{CGPoint=dd}"];
  v2033[1] = v238;
  v2032[2] = &off_47940;
  v1609 = xmmword_38140;
  v239 = [NSValue valueWithBytes:&v1609 objCType:"{CGPoint=dd}"];
  v2033[2] = v239;
  v240 = [NSDictionary dictionaryWithObjects:v2033 forKeys:v2032 count:3];
  [v3 scaledPoint:v240 withOverrides:{62.0, 37.0}];
  v1[294] = v241;
  v1[295] = v242;

  v2030[0] = &off_47910;
  v1608 = xmmword_37F10;
  v243 = [NSValue valueWithBytes:&v1608 objCType:"{CGPoint=dd}"];
  v2031[0] = v243;
  v2030[1] = &off_47928;
  v1607 = xmmword_37F20;
  v244 = [NSValue valueWithBytes:&v1607 objCType:"{CGPoint=dd}"];
  v2031[1] = v244;
  v2030[2] = &off_47940;
  v1606 = xmmword_38150;
  v245 = [NSValue valueWithBytes:&v1606 objCType:"{CGPoint=dd}"];
  v2031[2] = v245;
  v246 = [NSDictionary dictionaryWithObjects:v2031 forKeys:v2030 count:3];
  [v3 scaledPoint:v246 withOverrides:{44.0, 70.5}];
  v1[296] = v247;
  v1[297] = v248;

  v2028[0] = &off_47910;
  v1605 = xmmword_37F40;
  v249 = [NSValue valueWithBytes:&v1605 objCType:"{CGPoint=dd}"];
  v2029[0] = v249;
  v2028[1] = &off_47928;
  v1604 = xmmword_37F50;
  v250 = [NSValue valueWithBytes:&v1604 objCType:"{CGPoint=dd}"];
  v2029[1] = v250;
  v2028[2] = &off_47940;
  v1603 = xmmword_38160;
  v251 = [NSValue valueWithBytes:&v1603 objCType:"{CGPoint=dd}"];
  v2029[2] = v251;
  v252 = [NSDictionary dictionaryWithObjects:v2029 forKeys:v2028 count:3];
  [v3 scaledPoint:v252 withOverrides:{1.5, 70.5}];
  v1[298] = v253;
  v1[299] = v254;

  v2026[0] = &off_47910;
  v1602 = xmmword_37F70;
  v255 = [NSValue valueWithBytes:&v1602 objCType:"{CGPoint=dd}"];
  v2027[0] = v255;
  v2026[1] = &off_47928;
  v1601 = xmmword_37F80;
  v256 = [NSValue valueWithBytes:&v1601 objCType:"{CGPoint=dd}"];
  v2027[1] = v256;
  v2026[2] = &off_47940;
  v1600 = xmmword_38170;
  v257 = [NSValue valueWithBytes:&v1600 objCType:"{CGPoint=dd}"];
  v2027[2] = v257;
  v258 = [NSDictionary dictionaryWithObjects:v2027 forKeys:v2026 count:3];
  [v3 scaledPoint:v258 withOverrides:{-42.5, 70.5}];
  v1[300] = v259;
  v1[301] = v260;

  v2024[0] = &off_47910;
  v1599 = xmmword_37FA0;
  v261 = [NSValue valueWithBytes:&v1599 objCType:"{CGPoint=dd}"];
  v2025[0] = v261;
  v2024[1] = &off_47928;
  v1598 = xmmword_37FB0;
  v262 = [NSValue valueWithBytes:&v1598 objCType:"{CGPoint=dd}"];
  v2025[1] = v262;
  v263 = [NSDictionary dictionaryWithObjects:v2025 forKeys:v2024 count:2];
  [v3 scaledPoint:v263 withOverrides:{-59.0, 37.0}];
  v1[302] = v264;
  v1[303] = v265;

  v2022[0] = &off_47910;
  v1597 = xmmword_37FD0;
  v266 = [NSValue valueWithBytes:&v1597 objCType:"{CGPoint=dd}"];
  v2023[0] = v266;
  v2022[1] = &off_47928;
  v1596 = xmmword_37FE0;
  v267 = [NSValue valueWithBytes:&v1596 objCType:"{CGPoint=dd}"];
  v2023[1] = v267;
  v2022[2] = &off_47940;
  v1595 = xmmword_38180;
  v268 = [NSValue valueWithBytes:&v1595 objCType:"{CGPoint=dd}"];
  v2023[2] = v268;
  v269 = [NSDictionary dictionaryWithObjects:v2023 forKeys:v2022 count:3];
  [v3 scaledPoint:v269 withOverrides:{-59.0, 0.0}];
  v1[304] = v270;
  v1[305] = v271;

  v2020[0] = &off_47910;
  v1594 = xmmword_38000;
  v272 = [NSValue valueWithBytes:&v1594 objCType:"{CGPoint=dd}"];
  v2021[0] = v272;
  v2020[1] = &off_47928;
  v1593 = xmmword_38010;
  v273 = [NSValue valueWithBytes:&v1593 objCType:"{CGPoint=dd}"];
  v2021[1] = v273;
  v2020[2] = &off_47940;
  v1592 = xmmword_38190;
  v274 = [NSValue valueWithBytes:&v1592 objCType:"{CGPoint=dd}"];
  v2021[2] = v274;
  v275 = [NSDictionary dictionaryWithObjects:v2021 forKeys:v2020 count:3];
  [v3 scaledPoint:v275 withOverrides:{-59.0, -36.5}];
  v1[306] = v276;
  v1[307] = v277;

  v2018[0] = &off_47910;
  v1591 = xmmword_38030;
  v278 = [NSValue valueWithBytes:&v1591 objCType:"{CGPoint=dd}"];
  v2019[0] = v278;
  v2018[1] = &off_47928;
  v1590 = xmmword_38040;
  v279 = [NSValue valueWithBytes:&v1590 objCType:"{CGPoint=dd}"];
  v2019[1] = v279;
  v2018[2] = &off_47940;
  v1589 = xmmword_380E0;
  v280 = [NSValue valueWithBytes:&v1589 objCType:"{CGPoint=dd}"];
  v2019[2] = v280;
  v281 = [NSDictionary dictionaryWithObjects:v2019 forKeys:v2018 count:3];
  [v3 scaledPoint:v281 withOverrides:{-43.0, -74.5}];
  v1[308] = v282;
  v1[309] = v283;

  v2016[0] = &off_47910;
  v1588 = xmmword_38060;
  v284 = [NSValue valueWithBytes:&v1588 objCType:"{CGPoint=dd}"];
  v2017[0] = v284;
  v2016[1] = &off_47928;
  v1587 = xmmword_38070;
  v285 = [NSValue valueWithBytes:&v1587 objCType:"{CGPoint=dd}"];
  v2017[1] = v285;
  v2016[2] = &off_47940;
  v1586 = xmmword_38110;
  v286 = [NSValue valueWithBytes:&v1586 objCType:"{CGPoint=dd}"];
  v2017[2] = v286;
  v287 = [NSDictionary dictionaryWithObjects:v2017 forKeys:v2016 count:3];
  [v3 scaledPoint:v287 withOverrides:{1.0, -74.5}];
  v1[310] = v288;
  v1[311] = v289;

  v2014[0] = &off_47910;
  v1585 = xmmword_381A0;
  v290 = [NSValue valueWithBytes:&v1585 objCType:"{CGPoint=dd}"];
  v2015[0] = v290;
  v2014[1] = &off_47928;
  v1584 = xmmword_381B0;
  v291 = [NSValue valueWithBytes:&v1584 objCType:"{CGPoint=dd}"];
  v2015[1] = v291;
  v2014[2] = &off_47940;
  v1583 = xmmword_381C0;
  v292 = [NSValue valueWithBytes:&v1583 objCType:"{CGPoint=dd}"];
  v2015[2] = v292;
  v293 = [NSDictionary dictionaryWithObjects:v2015 forKeys:v2014 count:3];
  [v3 scaledPoint:v293 withOverrides:{44.5, -78.0}];
  v1[24] = v294;
  v1[25] = v295;

  v2012[0] = &off_47910;
  v1582 = xmmword_381D0;
  v296 = [NSValue valueWithBytes:&v1582 objCType:"{CGPoint=dd}"];
  v2013[0] = v296;
  v2012[1] = &off_47928;
  v1581 = xmmword_381E0;
  v297 = [NSValue valueWithBytes:&v1581 objCType:"{CGPoint=dd}"];
  v2013[1] = v297;
  v2012[2] = &off_47940;
  v1580 = xmmword_381F0;
  v298 = [NSValue valueWithBytes:&v1580 objCType:"{CGPoint=dd}"];
  v2013[2] = v298;
  v299 = [NSDictionary dictionaryWithObjects:v2013 forKeys:v2012 count:3];
  [v3 scaledPoint:v299 withOverrides:62.0];
  v1[26] = v300;
  v1[27] = v301;

  v2010[0] = &off_47910;
  v1579 = xmmword_38200;
  v302 = [NSValue valueWithBytes:&v1579 objCType:"{CGPoint=dd}"];
  v2011[0] = v302;
  v2010[1] = &off_47928;
  v1578 = xmmword_38210;
  v303 = [NSValue valueWithBytes:&v1578 objCType:"{CGPoint=dd}"];
  v2011[1] = v303;
  v2010[2] = &off_47940;
  v1577 = xmmword_38220;
  v304 = [NSValue valueWithBytes:&v1577 objCType:"{CGPoint=dd}"];
  v2011[2] = v304;
  v305 = [NSDictionary dictionaryWithObjects:v2011 forKeys:v2010 count:3];
  [v3 scaledPoint:v305 withOverrides:{62.0, 0.0}];
  v1[28] = v306;
  v1[29] = v307;

  v2008[0] = &off_47910;
  v1576 = xmmword_38230;
  v308 = [NSValue valueWithBytes:&v1576 objCType:"{CGPoint=dd}"];
  v2009[0] = v308;
  v2008[1] = &off_47928;
  v1575 = xmmword_38240;
  v309 = [NSValue valueWithBytes:&v1575 objCType:"{CGPoint=dd}"];
  v2009[1] = v309;
  v2008[2] = &off_47940;
  v1574 = xmmword_38250;
  v310 = [NSValue valueWithBytes:&v1574 objCType:"{CGPoint=dd}"];
  v2009[2] = v310;
  v311 = [NSDictionary dictionaryWithObjects:v2009 forKeys:v2008 count:3];
  [v3 scaledPoint:v311 withOverrides:{61.0, 36.0}];
  v1[30] = v312;
  v1[31] = v313;

  v2006[0] = &off_47910;
  v1573 = xmmword_38260;
  v314 = [NSValue valueWithBytes:&v1573 objCType:"{CGPoint=dd}"];
  v2007[0] = v314;
  v2006[1] = &off_47928;
  v1572 = xmmword_38270;
  v315 = [NSValue valueWithBytes:&v1572 objCType:"{CGPoint=dd}"];
  v2007[1] = v315;
  v2006[2] = &off_47940;
  v1571 = xmmword_38280;
  v316 = [NSValue valueWithBytes:&v1571 objCType:"{CGPoint=dd}"];
  v2007[2] = v316;
  v317 = [NSDictionary dictionaryWithObjects:v2007 forKeys:v2006 count:3];
  [v3 scaledPoint:v317 withOverrides:45.0];
  v1[32] = v318;
  v1[33] = v319;

  v2004[0] = &off_47910;
  v1570 = xmmword_38290;
  v320 = [NSValue valueWithBytes:&v1570 objCType:"{CGPoint=dd}"];
  v2005[0] = v320;
  v2004[1] = &off_47928;
  v1569 = xmmword_382A0;
  v321 = [NSValue valueWithBytes:&v1569 objCType:"{CGPoint=dd}"];
  v2005[1] = v321;
  v2004[2] = &off_47940;
  v1568 = xmmword_382B0;
  v322 = [NSValue valueWithBytes:&v1568 objCType:"{CGPoint=dd}"];
  v2005[2] = v322;
  v323 = [NSDictionary dictionaryWithObjects:v2005 forKeys:v2004 count:3];
  [v3 scaledPoint:v323 withOverrides:1.0];
  v1[34] = v324;
  v1[35] = v325;

  v2002[0] = &off_47910;
  v1567 = xmmword_382C0;
  v326 = [NSValue valueWithBytes:&v1567 objCType:"{CGPoint=dd}"];
  v2003[0] = v326;
  v2002[1] = &off_47928;
  v1566 = xmmword_382D0;
  v327 = [NSValue valueWithBytes:&v1566 objCType:"{CGPoint=dd}"];
  v2003[1] = v327;
  v2002[2] = &off_47940;
  v1565 = xmmword_382E0;
  v328 = [NSValue valueWithBytes:&v1565 objCType:"{CGPoint=dd}"];
  v2003[2] = v328;
  v329 = [NSDictionary dictionaryWithObjects:v2003 forKeys:v2002 count:3];
  [v3 scaledPoint:v329 withOverrides:-42.5];
  v1[36] = v330;
  v1[37] = v331;

  v2000[0] = &off_47910;
  v1564 = xmmword_382F0;
  v332 = [NSValue valueWithBytes:&v1564 objCType:"{CGPoint=dd}"];
  v2001[0] = v332;
  v2000[1] = &off_47928;
  v1563 = xmmword_38300;
  v333 = [NSValue valueWithBytes:&v1563 objCType:"{CGPoint=dd}"];
  v2001[1] = v333;
  v2000[2] = &off_47940;
  v1562 = xmmword_38310;
  v334 = [NSValue valueWithBytes:&v1562 objCType:"{CGPoint=dd}"];
  v2001[2] = v334;
  v335 = [NSDictionary dictionaryWithObjects:v2001 forKeys:v2000 count:3];
  [v3 scaledPoint:v335 withOverrides:-59.0];
  v1[38] = v336;
  v1[39] = v337;

  v1998[0] = &off_47910;
  v1561 = xmmword_37FD0;
  v338 = [NSValue valueWithBytes:&v1561 objCType:"{CGPoint=dd}"];
  v1999[0] = v338;
  v1998[1] = &off_47928;
  v1560 = xmmword_37FE0;
  v339 = [NSValue valueWithBytes:&v1560 objCType:"{CGPoint=dd}"];
  v1999[1] = v339;
  v1998[2] = &off_47940;
  v1559 = xmmword_38320;
  v340 = [NSValue valueWithBytes:&v1559 objCType:"{CGPoint=dd}"];
  v1999[2] = v340;
  v341 = [NSDictionary dictionaryWithObjects:v1999 forKeys:v1998 count:3];
  [v3 scaledPoint:v341 withOverrides:{-59.0, 0.0}];
  v1[40] = v342;
  v1[41] = v343;

  v1996[0] = &off_47910;
  v1558 = xmmword_38330;
  v344 = [NSValue valueWithBytes:&v1558 objCType:"{CGPoint=dd}"];
  v1997[0] = v344;
  v1996[1] = &off_47928;
  v1557 = xmmword_38340;
  v345 = [NSValue valueWithBytes:&v1557 objCType:"{CGPoint=dd}"];
  v1997[1] = v345;
  v1996[2] = &off_47940;
  v1556 = xmmword_38350;
  v346 = [NSValue valueWithBytes:&v1556 objCType:"{CGPoint=dd}"];
  v1997[2] = v346;
  v347 = [NSDictionary dictionaryWithObjects:v1997 forKeys:v1996 count:3];
  [v3 scaledPoint:v347 withOverrides:{-59.0, -36.0}];
  v1[42] = v348;
  v1[43] = v349;

  v1994[0] = &off_47910;
  v1555 = xmmword_38360;
  v350 = [NSValue valueWithBytes:&v1555 objCType:"{CGPoint=dd}"];
  v1995[0] = v350;
  v1994[1] = &off_47928;
  v1554 = xmmword_38370;
  v351 = [NSValue valueWithBytes:&v1554 objCType:"{CGPoint=dd}"];
  v1995[1] = v351;
  v1994[2] = &off_47940;
  v1553 = xmmword_38380;
  v352 = [NSValue valueWithBytes:&v1553 objCType:"{CGPoint=dd}"];
  v1995[2] = v352;
  v353 = [NSDictionary dictionaryWithObjects:v1995 forKeys:v1994 count:3];
  [v3 scaledPoint:v353 withOverrides:{-42.5, -78.0}];
  v1[44] = v354;
  v1[45] = v355;

  v1992[0] = &off_47910;
  v1552 = xmmword_38390;
  v356 = [NSValue valueWithBytes:&v1552 objCType:"{CGPoint=dd}"];
  v1993[0] = v356;
  v1992[1] = &off_47928;
  v1551 = xmmword_383A0;
  v357 = [NSValue valueWithBytes:&v1551 objCType:"{CGPoint=dd}"];
  v1993[1] = v357;
  v1992[2] = &off_47940;
  v1550 = xmmword_383B0;
  v358 = [NSValue valueWithBytes:&v1550 objCType:"{CGPoint=dd}"];
  v1993[2] = v358;
  v359 = [NSDictionary dictionaryWithObjects:v1993 forKeys:v1992 count:3];
  [v3 scaledPoint:v359 withOverrides:{0.5, -79.0}];
  v1[46] = v360;
  v1[47] = v361;

  v1990[0] = &off_47910;
  v1549 = xmmword_383C0;
  v362 = [NSValue valueWithBytes:&v1549 objCType:"{CGPoint=dd}"];
  v1991[0] = v362;
  v1990[1] = &off_47928;
  v1548 = xmmword_383D0;
  v363 = [NSValue valueWithBytes:&v1548 objCType:"{CGPoint=dd}"];
  v1991[1] = v363;
  v1990[2] = &off_47940;
  v1547 = xmmword_383E0;
  v364 = [NSValue valueWithBytes:&v1547 objCType:"{CGPoint=dd}"];
  v1991[2] = v364;
  v365 = [NSDictionary dictionaryWithObjects:v1991 forKeys:v1990 count:3];
  [v3 scaledPoint:v365 withOverrides:{44.5, -74.5}];
  v1[120] = v366;
  v1[121] = v367;

  v1988[0] = &off_47910;
  v1546 = xmmword_381D0;
  v368 = [NSValue valueWithBytes:&v1546 objCType:"{CGPoint=dd}"];
  v1989[0] = v368;
  v1988[1] = &off_47928;
  v1545 = xmmword_381E0;
  v369 = [NSValue valueWithBytes:&v1545 objCType:"{CGPoint=dd}"];
  v1989[1] = v369;
  v1988[2] = &off_47940;
  v1544 = xmmword_381F0;
  v370 = [NSValue valueWithBytes:&v1544 objCType:"{CGPoint=dd}"];
  v1989[2] = v370;
  v371 = [NSDictionary dictionaryWithObjects:v1989 forKeys:v1988 count:3];
  [v3 scaledPoint:v371 withOverrides:{62.0, -35.5}];
  v1[122] = v372;
  v1[123] = v373;

  v1986[0] = &off_47910;
  v1543 = xmmword_38200;
  v374 = [NSValue valueWithBytes:&v1543 objCType:"{CGPoint=dd}"];
  v1987[0] = v374;
  v1986[1] = &off_47928;
  v1542 = xmmword_38210;
  v375 = [NSValue valueWithBytes:&v1542 objCType:"{CGPoint=dd}"];
  v1987[1] = v375;
  v1986[2] = &off_47940;
  v1541 = xmmword_38220;
  v376 = [NSValue valueWithBytes:&v1541 objCType:"{CGPoint=dd}"];
  v1987[2] = v376;
  v377 = [NSDictionary dictionaryWithObjects:v1987 forKeys:v1986 count:3];
  [v3 scaledPoint:v377 withOverrides:{62.0, 0.0}];
  v1[124] = v378;
  v1[125] = v379;

  v1984[0] = &off_47910;
  v1540 = xmmword_38230;
  v380 = [NSValue valueWithBytes:&v1540 objCType:"{CGPoint=dd}"];
  v1985[0] = v380;
  v1984[1] = &off_47928;
  v1539 = xmmword_38240;
  v381 = [NSValue valueWithBytes:&v1539 objCType:"{CGPoint=dd}"];
  v1985[1] = v381;
  v1984[2] = &off_47940;
  v1538 = xmmword_38250;
  v382 = [NSValue valueWithBytes:&v1538 objCType:"{CGPoint=dd}"];
  v1985[2] = v382;
  v383 = [NSDictionary dictionaryWithObjects:v1985 forKeys:v1984 count:3];
  [v3 scaledPoint:v383 withOverrides:{61.0, 36.0}];
  v1[126] = v384;
  v1[127] = v385;

  v1982[0] = &off_47910;
  v1537 = xmmword_38260;
  v386 = [NSValue valueWithBytes:&v1537 objCType:"{CGPoint=dd}"];
  v1983[0] = v386;
  v1982[1] = &off_47928;
  v1536 = xmmword_38270;
  v387 = [NSValue valueWithBytes:&v1536 objCType:"{CGPoint=dd}"];
  v1983[1] = v387;
  v1982[2] = &off_47940;
  v1535 = xmmword_38280;
  v388 = [NSValue valueWithBytes:&v1535 objCType:"{CGPoint=dd}"];
  v1983[2] = v388;
  v389 = [NSDictionary dictionaryWithObjects:v1983 forKeys:v1982 count:3];
  [v3 scaledPoint:v389 withOverrides:{45.0, 75.0}];
  v1[128] = v390;
  v1[129] = v391;

  v1980[0] = &off_47910;
  v1534 = xmmword_38290;
  v392 = [NSValue valueWithBytes:&v1534 objCType:"{CGPoint=dd}"];
  v1981[0] = v392;
  v1980[1] = &off_47928;
  v1533 = xmmword_382A0;
  v393 = [NSValue valueWithBytes:&v1533 objCType:"{CGPoint=dd}"];
  v1981[1] = v393;
  v1980[2] = &off_47940;
  v1532 = xmmword_382B0;
  v394 = [NSValue valueWithBytes:&v1532 objCType:"{CGPoint=dd}"];
  v1981[2] = v394;
  v395 = [NSDictionary dictionaryWithObjects:v1981 forKeys:v1980 count:3];
  [v3 scaledPoint:v395 withOverrides:{1.0, 74.5}];
  v1[130] = v396;
  v1[131] = v397;

  v1978[0] = &off_47910;
  v1531 = xmmword_382C0;
  v398 = [NSValue valueWithBytes:&v1531 objCType:"{CGPoint=dd}"];
  v1979[0] = v398;
  v1978[1] = &off_47928;
  v1530 = xmmword_382D0;
  v399 = [NSValue valueWithBytes:&v1530 objCType:"{CGPoint=dd}"];
  v1979[1] = v399;
  v1978[2] = &off_47940;
  v1529 = xmmword_382E0;
  v400 = [NSValue valueWithBytes:&v1529 objCType:"{CGPoint=dd}"];
  v1979[2] = v400;
  v401 = [NSDictionary dictionaryWithObjects:v1979 forKeys:v1978 count:3];
  [v3 scaledPoint:v401 withOverrides:{-42.5, 76.5}];
  v1[132] = v402;
  v1[133] = v403;

  v1976[0] = &off_47910;
  v1528 = xmmword_382F0;
  v404 = [NSValue valueWithBytes:&v1528 objCType:"{CGPoint=dd}"];
  v1977[0] = v404;
  v1976[1] = &off_47928;
  v1527 = xmmword_38300;
  v405 = [NSValue valueWithBytes:&v1527 objCType:"{CGPoint=dd}"];
  v1977[1] = v405;
  v1976[2] = &off_47940;
  v1526 = xmmword_38310;
  v406 = [NSValue valueWithBytes:&v1526 objCType:"{CGPoint=dd}"];
  v1977[2] = v406;
  v407 = [NSDictionary dictionaryWithObjects:v1977 forKeys:v1976 count:3];
  [v3 scaledPoint:v407 withOverrides:{-59.0, 36.5}];
  v1[134] = v408;
  v1[135] = v409;

  v1974[0] = &off_47910;
  v1525 = xmmword_37FD0;
  v410 = [NSValue valueWithBytes:&v1525 objCType:"{CGPoint=dd}"];
  v1975[0] = v410;
  v1974[1] = &off_47928;
  v1524 = xmmword_37FE0;
  v411 = [NSValue valueWithBytes:&v1524 objCType:"{CGPoint=dd}"];
  v1975[1] = v411;
  v1974[2] = &off_47940;
  v1523 = xmmword_38320;
  v412 = [NSValue valueWithBytes:&v1523 objCType:"{CGPoint=dd}"];
  v1975[2] = v412;
  v413 = [NSDictionary dictionaryWithObjects:v1975 forKeys:v1974 count:3];
  [v3 scaledPoint:v413 withOverrides:{-59.0, 0.0}];
  v1[136] = v414;
  v1[137] = v415;

  v1972[0] = &off_47910;
  v1522 = xmmword_38330;
  v416 = [NSValue valueWithBytes:&v1522 objCType:"{CGPoint=dd}"];
  v1973[0] = v416;
  v1972[1] = &off_47928;
  v1521 = xmmword_38340;
  v417 = [NSValue valueWithBytes:&v1521 objCType:"{CGPoint=dd}"];
  v1973[1] = v417;
  v1972[2] = &off_47940;
  v1520 = xmmword_38350;
  v418 = [NSValue valueWithBytes:&v1520 objCType:"{CGPoint=dd}"];
  v1973[2] = v418;
  v419 = [NSDictionary dictionaryWithObjects:v1973 forKeys:v1972 count:3];
  [v3 scaledPoint:v419 withOverrides:{-59.0, -36.0}];
  v1[138] = v420;
  v1[139] = v421;

  v1970[0] = &off_47910;
  v1519 = xmmword_383F0;
  v422 = [NSValue valueWithBytes:&v1519 objCType:"{CGPoint=dd}"];
  v1971[0] = v422;
  v1970[1] = &off_47928;
  v1518 = xmmword_38400;
  v423 = [NSValue valueWithBytes:&v1518 objCType:"{CGPoint=dd}"];
  v1971[1] = v423;
  v1970[2] = &off_47940;
  v1517 = xmmword_38410;
  v424 = [NSValue valueWithBytes:&v1517 objCType:"{CGPoint=dd}"];
  v1971[2] = v424;
  v425 = [NSDictionary dictionaryWithObjects:v1971 forKeys:v1970 count:3];
  [v3 scaledPoint:v425 withOverrides:{-42.5, -74.5}];
  v1[140] = v426;
  v1[141] = v427;

  v1968[0] = &off_47910;
  v1516 = xmmword_38420;
  v428 = [NSValue valueWithBytes:&v1516 objCType:"{CGPoint=dd}"];
  v1969[0] = v428;
  v1968[1] = &off_47928;
  v1515 = xmmword_38430;
  v429 = [NSValue valueWithBytes:&v1515 objCType:"{CGPoint=dd}"];
  v1969[1] = v429;
  v1968[2] = &off_47940;
  v1514 = xmmword_38440;
  v430 = [NSValue valueWithBytes:&v1514 objCType:"{CGPoint=dd}"];
  v1969[2] = v430;
  v431 = [NSDictionary dictionaryWithObjects:v1969 forKeys:v1968 count:3];
  [v3 scaledPoint:v431 withOverrides:{0.5, -75.0}];
  v1[142] = v432;
  v1[143] = v433;

  v1966[0] = &off_47910;
  v1513 = xmmword_38450;
  v434 = [NSValue valueWithBytes:&v1513 objCType:"{CGPoint=dd}"];
  v1967[0] = v434;
  v1966[1] = &off_47928;
  v1512 = xmmword_37E60;
  v435 = [NSValue valueWithBytes:&v1512 objCType:"{CGPoint=dd}"];
  v1967[1] = v435;
  v1966[2] = &off_47940;
  v1511 = xmmword_380B0;
  v436 = [NSValue valueWithBytes:&v1511 objCType:"{CGPoint=dd}"];
  v1967[2] = v436;
  v437 = [NSDictionary dictionaryWithObjects:v1967 forKeys:v1966 count:3];
  [v3 scaledPoint:v437 withOverrides:{44.5, -75.0}];
  v1[216] = v438;
  v1[217] = v439;

  v1964[0] = &off_47910;
  v1510 = xmmword_38460;
  v440 = [NSValue valueWithBytes:&v1510 objCType:"{CGPoint=dd}"];
  v1965[0] = v440;
  v1964[1] = &off_47928;
  v1509 = xmmword_37E90;
  v441 = [NSValue valueWithBytes:&v1509 objCType:"{CGPoint=dd}"];
  v1965[1] = v441;
  v1964[2] = &off_47940;
  v1508 = xmmword_38120;
  v442 = [NSValue valueWithBytes:&v1508 objCType:"{CGPoint=dd}"];
  v1965[2] = v442;
  v443 = [NSDictionary dictionaryWithObjects:v1965 forKeys:v1964 count:3];
  [v3 scaledPoint:v443 withOverrides:{61.0, -36.5}];
  v1[218] = v444;
  v1[219] = v445;

  v1962[0] = &off_47910;
  v1507 = xmmword_38470;
  v446 = [NSValue valueWithBytes:&v1507 objCType:"{CGPoint=dd}"];
  v1963[0] = v446;
  v1962[1] = &off_47928;
  v1506 = xmmword_38480;
  v447 = [NSValue valueWithBytes:&v1506 objCType:"{CGPoint=dd}"];
  v1963[1] = v447;
  v1962[2] = &off_47940;
  v1505 = xmmword_38490;
  v448 = [NSValue valueWithBytes:&v1505 objCType:"{CGPoint=dd}"];
  v1963[2] = v448;
  v449 = [NSDictionary dictionaryWithObjects:v1963 forKeys:v1962 count:3];
  [v3 scaledPoint:v449 withOverrides:{61.0, -1.0}];
  v1[220] = v450;
  v1[221] = v451;

  v1960[0] = &off_47910;
  v1504 = xmmword_384A0;
  v452 = [NSValue valueWithBytes:&v1504 objCType:"{CGPoint=dd}"];
  v1961[0] = v452;
  v1960[1] = &off_47928;
  v1503 = xmmword_384B0;
  v453 = [NSValue valueWithBytes:&v1503 objCType:"{CGPoint=dd}"];
  v1961[1] = v453;
  v1960[2] = &off_47940;
  v1502 = xmmword_384C0;
  v454 = [NSValue valueWithBytes:&v1502 objCType:"{CGPoint=dd}"];
  v1961[2] = v454;
  v455 = [NSDictionary dictionaryWithObjects:v1961 forKeys:v1960 count:3];
  [v3 scaledPoint:v455 withOverrides:?];
  v1[222] = v456;
  v1[223] = v457;

  v1958[0] = &off_47910;
  v1501 = xmmword_384D0;
  v458 = [NSValue valueWithBytes:&v1501 objCType:"{CGPoint=dd}"];
  v1959[0] = v458;
  v1958[1] = &off_47928;
  v1500 = xmmword_384E0;
  v459 = [NSValue valueWithBytes:&v1500 objCType:"{CGPoint=dd}"];
  v1959[1] = v459;
  v1958[2] = &off_47940;
  v1499 = xmmword_384F0;
  v460 = [NSValue valueWithBytes:&v1499 objCType:"{CGPoint=dd}"];
  v1959[2] = v460;
  v461 = [NSDictionary dictionaryWithObjects:v1959 forKeys:v1958 count:3];
  [v3 scaledPoint:v461 withOverrides:{45.0, 75.0}];
  v1[224] = v462;
  v1[225] = v463;

  v1956[0] = &off_47910;
  v1498 = xmmword_38500;
  v464 = [NSValue valueWithBytes:&v1498 objCType:"{CGPoint=dd}"];
  v1957[0] = v464;
  v1956[1] = &off_47928;
  v1497 = xmmword_38510;
  v465 = [NSValue valueWithBytes:&v1497 objCType:"{CGPoint=dd}"];
  v1957[1] = v465;
  v1956[2] = &off_47940;
  v1496 = xmmword_38520;
  v466 = [NSValue valueWithBytes:&v1496 objCType:"{CGPoint=dd}"];
  v1957[2] = v466;
  v467 = [NSDictionary dictionaryWithObjects:v1957 forKeys:v1956 count:3];
  [v3 scaledPoint:v467 withOverrides:{1.5, 74.5}];
  v1[226] = v468;
  v1[227] = v469;

  v1954[0] = &off_47910;
  v1495 = xmmword_38530;
  v470 = [NSValue valueWithBytes:&v1495 objCType:"{CGPoint=dd}"];
  v1955[0] = v470;
  v1954[1] = &off_47928;
  v1494 = xmmword_38540;
  v471 = [NSValue valueWithBytes:&v1494 objCType:"{CGPoint=dd}"];
  v1955[1] = v471;
  v1954[2] = &off_47940;
  v1493 = xmmword_38550;
  v472 = [NSValue valueWithBytes:&v1493 objCType:"{CGPoint=dd}"];
  v1955[2] = v472;
  v473 = [NSDictionary dictionaryWithObjects:v1955 forKeys:v1954 count:3];
  [v3 scaledPoint:v473 withOverrides:?];
  v1[228] = v474;
  v1[229] = v475;

  v1952[0] = &off_47910;
  v1492 = xmmword_38560;
  v476 = [NSValue valueWithBytes:&v1492 objCType:"{CGPoint=dd}"];
  v1953[0] = v476;
  v1952[1] = &off_47928;
  v1491 = xmmword_38570;
  v477 = [NSValue valueWithBytes:&v1491 objCType:"{CGPoint=dd}"];
  v1953[1] = v477;
  v1952[2] = &off_47940;
  v1490 = xmmword_38580;
  v478 = [NSValue valueWithBytes:&v1490 objCType:"{CGPoint=dd}"];
  v1953[2] = v478;
  v479 = [NSDictionary dictionaryWithObjects:v1953 forKeys:v1952 count:3];
  [v3 scaledPoint:v479 withOverrides:-59.0];
  v1[230] = v480;
  v1[231] = v481;

  v1950[0] = &off_47910;
  v1489 = xmmword_38590;
  v482 = [NSValue valueWithBytes:&v1489 objCType:"{CGPoint=dd}"];
  v1951[0] = v482;
  v1950[1] = &off_47928;
  v1488 = xmmword_385A0;
  v483 = [NSValue valueWithBytes:&v1488 objCType:"{CGPoint=dd}"];
  v1951[1] = v483;
  v1950[2] = &off_47940;
  v1487 = xmmword_385B0;
  v484 = [NSValue valueWithBytes:&v1487 objCType:"{CGPoint=dd}"];
  v1951[2] = v484;
  v485 = [NSDictionary dictionaryWithObjects:v1951 forKeys:v1950 count:3];
  [v3 scaledPoint:v485 withOverrides:{-58.0, -1.0}];
  v1[232] = v486;
  v1[233] = v487;

  v1948[0] = &off_47910;
  v1486 = xmmword_385C0;
  v488 = [NSValue valueWithBytes:&v1486 objCType:"{CGPoint=dd}"];
  v1949[0] = v488;
  v1948[1] = &off_47928;
  v1485 = xmmword_385D0;
  v489 = [NSValue valueWithBytes:&v1485 objCType:"{CGPoint=dd}"];
  v1949[1] = v489;
  v1948[2] = &off_47940;
  v1484 = xmmword_385E0;
  v490 = [NSValue valueWithBytes:&v1484 objCType:"{CGPoint=dd}"];
  v1949[2] = v490;
  v491 = [NSDictionary dictionaryWithObjects:v1949 forKeys:v1948 count:3];
  [v3 scaledPoint:v491 withOverrides:{-59.0, -37.0}];
  v1[234] = v492;
  v1[235] = v493;

  v1946[0] = &off_47910;
  v1483 = xmmword_385F0;
  v494 = [NSValue valueWithBytes:&v1483 objCType:"{CGPoint=dd}"];
  v1947[0] = v494;
  v1946[1] = &off_47928;
  v1482 = xmmword_38600;
  v495 = [NSValue valueWithBytes:&v1482 objCType:"{CGPoint=dd}"];
  v1947[1] = v495;
  v1946[2] = &off_47940;
  v1481 = xmmword_38610;
  v496 = [NSValue valueWithBytes:&v1481 objCType:"{CGPoint=dd}"];
  v1947[2] = v496;
  v497 = [NSDictionary dictionaryWithObjects:v1947 forKeys:v1946 count:3];
  [v3 scaledPoint:v497 withOverrides:{-42.5, -75.0}];
  v1[236] = v498;
  v1[237] = v499;

  v1944[0] = &off_47910;
  v1480 = xmmword_38060;
  v500 = [NSValue valueWithBytes:&v1480 objCType:"{CGPoint=dd}"];
  v1945[0] = v500;
  v1944[1] = &off_47928;
  v1479 = xmmword_38070;
  v501 = [NSValue valueWithBytes:&v1479 objCType:"{CGPoint=dd}"];
  v1945[1] = v501;
  v1944[2] = &off_47940;
  v1478 = xmmword_38620;
  v502 = [NSValue valueWithBytes:&v1478 objCType:"{CGPoint=dd}"];
  v1945[2] = v502;
  v503 = [NSDictionary dictionaryWithObjects:v1945 forKeys:v1944 count:3];
  [v3 scaledPoint:v503 withOverrides:{1.0, -74.5}];
  v1[238] = v504;
  v1[239] = v505;

  v1942[0] = &off_47910;
  v1477 = xmmword_38450;
  v506 = [NSValue valueWithBytes:&v1477 objCType:"{CGPoint=dd}"];
  v1943[0] = v506;
  v1942[1] = &off_47928;
  v1476 = xmmword_37E60;
  v507 = [NSValue valueWithBytes:&v1476 objCType:"{CGPoint=dd}"];
  v1943[1] = v507;
  v1942[2] = &off_47940;
  v1475 = xmmword_380B0;
  v508 = [NSValue valueWithBytes:&v1475 objCType:"{CGPoint=dd}"];
  v1943[2] = v508;
  v509 = [NSDictionary dictionaryWithObjects:v1943 forKeys:v1942 count:3];
  [v3 scaledPoint:v509 withOverrides:{44.5, -75.0}];
  v1[312] = v510;
  v1[313] = v511;

  v1940[0] = &off_47910;
  v1474 = xmmword_38460;
  v512 = [NSValue valueWithBytes:&v1474 objCType:"{CGPoint=dd}"];
  v1941[0] = v512;
  v1940[1] = &off_47928;
  v1473 = xmmword_37E90;
  v513 = [NSValue valueWithBytes:&v1473 objCType:"{CGPoint=dd}"];
  v1941[1] = v513;
  v1940[2] = &off_47940;
  v1472 = xmmword_38120;
  v514 = [NSValue valueWithBytes:&v1472 objCType:"{CGPoint=dd}"];
  v1941[2] = v514;
  v515 = [NSDictionary dictionaryWithObjects:v1941 forKeys:v1940 count:3];
  [v3 scaledPoint:v515 withOverrides:{61.0, -36.5}];
  v1[314] = v516;
  v1[315] = v517;

  v1938[0] = &off_47910;
  v1471 = xmmword_38470;
  v518 = [NSValue valueWithBytes:&v1471 objCType:"{CGPoint=dd}"];
  v1939[0] = v518;
  v1938[1] = &off_47928;
  v1470 = xmmword_38480;
  v519 = [NSValue valueWithBytes:&v1470 objCType:"{CGPoint=dd}"];
  v1939[1] = v519;
  v1938[2] = &off_47940;
  v1469 = xmmword_38490;
  v520 = [NSValue valueWithBytes:&v1469 objCType:"{CGPoint=dd}"];
  v1939[2] = v520;
  v521 = [NSDictionary dictionaryWithObjects:v1939 forKeys:v1938 count:3];
  [v3 scaledPoint:v521 withOverrides:{61.0, -1.0}];
  v1[316] = v522;
  v1[317] = v523;

  v1936[0] = &off_47910;
  v1468 = xmmword_384A0;
  v524 = [NSValue valueWithBytes:&v1468 objCType:"{CGPoint=dd}"];
  v1937[0] = v524;
  v1936[1] = &off_47928;
  v1467 = xmmword_384B0;
  v525 = [NSValue valueWithBytes:&v1467 objCType:"{CGPoint=dd}"];
  v1937[1] = v525;
  v1936[2] = &off_47940;
  v1466 = xmmword_384C0;
  v526 = [NSValue valueWithBytes:&v1466 objCType:"{CGPoint=dd}"];
  v1937[2] = v526;
  v527 = [NSDictionary dictionaryWithObjects:v1937 forKeys:v1936 count:3];
  [v3 scaledPoint:v527 withOverrides:{60.0, 37.0}];
  v1[318] = v528;
  v1[319] = v529;

  v1934[0] = &off_47910;
  v1465 = xmmword_384D0;
  v530 = [NSValue valueWithBytes:&v1465 objCType:"{CGPoint=dd}"];
  v1935[0] = v530;
  v1934[1] = &off_47928;
  v1464 = xmmword_384E0;
  v531 = [NSValue valueWithBytes:&v1464 objCType:"{CGPoint=dd}"];
  v1935[1] = v531;
  v1934[2] = &off_47940;
  v1463 = xmmword_384F0;
  v532 = [NSValue valueWithBytes:&v1463 objCType:"{CGPoint=dd}"];
  v1935[2] = v532;
  v533 = [NSDictionary dictionaryWithObjects:v1935 forKeys:v1934 count:3];
  [v3 scaledPoint:v533 withOverrides:{45.0, 75.0}];
  v1[320] = v534;
  v1[321] = v535;

  v1932[0] = &off_47910;
  v1462 = xmmword_38500;
  v536 = [NSValue valueWithBytes:&v1462 objCType:"{CGPoint=dd}"];
  v1933[0] = v536;
  v1932[1] = &off_47928;
  v1461 = xmmword_38510;
  v537 = [NSValue valueWithBytes:&v1461 objCType:"{CGPoint=dd}"];
  v1933[1] = v537;
  v1932[2] = &off_47940;
  v1460 = xmmword_38520;
  v538 = [NSValue valueWithBytes:&v1460 objCType:"{CGPoint=dd}"];
  v1933[2] = v538;
  v539 = [NSDictionary dictionaryWithObjects:v1933 forKeys:v1932 count:3];
  [v3 scaledPoint:v539 withOverrides:{1.5, 74.5}];
  v1[322] = v540;
  v1[323] = v541;

  v1930[0] = &off_47910;
  v1459 = xmmword_38530;
  v542 = [NSValue valueWithBytes:&v1459 objCType:"{CGPoint=dd}"];
  v1931[0] = v542;
  v1930[1] = &off_47928;
  v1458 = xmmword_38540;
  v543 = [NSValue valueWithBytes:&v1458 objCType:"{CGPoint=dd}"];
  v1931[1] = v543;
  v1930[2] = &off_47940;
  v1457 = xmmword_38550;
  v544 = [NSValue valueWithBytes:&v1457 objCType:"{CGPoint=dd}"];
  v1931[2] = v544;
  v545 = [NSDictionary dictionaryWithObjects:v1931 forKeys:v1930 count:3];
  [v3 scaledPoint:v545 withOverrides:{-41.5, 75.5}];
  v1[324] = v546;
  v1[325] = v547;

  v1928[0] = &off_47910;
  v1456 = xmmword_38560;
  v548 = [NSValue valueWithBytes:&v1456 objCType:"{CGPoint=dd}"];
  v1929[0] = v548;
  v1928[1] = &off_47928;
  v1455 = xmmword_38570;
  v549 = [NSValue valueWithBytes:&v1455 objCType:"{CGPoint=dd}"];
  v1929[1] = v549;
  v1928[2] = &off_47940;
  v1454 = xmmword_38580;
  v550 = [NSValue valueWithBytes:&v1454 objCType:"{CGPoint=dd}"];
  v1929[2] = v550;
  v551 = [NSDictionary dictionaryWithObjects:v1929 forKeys:v1928 count:3];
  [v3 scaledPoint:v551 withOverrides:{-59.0, 34.5}];
  v1[326] = v552;
  v1[327] = v553;

  v1926[0] = &off_47910;
  v1453 = xmmword_38590;
  v554 = [NSValue valueWithBytes:&v1453 objCType:"{CGPoint=dd}"];
  v1927[0] = v554;
  v1926[1] = &off_47928;
  v1452 = xmmword_385A0;
  v555 = [NSValue valueWithBytes:&v1452 objCType:"{CGPoint=dd}"];
  v1927[1] = v555;
  v1926[2] = &off_47940;
  v1451 = xmmword_385B0;
  v556 = [NSValue valueWithBytes:&v1451 objCType:"{CGPoint=dd}"];
  v1927[2] = v556;
  v557 = [NSDictionary dictionaryWithObjects:v1927 forKeys:v1926 count:3];
  [v3 scaledPoint:v557 withOverrides:{-58.0, -1.0}];
  v1[328] = v558;
  v1[329] = v559;

  v1924[0] = &off_47910;
  v1450 = xmmword_385C0;
  v560 = [NSValue valueWithBytes:&v1450 objCType:"{CGPoint=dd}"];
  v1925[0] = v560;
  v1924[1] = &off_47928;
  v1449 = xmmword_385D0;
  v561 = [NSValue valueWithBytes:&v1449 objCType:"{CGPoint=dd}"];
  v1925[1] = v561;
  v1924[2] = &off_47940;
  v1448 = xmmword_385E0;
  v562 = [NSValue valueWithBytes:&v1448 objCType:"{CGPoint=dd}"];
  v1925[2] = v562;
  v563 = [NSDictionary dictionaryWithObjects:v1925 forKeys:v1924 count:3];
  [v3 scaledPoint:v563 withOverrides:{-59.0, -37.0}];
  v1[330] = v564;
  v1[331] = v565;

  v1922[0] = &off_47910;
  v1447 = xmmword_385F0;
  v566 = [NSValue valueWithBytes:&v1447 objCType:"{CGPoint=dd}"];
  v1923[0] = v566;
  v1922[1] = &off_47928;
  v1446 = xmmword_38600;
  v567 = [NSValue valueWithBytes:&v1446 objCType:"{CGPoint=dd}"];
  v1923[1] = v567;
  v1922[2] = &off_47940;
  v1445 = xmmword_38610;
  v568 = [NSValue valueWithBytes:&v1445 objCType:"{CGPoint=dd}"];
  v1923[2] = v568;
  v569 = [NSDictionary dictionaryWithObjects:v1923 forKeys:v1922 count:3];
  [v3 scaledPoint:v569 withOverrides:{-42.5, -75.0}];
  v1[332] = v570;
  v1[333] = v571;

  v1920[0] = &off_47910;
  v1444 = xmmword_38060;
  v572 = [NSValue valueWithBytes:&v1444 objCType:"{CGPoint=dd}"];
  v1921[0] = v572;
  v1920[1] = &off_47928;
  v1443 = xmmword_38070;
  v573 = [NSValue valueWithBytes:&v1443 objCType:"{CGPoint=dd}"];
  v1921[1] = v573;
  v1920[2] = &off_47940;
  v1442 = xmmword_38620;
  v574 = [NSValue valueWithBytes:&v1442 objCType:"{CGPoint=dd}"];
  v1921[2] = v574;
  v575 = [NSDictionary dictionaryWithObjects:v1921 forKeys:v1920 count:3];
  [v3 scaledPoint:v575 withOverrides:{1.0, -74.5}];
  v1[334] = v576;
  v1[335] = v577;

  v1918[0] = &off_47910;
  v1441 = xmmword_38630;
  v578 = [NSValue valueWithBytes:&v1441 objCType:"{CGPoint=dd}"];
  v1919[0] = v578;
  v1918[1] = &off_47928;
  v1440 = xmmword_38640;
  v579 = [NSValue valueWithBytes:&v1440 objCType:"{CGPoint=dd}"];
  v1919[1] = v579;
  v1918[2] = &off_47940;
  v1439 = xmmword_38650;
  v580 = [NSValue valueWithBytes:&v1439 objCType:"{CGPoint=dd}"];
  v1919[2] = v580;
  v581 = [NSDictionary dictionaryWithObjects:v1919 forKeys:v1918 count:3];
  [v3 scaledPoint:v581 withOverrides:{45.0, -78.5}];
  v1[48] = v582;
  v1[49] = v583;

  v1916[0] = &off_47910;
  v1438 = xmmword_38660;
  v584 = [NSValue valueWithBytes:&v1438 objCType:"{CGPoint=dd}"];
  v1917[0] = v584;
  v1916[1] = &off_47928;
  v1437 = xmmword_37E90;
  v585 = [NSValue valueWithBytes:&v1437 objCType:"{CGPoint=dd}"];
  v1917[1] = v585;
  v1916[2] = &off_47940;
  v1436 = xmmword_37EA0;
  v586 = [NSValue valueWithBytes:&v1436 objCType:"{CGPoint=dd}"];
  v1917[2] = v586;
  v587 = [NSDictionary dictionaryWithObjects:v1917 forKeys:v1916 count:3];
  [v3 scaledPoint:v587 withOverrides:{61.0, -36.5}];
  v1[50] = v588;
  v1[51] = v589;

  v1914[0] = &off_47910;
  v1435 = xmmword_38670;
  v590 = [NSValue valueWithBytes:&v1435 objCType:"{CGPoint=dd}"];
  v1915[0] = v590;
  v1914[1] = &off_47928;
  v1434 = xmmword_37EC0;
  v591 = [NSValue valueWithBytes:&v1434 objCType:"{CGPoint=dd}"];
  v1915[1] = v591;
  v1914[2] = &off_47940;
  v1433 = xmmword_38680;
  v592 = [NSValue valueWithBytes:&v1433 objCType:"{CGPoint=dd}"];
  v1915[2] = v592;
  v593 = [NSDictionary dictionaryWithObjects:v1915 forKeys:v1914 count:3];
  [v3 scaledPoint:v593 withOverrides:{61.0, 0.0}];
  v1[52] = v594;
  v1[53] = v595;

  v1912[0] = &off_47910;
  v1432 = xmmword_38690;
  v596 = [NSValue valueWithBytes:&v1432 objCType:"{CGPoint=dd}"];
  v1913[0] = v596;
  v1912[1] = &off_47928;
  v1431 = xmmword_386A0;
  v597 = [NSValue valueWithBytes:&v1431 objCType:"{CGPoint=dd}"];
  v1913[1] = v597;
  v1912[2] = &off_47940;
  v1430 = xmmword_386B0;
  v598 = [NSValue valueWithBytes:&v1430 objCType:"{CGPoint=dd}"];
  v1913[2] = v598;
  v599 = [NSDictionary dictionaryWithObjects:v1913 forKeys:v1912 count:3];
  [v3 scaledPoint:v599 withOverrides:{61.0, 37.5}];
  v1[54] = v600;
  v1[55] = v601;

  v1910[0] = &off_47910;
  v1429 = xmmword_386C0;
  v602 = [NSValue valueWithBytes:&v1429 objCType:"{CGPoint=dd}"];
  v1911[0] = v602;
  v1910[1] = &off_47928;
  v1428 = xmmword_386D0;
  v603 = [NSValue valueWithBytes:&v1428 objCType:"{CGPoint=dd}"];
  v1911[1] = v603;
  v1910[2] = &off_47940;
  v1427 = xmmword_386E0;
  v604 = [NSValue valueWithBytes:&v1427 objCType:"{CGPoint=dd}"];
  v1911[2] = v604;
  v605 = [NSDictionary dictionaryWithObjects:v1911 forKeys:v1910 count:3];
  [v3 scaledPoint:v605 withOverrides:{44.5, 79.5}];
  v1[56] = v606;
  v1[57] = v607;

  v1908[0] = &off_47910;
  v1426 = xmmword_386F0;
  v608 = [NSValue valueWithBytes:&v1426 objCType:"{CGPoint=dd}"];
  v1909[0] = v608;
  v1908[1] = &off_47928;
  v1425 = xmmword_38700;
  v609 = [NSValue valueWithBytes:&v1425 objCType:"{CGPoint=dd}"];
  v1909[1] = v609;
  v1908[2] = &off_47940;
  v1424 = xmmword_38710;
  v610 = [NSValue valueWithBytes:&v1424 objCType:"{CGPoint=dd}"];
  v1909[2] = v610;
  v611 = [NSDictionary dictionaryWithObjects:v1909 forKeys:v1908 count:3];
  [v3 scaledPoint:v611 withOverrides:{1.0, 79.5}];
  v1[58] = v612;
  v1[59] = v613;

  v1906[0] = &off_47910;
  v1423 = xmmword_38720;
  v614 = [NSValue valueWithBytes:&v1423 objCType:"{CGPoint=dd}"];
  v1907[0] = v614;
  v1906[1] = &off_47928;
  v1422 = xmmword_38730;
  v615 = [NSValue valueWithBytes:&v1422 objCType:"{CGPoint=dd}"];
  v1907[1] = v615;
  v1906[2] = &off_47940;
  v1421 = xmmword_38740;
  v616 = [NSValue valueWithBytes:&v1421 objCType:"{CGPoint=dd}"];
  v1907[2] = v616;
  v617 = [NSDictionary dictionaryWithObjects:v1907 forKeys:v1906 count:3];
  [v3 scaledPoint:v617 withOverrides:{-43.5, 79.5}];
  v1[60] = v618;
  v1[61] = v619;

  v1904[0] = &off_47910;
  v1420 = xmmword_38750;
  v620 = [NSValue valueWithBytes:&v1420 objCType:"{CGPoint=dd}"];
  v1905[0] = v620;
  v1904[1] = &off_47928;
  v1419 = xmmword_38760;
  v621 = [NSValue valueWithBytes:&v1419 objCType:"{CGPoint=dd}"];
  v1905[1] = v621;
  v1904[2] = &off_47940;
  v1418 = xmmword_38770;
  v622 = [NSValue valueWithBytes:&v1418 objCType:"{CGPoint=dd}"];
  v1905[2] = v622;
  v623 = [NSDictionary dictionaryWithObjects:v1905 forKeys:v1904 count:3];
  [v3 scaledPoint:v623 withOverrides:{-60.0, 37.5}];
  v1[62] = v624;
  v1[63] = v625;

  v1902[0] = &off_47910;
  v1417 = xmmword_38780;
  v626 = [NSValue valueWithBytes:&v1417 objCType:"{CGPoint=dd}"];
  v1903[0] = v626;
  v1902[1] = &off_47928;
  v1416 = xmmword_38790;
  v627 = [NSValue valueWithBytes:&v1416 objCType:"{CGPoint=dd}"];
  v1903[1] = v627;
  v1902[2] = &off_47940;
  v1415 = xmmword_387A0;
  v628 = [NSValue valueWithBytes:&v1415 objCType:"{CGPoint=dd}"];
  v1903[2] = v628;
  v629 = [NSDictionary dictionaryWithObjects:v1903 forKeys:v1902 count:3];
  [v3 scaledPoint:v629 withOverrides:{-60.0, 0.0}];
  v1[64] = v630;
  v1[65] = v631;

  v1900[0] = &off_47910;
  v1414 = xmmword_387B0;
  v632 = [NSValue valueWithBytes:&v1414 objCType:"{CGPoint=dd}"];
  v1901[0] = v632;
  v1900[1] = &off_47928;
  v1413 = xmmword_387C0;
  v633 = [NSValue valueWithBytes:&v1413 objCType:"{CGPoint=dd}"];
  v1901[1] = v633;
  v1900[2] = &off_47940;
  v1412 = xmmword_387D0;
  v634 = [NSValue valueWithBytes:&v1412 objCType:"{CGPoint=dd}"];
  v1901[2] = v634;
  v635 = [NSDictionary dictionaryWithObjects:v1901 forKeys:v1900 count:3];
  [v3 scaledPoint:v635 withOverrides:{-60.0, -36.5}];
  v1[66] = v636;
  v1[67] = v637;

  v1898[0] = &off_47910;
  v1411 = xmmword_387E0;
  v638 = [NSValue valueWithBytes:&v1411 objCType:"{CGPoint=dd}"];
  v1899[0] = v638;
  v1898[1] = &off_47928;
  v1410 = xmmword_387F0;
  v639 = [NSValue valueWithBytes:&v1410 objCType:"{CGPoint=dd}"];
  v1899[1] = v639;
  v1898[2] = &off_47940;
  v1409 = xmmword_38800;
  v640 = [NSValue valueWithBytes:&v1409 objCType:"{CGPoint=dd}"];
  v1899[2] = v640;
  v641 = [NSDictionary dictionaryWithObjects:v1899 forKeys:v1898 count:3];
  [v3 scaledPoint:v641 withOverrides:{-43.5, -78.5}];
  v1[68] = v642;
  v1[69] = v643;

  v1896[0] = &off_47910;
  v1408 = xmmword_38810;
  v644 = [NSValue valueWithBytes:&v1408 objCType:"{CGPoint=dd}"];
  v1897[0] = v644;
  v1896[1] = &off_47928;
  v1407 = xmmword_38820;
  v645 = [NSValue valueWithBytes:&v1407 objCType:"{CGPoint=dd}"];
  v1897[1] = v645;
  v1896[2] = &off_47940;
  v1406 = xmmword_38830;
  v646 = [NSValue valueWithBytes:&v1406 objCType:"{CGPoint=dd}"];
  v1897[2] = v646;
  v647 = [NSDictionary dictionaryWithObjects:v1897 forKeys:v1896 count:3];
  [v3 scaledPoint:v647 withOverrides:{0.5, -78.5}];
  v1[70] = v648;
  v1[71] = v649;

  v1894[0] = &off_47910;
  v1405 = xmmword_38840;
  v650 = [NSValue valueWithBytes:&v1405 objCType:"{CGPoint=dd}"];
  v1895[0] = v650;
  v1894[1] = &off_47928;
  v1404 = xmmword_38850;
  v651 = [NSValue valueWithBytes:&v1404 objCType:"{CGPoint=dd}"];
  v1895[1] = v651;
  v1894[2] = &off_47940;
  v1403 = xmmword_38860;
  v652 = [NSValue valueWithBytes:&v1403 objCType:"{CGPoint=dd}"];
  v1895[2] = v652;
  v653 = [NSDictionary dictionaryWithObjects:v1895 forKeys:v1894 count:3];
  [v3 scaledPoint:v653 withOverrides:{45.0, -75.0}];
  v1[144] = v654;
  v1[145] = v655;

  v1892[0] = &off_47910;
  v1402 = xmmword_38660;
  v656 = [NSValue valueWithBytes:&v1402 objCType:"{CGPoint=dd}"];
  v1893[0] = v656;
  v1892[1] = &off_47928;
  v1401 = xmmword_37E90;
  v657 = [NSValue valueWithBytes:&v1401 objCType:"{CGPoint=dd}"];
  v1893[1] = v657;
  v1892[2] = &off_47940;
  v1400 = xmmword_37EA0;
  v658 = [NSValue valueWithBytes:&v1400 objCType:"{CGPoint=dd}"];
  v1893[2] = v658;
  v659 = [NSDictionary dictionaryWithObjects:v1893 forKeys:v1892 count:3];
  [v3 scaledPoint:v659 withOverrides:{61.0, -36.5}];
  v1[146] = v660;
  v1[147] = v661;

  v1890[0] = &off_47910;
  v1399 = xmmword_38670;
  v662 = [NSValue valueWithBytes:&v1399 objCType:"{CGPoint=dd}"];
  v1891[0] = v662;
  v1890[1] = &off_47928;
  v1398 = xmmword_37EC0;
  v663 = [NSValue valueWithBytes:&v1398 objCType:"{CGPoint=dd}"];
  v1891[1] = v663;
  v1890[2] = &off_47940;
  v1397 = xmmword_38680;
  v664 = [NSValue valueWithBytes:&v1397 objCType:"{CGPoint=dd}"];
  v1891[2] = v664;
  v665 = [NSDictionary dictionaryWithObjects:v1891 forKeys:v1890 count:3];
  [v3 scaledPoint:v665 withOverrides:{61.0, 0.0}];
  v1[148] = v666;
  v1[149] = v667;

  v1888[0] = &off_47910;
  v1396 = xmmword_38690;
  v668 = [NSValue valueWithBytes:&v1396 objCType:"{CGPoint=dd}"];
  v1889[0] = v668;
  v1888[1] = &off_47928;
  v1395 = xmmword_386A0;
  v669 = [NSValue valueWithBytes:&v1395 objCType:"{CGPoint=dd}"];
  v1889[1] = v669;
  v1888[2] = &off_47940;
  v1394 = xmmword_386B0;
  v670 = [NSValue valueWithBytes:&v1394 objCType:"{CGPoint=dd}"];
  v1889[2] = v670;
  v671 = [NSDictionary dictionaryWithObjects:v1889 forKeys:v1888 count:3];
  [v3 scaledPoint:v671 withOverrides:{61.0, 37.5}];
  v1[150] = v672;
  v1[151] = v673;

  v1886[0] = &off_47910;
  v1393 = xmmword_386C0;
  v674 = [NSValue valueWithBytes:&v1393 objCType:"{CGPoint=dd}"];
  v1887[0] = v674;
  v1886[1] = &off_47928;
  v1392 = xmmword_386D0;
  v675 = [NSValue valueWithBytes:&v1392 objCType:"{CGPoint=dd}"];
  v1887[1] = v675;
  v1886[2] = &off_47940;
  v1391 = xmmword_386E0;
  v676 = [NSValue valueWithBytes:&v1391 objCType:"{CGPoint=dd}"];
  v1887[2] = v676;
  v677 = [NSDictionary dictionaryWithObjects:v1887 forKeys:v1886 count:3];
  [v3 scaledPoint:v677 withOverrides:{44.5, 79.5}];
  v1[152] = v678;
  v1[153] = v679;

  v1884[0] = &off_47910;
  v1390 = xmmword_386F0;
  v680 = [NSValue valueWithBytes:&v1390 objCType:"{CGPoint=dd}"];
  v1885[0] = v680;
  v1884[1] = &off_47928;
  v1389 = xmmword_38700;
  v681 = [NSValue valueWithBytes:&v1389 objCType:"{CGPoint=dd}"];
  v1885[1] = v681;
  v1884[2] = &off_47940;
  v1388 = xmmword_38710;
  v682 = [NSValue valueWithBytes:&v1388 objCType:"{CGPoint=dd}"];
  v1885[2] = v682;
  v683 = [NSDictionary dictionaryWithObjects:v1885 forKeys:v1884 count:3];
  [v3 scaledPoint:v683 withOverrides:{1.0, 79.5}];
  v1[154] = v684;
  v1[155] = v685;

  v1882[0] = &off_47910;
  v1387 = xmmword_38720;
  v686 = [NSValue valueWithBytes:&v1387 objCType:"{CGPoint=dd}"];
  v1883[0] = v686;
  v1882[1] = &off_47928;
  v1386 = xmmword_38730;
  v687 = [NSValue valueWithBytes:&v1386 objCType:"{CGPoint=dd}"];
  v1883[1] = v687;
  v1882[2] = &off_47940;
  v1385 = xmmword_38740;
  v688 = [NSValue valueWithBytes:&v1385 objCType:"{CGPoint=dd}"];
  v1883[2] = v688;
  v689 = [NSDictionary dictionaryWithObjects:v1883 forKeys:v1882 count:3];
  [v3 scaledPoint:v689 withOverrides:{-43.5, 79.5}];
  v1[156] = v690;
  v1[157] = v691;

  v1880[0] = &off_47910;
  v1384 = xmmword_38750;
  v692 = [NSValue valueWithBytes:&v1384 objCType:"{CGPoint=dd}"];
  v1881[0] = v692;
  v1880[1] = &off_47928;
  v1383 = xmmword_38760;
  v693 = [NSValue valueWithBytes:&v1383 objCType:"{CGPoint=dd}"];
  v1881[1] = v693;
  v1880[2] = &off_47940;
  v1382 = xmmword_38770;
  v694 = [NSValue valueWithBytes:&v1382 objCType:"{CGPoint=dd}"];
  v1881[2] = v694;
  v695 = [NSDictionary dictionaryWithObjects:v1881 forKeys:v1880 count:3];
  [v3 scaledPoint:v695 withOverrides:{-60.0, 37.5}];
  v1[158] = v696;
  v1[159] = v697;

  v1878[0] = &off_47910;
  v1381 = xmmword_38780;
  v698 = [NSValue valueWithBytes:&v1381 objCType:"{CGPoint=dd}"];
  v1879[0] = v698;
  v1878[1] = &off_47928;
  v1380 = xmmword_38790;
  v699 = [NSValue valueWithBytes:&v1380 objCType:"{CGPoint=dd}"];
  v1879[1] = v699;
  v1878[2] = &off_47940;
  v1379 = xmmword_387A0;
  v700 = [NSValue valueWithBytes:&v1379 objCType:"{CGPoint=dd}"];
  v1879[2] = v700;
  v701 = [NSDictionary dictionaryWithObjects:v1879 forKeys:v1878 count:3];
  [v3 scaledPoint:v701 withOverrides:{-60.0, 0.0}];
  v1[160] = v702;
  v1[161] = v703;

  v1876[0] = &off_47910;
  v1378 = xmmword_387B0;
  v704 = [NSValue valueWithBytes:&v1378 objCType:"{CGPoint=dd}"];
  v1877[0] = v704;
  v1876[1] = &off_47928;
  v1377 = xmmword_387C0;
  v705 = [NSValue valueWithBytes:&v1377 objCType:"{CGPoint=dd}"];
  v1877[1] = v705;
  v1876[2] = &off_47940;
  v1376 = xmmword_387D0;
  v706 = [NSValue valueWithBytes:&v1376 objCType:"{CGPoint=dd}"];
  v1877[2] = v706;
  v707 = [NSDictionary dictionaryWithObjects:v1877 forKeys:v1876 count:3];
  [v3 scaledPoint:v707 withOverrides:{-60.0, -36.5}];
  v1[162] = v708;
  v1[163] = v709;

  v1874[0] = &off_47910;
  v1375 = xmmword_38870;
  v710 = [NSValue valueWithBytes:&v1375 objCType:"{CGPoint=dd}"];
  v1875[0] = v710;
  v1874[1] = &off_47928;
  v1374 = xmmword_38880;
  v711 = [NSValue valueWithBytes:&v1374 objCType:"{CGPoint=dd}"];
  v1875[1] = v711;
  v1874[2] = &off_47940;
  v1373 = xmmword_38890;
  v712 = [NSValue valueWithBytes:&v1373 objCType:"{CGPoint=dd}"];
  v1875[2] = v712;
  v713 = [NSDictionary dictionaryWithObjects:v1875 forKeys:v1874 count:3];
  [v3 scaledPoint:v713 withOverrides:{-43.5, -75.0}];
  v1[164] = v714;
  v1[165] = v715;

  v1872[0] = &off_47910;
  v1372 = xmmword_388A0;
  v716 = [NSValue valueWithBytes:&v1372 objCType:"{CGPoint=dd}"];
  v1873[0] = v716;
  v1872[1] = &off_47928;
  v1371 = xmmword_388B0;
  v717 = [NSValue valueWithBytes:&v1371 objCType:"{CGPoint=dd}"];
  v1873[1] = v717;
  v1872[2] = &off_47940;
  v1370 = xmmword_388C0;
  v718 = [NSValue valueWithBytes:&v1370 objCType:"{CGPoint=dd}"];
  v1873[2] = v718;
  v719 = [NSDictionary dictionaryWithObjects:v1873 forKeys:v1872 count:3];
  [v3 scaledPoint:v719 withOverrides:{0.5, -75.0}];
  v1[166] = v720;
  v1[167] = v721;

  v1870[0] = &off_47910;
  v1369 = xmmword_38630;
  v722 = [NSValue valueWithBytes:&v1369 objCType:"{CGPoint=dd}"];
  v1871[0] = v722;
  v1870[1] = &off_47928;
  v1368 = xmmword_38640;
  v723 = [NSValue valueWithBytes:&v1368 objCType:"{CGPoint=dd}"];
  v1871[1] = v723;
  v1870[2] = &off_47940;
  v1367 = xmmword_388D0;
  v724 = [NSValue valueWithBytes:&v1367 objCType:"{CGPoint=dd}"];
  v1871[2] = v724;
  v725 = [NSDictionary dictionaryWithObjects:v1871 forKeys:v1870 count:3];
  [v3 scaledPoint:v725 withOverrides:{45.0, -75.0}];
  v1[240] = v726;
  v1[241] = v727;

  v1868[0] = &off_47910;
  v1366 = xmmword_38660;
  v728 = [NSValue valueWithBytes:&v1366 objCType:"{CGPoint=dd}"];
  v1869[0] = v728;
  v1868[1] = &off_47928;
  v1365 = xmmword_37E90;
  v729 = [NSValue valueWithBytes:&v1365 objCType:"{CGPoint=dd}"];
  v1869[1] = v729;
  v1868[2] = &off_47940;
  v1364 = xmmword_388E0;
  v730 = [NSValue valueWithBytes:&v1364 objCType:"{CGPoint=dd}"];
  v1869[2] = v730;
  v731 = [NSDictionary dictionaryWithObjects:v1869 forKeys:v1868 count:3];
  [v3 scaledPoint:v731 withOverrides:{61.0, -36.5}];
  v1[242] = v732;
  v1[243] = v733;

  v1866[0] = &off_47910;
  v1363 = xmmword_38670;
  v734 = [NSValue valueWithBytes:&v1363 objCType:"{CGPoint=dd}"];
  v1867[0] = v734;
  v1866[1] = &off_47928;
  v1362 = xmmword_37EC0;
  v735 = [NSValue valueWithBytes:&v1362 objCType:"{CGPoint=dd}"];
  v1867[1] = v735;
  v1866[2] = &off_47940;
  v1361 = xmmword_388F0;
  v736 = [NSValue valueWithBytes:&v1361 objCType:"{CGPoint=dd}"];
  v1867[2] = v736;
  v737 = [NSDictionary dictionaryWithObjects:v1867 forKeys:v1866 count:3];
  [v3 scaledPoint:v737 withOverrides:{61.0, 0.0}];
  v1[244] = v738;
  v1[245] = v739;

  v1864[0] = &off_47910;
  v1360 = xmmword_38690;
  v740 = [NSValue valueWithBytes:&v1360 objCType:"{CGPoint=dd}"];
  v1865[0] = v740;
  v1864[1] = &off_47928;
  v1359 = xmmword_386A0;
  v741 = [NSValue valueWithBytes:&v1359 objCType:"{CGPoint=dd}"];
  v1865[1] = v741;
  v1864[2] = &off_47940;
  v1358 = xmmword_38900;
  v742 = [NSValue valueWithBytes:&v1358 objCType:"{CGPoint=dd}"];
  v1865[2] = v742;
  v743 = [NSDictionary dictionaryWithObjects:v1865 forKeys:v1864 count:3];
  [v3 scaledPoint:v743 withOverrides:{61.0, 37.5}];
  v1[246] = v744;
  v1[247] = v745;

  v1862[0] = &off_47910;
  v1357 = xmmword_386C0;
  v746 = [NSValue valueWithBytes:&v1357 objCType:"{CGPoint=dd}"];
  v1863[0] = v746;
  v1862[1] = &off_47928;
  v1356 = xmmword_386D0;
  v747 = [NSValue valueWithBytes:&v1356 objCType:"{CGPoint=dd}"];
  v1863[1] = v747;
  v1862[2] = &off_47940;
  v1355 = xmmword_38910;
  v748 = [NSValue valueWithBytes:&v1355 objCType:"{CGPoint=dd}"];
  v1863[2] = v748;
  v749 = [NSDictionary dictionaryWithObjects:v1863 forKeys:v1862 count:3];
  [v3 scaledPoint:v749 withOverrides:{44.5, 75.0}];
  v1[248] = v750;
  v1[249] = v751;

  v1860[0] = &off_47910;
  v1354 = xmmword_386F0;
  v752 = [NSValue valueWithBytes:&v1354 objCType:"{CGPoint=dd}"];
  v1861[0] = v752;
  v1860[1] = &off_47928;
  v1353 = xmmword_38700;
  v753 = [NSValue valueWithBytes:&v1353 objCType:"{CGPoint=dd}"];
  v1861[1] = v753;
  v1860[2] = &off_47940;
  v1352 = xmmword_38920;
  v754 = [NSValue valueWithBytes:&v1352 objCType:"{CGPoint=dd}"];
  v1861[2] = v754;
  v755 = [NSDictionary dictionaryWithObjects:v1861 forKeys:v1860 count:3];
  [v3 scaledPoint:v755 withOverrides:{1.0, 75.0}];
  v1[250] = v756;
  v1[251] = v757;

  v1858[0] = &off_47910;
  v1351 = xmmword_38720;
  v758 = [NSValue valueWithBytes:&v1351 objCType:"{CGPoint=dd}"];
  v1859[0] = v758;
  v1858[1] = &off_47928;
  v1350 = xmmword_38730;
  v759 = [NSValue valueWithBytes:&v1350 objCType:"{CGPoint=dd}"];
  v1859[1] = v759;
  v1858[2] = &off_47940;
  v1349 = xmmword_38930;
  v760 = [NSValue valueWithBytes:&v1349 objCType:"{CGPoint=dd}"];
  v1859[2] = v760;
  v761 = [NSDictionary dictionaryWithObjects:v1859 forKeys:v1858 count:3];
  [v3 scaledPoint:v761 withOverrides:{-43.5, 75.0}];
  v1[252] = v762;
  v1[253] = v763;

  v1856[0] = &off_47910;
  v1348 = xmmword_38750;
  v764 = [NSValue valueWithBytes:&v1348 objCType:"{CGPoint=dd}"];
  v1857[0] = v764;
  v1856[1] = &off_47928;
  v1347 = xmmword_38760;
  v765 = [NSValue valueWithBytes:&v1347 objCType:"{CGPoint=dd}"];
  v1857[1] = v765;
  v1856[2] = &off_47940;
  v1346 = xmmword_38940;
  v766 = [NSValue valueWithBytes:&v1346 objCType:"{CGPoint=dd}"];
  v1857[2] = v766;
  v767 = [NSDictionary dictionaryWithObjects:v1857 forKeys:v1856 count:3];
  [v3 scaledPoint:v767 withOverrides:{-60.0, 37.5}];
  v1[254] = v768;
  v1[255] = v769;

  v1854[0] = &off_47910;
  v1345 = xmmword_38780;
  v770 = [NSValue valueWithBytes:&v1345 objCType:"{CGPoint=dd}"];
  v1855[0] = v770;
  v1854[1] = &off_47928;
  v1344 = xmmword_38790;
  v771 = [NSValue valueWithBytes:&v1344 objCType:"{CGPoint=dd}"];
  v1855[1] = v771;
  v1854[2] = &off_47940;
  v1343 = xmmword_38950;
  v772 = [NSValue valueWithBytes:&v1343 objCType:"{CGPoint=dd}"];
  v1855[2] = v772;
  v773 = [NSDictionary dictionaryWithObjects:v1855 forKeys:v1854 count:3];
  [v3 scaledPoint:v773 withOverrides:{-60.0, 0.0}];
  v1[256] = v774;
  v1[257] = v775;

  v1852[0] = &off_47910;
  v1342 = xmmword_387B0;
  v776 = [NSValue valueWithBytes:&v1342 objCType:"{CGPoint=dd}"];
  v1853[0] = v776;
  v1852[1] = &off_47928;
  v1341 = xmmword_387C0;
  v777 = [NSValue valueWithBytes:&v1341 objCType:"{CGPoint=dd}"];
  v1853[1] = v777;
  v1852[2] = &off_47940;
  v1340 = xmmword_38960;
  v778 = [NSValue valueWithBytes:&v1340 objCType:"{CGPoint=dd}"];
  v1853[2] = v778;
  v779 = [NSDictionary dictionaryWithObjects:v1853 forKeys:v1852 count:3];
  [v3 scaledPoint:v779 withOverrides:{-60.0, -36.5}];
  v1[258] = v780;
  v1[259] = v781;

  v1850[0] = &off_47910;
  v1339 = xmmword_387E0;
  v782 = [NSValue valueWithBytes:&v1339 objCType:"{CGPoint=dd}"];
  v1851[0] = v782;
  v1850[1] = &off_47928;
  v1338 = xmmword_387F0;
  v783 = [NSValue valueWithBytes:&v1338 objCType:"{CGPoint=dd}"];
  v1851[1] = v783;
  v1850[2] = &off_47940;
  v1337 = xmmword_38970;
  v784 = [NSValue valueWithBytes:&v1337 objCType:"{CGPoint=dd}"];
  v1851[2] = v784;
  v785 = [NSDictionary dictionaryWithObjects:v1851 forKeys:v1850 count:3];
  [v3 scaledPoint:v785 withOverrides:{-43.5, -75.0}];
  v1[260] = v786;
  v1[261] = v787;

  v1848[0] = &off_47910;
  v1336 = xmmword_38810;
  v788 = [NSValue valueWithBytes:&v1336 objCType:"{CGPoint=dd}"];
  v1849[0] = v788;
  v1848[1] = &off_47928;
  v1335 = xmmword_38820;
  v789 = [NSValue valueWithBytes:&v1335 objCType:"{CGPoint=dd}"];
  v1849[1] = v789;
  v1848[2] = &off_47940;
  v1334 = xmmword_388C0;
  v790 = [NSValue valueWithBytes:&v1334 objCType:"{CGPoint=dd}"];
  v1849[2] = v790;
  v791 = [NSDictionary dictionaryWithObjects:v1849 forKeys:v1848 count:3];
  [v3 scaledPoint:v791 withOverrides:{0.5, -75.0}];
  v1[262] = v792;
  v1[263] = v793;

  v1846[0] = &off_47910;
  v1333[0] = 0x4044400000000000;
  v1333[1] = 0xC051000000000000;
  v794 = [NSValue valueWithBytes:v1333 objCType:"{CGPoint=dd}"];
  v1847[0] = v794;
  v1846[1] = &off_47928;
  v1332 = xmmword_38640;
  v795 = [NSValue valueWithBytes:&v1332 objCType:"{CGPoint=dd}"];
  v1847[1] = v795;
  v1846[2] = &off_47940;
  v1331 = xmmword_388D0;
  v796 = [NSValue valueWithBytes:&v1331 objCType:"{CGPoint=dd}"];
  v1847[2] = v796;
  v797 = [NSDictionary dictionaryWithObjects:v1847 forKeys:v1846 count:3];
  [v3 scaledPoint:v797 withOverrides:{45.0, -75.0}];
  v1[336] = v798;
  v1[337] = v799;

  v1844[0] = &off_47910;
  v1330 = xmmword_38660;
  v800 = [NSValue valueWithBytes:&v1330 objCType:"{CGPoint=dd}"];
  v1845[0] = v800;
  v1844[1] = &off_47928;
  v1329 = xmmword_37E90;
  v801 = [NSValue valueWithBytes:&v1329 objCType:"{CGPoint=dd}"];
  v1845[1] = v801;
  v1844[2] = &off_47940;
  v1328 = xmmword_388E0;
  v802 = [NSValue valueWithBytes:&v1328 objCType:"{CGPoint=dd}"];
  v1845[2] = v802;
  v803 = [NSDictionary dictionaryWithObjects:v1845 forKeys:v1844 count:3];
  [v3 scaledPoint:v803 withOverrides:{61.0, -36.5}];
  v1[338] = v804;
  v1[339] = v805;

  v1842[0] = &off_47910;
  v1327 = xmmword_38670;
  v806 = [NSValue valueWithBytes:&v1327 objCType:"{CGPoint=dd}"];
  v1843[0] = v806;
  v1842[1] = &off_47928;
  v1326 = xmmword_37EC0;
  v807 = [NSValue valueWithBytes:&v1326 objCType:"{CGPoint=dd}"];
  v1843[1] = v807;
  v1842[2] = &off_47940;
  v1325 = xmmword_388F0;
  v808 = [NSValue valueWithBytes:&v1325 objCType:"{CGPoint=dd}"];
  v1843[2] = v808;
  v809 = [NSDictionary dictionaryWithObjects:v1843 forKeys:v1842 count:3];
  [v3 scaledPoint:v809 withOverrides:{61.0, 0.0}];
  v1[340] = v810;
  v1[341] = v811;

  v1840[0] = &off_47910;
  v1324 = xmmword_38690;
  v812 = [NSValue valueWithBytes:&v1324 objCType:"{CGPoint=dd}"];
  v1841[0] = v812;
  v1840[1] = &off_47928;
  v1323 = xmmword_386A0;
  v813 = [NSValue valueWithBytes:&v1323 objCType:"{CGPoint=dd}"];
  v1841[1] = v813;
  v1840[2] = &off_47940;
  v1322 = xmmword_38900;
  v814 = [NSValue valueWithBytes:&v1322 objCType:"{CGPoint=dd}"];
  v1841[2] = v814;
  v815 = [NSDictionary dictionaryWithObjects:v1841 forKeys:v1840 count:3];
  [v3 scaledPoint:v815 withOverrides:{61.0, 37.5}];
  v1[342] = v816;
  v1[343] = v817;

  v1838[0] = &off_47910;
  v1321 = xmmword_386C0;
  v818 = [NSValue valueWithBytes:&v1321 objCType:"{CGPoint=dd}"];
  v1839[0] = v818;
  v1838[1] = &off_47928;
  v1320 = xmmword_386D0;
  v819 = [NSValue valueWithBytes:&v1320 objCType:"{CGPoint=dd}"];
  v1839[1] = v819;
  v1838[2] = &off_47940;
  v1319 = xmmword_38910;
  v820 = [NSValue valueWithBytes:&v1319 objCType:"{CGPoint=dd}"];
  v1839[2] = v820;
  v821 = [NSDictionary dictionaryWithObjects:v1839 forKeys:v1838 count:3];
  [v3 scaledPoint:v821 withOverrides:{44.5, 75.0}];
  v1[344] = v822;
  v1[345] = v823;

  v1836[0] = &off_47910;
  v1318 = xmmword_386F0;
  v824 = [NSValue valueWithBytes:&v1318 objCType:"{CGPoint=dd}"];
  v1837[0] = v824;
  v1836[1] = &off_47928;
  v1317 = xmmword_38700;
  v825 = [NSValue valueWithBytes:&v1317 objCType:"{CGPoint=dd}"];
  v1837[1] = v825;
  v1836[2] = &off_47940;
  v1316 = xmmword_38920;
  v826 = [NSValue valueWithBytes:&v1316 objCType:"{CGPoint=dd}"];
  v1837[2] = v826;
  v827 = [NSDictionary dictionaryWithObjects:v1837 forKeys:v1836 count:3];
  [v3 scaledPoint:v827 withOverrides:{1.0, 75.0}];
  v1[346] = v828;
  v1[347] = v829;

  v1834[0] = &off_47910;
  v1315 = xmmword_38720;
  v830 = [NSValue valueWithBytes:&v1315 objCType:"{CGPoint=dd}"];
  v1835[0] = v830;
  v1834[1] = &off_47928;
  v1314 = xmmword_38730;
  v831 = [NSValue valueWithBytes:&v1314 objCType:"{CGPoint=dd}"];
  v1835[1] = v831;
  v1834[2] = &off_47940;
  v1313 = xmmword_38930;
  v832 = [NSValue valueWithBytes:&v1313 objCType:"{CGPoint=dd}"];
  v1835[2] = v832;
  v833 = [NSDictionary dictionaryWithObjects:v1835 forKeys:v1834 count:3];
  [v3 scaledPoint:v833 withOverrides:{-43.5, 75.0}];
  v1[348] = v834;
  v1[349] = v835;

  v1832[0] = &off_47910;
  v1312 = xmmword_38750;
  v836 = [NSValue valueWithBytes:&v1312 objCType:"{CGPoint=dd}"];
  v1833[0] = v836;
  v1832[1] = &off_47928;
  v1311 = xmmword_38760;
  v837 = [NSValue valueWithBytes:&v1311 objCType:"{CGPoint=dd}"];
  v1833[1] = v837;
  v1832[2] = &off_47940;
  v1310 = xmmword_38940;
  v838 = [NSValue valueWithBytes:&v1310 objCType:"{CGPoint=dd}"];
  v1833[2] = v838;
  v839 = [NSDictionary dictionaryWithObjects:v1833 forKeys:v1832 count:3];
  [v3 scaledPoint:v839 withOverrides:{-60.0, 37.5}];
  v1[350] = v840;
  v1[351] = v841;

  v1830[0] = &off_47910;
  v1309 = xmmword_38780;
  v842 = [NSValue valueWithBytes:&v1309 objCType:"{CGPoint=dd}"];
  v1831[0] = v842;
  v1830[1] = &off_47928;
  v1308 = xmmword_38790;
  v843 = [NSValue valueWithBytes:&v1308 objCType:"{CGPoint=dd}"];
  v1831[1] = v843;
  v1830[2] = &off_47940;
  v1307 = xmmword_38950;
  v844 = [NSValue valueWithBytes:&v1307 objCType:"{CGPoint=dd}"];
  v1831[2] = v844;
  v845 = [NSDictionary dictionaryWithObjects:v1831 forKeys:v1830 count:3];
  [v3 scaledPoint:v845 withOverrides:{-60.0, 0.0}];
  v1[352] = v846;
  v1[353] = v847;

  v1828[0] = &off_47910;
  v1306 = xmmword_387B0;
  v848 = [NSValue valueWithBytes:&v1306 objCType:"{CGPoint=dd}"];
  v1829[0] = v848;
  v1828[1] = &off_47928;
  v1305 = xmmword_387C0;
  v849 = [NSValue valueWithBytes:&v1305 objCType:"{CGPoint=dd}"];
  v1829[1] = v849;
  v1828[2] = &off_47940;
  v1304 = xmmword_38960;
  v850 = [NSValue valueWithBytes:&v1304 objCType:"{CGPoint=dd}"];
  v1829[2] = v850;
  v851 = [NSDictionary dictionaryWithObjects:v1829 forKeys:v1828 count:3];
  [v3 scaledPoint:v851 withOverrides:{-60.0, -36.5}];
  v1[354] = v852;
  v1[355] = v853;

  v1826[0] = &off_47910;
  v1303 = xmmword_387E0;
  v854 = [NSValue valueWithBytes:&v1303 objCType:"{CGPoint=dd}"];
  v1827[0] = v854;
  v1826[1] = &off_47928;
  v1302 = xmmword_387F0;
  v855 = [NSValue valueWithBytes:&v1302 objCType:"{CGPoint=dd}"];
  v1827[1] = v855;
  v1826[2] = &off_47940;
  v1301 = xmmword_38970;
  v856 = [NSValue valueWithBytes:&v1301 objCType:"{CGPoint=dd}"];
  v1827[2] = v856;
  v857 = [NSDictionary dictionaryWithObjects:v1827 forKeys:v1826 count:3];
  [v3 scaledPoint:v857 withOverrides:{-43.5, -75.0}];
  v1[356] = v858;
  v1[357] = v859;

  v1824[0] = &off_47910;
  v1300 = xmmword_38810;
  v860 = [NSValue valueWithBytes:&v1300 objCType:"{CGPoint=dd}"];
  v1825[0] = v860;
  v1824[1] = &off_47928;
  v1299 = xmmword_38820;
  v861 = [NSValue valueWithBytes:&v1299 objCType:"{CGPoint=dd}"];
  v1825[1] = v861;
  v1824[2] = &off_47940;
  v1298 = xmmword_388C0;
  v862 = [NSValue valueWithBytes:&v1298 objCType:"{CGPoint=dd}"];
  v1825[2] = v862;
  v863 = [NSDictionary dictionaryWithObjects:v1825 forKeys:v1824 count:3];
  [v3 scaledPoint:v863 withOverrides:{0.5, -75.0}];
  v1[358] = v864;
  v1[359] = v865;

  v1822[0] = &off_47910;
  v1297 = xmmword_38980;
  v866 = [NSValue valueWithBytes:&v1297 objCType:"{CGPoint=dd}"];
  v1823[0] = v866;
  v1822[1] = &off_47928;
  v1296 = xmmword_38990;
  v867 = [NSValue valueWithBytes:&v1296 objCType:"{CGPoint=dd}"];
  v1823[1] = v867;
  v1822[2] = &off_47940;
  v1295 = xmmword_389A0;
  v868 = [NSValue valueWithBytes:&v1295 objCType:"{CGPoint=dd}"];
  v1823[2] = v868;
  v869 = [NSDictionary dictionaryWithObjects:v1823 forKeys:v1822 count:3];
  [v3 scaledPoint:v869 withOverrides:{44.0, -77.5}];
  v1[72] = v870;
  v1[73] = v871;

  v1820[0] = &off_47910;
  v1294 = xmmword_389B0;
  v872 = [NSValue valueWithBytes:&v1294 objCType:"{CGPoint=dd}"];
  v1821[0] = v872;
  v1820[1] = &off_47928;
  v1293 = xmmword_37E90;
  v873 = [NSValue valueWithBytes:&v1293 objCType:"{CGPoint=dd}"];
  v1821[1] = v873;
  v1820[2] = &off_47940;
  v1292 = xmmword_389C0;
  v874 = [NSValue valueWithBytes:&v1292 objCType:"{CGPoint=dd}"];
  v1821[2] = v874;
  v875 = [NSDictionary dictionaryWithObjects:v1821 forKeys:v1820 count:3];
  [v3 scaledPoint:v875 withOverrides:{61.0, -36.5}];
  v1[74] = v876;
  v1[75] = v877;

  v1818[0] = &off_47910;
  v1291 = xmmword_389D0;
  v878 = [NSValue valueWithBytes:&v1291 objCType:"{CGPoint=dd}"];
  v1819[0] = v878;
  v1818[1] = &off_47928;
  v1290 = xmmword_389E0;
  v879 = [NSValue valueWithBytes:&v1290 objCType:"{CGPoint=dd}"];
  v1819[1] = v879;
  v1818[2] = &off_47940;
  v1289 = xmmword_389F0;
  v880 = [NSValue valueWithBytes:&v1289 objCType:"{CGPoint=dd}"];
  v1819[2] = v880;
  v881 = [NSDictionary dictionaryWithObjects:v1819 forKeys:v1818 count:3];
  [v3 scaledPoint:v881 withOverrides:{61.0, -0.5}];
  v1[76] = v882;
  v1[77] = v883;

  v1816[0] = &off_47910;
  v1288 = xmmword_38A00;
  v884 = [NSValue valueWithBytes:&v1288 objCType:"{CGPoint=dd}"];
  v1817[0] = v884;
  v1816[1] = &off_47928;
  v1287 = xmmword_38A10;
  v885 = [NSValue valueWithBytes:&v1287 objCType:"{CGPoint=dd}"];
  v1817[1] = v885;
  v1816[2] = &off_47940;
  v1286 = xmmword_38A20;
  v886 = [NSValue valueWithBytes:&v1286 objCType:"{CGPoint=dd}"];
  v1817[2] = v886;
  v887 = [NSDictionary dictionaryWithObjects:v1817 forKeys:v1816 count:3];
  [v3 scaledPoint:v887 withOverrides:?];
  v1[78] = v888;
  v1[79] = v889;

  v1814[0] = &off_47910;
  v1285 = xmmword_38A30;
  v890 = [NSValue valueWithBytes:&v1285 objCType:"{CGPoint=dd}"];
  v1815[0] = v890;
  v1814[1] = &off_47928;
  v1284 = xmmword_38A40;
  v891 = [NSValue valueWithBytes:&v1284 objCType:"{CGPoint=dd}"];
  v1815[1] = v891;
  v1814[2] = &off_47940;
  v1283 = xmmword_38A50;
  v892 = [NSValue valueWithBytes:&v1283 objCType:"{CGPoint=dd}"];
  v1815[2] = v892;
  v893 = [NSDictionary dictionaryWithObjects:v1815 forKeys:v1814 count:3];
  [v3 scaledPoint:v893 withOverrides:{44.5, 75.5}];
  v1[80] = v894;
  v1[81] = v895;

  v1812[0] = &off_47910;
  v1282 = xmmword_38A60;
  v896 = [NSValue valueWithBytes:&v1282 objCType:"{CGPoint=dd}"];
  v1813[0] = v896;
  v1812[1] = &off_47928;
  v1281 = xmmword_38A70;
  v897 = [NSValue valueWithBytes:&v1281 objCType:"{CGPoint=dd}"];
  v1813[1] = v897;
  v1812[2] = &off_47940;
  v1280 = xmmword_38A80;
  v898 = [NSValue valueWithBytes:&v1280 objCType:"{CGPoint=dd}"];
  v1813[2] = v898;
  v899 = [NSDictionary dictionaryWithObjects:v1813 forKeys:v1812 count:3];
  [v3 scaledPoint:v899 withOverrides:{1.0, 75.5}];
  v1[82] = v900;
  v1[83] = v901;

  v1810[0] = &off_47910;
  v1279 = xmmword_38A90;
  v902 = [NSValue valueWithBytes:&v1279 objCType:"{CGPoint=dd}"];
  v1811[0] = v902;
  v1810[1] = &off_47928;
  v1278 = xmmword_38AA0;
  v903 = [NSValue valueWithBytes:&v1278 objCType:"{CGPoint=dd}"];
  v1811[1] = v903;
  v1810[2] = &off_47940;
  v1277 = xmmword_38AB0;
  v904 = [NSValue valueWithBytes:&v1277 objCType:"{CGPoint=dd}"];
  v1811[2] = v904;
  v905 = [NSDictionary dictionaryWithObjects:v1811 forKeys:v1810 count:3];
  [v3 scaledPoint:v905 withOverrides:{-43.0, 75.5}];
  v1[84] = v906;
  v1[85] = v907;

  v1808[0] = &off_47910;
  v1276 = xmmword_38AC0;
  v908 = [NSValue valueWithBytes:&v1276 objCType:"{CGPoint=dd}"];
  v1809[0] = v908;
  v1808[1] = &off_47928;
  v1275 = xmmword_38AD0;
  v909 = [NSValue valueWithBytes:&v1275 objCType:"{CGPoint=dd}"];
  v1809[1] = v909;
  v1808[2] = &off_47940;
  v1274 = xmmword_38310;
  v910 = [NSValue valueWithBytes:&v1274 objCType:"{CGPoint=dd}"];
  v1809[2] = v910;
  v911 = [NSDictionary dictionaryWithObjects:v1809 forKeys:v1808 count:3];
  [v3 scaledPoint:v911 withOverrides:{-60.0, 36.5}];
  v1[86] = v912;
  v1[87] = v913;

  v1806[0] = &off_47910;
  v1273 = xmmword_38AE0;
  v914 = [NSValue valueWithBytes:&v1273 objCType:"{CGPoint=dd}"];
  v1807[0] = v914;
  v1806[1] = &off_47928;
  v1272 = xmmword_38AF0;
  v915 = [NSValue valueWithBytes:&v1272 objCType:"{CGPoint=dd}"];
  v1807[1] = v915;
  v1806[2] = &off_47940;
  v1271 = xmmword_38B00;
  v916 = [NSValue valueWithBytes:&v1271 objCType:"{CGPoint=dd}"];
  v1807[2] = v916;
  v917 = [NSDictionary dictionaryWithObjects:v1807 forKeys:v1806 count:3];
  [v3 scaledPoint:v917 withOverrides:?];
  v1[88] = v918;
  v1[89] = v919;

  v1804[0] = &off_47910;
  v1270 = xmmword_38B10;
  v920 = [NSValue valueWithBytes:&v1270 objCType:"{CGPoint=dd}"];
  v1805[0] = v920;
  v1804[1] = &off_47928;
  v1269 = xmmword_387C0;
  v921 = [NSValue valueWithBytes:&v1269 objCType:"{CGPoint=dd}"];
  v1805[1] = v921;
  v1804[2] = &off_47940;
  v1268 = xmmword_38B20;
  v922 = [NSValue valueWithBytes:&v1268 objCType:"{CGPoint=dd}"];
  v1805[2] = v922;
  v923 = [NSDictionary dictionaryWithObjects:v1805 forKeys:v1804 count:3];
  [v3 scaledPoint:v923 withOverrides:{-60.0, -36.5}];
  v1[90] = v924;
  v1[91] = v925;

  v1802[0] = &off_47910;
  v1267 = xmmword_38B30;
  v926 = [NSValue valueWithBytes:&v1267 objCType:"{CGPoint=dd}"];
  v1803[0] = v926;
  v1802[1] = &off_47928;
  v1266 = xmmword_38B40;
  v927 = [NSValue valueWithBytes:&v1266 objCType:"{CGPoint=dd}"];
  v1803[1] = v927;
  v1802[2] = &off_47940;
  v1265 = xmmword_38B50;
  v928 = [NSValue valueWithBytes:&v1265 objCType:"{CGPoint=dd}"];
  v1803[2] = v928;
  v929 = [NSDictionary dictionaryWithObjects:v1803 forKeys:v1802 count:3];
  [v3 scaledPoint:v929 withOverrides:{-43.5, -77.5}];
  v1[92] = v930;
  v1[93] = v931;

  v1800[0] = &off_47910;
  v1264 = xmmword_38B60;
  v932 = [NSValue valueWithBytes:&v1264 objCType:"{CGPoint=dd}"];
  v1801[0] = v932;
  v1800[1] = &off_47928;
  v1263 = xmmword_38B70;
  v933 = [NSValue valueWithBytes:&v1263 objCType:"{CGPoint=dd}"];
  v1801[1] = v933;
  v1800[2] = &off_47940;
  v1262 = xmmword_38B80;
  v934 = [NSValue valueWithBytes:&v1262 objCType:"{CGPoint=dd}"];
  v1801[2] = v934;
  v935 = [NSDictionary dictionaryWithObjects:v1801 forKeys:v1800 count:3];
  [v3 scaledPoint:v935 withOverrides:{1.5, -77.5}];
  v1[94] = v936;
  v1[95] = v937;

  v1798[0] = &off_47910;
  v1261 = xmmword_38B90;
  v938 = [NSValue valueWithBytes:&v1261 objCType:"{CGPoint=dd}"];
  v1799[0] = v938;
  v1798[1] = &off_47928;
  v1260 = xmmword_38BA0;
  v939 = [NSValue valueWithBytes:&v1260 objCType:"{CGPoint=dd}"];
  v1799[1] = v939;
  v1798[2] = &off_47940;
  v1259 = xmmword_38BB0;
  v940 = [NSValue valueWithBytes:&v1259 objCType:"{CGPoint=dd}"];
  v1799[2] = v940;
  v941 = [NSDictionary dictionaryWithObjects:v1799 forKeys:v1798 count:3];
  [v3 scaledPoint:v941 withOverrides:{44.0, -75.0}];
  v1[168] = v942;
  v1[169] = v943;

  v1796[0] = &off_47910;
  v1258 = xmmword_389B0;
  v944 = [NSValue valueWithBytes:&v1258 objCType:"{CGPoint=dd}"];
  v1797[0] = v944;
  v1796[1] = &off_47928;
  v1257 = xmmword_37E90;
  v945 = [NSValue valueWithBytes:&v1257 objCType:"{CGPoint=dd}"];
  v1797[1] = v945;
  v1796[2] = &off_47940;
  v1256 = xmmword_389C0;
  v946 = [NSValue valueWithBytes:&v1256 objCType:"{CGPoint=dd}"];
  v1797[2] = v946;
  v947 = [NSDictionary dictionaryWithObjects:v1797 forKeys:v1796 count:3];
  [v3 scaledPoint:v947 withOverrides:{61.0, -36.5}];
  v1[170] = v948;
  v1[171] = v949;

  v1794[0] = &off_47910;
  v1255 = xmmword_389D0;
  v950 = [NSValue valueWithBytes:&v1255 objCType:"{CGPoint=dd}"];
  v1795[0] = v950;
  v1794[1] = &off_47928;
  v1254 = xmmword_389E0;
  v951 = [NSValue valueWithBytes:&v1254 objCType:"{CGPoint=dd}"];
  v1795[1] = v951;
  v1794[2] = &off_47940;
  v1253 = xmmword_389F0;
  v952 = [NSValue valueWithBytes:&v1253 objCType:"{CGPoint=dd}"];
  v1795[2] = v952;
  v953 = [NSDictionary dictionaryWithObjects:v1795 forKeys:v1794 count:3];
  [v3 scaledPoint:v953 withOverrides:{61.0, -0.5}];
  v1[172] = v954;
  v1[173] = v955;

  v1792[0] = &off_47910;
  v1252 = xmmword_38A00;
  v956 = [NSValue valueWithBytes:&v1252 objCType:"{CGPoint=dd}"];
  v1793[0] = v956;
  v1792[1] = &off_47928;
  v1251 = xmmword_38A10;
  v957 = [NSValue valueWithBytes:&v1251 objCType:"{CGPoint=dd}"];
  v1793[1] = v957;
  v1792[2] = &off_47940;
  v1250 = xmmword_38A20;
  v958 = [NSValue valueWithBytes:&v1250 objCType:"{CGPoint=dd}"];
  v1793[2] = v958;
  v959 = [NSDictionary dictionaryWithObjects:v1793 forKeys:v1792 count:3];
  [v3 scaledPoint:v959 withOverrides:{60.5, 35.5}];
  v1[174] = v960;
  v1[175] = v961;

  v1790[0] = &off_47910;
  v1249 = xmmword_38A30;
  v962 = [NSValue valueWithBytes:&v1249 objCType:"{CGPoint=dd}"];
  v1791[0] = v962;
  v1790[1] = &off_47928;
  v1248 = xmmword_38A40;
  v963 = [NSValue valueWithBytes:&v1248 objCType:"{CGPoint=dd}"];
  v1791[1] = v963;
  v1790[2] = &off_47940;
  v1247 = xmmword_38A50;
  v964 = [NSValue valueWithBytes:&v1247 objCType:"{CGPoint=dd}"];
  v1791[2] = v964;
  v965 = [NSDictionary dictionaryWithObjects:v1791 forKeys:v1790 count:3];
  [v3 scaledPoint:v965 withOverrides:{44.5, 75.5}];
  v1[176] = v966;
  v1[177] = v967;

  v1788[0] = &off_47910;
  v1246 = xmmword_38A60;
  v968 = [NSValue valueWithBytes:&v1246 objCType:"{CGPoint=dd}"];
  v1789[0] = v968;
  v1788[1] = &off_47928;
  v1245 = xmmword_38A70;
  v969 = [NSValue valueWithBytes:&v1245 objCType:"{CGPoint=dd}"];
  v1789[1] = v969;
  v1788[2] = &off_47940;
  v1244 = xmmword_38A80;
  v970 = [NSValue valueWithBytes:&v1244 objCType:"{CGPoint=dd}"];
  v1789[2] = v970;
  v971 = [NSDictionary dictionaryWithObjects:v1789 forKeys:v1788 count:3];
  [v3 scaledPoint:v971 withOverrides:{1.0, 75.5}];
  v1[178] = v972;
  v1[179] = v973;

  v1786[0] = &off_47910;
  v1243 = xmmword_38A90;
  v974 = [NSValue valueWithBytes:&v1243 objCType:"{CGPoint=dd}"];
  v1787[0] = v974;
  v1786[1] = &off_47928;
  v1242 = xmmword_38AA0;
  v975 = [NSValue valueWithBytes:&v1242 objCType:"{CGPoint=dd}"];
  v1787[1] = v975;
  v1786[2] = &off_47940;
  v1241 = xmmword_38AB0;
  v976 = [NSValue valueWithBytes:&v1241 objCType:"{CGPoint=dd}"];
  v1787[2] = v976;
  v977 = [NSDictionary dictionaryWithObjects:v1787 forKeys:v1786 count:3];
  [v3 scaledPoint:v977 withOverrides:{-43.0, 75.5}];
  v1[180] = v978;
  v1[181] = v979;

  v1784[0] = &off_47910;
  v1240 = xmmword_38AC0;
  v980 = [NSValue valueWithBytes:&v1240 objCType:"{CGPoint=dd}"];
  v1785[0] = v980;
  v1784[1] = &off_47928;
  v1239 = xmmword_38AD0;
  v981 = [NSValue valueWithBytes:&v1239 objCType:"{CGPoint=dd}"];
  v1785[1] = v981;
  v1784[2] = &off_47940;
  v1238 = xmmword_38310;
  v982 = [NSValue valueWithBytes:&v1238 objCType:"{CGPoint=dd}"];
  v1785[2] = v982;
  v983 = [NSDictionary dictionaryWithObjects:v1785 forKeys:v1784 count:3];
  [v3 scaledPoint:v983 withOverrides:{-60.0, 36.5}];
  v1[182] = v984;
  v1[183] = v985;

  v1782[0] = &off_47910;
  v1237 = xmmword_38AE0;
  v986 = [NSValue valueWithBytes:&v1237 objCType:"{CGPoint=dd}"];
  v1783[0] = v986;
  v1782[1] = &off_47928;
  v1236 = xmmword_38AF0;
  v987 = [NSValue valueWithBytes:&v1236 objCType:"{CGPoint=dd}"];
  v1783[1] = v987;
  v1782[2] = &off_47940;
  v1235 = xmmword_38B00;
  v988 = [NSValue valueWithBytes:&v1235 objCType:"{CGPoint=dd}"];
  v1783[2] = v988;
  v989 = [NSDictionary dictionaryWithObjects:v1783 forKeys:v1782 count:3];
  [v3 scaledPoint:v989 withOverrides:{-59.5, -0.5}];
  v1[184] = v990;
  v1[185] = v991;

  v1780[0] = &off_47910;
  v1234 = xmmword_38B10;
  v992 = [NSValue valueWithBytes:&v1234 objCType:"{CGPoint=dd}"];
  v1781[0] = v992;
  v1780[1] = &off_47928;
  v1233 = xmmword_387C0;
  v993 = [NSValue valueWithBytes:&v1233 objCType:"{CGPoint=dd}"];
  v1781[1] = v993;
  v1780[2] = &off_47940;
  v1232 = xmmword_38B20;
  v994 = [NSValue valueWithBytes:&v1232 objCType:"{CGPoint=dd}"];
  v1781[2] = v994;
  v995 = [NSDictionary dictionaryWithObjects:v1781 forKeys:v1780 count:3];
  [v3 scaledPoint:v995 withOverrides:{-60.0, -36.5}];
  v1[186] = v996;
  v1[187] = v997;

  v1778[0] = &off_47910;
  v1231 = xmmword_38BC0;
  v998 = [NSValue valueWithBytes:&v1231 objCType:"{CGPoint=dd}"];
  v1779[0] = v998;
  v1778[1] = &off_47928;
  v1230 = xmmword_38880;
  v999 = [NSValue valueWithBytes:&v1230 objCType:"{CGPoint=dd}"];
  v1779[1] = v999;
  v1778[2] = &off_47940;
  v1229 = xmmword_38BD0;
  v1000 = [NSValue valueWithBytes:&v1229 objCType:"{CGPoint=dd}"];
  v1779[2] = v1000;
  v1001 = [NSDictionary dictionaryWithObjects:v1779 forKeys:v1778 count:3];
  [v3 scaledPoint:v1001 withOverrides:{-43.5, -75.0}];
  v1[188] = v1002;
  v1[189] = v1003;

  v1776[0] = &off_47910;
  v1228 = xmmword_38BE0;
  v1004 = [NSValue valueWithBytes:&v1228 objCType:"{CGPoint=dd}"];
  v1777[0] = v1004;
  v1776[1] = &off_47928;
  v1227 = xmmword_38BF0;
  v1005 = [NSValue valueWithBytes:&v1227 objCType:"{CGPoint=dd}"];
  v1777[1] = v1005;
  v1776[2] = &off_47940;
  v1226 = xmmword_38C00;
  v1006 = [NSValue valueWithBytes:&v1226 objCType:"{CGPoint=dd}"];
  v1777[2] = v1006;
  v1007 = [NSDictionary dictionaryWithObjects:v1777 forKeys:v1776 count:3];
  [v3 scaledPoint:v1007 withOverrides:{1.5, -75.0}];
  v1[190] = v1008;
  v1[191] = v1009;

  v1774[0] = &off_47910;
  v1225 = xmmword_38980;
  v1010 = [NSValue valueWithBytes:&v1225 objCType:"{CGPoint=dd}"];
  v1775[0] = v1010;
  v1774[1] = &off_47928;
  v1224 = xmmword_38990;
  v1011 = [NSValue valueWithBytes:&v1224 objCType:"{CGPoint=dd}"];
  v1775[1] = v1011;
  v1774[2] = &off_47940;
  v1223 = xmmword_38BB0;
  v1012 = [NSValue valueWithBytes:&v1223 objCType:"{CGPoint=dd}"];
  v1775[2] = v1012;
  v1013 = [NSDictionary dictionaryWithObjects:v1775 forKeys:v1774 count:3];
  [v3 scaledPoint:v1013 withOverrides:{44.0, -75.0}];
  v1[264] = v1014;
  v1[265] = v1015;

  v1772[0] = &off_47910;
  v1222 = xmmword_389B0;
  v1016 = [NSValue valueWithBytes:&v1222 objCType:"{CGPoint=dd}"];
  v1773[0] = v1016;
  v1772[1] = &off_47928;
  v1221 = xmmword_37E90;
  v1017 = [NSValue valueWithBytes:&v1221 objCType:"{CGPoint=dd}"];
  v1773[1] = v1017;
  v1772[2] = &off_47940;
  v1220 = xmmword_38C10;
  v1018 = [NSValue valueWithBytes:&v1220 objCType:"{CGPoint=dd}"];
  v1773[2] = v1018;
  v1019 = [NSDictionary dictionaryWithObjects:v1773 forKeys:v1772 count:3];
  [v3 scaledPoint:v1019 withOverrides:{61.0, -36.5}];
  v1[266] = v1020;
  v1[267] = v1021;

  v1770[0] = &off_47910;
  v1219 = xmmword_389D0;
  v1022 = [NSValue valueWithBytes:&v1219 objCType:"{CGPoint=dd}"];
  v1771[0] = v1022;
  v1770[1] = &off_47928;
  v1218 = xmmword_389E0;
  v1023 = [NSValue valueWithBytes:&v1218 objCType:"{CGPoint=dd}"];
  v1771[1] = v1023;
  v1770[2] = &off_47940;
  v1217 = xmmword_38C20;
  v1024 = [NSValue valueWithBytes:&v1217 objCType:"{CGPoint=dd}"];
  v1771[2] = v1024;
  v1025 = [NSDictionary dictionaryWithObjects:v1771 forKeys:v1770 count:3];
  [v3 scaledPoint:v1025 withOverrides:{61.0, -0.5}];
  v1[268] = v1026;
  v1[269] = v1027;

  v1768[0] = &off_47910;
  v1216 = xmmword_38A00;
  v1028 = [NSValue valueWithBytes:&v1216 objCType:"{CGPoint=dd}"];
  v1769[0] = v1028;
  v1768[1] = &off_47928;
  v1215 = xmmword_38A10;
  v1029 = [NSValue valueWithBytes:&v1215 objCType:"{CGPoint=dd}"];
  v1769[1] = v1029;
  v1768[2] = &off_47940;
  v1214 = xmmword_38C30;
  v1030 = [NSValue valueWithBytes:&v1214 objCType:"{CGPoint=dd}"];
  v1769[2] = v1030;
  v1031 = [NSDictionary dictionaryWithObjects:v1769 forKeys:v1768 count:3];
  [v3 scaledPoint:v1031 withOverrides:{60.5, 35.5}];
  v1[270] = v1032;
  v1[271] = v1033;

  v1766[0] = &off_47910;
  v1213 = xmmword_38A30;
  v1034 = [NSValue valueWithBytes:&v1213 objCType:"{CGPoint=dd}"];
  v1767[0] = v1034;
  v1766[1] = &off_47928;
  v1212 = xmmword_38A40;
  v1035 = [NSValue valueWithBytes:&v1212 objCType:"{CGPoint=dd}"];
  v1767[1] = v1035;
  v1766[2] = &off_47940;
  v1211 = xmmword_38C40;
  v1036 = [NSValue valueWithBytes:&v1211 objCType:"{CGPoint=dd}"];
  v1767[2] = v1036;
  v1037 = [NSDictionary dictionaryWithObjects:v1767 forKeys:v1766 count:3];
  [v3 scaledPoint:v1037 withOverrides:{44.5, 73.0}];
  v1[272] = v1038;
  v1[273] = v1039;

  v1764[0] = &off_47910;
  v1210 = xmmword_38A60;
  v1040 = [NSValue valueWithBytes:&v1210 objCType:"{CGPoint=dd}"];
  v1765[0] = v1040;
  v1764[1] = &off_47928;
  v1209 = xmmword_38A70;
  v1041 = [NSValue valueWithBytes:&v1209 objCType:"{CGPoint=dd}"];
  v1765[1] = v1041;
  v1764[2] = &off_47940;
  v1208 = xmmword_38C50;
  v1042 = [NSValue valueWithBytes:&v1208 objCType:"{CGPoint=dd}"];
  v1765[2] = v1042;
  v1043 = [NSDictionary dictionaryWithObjects:v1765 forKeys:v1764 count:3];
  [v3 scaledPoint:v1043 withOverrides:{1.0, 73.0}];
  v1[274] = v1044;
  v1[275] = v1045;

  v1762[0] = &off_47910;
  v1207 = xmmword_38A90;
  v1046 = [NSValue valueWithBytes:&v1207 objCType:"{CGPoint=dd}"];
  v1763[0] = v1046;
  v1762[1] = &off_47928;
  v1206 = xmmword_38AA0;
  v1047 = [NSValue valueWithBytes:&v1206 objCType:"{CGPoint=dd}"];
  v1763[1] = v1047;
  v1762[2] = &off_47940;
  v1205 = xmmword_38C60;
  v1048 = [NSValue valueWithBytes:&v1205 objCType:"{CGPoint=dd}"];
  v1763[2] = v1048;
  v1049 = [NSDictionary dictionaryWithObjects:v1763 forKeys:v1762 count:3];
  [v3 scaledPoint:v1049 withOverrides:{-43.0, 73.0}];
  v1[276] = v1050;
  v1[277] = v1051;

  v1760[0] = &off_47910;
  v1204 = xmmword_38AC0;
  v1052 = [NSValue valueWithBytes:&v1204 objCType:"{CGPoint=dd}"];
  v1761[0] = v1052;
  v1760[1] = &off_47928;
  v1203 = xmmword_38AD0;
  v1053 = [NSValue valueWithBytes:&v1203 objCType:"{CGPoint=dd}"];
  v1761[1] = v1053;
  v1760[2] = &off_47940;
  v1202 = xmmword_38C70;
  v1054 = [NSValue valueWithBytes:&v1202 objCType:"{CGPoint=dd}"];
  v1761[2] = v1054;
  v1055 = [NSDictionary dictionaryWithObjects:v1761 forKeys:v1760 count:3];
  [v3 scaledPoint:v1055 withOverrides:{-60.0, 36.5}];
  v1[278] = v1056;
  v1[279] = v1057;

  v1758[0] = &off_47910;
  v1201 = xmmword_38AE0;
  v1058 = [NSValue valueWithBytes:&v1201 objCType:"{CGPoint=dd}"];
  v1759[0] = v1058;
  v1758[1] = &off_47928;
  v1200 = xmmword_38AF0;
  v1059 = [NSValue valueWithBytes:&v1200 objCType:"{CGPoint=dd}"];
  v1759[1] = v1059;
  v1758[2] = &off_47940;
  v1199 = xmmword_38C80;
  v1060 = [NSValue valueWithBytes:&v1199 objCType:"{CGPoint=dd}"];
  v1759[2] = v1060;
  v1061 = [NSDictionary dictionaryWithObjects:v1759 forKeys:v1758 count:3];
  [v3 scaledPoint:v1061 withOverrides:{-59.5, -0.5}];
  v1[280] = v1062;
  v1[281] = v1063;

  v1756[0] = &off_47910;
  v1198 = xmmword_38B10;
  v1064 = [NSValue valueWithBytes:&v1198 objCType:"{CGPoint=dd}"];
  v1757[0] = v1064;
  v1756[1] = &off_47928;
  v1197 = xmmword_387C0;
  v1065 = [NSValue valueWithBytes:&v1197 objCType:"{CGPoint=dd}"];
  v1757[1] = v1065;
  v1756[2] = &off_47940;
  v1196 = xmmword_38C90;
  v1066 = [NSValue valueWithBytes:&v1196 objCType:"{CGPoint=dd}"];
  v1757[2] = v1066;
  v1067 = [NSDictionary dictionaryWithObjects:v1757 forKeys:v1756 count:3];
  [v3 scaledPoint:v1067 withOverrides:{-60.0, -36.5}];
  v1[282] = v1068;
  v1[283] = v1069;

  v1754[0] = &off_47910;
  v1195 = xmmword_38B30;
  v1070 = [NSValue valueWithBytes:&v1195 objCType:"{CGPoint=dd}"];
  v1755[0] = v1070;
  v1754[1] = &off_47928;
  v1194 = xmmword_38B40;
  v1071 = [NSValue valueWithBytes:&v1194 objCType:"{CGPoint=dd}"];
  v1755[1] = v1071;
  v1754[2] = &off_47940;
  v1193 = xmmword_38BD0;
  v1072 = [NSValue valueWithBytes:&v1193 objCType:"{CGPoint=dd}"];
  v1755[2] = v1072;
  v1073 = [NSDictionary dictionaryWithObjects:v1755 forKeys:v1754 count:3];
  [v3 scaledPoint:v1073 withOverrides:{-43.5, -75.0}];
  v1[284] = v1074;
  v1[285] = v1075;

  v1752[0] = &off_47910;
  v1192 = xmmword_38B60;
  v1076 = [NSValue valueWithBytes:&v1192 objCType:"{CGPoint=dd}"];
  v1753[0] = v1076;
  v1752[1] = &off_47928;
  v1191 = xmmword_38B70;
  v1077 = [NSValue valueWithBytes:&v1191 objCType:"{CGPoint=dd}"];
  v1753[1] = v1077;
  v1752[2] = &off_47940;
  v1190 = xmmword_38C00;
  v1078 = [NSValue valueWithBytes:&v1190 objCType:"{CGPoint=dd}"];
  v1753[2] = v1078;
  v1079 = [NSDictionary dictionaryWithObjects:v1753 forKeys:v1752 count:3];
  [v3 scaledPoint:v1079 withOverrides:{1.5, -75.0}];
  v1[286] = v1080;
  v1[287] = v1081;

  v1750[0] = &off_47910;
  v1189 = xmmword_38980;
  v1082 = [NSValue valueWithBytes:&v1189 objCType:"{CGPoint=dd}"];
  v1751[0] = v1082;
  v1750[1] = &off_47928;
  v1188 = xmmword_38990;
  v1083 = [NSValue valueWithBytes:&v1188 objCType:"{CGPoint=dd}"];
  v1751[1] = v1083;
  v1750[2] = &off_47940;
  v1187 = xmmword_38BB0;
  v1084 = [NSValue valueWithBytes:&v1187 objCType:"{CGPoint=dd}"];
  v1751[2] = v1084;
  v1085 = [NSDictionary dictionaryWithObjects:v1751 forKeys:v1750 count:3];
  [v3 scaledPoint:v1085 withOverrides:{44.0, -75.0}];
  v1[360] = v1086;
  v1[361] = v1087;

  v1748[0] = &off_47910;
  v1186 = xmmword_389B0;
  v1088 = [NSValue valueWithBytes:&v1186 objCType:"{CGPoint=dd}"];
  v1749[0] = v1088;
  v1748[1] = &off_47928;
  v1185 = xmmword_37E90;
  v1089 = [NSValue valueWithBytes:&v1185 objCType:"{CGPoint=dd}"];
  v1749[1] = v1089;
  v1748[2] = &off_47940;
  v1184 = xmmword_38C10;
  v1090 = [NSValue valueWithBytes:&v1184 objCType:"{CGPoint=dd}"];
  v1749[2] = v1090;
  v1091 = [NSDictionary dictionaryWithObjects:v1749 forKeys:v1748 count:3];
  [v3 scaledPoint:v1091 withOverrides:{61.0, -36.5}];
  v1[362] = v1092;
  v1[363] = v1093;

  v1746[0] = &off_47910;
  v1183 = xmmword_389D0;
  v1094 = [NSValue valueWithBytes:&v1183 objCType:"{CGPoint=dd}"];
  v1747[0] = v1094;
  v1746[1] = &off_47928;
  v1182 = xmmword_389E0;
  v1095 = [NSValue valueWithBytes:&v1182 objCType:"{CGPoint=dd}"];
  v1747[1] = v1095;
  v1746[2] = &off_47940;
  v1181 = xmmword_38C20;
  v1096 = [NSValue valueWithBytes:&v1181 objCType:"{CGPoint=dd}"];
  v1747[2] = v1096;
  v1097 = [NSDictionary dictionaryWithObjects:v1747 forKeys:v1746 count:3];
  [v3 scaledPoint:v1097 withOverrides:{61.0, -0.5}];
  v1[364] = v1098;
  v1[365] = v1099;

  v1744[0] = &off_47910;
  v1180 = xmmword_38A00;
  v1100 = [NSValue valueWithBytes:&v1180 objCType:"{CGPoint=dd}"];
  v1745[0] = v1100;
  v1744[1] = &off_47928;
  v1179 = xmmword_38A10;
  v1101 = [NSValue valueWithBytes:&v1179 objCType:"{CGPoint=dd}"];
  v1745[1] = v1101;
  v1744[2] = &off_47940;
  v1178 = xmmword_38C30;
  v1102 = [NSValue valueWithBytes:&v1178 objCType:"{CGPoint=dd}"];
  v1745[2] = v1102;
  v1103 = [NSDictionary dictionaryWithObjects:v1745 forKeys:v1744 count:3];
  [v3 scaledPoint:v1103 withOverrides:{60.5, 35.5}];
  v1[366] = v1104;
  v1[367] = v1105;

  v1742[0] = &off_47910;
  v1177 = xmmword_38A30;
  v1106 = [NSValue valueWithBytes:&v1177 objCType:"{CGPoint=dd}"];
  v1743[0] = v1106;
  v1742[1] = &off_47928;
  v1176 = xmmword_38A40;
  v1107 = [NSValue valueWithBytes:&v1176 objCType:"{CGPoint=dd}"];
  v1743[1] = v1107;
  v1742[2] = &off_47940;
  v1175 = xmmword_38C40;
  v1108 = [NSValue valueWithBytes:&v1175 objCType:"{CGPoint=dd}"];
  v1743[2] = v1108;
  v1109 = [NSDictionary dictionaryWithObjects:v1743 forKeys:v1742 count:3];
  [v3 scaledPoint:v1109 withOverrides:{44.5, 73.0}];
  v1[368] = v1110;
  v1[369] = v1111;

  v1740[0] = &off_47910;
  v1174 = xmmword_38A60;
  v1112 = [NSValue valueWithBytes:&v1174 objCType:"{CGPoint=dd}"];
  v1741[0] = v1112;
  v1740[1] = &off_47928;
  v1173 = xmmword_38A70;
  v1113 = [NSValue valueWithBytes:&v1173 objCType:"{CGPoint=dd}"];
  v1741[1] = v1113;
  v1740[2] = &off_47940;
  v1172 = xmmword_38C50;
  v1114 = [NSValue valueWithBytes:&v1172 objCType:"{CGPoint=dd}"];
  v1741[2] = v1114;
  v1115 = [NSDictionary dictionaryWithObjects:v1741 forKeys:v1740 count:3];
  [v3 scaledPoint:v1115 withOverrides:{1.0, 73.0}];
  v1[370] = v1116;
  v1[371] = v1117;

  v1738[0] = &off_47910;
  v1171 = xmmword_38A90;
  v1118 = [NSValue valueWithBytes:&v1171 objCType:"{CGPoint=dd}"];
  v1739[0] = v1118;
  v1738[1] = &off_47928;
  v1170 = xmmword_38AA0;
  v1119 = [NSValue valueWithBytes:&v1170 objCType:"{CGPoint=dd}"];
  v1739[1] = v1119;
  v1738[2] = &off_47940;
  v1169 = xmmword_38C60;
  v1120 = [NSValue valueWithBytes:&v1169 objCType:"{CGPoint=dd}"];
  v1739[2] = v1120;
  v1121 = [NSDictionary dictionaryWithObjects:v1739 forKeys:v1738 count:3];
  [v3 scaledPoint:v1121 withOverrides:{-43.0, 73.0}];
  v1[372] = v1122;
  v1[373] = v1123;

  v1736[0] = &off_47910;
  v1168 = xmmword_38AC0;
  v1124 = [NSValue valueWithBytes:&v1168 objCType:"{CGPoint=dd}"];
  v1737[0] = v1124;
  v1736[1] = &off_47928;
  v1167 = xmmword_38AD0;
  v1125 = [NSValue valueWithBytes:&v1167 objCType:"{CGPoint=dd}"];
  v1737[1] = v1125;
  v1736[2] = &off_47940;
  v1166 = xmmword_38C70;
  v1126 = [NSValue valueWithBytes:&v1166 objCType:"{CGPoint=dd}"];
  v1737[2] = v1126;
  v1127 = [NSDictionary dictionaryWithObjects:v1737 forKeys:v1736 count:3];
  [v3 scaledPoint:v1127 withOverrides:{-60.0, 36.5}];
  v1[374] = v1128;
  v1[375] = v1129;

  v1734[0] = &off_47910;
  v1165 = xmmword_38AE0;
  v1130 = [NSValue valueWithBytes:&v1165 objCType:"{CGPoint=dd}"];
  v1735[0] = v1130;
  v1734[1] = &off_47928;
  v1164 = xmmword_38AF0;
  v1131 = [NSValue valueWithBytes:&v1164 objCType:"{CGPoint=dd}"];
  v1735[1] = v1131;
  v1734[2] = &off_47940;
  v1163 = xmmword_38C80;
  v1132 = [NSValue valueWithBytes:&v1163 objCType:"{CGPoint=dd}"];
  v1735[2] = v1132;
  v1133 = [NSDictionary dictionaryWithObjects:v1735 forKeys:v1734 count:3];
  [v3 scaledPoint:v1133 withOverrides:{-59.5, -0.5}];
  v1[376] = v1134;
  v1[377] = v1135;

  v1732[0] = &off_47910;
  v1162 = xmmword_38B10;
  v1136 = [NSValue valueWithBytes:&v1162 objCType:"{CGPoint=dd}"];
  v1733[0] = v1136;
  v1732[1] = &off_47928;
  v1161 = xmmword_387C0;
  v1137 = [NSValue valueWithBytes:&v1161 objCType:"{CGPoint=dd}"];
  v1733[1] = v1137;
  v1732[2] = &off_47940;
  v1160 = xmmword_38C90;
  v1138 = [NSValue valueWithBytes:&v1160 objCType:"{CGPoint=dd}"];
  v1733[2] = v1138;
  v1139 = [NSDictionary dictionaryWithObjects:v1733 forKeys:v1732 count:3];
  [v3 scaledPoint:v1139 withOverrides:{-60.0, -36.5}];
  v1[378] = v1140;
  v1[379] = v1141;

  v1730[0] = &off_47910;
  v1159 = xmmword_38B30;
  v1142 = [NSValue valueWithBytes:&v1159 objCType:"{CGPoint=dd}"];
  v1731[0] = v1142;
  v1730[1] = &off_47928;
  v1158 = xmmword_38B40;
  v1143 = [NSValue valueWithBytes:&v1158 objCType:"{CGPoint=dd}"];
  v1731[1] = v1143;
  v1730[2] = &off_47940;
  v1157 = xmmword_38BD0;
  v1144 = [NSValue valueWithBytes:&v1157 objCType:"{CGPoint=dd}"];
  v1731[2] = v1144;
  v1145 = [NSDictionary dictionaryWithObjects:v1731 forKeys:v1730 count:3];
  [v3 scaledPoint:v1145 withOverrides:{-43.5, -75.0}];
  v1[380] = v1146;
  v1[381] = v1147;

  v1728[0] = &off_47910;
  v1156 = xmmword_38B60;
  v1148 = [NSValue valueWithBytes:&v1156 objCType:"{CGPoint=dd}"];
  v1729[0] = v1148;
  v1728[1] = &off_47928;
  v1155 = xmmword_38B70;
  v1149 = [NSValue valueWithBytes:&v1155 objCType:"{CGPoint=dd}"];
  v1729[1] = v1149;
  v1728[2] = &off_47940;
  v1154 = xmmword_38C00;
  v1150 = [NSValue valueWithBytes:&v1154 objCType:"{CGPoint=dd}"];
  v1729[2] = v1150;
  v1151 = [NSDictionary dictionaryWithObjects:v1729 forKeys:v1728 count:3];
  [v3 scaledPoint:v1151 withOverrides:{1.5, -75.0}];
  v1[382] = v1152;
  v1[383] = v1153;
}

void sub_2D444(uint64_t a1, uint64_t a2)
{
  v5 = [*(a1 + 32) normalComplicationDisplayWrapperForSlot:a2];
  v2 = [v5 display];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [v5 display];
    [v4 updateMonochromeColor];
  }
}

void sub_2D560(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v4 = [v7 display];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [v7 display];
    [v6 applyPalette:*(a1 + 32)];
  }
}

void sub_2D6F4(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v7 = a1;
  os_unfair_lock_lock(&unk_59830);
  if (qword_59838)
  {
    v3 = qword_59838 == v7;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v7 version], v4 != qword_59840))
  {
    qword_59838 = v7;
    qword_59840 = [v7 version];
    sub_2D7CC(v7, v8);
    xmmword_597F0 = v8[0];
    unk_59800 = v8[1];
    xmmword_59810 = v8[2];
    unk_59820 = v8[3];
  }

  v5 = unk_59800;
  *a2 = xmmword_597F0;
  a2[1] = v5;
  v6 = unk_59820;
  a2[2] = xmmword_59810;
  a2[3] = v6;
  os_unfair_lock_unlock(&unk_59830);
}

void sub_2D7CC(void *a1@<X1>, void *a2@<X8>)
{
  v3 = a1;
  v4 = [CLKDeviceMetrics metricsWithDevice:v3 identitySizeClass:2];
  [NTKAnalogUtilities largeDialDiameterForDevice:v3];
  v6 = v5;

  *a2 = v6;
  [v4 scaledValue:3 withOverride:21.5 forSizeClass:28.0];
  a2[1] = v7;
  v26[0] = &off_47958;
  v8 = [NSValue valueWithCGSize:58.0, 60.0];
  v26[1] = &off_47970;
  v27[0] = v8;
  v9 = [NSValue valueWithCGSize:70.0, 74.5];
  v27[1] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:2];
  [v4 scaledSize:v10 withOverrides:{58.0, 57.5}];
  a2[2] = v11;
  a2[3] = v12;

  v24[0] = &off_47958;
  v13 = [NSValue valueWithCGSize:184.0, 224.0];
  v25[0] = v13;
  v24[1] = &off_47988;
  v14 = [NSValue valueWithCGSize:175.0, 213.0];
  v25[1] = v14;
  v24[2] = &off_479A0;
  v15 = [NSValue valueWithCGSize:194.0, 236.0];
  v25[2] = v15;
  v16 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:3];
  [v4 scaledSize:v16 withOverrides:{162.0, 197.0}];
  a2[4] = v17;
  a2[5] = v18;

  v22[0] = &off_47958;
  v22[1] = &off_47988;
  v23[0] = &off_48340;
  v23[1] = &off_48350;
  v22[2] = &off_479A0;
  v23[2] = &off_48340;
  v19 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:3];
  [v4 scaledValue:v19 withOverrides:2.0];
  a2[6] = v20;

  [v4 scaledValue:6 withOverride:0.0 forSizeClass:-2.0];
  a2[7] = v21;
}

void sub_2E39C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2E3D0(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 pigmentEditOption];
  v8 = [v7 identifier];
  v9 = [v6 containsObject:v8];

  if (v9)
  {
    *(*(*(a1 + 40) + 8) + 24) = [v10 integerValue];
  }
}

id NTKZeusAnalogColorPaletteCreateGradientImage(uint64_t a1, void *a2, void *a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v11 = a3;
  v12 = a2;
  v27.width = a4;
  v27.height = a5;
  UIGraphicsBeginImageContextWithOptions(v27, 0, a6);
  CurrentContext = UIGraphicsGetCurrentContext();
  v14 = CGColorSpaceCreateWithName(kCGColorSpaceExtendedSRGB);
  v15 = a1 - 2;
  if ((a1 - 2) > 3)
  {
    v17 = 0.499;
    v16 = 0.501;
  }

  else
  {
    v16 = dbl_38D08[v15];
    v17 = dbl_38D28[v15];
  }

  locations[0] = 0.0;
  locations[1] = v17;
  locations[2] = v16;
  locations[3] = 1.0;
  [v12 getRed:components green:&components[1] blue:v22 alpha:v22 + 8];

  [v11 getRed:&v23 green:&v23 + 8 blue:v24 alpha:v24 + 8];
  v22[1] = *components;
  v22[2] = v22[0];
  v24[1] = v23;
  v24[2] = v24[0];
  v18 = CGGradientCreateWithColorComponents(v14, components, locations, 4uLL);
  v28.x = 0.0;
  v28.y = 0.0;
  v29.y = 0.0;
  v29.x = a4;
  CGContextDrawLinearGradient(CurrentContext, v18, v28, v29, 0);
  v19 = UIGraphicsGetImageFromCurrentImageContext();
  CGGradientRelease(v18);
  CGColorSpaceRelease(v14);
  UIGraphicsEndImageContext();

  return v19;
}

uint64_t sub_2EE8C(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

void sub_2EEA0(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 24), a2);
  }
}