void sub_3550(uint64_t a1, uint64_t a2)
{
  v8 = [*(a1 + 32) normalComplicationDisplayWrapperForSlot:a2];
  v3 = [v8 display];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v5 = v8;
  if (isKindOfClass)
  {
    v6 = [v8 display];
    v7 = v6;
    if ((*(a1 + 48) & 1) != 0 || *(a1 + 49) == 1)
    {
      [v6 transitionToMonochromeWithFraction:*(a1 + 40)];
    }

    else
    {
      [v6 updateMonochromeColor];
    }

    v5 = v8;
  }
}

void sub_3618(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setBezelTextColor:v3];
  [v4 setBezelTextRadius:*(*(a1 + 40) + 32)];
}

void sub_3680(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v4 = [v7 display];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [v7 display];
    [v6 transitThemeFromTheme:objc_msgSend(*(a1 + 32) toTheme:"_richComplicationViewThemeFromFaceColorPalette:" fraction:{*(a1 + 40)), objc_msgSend(*(a1 + 32), "_richComplicationViewThemeFromFaceColorPalette:", *(a1 + 40)), *(a1 + 48)}];
  }
}

void sub_3CC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_3CE0(uint64_t a1, double a2, double a3, double a4)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v11 = WeakRetained;
    v8 = [WeakRetained device];
    NTKWhistlerBezelCircularViewDefaultAngularWidthPadding();
    v10 = v9;

    [v11[2] transitTicksWithInitialBezelTextWidthInRadius:v10 + a2 finalBezelTextWidthInRadius:v10 + a3 fraction:a4];
    WeakRetained = v11;
  }
}

void sub_3E6C(uint64_t a1)
{
  v2 = [*(a1 + 32) timeView];
  [v2 setAlpha:0.33];

  [*(*(a1 + 32) + 16) setAlpha:0.75];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_3F30;
  v4[3] = &unk_C3B8;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v3 enumerateComplicationDisplayWrappersWithBlock:v4];
}

void sub_3F30(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v4 = [v6 display];
  v5 = *(a1 + 32);

  if (v4 != v5)
  {
    [v6 setAlpha:0.33];
  }
}

id sub_4070(uint64_t a1)
{
  v2 = [*(a1 + 32) timeView];
  [v2 setAlpha:1.0];

  [*(*(a1 + 32) + 16) setAlpha:1.0];
  v3 = *(a1 + 32);

  return [v3 enumerateComplicationDisplayWrappersWithBlock:&stru_C460];
}

void sub_40EC(uint64_t a1)
{
  v2 = [*(a1 + 32) timeView];
  v1 = [v2 layer];
  [v1 setAllowsGroupOpacity:0];
}

double sub_43A4(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_11398);
  if (qword_113A0)
  {
    v3 = qword_113A0 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_113A8))
  {
    v5 = qword_11378;
  }

  else
  {
    qword_113A0 = v2;
    qword_113A8 = [v2 version];
    v5 = sub_44A4(qword_113A8, v2);
    qword_11378 = v5;
    qword_11380 = v6;
    qword_11388 = v7;
    qword_11390 = v8;
  }

  os_unfair_lock_unlock(&unk_11398);

  return *&v5;
}

double sub_44A4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [CLKDeviceMetrics metricsWithDevice:v2 identitySizeClass:2];
  v11[0] = &off_C888;
  v11[1] = &off_C8A0;
  v12[0] = &off_D170;
  v12[1] = &off_D180;
  v11[2] = &off_C8B8;
  v12[2] = &off_D190;
  v4 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:3];
  [v3 scaledValue:v4 withOverrides:68.0];
  v6 = v5;

  v9[0] = &off_C888;
  v9[1] = &off_C8A0;
  v10[0] = &off_D1A0;
  v10[1] = &off_D1B0;
  v9[2] = &off_C8B8;
  v10[2] = &off_D1C0;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:3];
  [v3 scaledValue:v7 withOverrides:70.5];

  [NTKAnalogUtilities largeDialSizeForDevice:v2];
  return v6;
}

void sub_4BA4(id a1, NTKFace *a2, unint64_t a3, BOOL *a4)
{
  v5 = a2;
  switch(a3)
  {
    case 2uLL:
      v10 = +[NTKInfographFaceBundle worldClockComplicationTypesBySlot];
      [(NTKFace *)v5 _setFaceGalleryComplicationTypesForSlots:v10 canRepeat:1];

      v7 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:7 zOrder:4000];
      v14 = v7;
      v8 = &v14;
      goto LABEL_7;
    case 1uLL:
      v9 = +[NTKInfographFaceBundle activityComplicationTypesBySlot];
      [(NTKFace *)v5 _setFaceGalleryComplicationTypesForSlots:v9];

      v7 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:7 zOrder:4000];
      v15 = v7;
      v8 = &v15;
      goto LABEL_7;
    case 0uLL:
      v6 = +[NTKInfographFaceBundle complicationTypesBySlot];
      [(NTKFace *)v5 _setFaceGalleryComplicationTypesForSlots:v6];

      v7 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:7 zOrder:9000];
      v16 = v7;
      v8 = &v16;
LABEL_7:
      v11 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
      v8[1] = v11;
      v12 = [NSArray arrayWithObjects:v8 count:2];
      [(NTKFace *)v5 setCurationPlacements:v12];

      break;
  }

  v13 = [NTKComplication timerComplicationWithDuration:180.0];
  [(NTKFace *)v5 setComplication:v13 forSlot:NTKComplicationSlotBottomLeft];
}

4] = &off_D038;
  v5[5] = &off_D050;
  v4[6] = NTKComplicationSlotBottomLeft;
  v4[7] = NTKComplicationSlotBottomRight;
  v5[6] = &off_D068;
  v5[7] = &off_D080;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:8];

  return v2;
}

+ (id)worldClockComplicationTypesBySlot
{
  v8[0] = NTKComplicationSlotTopLeft;
  v8[1] = NTKComplicationSlotTopRight;
  v9[0] = &off_D098;
  v9[1] = &off_D0B0;
  v8[2] = NTKComplicationSlotBottomLeft;
  v8[3] = NTKComplicationSlotBottomRight;
  v9[2] = &off_D0C8;
  v9[3] = &off_D0E0;
  v8[4] = NTKComplicationSlot1;
  v8[5] = NTKComplicationSlot2;
  v9[4] = &off_D0F8;
  v9[5] = &off_D110;
  v2 = NTKComplicationSlot3;
  v8[6] = NTKComplicationSlot3;
  v8[7] = NTKComplicationSlotBezel;
  v9[6] = &off_D128;
  v9[7] = &off_D140;
  v3 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:8];
  v4 = [v3 mutableCopy];

  v5 = [NTKComplication allComplicationsOfType:5];
  v6 = [v5 count];

  if (v6 >= 2)
  {
    if (v6 == &dword_0 + 2)
    {
      [v4 setObject:&off_D158 forKeyedSubscript:v2];
    }
  }

  else
  {

    v4 = 0;
  }

  return v4;
}

- (id)heroLegacyDefaultFacesForDevice:(id)a3
{
  v3 = a3;
  if ([v3 isRunningGloryBOrLater])
  {
    v4 = &__NSArray0__struct;
  }

  else
  {
    v5 = [NTKFace defaultFaceOfStyle:30 forDevice:v3];
    v6 = [NTKWhistlerAnalogColorEditOption optionWithFaceColor:105 forDevice:v3];
    [v5 selectOption:v6 forCustomEditMode:10 slot:0];

    v7 = +[NTKInfographFaceBundle complicationTypesBySlot];
    [v5 _setFaceGalleryComplicationTypesForSlots:v7];

    if (v5)
    {
      v9 = v5;
      v4 = [NSArray arrayWithObjects:&v9 count:1];
    }

    else
    {
      v4 = &__NSArray0__struct;
    }
  }

  return v4;
}

@end