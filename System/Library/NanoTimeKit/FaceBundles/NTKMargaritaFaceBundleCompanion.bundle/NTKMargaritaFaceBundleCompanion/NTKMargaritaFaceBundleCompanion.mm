void sub_FE4(id a1)
{
  v1 = objc_alloc_init(NSNumberFormatter);
  v2 = qword_1ABD8;
  qword_1ABD8 = v1;

  qword_1ABE0 = [NTKMargaritaFaceBundle localizedStringForKey:@"MARGARITA_DEGREE_FORMAT" comment:&stru_14AF0];

  _objc_release_x1();
}

void sub_10E4()
{
  v0 = +[NSMutableDictionary dictionary];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = [objc_opt_class() __allOrderedValues];
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v11;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        v7 = [v6 description];
        [v0 setObject:v7 forKeyedSubscript:v6];
      }

      v3 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v3);
  }

  v8 = [v0 copy];
  v9 = qword_1ABF0;
  qword_1ABF0 = v8;
}

void sub_133C(id a1)
{
  v3[0] = &off_15A80;
  v3[1] = &off_15AB0;
  v4[0] = NTKFaceBundleStyle1;
  v4[1] = NTKFaceBundleStyle2;
  v3[2] = &off_15A98;
  v3[3] = &off_15AC8;
  v4[2] = NTKFaceBundleStyle3;
  v4[3] = NTKFaceBundleStyle4;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:4];
  v2 = qword_1AC00;
  qword_1AC00 = v1;
}

void sub_291C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 56);
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 transitionalPalette];
  [v6 setTransitionFraction:v3];

  v7 = [*(a1 + 40) editOptionForSlot:v5];
  v16 = [v7 pigmentEditOption];

  v8 = [*(a1 + 32) transitionalPalette];
  v9 = [v8 fromPalette];

  [v9 setPigmentEditOption:v16];
  [v9 setEditing:0];
  [v9 setStyle:*(*(a1 + 32) + 8)];
  v10 = [*(a1 + 32) transitionalPalette];
  v11 = [v10 toPalette];

  [v11 setPigmentEditOption:v16];
  [v11 setEditing:1];
  [v11 setStyle:*(*(a1 + 32) + 8)];
  v12 = *(a1 + 48);
  v13 = [*(a1 + 32) transitionalPalette];
  v14 = [v13 stripe];
  v15 = [v5 integerValue];

  [v12 setStripeColor:v14 atIndex:v15];
}

void sub_454C(uint64_t a1, uint64_t a2)
{
  v5 = [*(a1 + 32) normalComplicationDisplayWrapperForSlot:a2];
  v2 = [v5 display];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v4 = [v5 display];
    [v4 updateMonochromeColor];
  }
}

void sub_4A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_4A98(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_4AB0(uint64_t a1, void *a2)
{
  *(*(*(a1 + 32) + 8) + 40) = [a2 complication];

  return _objc_release_x1();
}

void sub_4F44(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 layer];
  v4 = [v3 CGContext];

  [v5 renderInContext:v4];
}

void sub_5514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_553C(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v6 = a3;
  if ([v6 integerValue] > *(*(*(a1 + 40) + 8) + 24) || objc_msgSend(v6, "integerValue") == *(*(*(a1 + 40) + 8) + 24) && (v7 = objc_msgSend(*(a1 + 32), "slotIndexForOption:", v8), v7 < objc_msgSend(*(a1 + 32), "slotIndexForOption:", *(*(*(a1 + 48) + 8) + 40))))
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    *(*(*(a1 + 40) + 8) + 24) = [v6 integerValue];
  }
}

void sub_577C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_5798(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  v6 = [*(a1 + 32) editOptionForSlot:?];
  v7 = [v6 pigmentEditOption];

  if ([*(a1 + 40) isEqual:v7])
  {
    *(*(*(a1 + 48) + 8) + 24) = [v8 integerValue];
    *a4 = 1;
  }
}

double sub_59AC(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_1AC18);
  if (qword_1AC20)
  {
    v3 = qword_1AC20 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_1AC28))
  {
    v5 = *&qword_1AC10;
  }

  else
  {
    qword_1AC20 = v2;
    qword_1AC28 = [v2 version];
    [NTKAnalogUtilities largeDialDiameterForDevice:v2];
    v5 = *&v6;
    qword_1AC10 = v6;
  }

  os_unfair_lock_unlock(&unk_1AC18);

  return v5;
}

void sub_5D44(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) defaultFaceForDevice:*(a1 + 40)];
  if (v6)
  {
    v7 = [*(a1 + 48) objectAtIndexedSubscript:a3];
    v8 = +[NTKMargaritaStyleEditOption optionWithMargaritaStyle:forDevice:](NTKMargaritaStyleEditOption, "optionWithMargaritaStyle:forDevice:", [v7 unsignedIntValue], *(a1 + 40));

    [v6 selectOption:v8 forCustomEditMode:15 slot:0];
    v9 = +[NTKMargaritaStripeCountEditOption optionWithCount:forDevice:](NTKMargaritaStripeCountEditOption, "optionWithCount:forDevice:", [v5 count], *(a1 + 40));
    [v6 selectOption:v9 forCustomEditMode:11 slot:0];
    v10 = [*(a1 + 56) objectAtIndexedSubscript:a3];
    v11 = +[NTKMargaritaRotationEditOption optionWithRotation:forDevice:](NTKMargaritaRotationEditOption, "optionWithRotation:forDevice:", [v10 unsignedIntValue], *(a1 + 40));

    [v6 selectOption:v11 forCustomEditMode:14 slot:0];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_603C;
    v17[3] = &unk_146E0;
    v12 = v6;
    v18 = v12;
    [v5 enumerateObjectsUsingBlock:v17];
    if (a3 == 5)
    {
      v13 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
      v20 = v13;
      v14 = [NSArray arrayWithObjects:&v20 count:1];
      [v12 setCurationPlacements:v14];
    }

    else
    {
      if (a3)
      {
        v13 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:13 zOrder:4000];
        v19[0] = v13;
        v14 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
        v19[1] = v14;
        v15 = v19;
      }

      else
      {
        v13 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
        v21[0] = v13;
        v14 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:13 zOrder:4000];
        v21[1] = v14;
        v15 = v21;
      }

      v16 = [NSArray arrayWithObjects:v15 count:2];
      [v12 setCurationPlacements:v16];
    }

    [*(a1 + 64) addObject:v12];
  }
}

void sub_603C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = [NTKPigmentEditOption pigmentNamed:a2];
  v5 = *(a1 + 32);
  v6 = [NSNumber numberWithUnsignedInteger:a3];
  v7 = [v6 stringValue];
  [v5 selectOption:v8 forCustomEditMode:10 slot:v7];
}

void sub_60E0(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) defaultFaceForDevice:*(a1 + 40)];
  v4 = v3;
  if (v3)
  {
    [v3 selectOption:v5 forCustomEditMode:11 slot:0];
    [*(a1 + 48) addObject:v4];
  }
}

id sub_73A8()
{
  if (qword_1AC60 != -1)
  {
    sub_9794();
  }

  v1 = qword_1AC58;

  return v1;
}

void sub_75B0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 layer];
  v4 = [v3 CGContext];

  [v5 renderInContext:v4];
}

id sub_7838(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 CGContext];

  return [v2 renderInContext:v3];
}

void sub_7AD8(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = +[CALayer layer];
  v4 = v6;
  [v3 setBackgroundColor:{objc_msgSend(v6, "CGColor")}];
  v5 = sub_73A8();
  [v3 setActions:v5];

  [v3 setAllowsEdgeAntialiasing:1];
  [*(*(a1 + 32) + 24) insertSublayer:v3 atIndex:0];
  [*(a1 + 40) addObject:v3];
}

double sub_8780(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_1AC40);
  if (qword_1AC48)
  {
    v3 = qword_1AC48 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_1AC50))
  {
    v5 = qword_1AC30;
  }

  else
  {
    qword_1AC48 = v2;
    qword_1AC50 = [v2 version];
    v5 = sub_8848(qword_1AC50, v2);
    qword_1AC30 = v5;
    qword_1AC38 = v6;
  }

  os_unfair_lock_unlock(&unk_1AC40);

  return *&v5;
}

double sub_8848(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [CLKDeviceMetrics metricsWithDevice:v2 identitySizeClass:2];
  [v3 scaledValue:3 withOverride:133.0 forSizeClass:151.0];
  v5 = v4;
  [NTKAnalogUtilities dialDiameterForDevice:v2];

  return v5;
}

void sub_88D4(id a1)
{
  v1 = +[NSNull null];
  v4[0] = @"backgroundColor";
  v4[1] = @"cornerCurve";
  v5[0] = v1;
  v5[1] = v1;
  v4[2] = @"cornerRadius";
  v4[3] = @"affineTransform";
  v5[2] = v1;
  v5[3] = v1;
  v4[4] = @"transform";
  v4[5] = @"bounds";
  v5[4] = v1;
  v5[5] = v1;
  v4[6] = @"position";
  v4[7] = @"opacity";
  v5[6] = v1;
  v5[7] = v1;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:8];
  v3 = qword_1AC58;
  qword_1AC58 = v2;
}

void sub_8A8C(id a1)
{
  v3[0] = &off_15D38;
  v3[1] = &off_15D20;
  v4[0] = @"white";
  v4[1] = @"light-gray";
  v3[2] = &off_15D08;
  v3[3] = &off_15CF0;
  v4[2] = @"gray";
  v4[3] = @"dark-grey";
  v3[4] = &off_15CD8;
  v3[5] = &off_15CC0;
  v4[4] = @"charcoal";
  v4[5] = @"black";
  v3[6] = &off_15DC8;
  v3[7] = &off_15DE0;
  v4[6] = @"brick-red";
  v4[7] = @"red";
  v3[8] = &off_15DF8;
  v3[9] = &off_15E10;
  v4[8] = @"rose-red";
  v4[9] = @"bright-red";
  v3[10] = &off_15E28;
  v3[11] = &off_15E40;
  v4[10] = @"pink";
  v4[11] = @"orange-red";
  v3[12] = &off_15E58;
  v3[13] = &off_15E70;
  v4[12] = @"orange";
  v4[13] = @"mustard";
  v3[14] = &off_15E88;
  v3[15] = &off_15EA0;
  v4[14] = @"yellow";
  v4[15] = @"light-yellow";
  v3[16] = &off_15ED0;
  v3[17] = &off_15EE8;
  v4[16] = @"light-green";
  v4[17] = @"green";
  v3[18] = &off_15F00;
  v3[19] = &off_15F30;
  v4[18] = @"dark-green";
  v4[19] = @"turquoise";
  v3[20] = &off_15F60;
  v3[21] = &off_15F78;
  v4[20] = @"slate";
  v4[21] = @"deep-navy";
  v3[22] = &off_15FA8;
  v3[23] = &off_15FC0;
  v4[22] = @"royal-blue";
  v4[23] = @"lake-blue";
  v3[24] = &off_15FD8;
  v3[25] = &off_15FF0;
  v4[24] = @"sky-blue";
  v4[25] = @"light-blue";
  v3[26] = &off_16008;
  v3[27] = &off_16020;
  v4[26] = @"violet";
  v4[27] = @"purple";
  v3[28] = &off_16038;
  v3[29] = &off_16050;
  v4[28] = @"deep-purple";
  v4[29] = @"magenta";
  v3[30] = &off_16068;
  v3[31] = &off_16080;
  v4[30] = @"fuchsia";
  v4[31] = @"dusty-rose";
  v3[32] = &off_16098;
  v3[33] = &off_15D50;
  v4[32] = @"light-pink";
  v4[33] = @"beige";
  v3[34] = &off_15D68;
  v3[35] = &off_15D80;
  v4[34] = @"tan";
  v4[35] = @"coffee";
  v3[36] = &off_15D98;
  v3[37] = &off_15DB0;
  v4[36] = @"brown";
  v4[37] = @"dark-brown";
  v3[38] = &off_15EB8;
  v3[39] = &off_15F18;
  v4[38] = @"lime-green";
  v4[39] = @"teal";
  v3[40] = &off_15F48;
  v3[41] = &off_15F90;
  v4[40] = @"jade-green";
  v4[41] = @"gre-blue";
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:42];
  v2 = qword_1AC68;
  qword_1AC68 = v1;
}

void sub_90C8()
{
  v0 = +[NSMutableDictionary dictionary];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = [objc_opt_class() __allOrderedValues];
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v11;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        v7 = [v6 description];
        [v0 setObject:v7 forKeyedSubscript:v6];
      }

      v3 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v3);
  }

  v8 = [v0 copy];
  v9 = qword_1AC78;
  qword_1AC78 = v8;
}