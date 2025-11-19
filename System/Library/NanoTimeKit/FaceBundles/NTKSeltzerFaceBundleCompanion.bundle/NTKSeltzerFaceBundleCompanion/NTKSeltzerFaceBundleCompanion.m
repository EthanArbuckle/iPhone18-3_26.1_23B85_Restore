void sub_1244(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_1260(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && ((v3 = *(WeakRetained + 2)) != 0 || (v3 = *(WeakRetained + 3)) != 0))
  {
    v4 = v3;
  }

  else
  {
    v4 = +[NTKDate faceDate];
  }

  v5 = v4;

  return v5;
}

void sub_2078(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v8 = a1;
  os_unfair_lock_lock(&unk_15CC8);
  if (qword_15CD0)
  {
    v3 = qword_15CD0 == v8;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v8 version], v4 != qword_15CD8))
  {
    qword_15CD0 = v8;
    qword_15CD8 = [v8 version];
    sub_2170(v8, v9);
    xmmword_15C98 = v9[4];
    unk_15CA8 = v9[5];
    xmmword_15CB8 = v9[6];
    xmmword_15C58 = v9[0];
    unk_15C68 = v9[1];
    xmmword_15C78 = v9[2];
    unk_15C88 = v9[3];
  }

  v5 = unk_15CA8;
  a2[4] = xmmword_15C98;
  a2[5] = v5;
  a2[6] = xmmword_15CB8;
  v6 = unk_15C68;
  *a2 = xmmword_15C58;
  a2[1] = v6;
  v7 = unk_15C88;
  a2[2] = xmmword_15C78;
  a2[3] = v7;
  os_unfair_lock_unlock(&unk_15CC8);
}

void sub_2170(uint64_t a1@<X1>, void *a2@<X8>)
{
  v13 = [CLKDeviceMetrics metricsWithDevice:a1 identitySizeClass:2];
  [v13 scaledValue:71.5];
  *a2 = v3;
  [v13 scaledValue:80.0];
  a2[1] = v4;
  [v13 scaledValue:91.5];
  a2[2] = v5;
  [v13 scaledValue:3.5];
  a2[3] = v6;
  [v13 scaledValue:2.5];
  a2[4] = v7;
  [v13 scaledValue:4.0];
  a2[5] = 0x3FF4000000000000;
  a2[6] = v8;
  [v13 scaledValue:7.5];
  a2[7] = 0x3FF4000000000000;
  a2[8] = v9;
  [v13 scaledValue:3.0];
  a2[9] = 0x3FF4000000000000;
  a2[10] = v10;
  [v13 scaledValue:6.0];
  a2[11] = 0x3FF4000000000000;
  a2[12] = v11;
  [v13 scaledValue:30.0];
  a2[13] = v12;
}

void sub_247C(id a1, NTKFace *a2, unint64_t a3, BOOL *a4)
{
  v5 = a2;
  if (a3 == 1)
  {
    v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:2 zOrder:4000];
    v12[0] = v6;
    v7 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:4 zOrder:4000];
    v12[1] = v7;
    v8 = v12;
    v9 = 18;
    goto LABEL_5;
  }

  if (!a3)
  {
    v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:4 zOrder:4000];
    v13[0] = v6;
    v7 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:18 zOrder:7000];
    v13[1] = v7;
    v8 = v13;
    v9 = 3;
LABEL_5:
    v10 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:v9 zOrder:4000];
    v8[2] = v10;
    v11 = [NSArray arrayWithObjects:v8 count:3];
    [(NTKFace *)v5 setCurationPlacements:v11];
  }
}

void sub_2B18(id a1)
{
  qword_15CE0 = [[NTKCornerComplicationConfiguration alloc] initWithTopLeftComplication:43 topRightComplication:10 bottomLeftComplication:3 bottomRightComplication:12];

  _objc_release_x1();
}

void sub_47DC(id a1)
{
  qword_15CF0 = objc_alloc_init(NSCache);

  _objc_release_x1();
}

void sub_4818(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 snapshotImage];
  [v5 drawInRect:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];

  v7 = [*(a1 + 32) layer];
  v6 = [v4 CGContext];

  [v7 renderInContext:v6];
}

void sub_4944(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v6 = a1;
  os_unfair_lock_lock(&unk_15D30);
  if (qword_15D38)
  {
    v3 = qword_15D38 == v6;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v6 version], v4 != qword_15D40))
  {
    qword_15D38 = v6;
    qword_15D40 = [v6 version];
    sub_4A1C(v6, v7);
    xmmword_15D00 = v7[0];
    *algn_15D10 = v7[1];
    xmmword_15D20 = v7[2];
  }

  v5 = *algn_15D10;
  *a2 = xmmword_15D00;
  a2[1] = v5;
  a2[2] = xmmword_15D20;
  os_unfair_lock_unlock(&unk_15D30);
}

void sub_4A1C(void *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = a1;
  v9 = [CLKDeviceMetrics metricsWithDevice:v3 identitySizeClass:2];
  [NTKAnalogUtilities largeDialDiameterForDevice:v3];
  v5 = v4;

  *a2 = v5;
  [v9 scaledValue:100.5];
  *(a2 + 8) = v6;
  [v9 scaledValue:14.5];
  *(a2 + 16) = v7;
  [v9 scaledValue:10.25];
  *(a2 + 24) = v8;
  *(a2 + 32) = xmmword_C340;
}

double sub_4BE8(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_15D58);
  if (qword_15D60)
  {
    v3 = qword_15D60 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_15D68))
  {
    v5 = qword_15D48;
  }

  else
  {
    qword_15D60 = v2;
    qword_15D68 = [v2 version];
    v5 = sub_4CB0(qword_15D68, v2);
    qword_15D48 = v5;
    qword_15D50 = v6;
  }

  os_unfair_lock_unlock(&unk_15D58);

  return *&v5;
}

double sub_4CB0(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [CLKDeviceMetrics metricsWithDevice:v2 identitySizeClass:2];
  [v3 setRoundingBehavior:3];
  [v3 scaledValue:3 withOverride:49.0 forSizeClass:54.0];
  v5 = v4;
  [v2 screenScale];

  return v5;
}

void sub_5620(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_5648(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = objc_alloc_init(UILabel);
    v5 = [WeakRetained[28] calendarDialDateLabel];
    [v4 setTextColor:v5];

    v6 = [WeakRetained _dateLabelFont];
    [v4 setFont:v6];

    v7 = [WeakRetained _dateForIndex:a2];
    v8 = [WeakRetained _lunarDateLabelTextForDate:v7];
    [v4 setText:v8];

    [v4 sizeToFit];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_582C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_5854(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained _dateForIndex:a2];
    v6 = [v4 _moonPhaseImageForDate:v5];
    v7 = [[UIImageView alloc] initWithImage:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id sub_5A40(uint64_t a1)
{
  v2 = +[CALayer layer];
  [v2 setFrame:{*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56)}];
  [v2 setBackgroundColor:*(a1 + 64)];

  return v2;
}

void sub_5B48(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v8 = [v5 _dateForIndex:a3];
  v7 = [*(a1 + 32) _lunarDateLabelTextForDate:v8];
  [v6 setText:v7];

  [v6 sizeToFit];
}

void sub_5D00(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) _dateForIndex:a3];
  v7 = *(a1 + 32);
  v9 = v5;
  v8 = [v7 _moonPhaseImageForDate:v6];
  [v9 setImage:v8];
}

void sub_82A8(void *a1@<X1>, uint64_t a2@<X8>)
{
  v9 = a1;
  os_unfair_lock_lock(&unk_15E08);
  if (qword_15E10)
  {
    v3 = qword_15E10 == v9;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v9 version], v4 != qword_15E18))
  {
    qword_15E10 = v9;
    qword_15E18 = [v9 version];
    sub_83D0(v9, v10);
    xmmword_15DD0 = v10[6];
    unk_15DE0 = v10[7];
    xmmword_15DF0 = v10[8];
    qword_15E00 = v11;
    xmmword_15D90 = v10[2];
    unk_15DA0 = v10[3];
    xmmword_15DB0 = v10[4];
    unk_15DC0 = v10[5];
    xmmword_15D70 = v10[0];
    unk_15D80 = v10[1];
  }

  v5 = unk_15DE0;
  *(a2 + 96) = xmmword_15DD0;
  *(a2 + 112) = v5;
  *(a2 + 128) = xmmword_15DF0;
  *(a2 + 144) = qword_15E00;
  v6 = unk_15DA0;
  *(a2 + 32) = xmmword_15D90;
  *(a2 + 48) = v6;
  v7 = unk_15DC0;
  *(a2 + 64) = xmmword_15DB0;
  *(a2 + 80) = v7;
  v8 = unk_15D80;
  *a2 = xmmword_15D70;
  *(a2 + 16) = v8;
  os_unfair_lock_unlock(&unk_15E08);
}

void sub_83D0(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = [CLKDeviceMetrics metricsWithDevice:a1 identitySizeClass:2];
  [v3 scaledValue:158.0];
  v30 = v4;
  [v3 scaledValue:129.0];
  v32 = v5;
  [v3 scaledValue:100.5];
  v31 = v6;
  [v3 scaledValue:163.0];
  v29 = v7;
  [v3 scaledValue:95.5];
  v8.f64[0] = v31;
  v9.f64[0] = v30;
  v9.f64[1] = v32;
  __asm { FMOV            V1.2D, #0.5 }

  v8.f64[1] = v29;
  *a2 = vmulq_f64(v9, _Q1);
  *(a2 + 16) = vmulq_f64(v8, _Q1);
  *(a2 + 32) = v15 * 0.5;
  [v3 scaledValue:60.0];
  *(a2 + 40) = v16;
  [v3 scaledValue:74.5];
  *(a2 + 48) = v17;
  *(a2 + 56) = 0xC014000000000000;
  [v3 scaledValue:1.25];
  *(a2 + 64) = v18;
  [v3 scaledValue:9.5];
  *(a2 + 72) = v19;
  v35[0] = &off_10DB8;
  v35[1] = &off_10DD0;
  v36[0] = &off_10ED8;
  v36[1] = &off_10EE8;
  v35[2] = &off_10DE8;
  v35[3] = &off_10E00;
  v36[2] = &off_10EF8;
  v36[3] = &off_10EF8;
  v35[4] = &off_10E18;
  v35[5] = &off_10E30;
  v36[4] = &off_10ED8;
  v36[5] = &off_10F08;
  v35[6] = &off_10E48;
  v36[6] = &off_10F18;
  v20 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:7];
  [v3 scaledValue:v20 withOverrides:145.5];
  *(a2 + 80) = v21;

  v33[0] = &off_10DD0;
  v33[1] = &off_10DE8;
  v34[0] = &off_10F28;
  v34[1] = &off_10F38;
  v33[2] = &off_10E00;
  v34[2] = &off_10F38;
  v22 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:3];
  [v3 scaledValue:v22 withOverrides:114.75];
  *(a2 + 88) = v23;

  [v3 scaledValue:6.0];
  *(a2 + 96) = v24;
  *(a2 + 104) = (v32 - v31) * 0.5;
  *(a2 + 112) = 0x3FE8000000000000;
  CLKDegreesToRadians();
  *(a2 + 120) = v25;
  CLKDegreesToRadians();
  *(a2 + 128) = v26;
  CLKDegreesToRadians();
  *(a2 + 136) = v27;
  CLKDegreesToRadians();
  *(a2 + 144) = v28;
}

uint64_t NTKSeltzerUseAllUppercaseText()
{
  if (qword_15E28 != -1)
  {
    sub_9088();
  }

  return byte_15E20;
}

void sub_86EC(id a1)
{
  v1 = [NTKSeltzerFaceBundle localizedStringForKey:@"SELTZER_USE_ALL_UPPERCASE_TEXT" comment:@"1"];
  if (v1 && [@"1" isEqualToString:v1])
  {
    byte_15E20 = 1;
  }

  _objc_release_x1();
}

id sub_8A78(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(&unk_15E38);
  if (qword_15E40)
  {
    v4 = qword_15E40 == v3;
  }

  else
  {
    v4 = 0;
  }

  if (!v4 || (v5 = [v3 version], v5 != qword_15E48))
  {
    qword_15E40 = v3;
    qword_15E48 = [v3 version];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_8B98;
    v11[3] = &unk_10678;
    v6 = *(a1 + 40);
    v11[4] = *(a1 + 32);
    v11[5] = v6;
    v7 = sub_8B98(v11);
    v8 = qword_15E30;
    qword_15E30 = v7;
  }

  v9 = qword_15E30;
  os_unfair_lock_unlock(&unk_15E38);

  return v9;
}

id sub_8B98(uint64_t a1)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_8C3C;
  v4[3] = &unk_10658;
  v1 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v4[5] = v1;
  if (qword_15E58 != -1)
  {
    dispatch_once(&qword_15E58, v4);
  }

  v2 = qword_15E50;

  return v2;
}

id sub_8C3C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = _EnumValueRange();
  v4 = qword_15E50;
  qword_15E50 = v3;

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_8CDC;
  v6[3] = &unk_10638;
  v6[4] = *(a1 + 40);
  return [qword_15E50 sortUsingComparator:v6];
}

id sub_8CDC(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = objc_opt_class();
  v9 = [v7 unsignedIntegerValue];

  v10 = [v8 localizedNameForCalendar:v9];
  v11 = *(a1 + 32);
  v12 = objc_opt_class();
  v13 = [v6 unsignedIntegerValue];

  v14 = [v12 localizedNameForCalendar:v13];
  v15 = [v10 localizedStandardCompare:v14];

  return v15;
}

void sub_8ECC(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = *(a1 + 32);
  v4 = objc_opt_class();
  v5 = [*(a1 + 32) device];
  v6 = [v4 _orderedValuesForDevice:v5];

  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"calendar %lu", [v11 unsignedIntValue]);
        [v2 setObject:v12 forKeyedSubscript:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v13 = qword_15E60;
  qword_15E60 = v2;
}