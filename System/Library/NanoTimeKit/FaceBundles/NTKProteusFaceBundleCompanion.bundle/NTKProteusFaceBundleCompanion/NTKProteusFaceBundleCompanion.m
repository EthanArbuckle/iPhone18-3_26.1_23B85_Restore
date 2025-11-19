void sub_1860(id a1)
{
  v3[0] = &off_10AD0;
  v3[1] = &off_10AE8;
  v4[0] = @"on";
  v4[1] = @"off";
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:2];
  v2 = qword_16330;
  qword_16330 = v1;
}

void sub_1E1C(id a1)
{
  v3[0] = &off_10B00;
  v3[1] = &off_10B18;
  v4[0] = NTKFaceBundleStyle1;
  v4[1] = NTKFaceBundleStyle2;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:2];
  v2 = qword_16340;
  qword_16340 = v1;
}

void sub_2708(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v7 = [NTKFaceBackgroundStyleEditOption optionWithBackgroundStyle:0 forDevice:v3];
  v5 = [NTKProteusStyleEditOption optionWithProteusStyle:0 forDevice:*(a1 + 32)];
  [v4 selectOption:v7 forCustomEditMode:12 slot:0];
  [v4 selectOption:v5 forCustomEditMode:15 slot:0];
  v6 = [NTKComplication anyComplicationOfType:1];
  [v4 setComplication:v6 forSlot:NTKComplicationSlotSubdialTop];

  [v4 setComplication:0 forSlot:NTKComplicationSlotSubdialBottom];
}

void sub_290C(id a1, NTKFace *a2, unint64_t a3, BOOL *a4)
{
  v5 = a2;
  v6 = v5;
  switch(a3)
  {
    case 2uLL:
      v7 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:13 zOrder:4000];
      v8 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:5 zOrder:4000, v7];
      v12[1] = v8;
      v9 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
      v12[2] = v9;
      v10 = v12;
      goto LABEL_7;
    case 1uLL:
      v7 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
      v13[0] = v7;
      v8 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:5 zOrder:4000];
      v13[1] = v8;
      v9 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:13 zOrder:4000];
      v13[2] = v9;
      v10 = v13;
      goto LABEL_7;
    case 0uLL:
      [(NTKFace *)v5 _setFaceGalleryComplicationTypesForSlots:&__NSDictionary0__struct];
      v7 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:8 zOrder:4000];
      v14[0] = v7;
      v8 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
      v14[1] = v8;
      v9 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:5 zOrder:8000];
      v14[2] = v9;
      v10 = v14;
LABEL_7:
      v11 = [NSArray arrayWithObjects:v10 count:3];
      [(NTKFace *)v6 setCurationPlacements:v11];

      break;
  }
}

void sub_309C(id a1)
{
  v1 = +[CLKDevice currentDevice];
  v2 = [v1 deviceCategory];

  if ((v2 - 4) > 2)
  {
    v3 = @"__NeptuneSrpFont";
  }

  else
  {
    v3 = off_104C0[(v2 - 4)];
  }

  qword_16358 = [NTKFontLoader fontDescriptorForSectName:v3 fromMachO:&dword_0];

  _objc_release_x1();
}

void sub_32E4(id a1)
{
  v1 = +[CLKDevice currentDevice];
  v2 = [v1 deviceCategory];

  if ((v2 - 4) > 2)
  {
    v3 = @"__NeptuneSftFont";
  }

  else
  {
    v3 = off_104D8[(v2 - 4)];
  }

  qword_16368 = [NTKFontLoader fontDescriptorForSectName:v3 fromMachO:&dword_0];

  _objc_release_x1();
}

void sub_4428(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_4EF8(uint64_t a1, void *a2, void *a3)
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

    v6 = [v5 display];
    [v6 updateMonochromeColor];
  }

LABEL_5:
}

void sub_5EE4(uint64_t a1, uint64_t a2, void *a3)
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

void sub_6048(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = NTKComplicationSlotSubdialTop;
  v6 = a3;
  if (([v8 isEqualToString:v5] & 1) != 0 || objc_msgSend(v8, "isEqualToString:", NTKComplicationSlotSubdialBottom))
  {
    [*(a1 + 32) _complicationAlphaForEditMode:*(a1 + 40)];
    [*(a1 + 32) _complicationAlphaForEditMode:*(a1 + 48)];
  }

  v7 = *(a1 + 56);
  CLKInterpolateBetweenFloatsClipped();
  [v6 setAlpha:?];
}

void sub_66A4(void *a1@<X1>, uint64_t a2@<X8>)
{
  v6 = a1;
  os_unfair_lock_lock(&unk_163B8);
  if (qword_163C0)
  {
    v3 = qword_163C0 == v6;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v6 version], v4 != qword_163C8))
  {
    qword_163C0 = v6;
    qword_163C8 = [v6 version];
    sub_6790(v6, v7);
    xmmword_16380 = v7[0];
    *algn_16390 = v7[1];
    xmmword_163A0 = v7[2];
    qword_163B0 = v8;
  }

  v5 = *algn_16390;
  *a2 = xmmword_16380;
  *(a2 + 16) = v5;
  *(a2 + 32) = xmmword_163A0;
  *(a2 + 48) = qword_163B0;
  os_unfair_lock_unlock(&unk_163B8);
}

void sub_6790(void *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = a1;
  v4 = [CLKDeviceMetrics metricsWithDevice:v3 identitySizeClass:4];
  [v4 scaledValue:2.0];
  v6 = v5;
  [NTKAnalogUtilities largeDialDiameterForDevice:v3];
  v8 = v7;

  *a2 = v6 + v8;
  [v4 scaledValue:5 withOverride:50.0 forSizeClass:54.0];
  *(a2 + 8) = 0;
  *(a2 + 16) = v9;
  v21[0] = &off_10BF0;
  v21[1] = &off_10C08;
  v22[0] = &off_10DD0;
  v22[1] = &off_10DE0;
  v21[2] = &off_10C20;
  v21[3] = &off_10C38;
  v22[2] = &off_10DF0;
  v22[3] = &off_10E00;
  v10 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:4];
  [v4 scaledValue:v10 withOverrides:30.0];
  *(a2 + 24) = v11;

  [v4 scaledValue:5 withOverride:1.0 forSizeClass:1.0];
  *(a2 + 32) = v12;
  v19[0] = &off_10BF0;
  v19[1] = &off_10C08;
  v20[0] = &off_10E10;
  v20[1] = &off_10E20;
  v19[2] = &off_10C20;
  v19[3] = &off_10C38;
  v20[2] = &off_10E30;
  v20[3] = &off_10E40;
  v13 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:4];
  [v4 scaledValue:v13 withOverrides:29.0];
  *(a2 + 40) = v14;

  v17[0] = &off_10BF0;
  v17[1] = &off_10C08;
  v18[0] = &off_10E50;
  v18[1] = &off_10E60;
  v15 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];
  [v4 scaledValue:v15 withOverrides:7.0];
  *(a2 + 48) = v16;
}

id sub_7974(_OWORD *a1, void *a2)
{
  v2 = a1[3];
  v4[0] = a1[2];
  v4[1] = v2;
  v4[2] = a1[4];
  return [a2 setTransform:v4];
}

double sub_857C(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_163D8);
  if (qword_163E0)
  {
    v3 = qword_163E0 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_163E8))
  {
    v5 = *&qword_163D0;
  }

  else
  {
    qword_163E0 = v2;
    qword_163E8 = [v2 version];
    qword_163D0 = 0x4010000000000000;
    v5 = 4.0;
  }

  os_unfair_lock_unlock(&unk_163D8);

  return v5;
}