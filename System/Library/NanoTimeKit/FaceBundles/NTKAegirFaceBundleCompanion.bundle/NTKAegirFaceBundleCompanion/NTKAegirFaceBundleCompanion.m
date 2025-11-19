void sub_16F8(uint64_t a1, uint64_t a2)
{
  v9 = [*(a1 + 32) defaultLayoutRuleForState:a2];
  [v9 setVerticalLayout:3];
  [v9 setHorizontalLayout:1];
  [*(a1 + 32) setDefaultLayoutRule:v9 forState:a2];
  [v9 referenceFrame];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  CLKRectCenteredXInRectForDevice();
  [v9 setReferenceFrame:?];
}

uint64_t sub_22BC(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&stru_1A26C);
  if (qword_1A270)
  {
    v3 = qword_1A270 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_1A278))
  {
    v5 = byte_1A268;
  }

  else
  {
    qword_1A270 = v2;
    qword_1A278 = [v2 version];
    sub_2364(qword_1A278, v2);
    v5 = 1;
    byte_1A268 = 1;
  }

  os_unfair_lock_unlock(&stru_1A26C);

  return v5;
}

void sub_2364(uint64_t a1, uint64_t a2)
{
  v2 = [CLKDeviceMetrics metricsWithDevice:a2 identitySizeClass:3];
  v25[0] = &off_156E0;
  v25[1] = &off_156F8;
  v26[0] = &off_15EC0;
  v26[1] = &off_15ED0;
  v3 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:2];
  [v2 scaledValue:v3 withOverrides:16.0];
  *&v4 = v4;
  dword_1A230 = LODWORD(v4);

  v23 = &off_15710;
  v24 = &off_15EE0;
  v5 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  [v2 scaledValue:v5 withOverrides:13.0];
  *&v6 = v6;
  dword_1A244 = LODWORD(v6);

  v21[0] = &off_156E0;
  v21[1] = &off_15710;
  v22[0] = &off_15EF0;
  v22[1] = &off_15F00;
  v21[2] = &off_15728;
  v22[2] = &off_15F10;
  v7 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:3];
  [v2 scaledValue:v7 withOverrides:8.0];
  *&v8 = v8;
  dword_1A234 = LODWORD(v8);

  *&v9 = *&dword_1A234 + *&dword_1A244 * 2.0;
  dword_1A238 = v9;
  [v2 scaledValue:20.0];
  *&v10 = v10;
  dword_1A23C = LODWORD(v10);
  [v2 scaledValue:16.0];
  *&v11 = v11;
  dword_1A240 = LODWORD(v11);
  v19[0] = &off_156E0;
  v19[1] = &off_15740;
  v20[0] = &off_15F20;
  v20[1] = &off_15F20;
  v19[2] = &off_156F8;
  v19[3] = &off_15710;
  v20[2] = &off_15F30;
  v20[3] = &off_15F40;
  v19[4] = &off_15728;
  v19[5] = &off_15758;
  v20[4] = &off_15F50;
  v20[5] = &off_15F50;
  v12 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:6];
  [v2 scaledValue:v12 withOverrides:6.0];
  qword_1A248 = v13;

  qword_1A250 = 0x3FF8000000000000;
  [v2 scaledValue:15.0];
  qword_1A258 = v14;
  v17[0] = &off_15770;
  v17[1] = &off_15710;
  v18[0] = &off_15F60;
  v18[1] = &off_15F70;
  v17[2] = &off_15728;
  v18[2] = &off_15F80;
  v15 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:3];
  [v2 scaledValue:v15 withOverrides:-38.5];
  qword_1A260 = v16;
}

void sub_31FC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained + 80;
    v4 = *(a1 + 56);
    if (!*&WeakRetained[8 * v4 + 80])
    {
      v21 = WeakRetained;
      v5 = off_14568[v4];
      v6 = [NSString stringWithFormat:@"PLANET%d", v4];
      v7 = *(a1 + 32);
      v8 = [NTKAegirFaceBundle localizedStringForKey:v5 comment:v6];
      [v7 setText:v8];

      [*(a1 + 32) sizeToFit];
      [*(a1 + 32) bounds];
      v10 = v9;
      v12 = v11;
      v13 = [v21 device];
      [v13 screenScale];
      v15 = v14;
      v23.width = v10;
      v23.height = v12;
      UIGraphicsBeginImageContextWithOptions(v23, 0, v15);

      v16 = [*(a1 + 32) layer];
      [v16 renderInContext:UIGraphicsGetCurrentContext()];

      v17 = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();
      v18 = [[UIImageView alloc] initWithImage:v17];
      v19 = *(a1 + 56);
      v20 = *&v3[8 * v19];
      *&v3[8 * v19] = v18;

      [*&v3[8 * *(a1 + 56)] setAlpha:0.0];
      [*(a1 + 40) addSubview:*&v3[8 * *(a1 + 56)]];

      [v21 _layoutSpheroidLabel:*(a1 + 56)];
      WeakRetained = v21;
    }
  }
}

id sub_4820()
{
  if (qword_1A2B8 != -1)
  {
    sub_9AD8();
  }

  v1 = qword_1A2B0;

  return v1;
}

void sub_4944(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_4960(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[6] updateLocation:v8 fallbackLocation:v5];
  }
}

void sub_4B10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateLocaleAnimated:1];
}

void sub_4BF4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[6] updateTimeAnimated:1];
    WeakRetained = v2;
  }
}

id sub_54F8(double a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (NTKShowIndicScriptNumerals())
  {
    if (a4 >= 3)
    {
LABEL_3:
      v7 = [NTKSFCompactFont numericFontOfSize:round(a1 * 0.95) weight:UIFontWeightSemibold];
      goto LABEL_16;
    }

    if (a3)
    {
      if (a3 != 2)
      {
        if (a3 == 1)
        {
          goto LABEL_3;
        }

        goto LABEL_11;
      }

      goto LABEL_12;
    }

LABEL_13:
    v8 = round(a1 * 0.9);
    v9 = [NTKAegirFontLoader nyNumeralsFontDescriptorOutlined:0];
    goto LABEL_14;
  }

  switch(a3)
  {
    case 0:
      goto LABEL_13;
    case 2:
LABEL_12:
      v8 = round(a1 * 0.9);
      v9 = [NTKAegirFontLoader tokyoFontDescriptorOutlined:0];
      goto LABEL_14;
    case 1:
      v8 = round(a1 * 0.95);
      v9 = [NTKAegirFontLoader sfNumeralsFontDescriptorOutlined:0];
LABEL_14:
      v10 = v9;
      goto LABEL_15;
  }

LABEL_11:
  v10 = 0;
  v8 = 0.0;
LABEL_15:
  v7 = [CLKFont fontWithDescriptor:v10 size:v8];

LABEL_16:

  return v7;
}

id sub_564C(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v7 = [NTKDigitalTimeLabelStyle defaultStyleForBounds:0 withRightSideMargin:a2 applyAdvanceFudge:a1 withBaselineY:a3 withFont:a4 forDevice:a5, a6, 0.0, round(a6 * 0.3125)];
  v8 = [v7 layoutRule];
  [v8 referenceFrame];
  v10 = v9;
  v12 = v11;

  v13 = [v7 layoutRule];
  [v13 setReferenceFrame:{0.0, v10, a5, v12}];

  v14 = [v7 layoutRule];
  [v14 setHorizontalLayout:1];

  return v7;
}

id sub_5724(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = a1;
  v10 = [NTKDigitalTimeLabelStyle smallInUpperRightCornerStyleForBounds:v9 weight:a2 forDevice:a3, a4, a5, UIFontWeightSemibold];
  v11 = [v10 designatorFont];
  [v11 pointSize];
  v13 = v12;

  v14 = sub_5994(v13);

  return v14;
}

id sub_5994(double a1)
{
  if (!NTKShowIndicScriptNumerals() || ([NTKSFCompactFont numericFontOfSize:a1 weight:UIFontWeightSemibold], (v2 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v3 = [CLKFont systemFontOfSize:a1 weight:UIFontWeightSemibold];
    v4 = [v3 CLKFontWithMonospacedNumbers];
    v2 = [v4 CLKFontWithAlternativePunctuation];
  }

  v5 = [v2 CLKFontWithMonospacedNumbers];
  v6 = [v5 CLKFontWithAlternativePunctuation];

  return v6;
}

void sub_5C98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_5CBC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _wheelDelayedBlockFired];
}

void sub_653C(id a1)
{
  qword_1A280 = objc_alloc_init(NSCache);

  _objc_release_x1();
}

void sub_67E8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = a2;
  [v3 drawInRect:{v4, v5, v6, v7}];
  v10 = [*(a1 + 40) layer];
  v9 = [v8 CGContext];

  [v10 renderInContext:v9];
}

void sub_6A10(id a1)
{
  qword_1A290 = objc_alloc_init(NSCache);

  _objc_release_x1();
}

void sub_6C64(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = a2;
  [v3 drawInRect:{v4, v5, v6, v7}];
  v10 = [*(a1 + 40) layer];
  v9 = [v8 CGContext];

  [v10 renderInContext:v9];
}

void sub_6E48(id a1)
{
  qword_1A2A0 = objc_alloc_init(NSCache);

  _objc_release_x1();
}

void sub_7450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_7478(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _date];
  }

  else
  {
    +[NSDate date];
  }
  v3 = ;

  return v3;
}

void sub_871C(id a1)
{
  qword_1A2B0 = [NTKAegirFaceBundle localizedStringForKey:@"FACE_DATE_NOW" comment:@"FACE_DATE_NOW"];

  _objc_release_x1();
}

void sub_87CC(id a1)
{
  v1 = [NTKFontLoader fontDescriptorForSectName:@"__NYNumerals" fromMachO:&dword_0];
  v2 = qword_1A2C0;
  qword_1A2C0 = v1;

  qword_1A2C8 = [NTKFontLoader fontDescriptorForSectName:@"__NYNumeralsO" fromMachO:&dword_0];

  _objc_release_x1();
}

void sub_88B4(id a1)
{
  v1 = [NTKFontLoader fontDescriptorForSectName:@"__SFNumerals" fromMachO:&dword_0];
  v2 = qword_1A2D8;
  qword_1A2D8 = v1;

  qword_1A2E0 = [NTKFontLoader fontDescriptorForSectName:@"__SFNumeralsO" fromMachO:&dword_0];

  _objc_release_x1();
}

void sub_899C(id a1)
{
  v15[0] = UIFontFeatureTypeIdentifierKey;
  v15[1] = UIFontFeatureSelectorIdentifierKey;
  v16[0] = &off_157E8;
  v16[1] = &off_15800;
  v1 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
  v12 = v1;
  v13 = UIFontDescriptorFeatureSettingsAttribute;
  v2 = [NSArray arrayWithObjects:&v12 count:1];
  v14 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];

  v4 = [NTKFontLoader fontDescriptorForSectName:@"__Tokyo" fromMachO:&dword_0];
  v5 = qword_1A2F0;
  qword_1A2F0 = v4;

  v6 = [qword_1A2F0 fontDescriptorByAddingAttributes:v3];
  v7 = qword_1A2F0;
  qword_1A2F0 = v6;

  v8 = [NTKFontLoader fontDescriptorForSectName:@"__TokyoO" fromMachO:&dword_0];
  v9 = qword_1A2F8;
  qword_1A2F8 = v8;

  v10 = [qword_1A2F8 fontDescriptorByAddingAttributes:v3];
  v11 = qword_1A2F8;
  qword_1A2F8 = v10;
}

void sub_8DE4(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) defaultFaceForDevice:*(a1 + 40)];
  if (v6)
  {
    if ([*(a1 + 48) count] > a3)
    {
      v7 = [*(a1 + 48) objectAtIndexedSubscript:a3];
      v8 = +[NTKAegirTypefaceEditOption optionWithTypeface:forDevice:](NTKAegirTypefaceEditOption, "optionWithTypeface:forDevice:", [v7 unsignedIntValue], *(a1 + 40));

      [v6 selectOption:v8 forCustomEditMode:13 slot:0];
    }

    if ([*(a1 + 56) count] > a3)
    {
      v9 = [*(a1 + 56) objectAtIndexedSubscript:a3];
      v10 = +[NTKNumeralEditOption optionWithNumeral:forDevice:](NTKNumeralEditOption, "optionWithNumeral:forDevice:", [v9 unsignedIntValue], *(a1 + 40));

      [v6 selectOption:v10 forCustomEditMode:19 slot:0];
    }

    v11 = +[NTKAegirVistaEditOption optionWithVista:forDevice:](NTKAegirVistaEditOption, "optionWithVista:forDevice:", [v5 unsignedIntValue], *(a1 + 40));
    [v6 selectOption:v11 forCustomEditMode:12 slot:0];
    if ([*(a1 + 64) count] > a3)
    {
      v12 = [*(a1 + 64) objectAtIndexedSubscript:a3];
      v13 = +[NTKAegirStyleEditOption optionWithStyle:forDevice:](NTKAegirStyleEditOption, "optionWithStyle:forDevice:", [v12 unsignedIntValue], *(a1 + 40));

      [v6 selectOption:v13 forCustomEditMode:15 slot:0];
    }

    if (a3 > 2)
    {
      if (a3 - 4 < 2)
      {
        v14 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:2 zOrder:4000];
        v18[0] = v14;
        v15 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:16 zOrder:4000];
        v18[1] = v15;
        v16 = v18;
        goto LABEL_17;
      }

      if (a3 == 3)
      {
        v14 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:16 zOrder:4000];
        v19[0] = v14;
        v15 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:2 zOrder:4000];
        v19[1] = v15;
        v16 = v19;
        goto LABEL_17;
      }
    }

    else
    {
      if (a3 - 1 < 2)
      {
        v14 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:2 zOrder:4000];
        v20[0] = v14;
        v15 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:18 zOrder:4000];
        v20[1] = v15;
        v16 = v20;
LABEL_17:
        v17 = [NSArray arrayWithObjects:v16 count:2];
        [v6 setCurationPlacements:v17];

        goto LABEL_18;
      }

      if (!a3)
      {
        v14 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:2 zOrder:4000];
        v21[0] = v14;
        v15 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:18 zOrder:9000];
        v21[1] = v15;
        v16 = v21;
        goto LABEL_17;
      }
    }

LABEL_18:
    [*(a1 + 72) addObject:v6];
  }
}

uint64_t sub_9448(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&stru_1A314);
  if (qword_1A318)
  {
    v3 = qword_1A318 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_1A320))
  {
    v5 = byte_1A310;
  }

  else
  {
    qword_1A318 = v2;
    qword_1A320 = [v2 version];
    sub_94EC();
    v5 = 1;
    byte_1A310 = 1;
  }

  os_unfair_lock_unlock(&stru_1A314);

  return v5;
}

uint64_t sub_94EC()
{
  if (+[NTKDefaultPreferences aegirShowAllOptions])
  {
    v0 = _EnumValueRange();
  }

  else
  {
    v0 = &off_15E90;
  }

  qword_1A308 = v0;

  return _objc_release_x1();
}

void sub_95AC(id a1)
{
  v3[0] = &off_158F0;
  v3[1] = &off_15920;
  v4[0] = @"full";
  v4[1] = @"crop01";
  v3[2] = &off_15938;
  v3[3] = &off_15950;
  v4[2] = @"crop02";
  v4[3] = @"crop03";
  v3[4] = &off_15968;
  v3[5] = &off_15980;
  v4[4] = @"crop04";
  v4[5] = @"crop05";
  v3[6] = &off_15998;
  v3[7] = &off_15908;
  v4[6] = @"crop06";
  v4[7] = @"random";
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:8];
  v2 = qword_1A328;
  qword_1A328 = v1;
}

uint64_t sub_9788(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&stru_1A344);
  if (qword_1A348)
  {
    v3 = qword_1A348 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_1A350))
  {
    v5 = byte_1A340;
  }

  else
  {
    qword_1A348 = v2;
    qword_1A350 = [v2 version];
    sub_982C();
    v5 = 1;
    byte_1A340 = 1;
  }

  os_unfair_lock_unlock(&stru_1A344);

  return v5;
}

uint64_t sub_982C()
{
  if (+[NTKDefaultPreferences aegirShowAllOptions])
  {
    v0 = _EnumValueRange();
  }

  else
  {
    v0 = &off_15EA8;
  }

  qword_1A338 = v0;

  return _objc_release_x1();
}

void sub_997C(id a1)
{
  v3[0] = &off_159B0;
  v3[1] = &off_159C8;
  v4[0] = @"earth";
  v4[1] = @"luna";
  v3[2] = &off_159E0;
  v3[3] = &off_15A10;
  v4[2] = @"orrery";
  v4[3] = @"mercury";
  v3[4] = &off_15A28;
  v3[5] = &off_15A40;
  v4[4] = @"venus";
  v4[5] = @"mars";
  v3[6] = &off_15A58;
  v3[7] = &off_15A70;
  v4[6] = @"jupiter";
  v4[7] = @"saturn";
  v3[8] = &off_15A88;
  v3[9] = &off_15AA0;
  v4[8] = @"uranus";
  v4[9] = @"neptune";
  v3[10] = &off_159F8;
  v4[10] = @"random";
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:11];
  v2 = qword_1A358;
  qword_1A358 = v1;
}