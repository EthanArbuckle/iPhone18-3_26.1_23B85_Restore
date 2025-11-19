id sub_1398(uint64_t a1)
{
  v2 = NTKIdealizedDate();
  v3 = [v2 dateByAddingTimeInterval:(3600 * *(a1 + 32))];

  return v3;
}

void sub_182C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_1848(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && (v3 = *(WeakRetained + 4)) != 0)
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

void sub_2218(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v6 = a1;
  os_unfair_lock_lock(&unk_15B80);
  if (qword_15B88)
  {
    v3 = qword_15B88 == v6;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v6 version], v4 != qword_15B90))
  {
    qword_15B88 = v6;
    qword_15B90 = [v6 version];
    sub_22F0(v6, v7);
    xmmword_15B50 = v7[0];
    unk_15B60 = v7[1];
    xmmword_15B70 = v7[2];
  }

  v5 = unk_15B60;
  *a2 = xmmword_15B50;
  a2[1] = v5;
  a2[2] = xmmword_15B70;
  os_unfair_lock_unlock(&unk_15B80);
}

void sub_22F0(uint64_t a1@<X1>, void *a2@<X8>)
{
  v3 = [CLKDeviceMetrics metricsWithDevice:a1 identitySizeClass:2];
  [v3 scaledValue:7.0];
  *a2 = v4;
  v26[0] = &off_112C8;
  v23 = xmmword_C4E0;
  v5 = [NSValue valueWithBytes:&v23 objCType:"{CGSize=dd}"];
  v27[0] = v5;
  v26[1] = &off_112E0;
  v22 = xmmword_C4F0;
  v6 = [NSValue valueWithBytes:&v22 objCType:"{CGSize=dd}"];
  v27[1] = v6;
  v26[2] = &off_112F8;
  v21 = xmmword_C4F0;
  v7 = [NSValue valueWithBytes:&v21 objCType:"{CGSize=dd}"];
  v27[2] = v7;
  v26[3] = &off_11310;
  v20 = xmmword_C4F0;
  v8 = [NSValue valueWithBytes:&v20 objCType:"{CGSize=dd}"];
  v27[3] = v8;
  v26[4] = &off_11328;
  v19 = xmmword_C4F0;
  v9 = [NSValue valueWithBytes:&v19 objCType:"{CGSize=dd}"];
  v27[4] = v9;
  v26[5] = &off_11340;
  v18 = xmmword_C4F0;
  v10 = [NSValue valueWithBytes:&v18 objCType:"{CGSize=dd}"];
  v27[5] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:6];
  [v3 scaledSize:v11 withOverrides:{2.5, 9.0}];
  a2[1] = v12;
  a2[2] = v13;

  [v3 scaledSize:{1.5, 6.0}];
  a2[3] = v14;
  a2[4] = v15;
  v24[0] = &off_11358;
  v24[1] = &off_112E0;
  v25[0] = &off_10CC8;
  v25[1] = &off_10CD8;
  v24[2] = &off_112F8;
  v24[3] = &off_11310;
  v25[2] = &off_10CD8;
  v25[3] = &off_10CE8;
  v24[4] = &off_11328;
  v24[5] = &off_11340;
  v25[4] = &off_10CD8;
  v25[5] = &off_10CD8;
  v16 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:6];
  [v3 scaledValue:v16 withOverrides:32.0];
  a2[5] = v17;
}

uint64_t sub_2668(uint64_t a1)
{
  qword_15BA0 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_2DA8(id a1)
{
  qword_15BB0 = [[WorldClockCity alloc] initWithALCityIdentifier:152];

  _objc_release_x1();
}

void sub_3560(id a1, NTKFace *a2, unint64_t a3, BOOL *a4)
{
  v5 = a2;
  if (a3 > 1)
  {
    if (a3 - 2 >= 2)
    {
      if (a3 == 4)
      {
        v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:2 zOrder:4000];
        v13[0] = v6;
        v7 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:4 zOrder:4000];
        v13[1] = v7;
        v8 = v13;
        goto LABEL_13;
      }

      if (a3 == 5)
      {
        v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:2 zOrder:4000];
        v12[0] = v6;
        v7 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:4 zOrder:4000];
        v12[1] = v7;
        v8 = v12;
LABEL_13:
        v9 = [NSArray arrayWithObjects:v8 count:2];
        [(NTKFace *)v5 setCurationPlacements:v9];
        goto LABEL_14;
      }

      goto LABEL_15;
    }

    v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:16 zOrder:4000];
    v14[0] = v6;
    v7 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
    v14[1] = v7;
    v9 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:4 zOrder:4000];
    v14[2] = v9;
    v10 = v14;
LABEL_10:
    v11 = [NSArray arrayWithObjects:v10 count:3];
    [(NTKFace *)v5 setCurationPlacements:v11];

LABEL_14:
    goto LABEL_15;
  }

  if (!a3)
  {
    v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
    v16[0] = v6;
    v7 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:4 zOrder:8000];
    v16[1] = v7;
    v8 = v16;
    goto LABEL_13;
  }

  if (a3 == 1)
  {
    v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:16 zOrder:4000];
    v15[0] = v6;
    v7 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
    v15[1] = v7;
    v9 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:4 zOrder:4000];
    v15[2] = v9;
    v10 = v15;
    goto LABEL_10;
  }

LABEL_15:
}

double sub_3AC0(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_15BD0);
  if (qword_15BD8)
  {
    v3 = qword_15BD8 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_15BE0))
  {
    v5 = qword_15BB8;
  }

  else
  {
    qword_15BD8 = v2;
    qword_15BE0 = [v2 version];
    v5 = sub_3BA8(qword_15BE0, v2);
    qword_15BB8 = v5;
    qword_15BC0 = v6;
    qword_15BC8 = v7;
  }

  os_unfair_lock_unlock(&unk_15BD0);

  return *&v5;
}

double sub_3BA8(uint64_t a1, uint64_t a2)
{
  v2 = [CLKDeviceMetrics metricsWithDevice:a2 identitySizeClass:2];
  v13[0] = &off_11640;
  v13[1] = &off_11658;
  v14[0] = &off_10CF8;
  v14[1] = &off_10D08;
  v13[2] = &off_11670;
  v13[3] = &off_11688;
  v14[2] = &off_10D08;
  v14[3] = &off_10D18;
  v13[4] = &off_116A0;
  v13[5] = &off_116B8;
  v14[4] = &off_10D28;
  v14[5] = &off_10D38;
  v3 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:6];
  [v2 scaledValue:v3 withOverrides:25.5];
  v5 = v4;

  v11[0] = &off_11640;
  v11[1] = &off_11658;
  v12[0] = &off_10D48;
  v12[1] = &off_10D58;
  v12[2] = &off_10D58;
  v12[3] = &off_10D68;
  v11[2] = &off_11670;
  v11[3] = &off_11688;
  v11[4] = &off_116A0;
  v11[5] = &off_116B8;
  v12[4] = &off_10D78;
  v12[5] = &off_10D78;
  v6 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:6];
  [v2 scaledValue:v6 withOverrides:40.5];

  v9[0] = &off_11640;
  v9[1] = &off_11658;
  v10[0] = &off_10D88;
  v10[1] = &off_10D98;
  v9[2] = &off_11670;
  v9[3] = &off_11688;
  v10[2] = &off_10D98;
  v10[3] = &off_10DA8;
  v9[4] = &off_116A0;
  v9[5] = &off_116B8;
  v10[4] = &off_10DB8;
  v10[5] = &off_10DC8;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:6];
  [v2 scaledValue:v7 withOverrides:49.0];

  return v5;
}

void sub_57EC(id a1)
{
  qword_15BE8 = objc_alloc_init(NSCache);

  _objc_release_x1();
}

double sub_58A4(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_15C10);
  if (qword_15C18)
  {
    v3 = qword_15C18 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_15C20))
  {
    v5 = qword_15BF8;
  }

  else
  {
    qword_15C18 = v2;
    qword_15C20 = [v2 version];
    v5 = sub_598C(qword_15C20, v2);
    qword_15BF8 = v5;
    qword_15C00 = v6;
    qword_15C08 = v7;
  }

  os_unfair_lock_unlock(&unk_15C10);

  return *&v5;
}

double sub_598C(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [CLKDeviceMetrics metricsWithDevice:v2 identitySizeClass:2];
  [NTKAnalogUtilities largeDialDiameterForDevice:v2];
  v5 = v4;

  v8[0] = &off_116E8;
  v8[1] = &off_11700;
  v9[0] = &off_10DD8;
  v9[1] = &off_10DE8;
  v8[2] = &off_11718;
  v8[3] = &off_11730;
  v9[2] = &off_10DE8;
  v9[3] = &off_10DF8;
  v8[4] = &off_11748;
  v8[5] = &off_11760;
  v9[4] = &off_10E08;
  v9[5] = &off_10E18;
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:6];
  [v3 scaledValue:v6 withOverrides:99.0];

  return v5;
}

void sub_5DE4(id a1)
{
  qword_15C28 = objc_alloc_init(NTKCornerComplicationConfiguration);

  _objc_release_x1();
}

void sub_6730(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, id location)
{
  objc_destroyWeak((v47 + 32));
  objc_destroyWeak((v46 + 40));
  objc_destroyWeak(&a40);
  objc_destroyWeak(&a45);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_67E4(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained _newCityLabelWithCityIndex:2 * a2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_6844(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained _newCityLabelWithCityIndex:(2 * a2) | 1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_68A8(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (a2 == 12)
    {
      v5 = [CLKFont systemFontOfSize:CLKRoundedFontDesignName weight:*(a1 + 104) design:UIFontWeightHeavy];
      v6 = [WeakRetained _imageViewWithSymbolName:@"triangle.fill" font:v5];
    }

    else
    {
      v6 = +[CALayer layer];
      [v6 setFrame:{0.0, 0.0, *(a1 + 96), *(a1 + 96)}];
      [v6 setActions:*(a1 + 32)];
      [v6 bounds];
      [v6 setCornerRadius:CGRectGetMidX(v9)];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_69A8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained _newHourMarkerLabel];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_6E00(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 40);
  v4 = a2;
  v5 = [v3 layer];
  [v5 renderInContext:{objc_msgSend(v4, "CGContext")}];

  v7 = [*(*(a1 + 32) + 48) layer];
  v6 = [v4 CGContext];

  [v7 renderInContext:v6];
}

void sub_7104(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a2;
  if (a3 == 12)
  {
    [v5 cityDialArrowMarker];
  }

  else
  {
    [v5 cityDialDots];
  }
  v7 = ;
  [v4 _updateColor:v7 forObject:v6];
}

uint64_t sub_7668(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v17;
    v6 = +[NTKGlobetrotterCityManager sharedInstance];
    v7 = [v6 timeZoneForCityAtIndex:a3 hourOffset:*(a1 + 48) - *(a1 + 56)];

    v8 = [*(a1 + 32) _hourMarkerDialIndexForHour:a3];
    if ([v7 isDaylightSavingTimeForDate:*(a1 + 40)])
    {
      [v7 daylightSavingTimeOffsetForDate:*(a1 + 40)];
      v8 = (v9 / 3600.0 + v8);
      if (v8 >= 25)
      {
        v8 %= 0x18uLL;
      }
    }

    v10 = [*(a1 + 32) _dialMarkerAttributedStringForHour:v8];
    [v5 setAttributedText:v10];

    [v5 sizeToFit];
    v11 = *(a1 + 48) + a3;
    v12 = v11 % 0x18;
    v13 = v11 + 24;
    if (*(a1 + 48) + a3 >= 0)
    {
      v13 = v12;
    }

    if (v13 >= *(a1 + 64) && v13 <= *(a1 + 72))
    {
      v14 = 1;
      v15 = 192;
    }

    else
    {
      v14 = 0;
      v15 = 184;
    }

    [v5 setInterior:v14];
    [v5 setCircleRadius:*(a1 + v15) * 0.5];
  }

  return _objc_release_x1();
}

double sub_7820(void *a1, uint64_t a2)
{
  v2 = a1[4] + a2;
  v3 = v2 % 0x18;
  v4 = v2 + 24;
  if (a1[4] + a2 >= 0)
  {
    v4 = v3;
  }

  if (v4 >= a1[5] && v4 <= a1[6])
  {
    return 180.0;
  }

  else
  {
    return 0.0;
  }
}

void sub_7D10(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = a1[4] + a3;
  v7 = v6 % 0xC;
  v8 = v6 + 12;
  if (a1[4] + a3 < 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  v10 = v5;
  if (v9 >= a1[5] && v9 <= a1[6])
  {
    v11 = 1;
    v12 = 8;
  }

  else
  {
    v11 = 0;
    v12 = 7;
  }

  v13 = v10;
  [v10 setInterior:v11];
  [v13 setCircleRadius:*&a1[v12] * 0.5];
}

void sub_7DD0(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = a1[4] + a3;
  v7 = v6 % 0xC;
  v8 = v6 + 12;
  if (a1[4] + a3 < 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  v10 = v5;
  if (v9 >= a1[5] && v9 <= a1[6])
  {
    v11 = 1;
    v12 = 10;
  }

  else
  {
    v11 = 0;
    v12 = 9;
  }

  v13 = v10;
  [v10 setInterior:v11];
  [v13 setCircleRadius:*&a1[v12] * 0.5];
}

double sub_7E90(void *a1, uint64_t a2)
{
  v2 = a1[4] + a2;
  v3 = v2 % 0xC;
  v4 = v2 + 12;
  if (a1[4] + a2 >= 0)
  {
    v4 = v3;
  }

  if (v4 >= a1[5] && v4 <= a1[6])
  {
    return 180.0;
  }

  else
  {
    return 0.0;
  }
}

double sub_7EE0(void *a1, uint64_t a2)
{
  v2 = a1[4] + a2;
  v3 = v2 % 0xC;
  v4 = v2 + 12;
  if (a1[4] + a2 >= 0)
  {
    v4 = v3;
  }

  if (v4 >= a1[5] && v4 <= a1[6])
  {
    return 180.0;
  }

  else
  {
    return 0.0;
  }
}

void sub_80E8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = [CLKUIAlmanacTransitInfo transitInfoForDate:*(a1 + 32) location:*(a1 + 56), *(a1 + 64)];
    v4 = [v3 rise];
    if (v4)
    {
      v5 = v4;
      v6 = [v3 set];

      if (v6)
      {
        v7 = +[NSCalendar currentCalendar];
        v8 = [*(a1 + 40) _localTimeZone];
        v9 = [v3 rise];
        v10 = [v7 componentsInTimeZone:v8 fromDate:v9];

        v11 = llround([v10 minute] / 60.0 + objc_msgSend(v10, "hour"));
        if ([v8 isDaylightSavingTimeForDate:*(a1 + 32)])
        {
          [v8 daylightSavingTimeOffsetForDate:*(a1 + 32)];
          v11 = (v11 + v12 / -3600.0);
        }

        v13 = [v3 set];
        v14 = [v7 componentsInTimeZone:v8 fromDate:v13];

        v15 = llround([v14 minute] / 60.0 + objc_msgSend(v14, "hour"));
        if ([v8 isDaylightSavingTimeForDate:*(a1 + 32)])
        {
          [v8 daylightSavingTimeOffsetForDate:*(a1 + 32)];
          v15 = (v15 + v16 / -3600.0);
        }

        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_8340;
        v18[3] = &unk_10680;
        v17 = *(a1 + 40);
        v18[4] = WeakRetained;
        v18[5] = v17;
        v18[6] = v11;
        v18[7] = v15;
        dispatch_async(&_dispatch_main_q, v18);
      }
    }
  }
}

id *sub_8340(id *result)
{
  v1 = result;
  v2 = result[4];
  v3 = *(v2 + 3);
  v4 = result[6];
  if (v3 != v4)
  {
    if (v3 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = *(v2 + 9);
      v6 = [result[5] _newHourMarkerLabel];
      [v5 replaceMarker:v6 atIndex:{objc_msgSend(v1[5], "_hourMarkerDialIndexForHour:", *(v1[4] + 3))}];

      v2 = v1[4];
      v4 = v1[6];
    }

    result = [*(v2 + 9) replaceMarker:*(v2 + 1) atIndex:{objc_msgSend(v1[5], "_hourMarkerDialIndexForHour:", v4)}];
    *(v1[4] + 3) = v1[6];
    v2 = v1[4];
  }

  v7 = *(v2 + 4);
  v8 = v1[7];
  if (v7 != v8)
  {
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = *(v2 + 9);
      v10 = [v1[5] _newHourMarkerLabel];
      [v9 replaceMarker:v10 atIndex:{objc_msgSend(v1[5], "_hourMarkerDialIndexForHour:", *(v1[4] + 4))}];

      v2 = v1[4];
      v8 = v1[7];
    }

    result = [*(v2 + 9) replaceMarker:*(v2 + 2) atIndex:{objc_msgSend(v1[5], "_hourMarkerDialIndexForHour:", v8)}];
    *(v1[4] + 4) = v1[7];
  }

  return result;
}

void sub_89B0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = v2[14];
  v4 = a2;
  v5 = [v3 cityDialLabel];
  [v2 _updateColor:v5 forObject:v4];
}

void sub_8A2C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = v2[14];
  v4 = a2;
  v5 = [v3 cityDialLabel];
  [v2 _updateColor:v5 forObject:v4];
}

void sub_8C1C(void *a1@<X1>, uint64_t a2@<X8>)
{
  v8 = a1;
  os_unfair_lock_lock(&unk_15CB0);
  if (qword_15CB8)
  {
    v3 = qword_15CB8 == v8;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v8 version], v4 != qword_15CC0))
  {
    qword_15CB8 = v8;
    qword_15CC0 = [v8 version];
    sub_8D30(v8, v9);
    xmmword_15C78 = v9[4];
    unk_15C88 = v9[5];
    xmmword_15C98 = v9[6];
    qword_15CA8 = v10;
    xmmword_15C38 = v9[0];
    unk_15C48 = v9[1];
    xmmword_15C58 = v9[2];
    unk_15C68 = v9[3];
  }

  v5 = unk_15C88;
  *(a2 + 64) = xmmword_15C78;
  *(a2 + 80) = v5;
  *(a2 + 96) = xmmword_15C98;
  *(a2 + 112) = qword_15CA8;
  v6 = unk_15C48;
  *a2 = xmmword_15C38;
  *(a2 + 16) = v6;
  v7 = unk_15C68;
  *(a2 + 32) = xmmword_15C58;
  *(a2 + 48) = v7;
  os_unfair_lock_unlock(&unk_15CB0);
}

void sub_8D30(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 112) = 0;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  v3 = [CLKDeviceMetrics metricsWithDevice:a1 identitySizeClass:2];
  v39[0] = &off_117C0;
  v39[1] = &off_117D8;
  v40[0] = &off_10E28;
  v40[1] = &off_10E38;
  v39[2] = &off_117F0;
  v39[3] = &off_11808;
  v40[2] = &off_10E48;
  v40[3] = &off_10E48;
  v39[4] = &off_11820;
  v39[5] = &off_11838;
  v40[4] = &off_10E58;
  v40[5] = &off_10E68;
  v39[6] = &off_11850;
  v40[6] = &off_10E78;
  v4 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:7];
  [v3 scaledValue:v4 withOverrides:145.0];
  *a2 = v5;

  v37[0] = &off_117C0;
  v37[1] = &off_117D8;
  v38[0] = &off_10E78;
  v38[1] = &off_10E28;
  v37[2] = &off_117F0;
  v37[3] = &off_11808;
  v38[2] = &off_10E88;
  v38[3] = &off_10E88;
  v37[4] = &off_11820;
  v37[5] = &off_11838;
  v38[4] = &off_10E98;
  v38[5] = &off_10EA8;
  v37[6] = &off_11850;
  v38[6] = &off_10EB8;
  v6 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:7];
  [v3 scaledValue:v6 withOverrides:156.0];
  *(a2 + 8) = v7;

  v35[0] = &off_117C0;
  v35[1] = &off_117F0;
  v35[5] = &off_11850;
  v36[0] = &off_10EC8;
  v36[1] = &off_10ED8;
  v35[2] = &off_11808;
  v35[3] = &off_11820;
  v36[2] = &off_10ED8;
  v36[3] = &off_10EE8;
  v35[4] = &off_11838;
  v36[4] = &off_10E58;
  v36[5] = &off_10EF8;
  v8 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:6];
  [v3 scaledValue:v8 withOverrides:130.0];
  *(a2 + 16) = v9;

  v33[0] = &off_117C0;
  v33[1] = &off_117D8;
  v34[0] = &off_10F08;
  v34[1] = &off_10F18;
  v33[2] = &off_117F0;
  v33[3] = &off_11808;
  v34[2] = &off_10F28;
  v34[3] = &off_10F28;
  v33[4] = &off_11820;
  v33[5] = &off_11838;
  v34[4] = &off_10ED8;
  v34[5] = &off_10F38;
  v33[6] = &off_11850;
  v34[6] = &off_10F48;
  v10 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:7];
  [v3 scaledValue:v10 withOverrides:141.0];
  *(a2 + 24) = v11;

  [v3 scaledValue:7.5];
  *(a2 + 32) = v12;
  *(a2 + 40) = 0xC038000000000000;
  [v3 scaledValue:3.5];
  *(a2 + 56) = v13;
  v31[0] = &off_117C0;
  v31[1] = &off_117D8;
  v32[0] = &off_10F58;
  v32[1] = &off_10F68;
  v31[2] = &off_117F0;
  v31[3] = &off_11808;
  v32[2] = &off_10EC8;
  v32[3] = &off_10EC8;
  v31[4] = &off_11820;
  v31[5] = &off_11838;
  v32[4] = &off_10F78;
  v32[5] = &off_10F88;
  v31[6] = &off_11850;
  v32[6] = &off_10F98;
  v14 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:7];
  [v3 scaledValue:v14 withOverrides:124.0];
  *(a2 + 64) = v15;

  [v3 scaledValue:8.0];
  *(a2 + 72) = v16;
  *(a2 + 80) = 0xC034000000000000;
  v29[0] = &off_117C0;
  v29[1] = &off_117F0;
  v30[0] = &off_10FA8;
  v30[1] = &off_10FB8;
  v29[2] = &off_11808;
  v29[3] = &off_11820;
  v30[2] = &off_10FB8;
  v30[3] = &off_10FC8;
  v29[4] = &off_11838;
  v29[5] = &off_11850;
  v30[4] = &off_10EE8;
  v30[5] = &off_10EE8;
  v17 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:6];
  [v3 scaledValue:v17 withOverrides:118.0];
  *(a2 + 88) = v18;

  [v3 scaledValue:3 withOverride:9.5 forSizeClass:11.0];
  *(a2 + 96) = v19;
  v27[0] = &off_117C0;
  v27[1] = &off_11850;
  v28[0] = &off_10FD8;
  v28[1] = &off_10FE8;
  v20 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:2];
  [v3 scaledValue:v20 withOverrides:102.5];
  *(a2 + 104) = v21;

  v25[0] = &off_117C0;
  v25[1] = &off_117D8;
  v26[0] = &off_10FF8;
  v26[1] = &off_11008;
  v25[2] = &off_117F0;
  v25[3] = &off_11808;
  v26[2] = &off_11018;
  v26[3] = &off_11018;
  v25[4] = &off_11820;
  v25[5] = &off_11838;
  v26[4] = &off_11028;
  v26[5] = &off_11038;
  v25[6] = &off_11850;
  v26[6] = &off_11048;
  v22 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:7];
  [v3 scaledValue:v22 withOverrides:112.0];
  *(a2 + 112) = v23;

  [v3 setRoundingBehavior:3];
  [v3 scaledValue:1.75];
  *(a2 + 48) = v24;
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  v4 = _CLLocationCoordinate2DMake(latitude, longitude);
  v3 = v4.longitude;
  v2 = v4.latitude;
  result.longitude = v3;
  result.latitude = v2;
  return result;
}