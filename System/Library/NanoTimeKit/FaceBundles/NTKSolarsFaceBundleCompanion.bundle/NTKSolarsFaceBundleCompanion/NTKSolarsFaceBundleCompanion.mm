void sub_1744(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v7 = a1;
  os_unfair_lock_lock(&unk_35420);
  if (qword_35428)
  {
    v3 = qword_35428 == v7;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v7 version], v4 != qword_35430))
  {
    qword_35428 = v7;
    qword_35430 = [v7 version];
    sub_181C(v7, v8);
    xmmword_353E0 = v8[0];
    *algn_353F0 = v8[1];
    xmmword_35400 = v8[2];
    unk_35410 = v8[3];
  }

  v5 = *algn_353F0;
  *a2 = xmmword_353E0;
  a2[1] = v5;
  v6 = unk_35410;
  a2[2] = xmmword_35400;
  a2[3] = v6;
  os_unfair_lock_unlock(&unk_35420);
}

void sub_181C(uint64_t a1@<X1>, void *a2@<X8>)
{
  v11 = [CLKDeviceMetrics metricsWithDevice:a1 identitySizeClass:2];
  [v11 scaledValue:3 withOverride:5.0 forSizeClass:5.0];
  *a2 = v3;
  [v11 scaledSize:3 withOverride:2.0 forSizeClass:{8.0, 2.5, 9.0}];
  a2[1] = v4;
  a2[2] = v5;
  [v11 scaledSize:3 withOverride:2.0 forSizeClass:{2.0, 2.5, 2.5}];
  a2[3] = v6;
  a2[4] = v7;
  [v11 scaledValue:21.5];
  a2[7] = v8;
  [v11 setRoundingBehavior:3];
  [v11 scaledSize:3 withOverride:1.25 forSizeClass:{3.75, 1.25, 3.75}];
  a2[5] = v9;
  a2[6] = v10;
}

id sub_2008(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [a2 type]);
  v4 = [v2 containsObject:v3];

  return v4;
}

void sub_4E08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_4E2C(uint64_t a1, void *a2, id *a3)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained dataMode] == &dword_0 + 1)
  {
    v6 = +[NTKTimeOffsetManager sharedManager];
    v7 = [v6 displayTimeForRealTime:*a3];
    [WeakRetained _updateSolarPathForChangedDate:v7 animated:0];
  }

  [WeakRetained _updateTimeScrubbingContentForViewMode:{objc_msgSend(WeakRetained, "viewMode")}];
}

void sub_557C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateLocale];
}

id sub_6B24(void *a1, void *a2, double a3, double a4)
{
  v7 = a1;
  v8 = a2;
  v9 = v8;
  v10 = 0.25;
  if (a3 <= 0.25)
  {
    *&v10 = a4;
    v8 = v7;
  }

  else
  {
    v11 = a4;
    v10 = 0.75;
    if (a3 < 0.75)
    {
      *&v10 = v11;
      v12 = [v7 colorForFraction:v10];
      *&v13 = v11;
      v14 = [v9 colorForFraction:v13];
      v15 = NTKInterpolateBetweenColors();

      goto LABEL_7;
    }

    *&v10 = v11;
  }

  v15 = [v8 colorForFraction:v10];
LABEL_7:

  return v15;
}

id sub_78B0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 64);
  v3 = *&CGAffineTransformIdentity.c;
  *&v7.a = *&CGAffineTransformIdentity.a;
  *&v7.c = v3;
  *&v7.tx = *&CGAffineTransformIdentity.tx;
  [v2 setTransform:&v7];
  v4 = *(*(a1 + 32) + 72);
  if (v4)
  {
    [v4 transform];
  }

  else
  {
    memset(&v6, 0, sizeof(v6));
  }

  CGAffineTransformTranslate(&v7, &v6, -*(a1 + 48), 0.0);
  [v4 setTransform:&v7];
  [*(*(a1 + 32) + 80) setAlpha:0.0];
  return [*(a1 + 40) setAlpha:0.0];
}

id sub_7980(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 72);
  if (v2)
  {
    [*(*(a1 + 32) + 72) transform];
  }

  else
  {
    memset(&v4, 0, sizeof(v4));
  }

  CGAffineTransformTranslate(&v5, &v4, *(a1 + 56), 0.0);
  [v2 setTransform:&v5];
  [*(*(a1 + 32) + 80) setAlpha:1.0];
  [*(a1 + 32) _endAnimatingForReason:@"_NTKSolarPathDateChangeAnimatingReason"];
  [*(a1 + 40) removeFromSuperview];
  [*(a1 + 32) setUserInteractionEnabled:1];
  [*(*(a1 + 32) + 200) percentageThroughPeriodForDate:*(a1 + 48)];
  [*(a1 + 32) _solarDiskPercentageChanged:?];
  [*(a1 + 32) _animateSolarDiskToRestPercentageIfNeededForViewMode:{objc_msgSend(*(a1 + 32), "viewMode")}];
  return [*(a1 + 32) setNeedsLayout];
}

id sub_7EE8(uint64_t a1)
{
  [*(a1 + 32) _solarDiskRestPercentage];
  v3 = *(a1 + 32);
  if (v3[15] != -1.0)
  {
    v2 = v3[15];
  }

  v4 = *(v3 + 9);
  [v3 _pointOnSolarPathForPercentage:v2];

  return [v4 setCenter:?];
}

id sub_83B0()
{
  if (qword_354D0 != -1)
  {
    sub_19CF4();
  }

  v1 = qword_354C8;

  return v1;
}

void sub_9538(void *a1@<X1>, uint64_t a2@<X8>)
{
  v8 = a1;
  os_unfair_lock_lock(&unk_354A0);
  if (qword_354A8)
  {
    v3 = qword_354A8 == v8;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v8 version], v4 != qword_354B0))
  {
    qword_354A8 = v8;
    qword_354B0 = [v8 version];
    sub_963C(v8, v9);
    xmmword_35478 = v9[4];
    unk_35488 = v9[5];
    qword_35498 = v10;
    xmmword_35438 = v9[0];
    unk_35448 = v9[1];
    xmmword_35458 = v9[2];
    unk_35468 = v9[3];
  }

  v5 = unk_35488;
  *(a2 + 64) = xmmword_35478;
  *(a2 + 80) = v5;
  *(a2 + 96) = qword_35498;
  v6 = unk_35448;
  *a2 = xmmword_35438;
  *(a2 + 16) = v6;
  v7 = unk_35468;
  *(a2 + 32) = xmmword_35458;
  *(a2 + 48) = v7;
  os_unfair_lock_unlock(&unk_354A0);
}

void sub_963C(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 88) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 8) = 0u;
  v3 = [CLKDeviceMetrics metricsWithDevice:a1 identitySizeClass:2];
  v54[0] = &off_2DB38;
  v54[1] = &off_2DB50;
  v55[0] = &off_2E110;
  v55[1] = &off_2E120;
  v4 = [NSDictionary dictionaryWithObjects:v55 forKeys:v54 count:2];
  [v3 scaledValue:v4 withOverrides:16.0];
  *a2 = v5;

  v52[0] = &off_2DB38;
  v52[1] = &off_2DB68;
  v53[0] = &off_2E130;
  v53[1] = &off_2E130;
  v52[2] = &off_2DB50;
  v53[2] = &off_2E140;
  v6 = [NSDictionary dictionaryWithObjects:v53 forKeys:v52 count:3];
  [v3 scaledValue:v6 withOverrides:16.0];
  *(a2 + 16) = v7;

  v50[0] = &off_2DB38;
  v50[1] = &off_2DB68;
  v51[0] = &off_2E130;
  v51[1] = &off_2E130;
  v50[2] = &off_2DB50;
  v51[2] = &off_2E150;
  v8 = [NSDictionary dictionaryWithObjects:v51 forKeys:v50 count:3];
  [v3 scaledValue:v8 withOverrides:6.0];
  *(a2 + 24) = v9;

  v48[0] = &off_2DB38;
  v48[1] = &off_2DB50;
  v49[0] = &off_2E160;
  v49[1] = &off_2E160;
  v10 = [NSDictionary dictionaryWithObjects:v49 forKeys:v48 count:2];
  [v3 scaledValue:v10 withOverrides:18.5];
  *(a2 + 32) = v11;

  v46[0] = &off_2DB68;
  v46[1] = &off_2DB50;
  v47[0] = &off_2DB80;
  v47[1] = &off_2DB80;
  v12 = [NSDictionary dictionaryWithObjects:v47 forKeys:v46 count:2];
  [v3 scaledValue:v12 withOverrides:99.0];
  *(a2 + 40) = v13;

  v44[0] = &off_2DB68;
  v44[1] = &off_2DB50;
  v45[0] = &off_2E170;
  v45[1] = &off_2E170;
  v14 = [NSDictionary dictionaryWithObjects:v45 forKeys:v44 count:2];
  [v3 scaledValue:v14 withOverrides:54.0];
  *(a2 + 48) = v15;

  v42[0] = &off_2DB68;
  v42[1] = &off_2DB50;
  v43[0] = &off_2E170;
  v43[1] = &off_2E170;
  v16 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:2];
  [v3 scaledValue:v16 withOverrides:54.0];
  *(a2 + 56) = v17;

  v40[0] = &off_2DB68;
  v40[1] = &off_2DB50;
  v41[0] = &off_2DB80;
  v41[1] = &off_2DB80;
  v18 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:2];
  [v3 scaledValue:v18 withOverrides:99.0];
  *(a2 + 64) = v19;

  v38[0] = &off_2DB68;
  v38[1] = &off_2DB50;
  v39[0] = &off_2E180;
  v39[1] = &off_2E180;
  v20 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:2];
  [v3 scaledValue:v20 withOverrides:87.25];
  *(a2 + 72) = v21;

  v36[0] = &off_2DB68;
  v36[1] = &off_2DB50;
  v37[0] = &off_2E190;
  v37[1] = &off_2E190;
  v22 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:2];
  [v3 scaledValue:v22 withOverrides:67.5];
  *(a2 + 80) = v23;

  v34[0] = &off_2DB68;
  v34[1] = &off_2DB50;
  v35[0] = &off_2E170;
  v35[1] = &off_2E170;
  v24 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:2];
  [v3 scaledValue:v24 withOverrides:54.0];
  *(a2 + 88) = v25;

  v32[0] = &off_2DB68;
  v32[1] = &off_2DB50;
  v33[0] = &off_2E1A0;
  v33[1] = &off_2E1A0;
  v26 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:2];
  [v3 scaledValue:v26 withOverrides:5.5];
  *(a2 + 96) = v27;

  [v3 setRoundingBehavior:0];
  v30[0] = &off_2DB68;
  v30[1] = &off_2DB50;
  v31[0] = &off_2E1B0;
  v31[1] = &off_2E1B0;
  v28 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:2];
  [v3 scaledValue:v28 withOverrides:1.15];
  *(a2 + 8) = v29;
}

void sub_9AB8(id a1)
{
  v1 = [NTKSolarFaceBundle localizedStringForKey:@"SOLAR_USE_ALL_UPPERCASE_TEXT" comment:@"1"];
  if (v1 && [@"1" isEqualToString:v1])
  {
    byte_354B8 = 1;
  }

  _objc_release_x1();
}

void sub_9B34(id a1)
{
  qword_354C8 = [NTKSolarFaceBundle localizedStringForKey:@"SOLAR_DATE_NOW" comment:@"NOW"];

  _objc_release_x1();
}

void sub_A1B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  objc_destroyWeak((v31 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v32 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_A210(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_A228(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!WeakRetained)
  {
    v20 = 0;
    goto LABEL_14;
  }

  v3 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(WeakRetained + 1);
    *buf = 138412290;
    v25 = v4;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "NTKSiderealCachedMTLTexture: Could not find cached data for key: %@", buf, 0xCu);
  }

  v5 = (*(*(WeakRetained + 5) + 16))();
  v6 = v5;
  if (!v5)
  {
    v21 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_19E94(WeakRetained);
    }

    goto LABEL_12;
  }

  v7 = [v5 CGImage];
  *(*(*(a1 + 32) + 8) + 24) = CGImageGetWidth(v7);
  *(*(*(a1 + 40) + 8) + 24) = CGImageGetHeight(v7);
  BytesPerRow = CGImageGetBytesPerRow(v7);
  v9 = [*(WeakRetained + 4) newBufferWithLength:*(*(*(a1 + 40) + 8) + 24) * *(*(*(a1 + 32) + 8) + 24) options:0];
  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  DataProvider = CGImageGetDataProvider(v7);
  v13 = CGDataProviderCopyData(DataProvider);
  if (!v13)
  {
    v21 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_19E20(WeakRetained);
    }

LABEL_12:

    v20 = 0;
    goto LABEL_13;
  }

  v14 = v13;
  BytePtr = CFDataGetBytePtr(v13);
  v16 = [*(*(*(a1 + 48) + 8) + 40) contents];
  v17 = *(a1 + 40);
  v18 = *(*(v17 + 8) + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_A574;
  block[3] = &unk_2CA58;
  block[6] = BytePtr;
  block[7] = BytesPerRow;
  block[8] = v16;
  v19 = *(a1 + 32);
  block[4] = v17;
  block[5] = v19;
  dispatch_apply(v18, 0, block);
  CFRelease(v14);
  v20 = [[NSMutableData alloc] initWithCapacity:{(objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "length") + 16.0)}];
  [v20 appendBytes:*(*(a1 + 32) + 8) + 24 length:8];
  [v20 appendBytes:*(*(a1 + 40) + 8) + 24 length:8];
  [v20 appendBytes:objc_msgSend(*(*(*(a1 + 48) + 8) + 40) length:{"contents"), objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "length")}];
LABEL_13:

LABEL_14:

  return v20;
}

void *sub_A574(void *result, uint64_t a2)
{
  v2 = *(*(result[5] + 8) + 24);
  if (v2)
  {
    v3 = 0;
    v4 = result[8] + v2 * a2;
    v5 = ((*(*(result[4] + 8) + 24) + ~a2) * result[7] + result[6] + 3);
    do
    {
      v6 = *v5;
      v5 += 4;
      *(v4 + v3++) = v6;
    }

    while (*(*(result[5] + 8) + 24) > v3);
  }

  return result;
}

id sub_A5D8(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = *(*(a1[5] + 8) + 40);
  v5 = *(*(a1[7] + 8) + 24);
  v9[0] = *(*(a1[6] + 8) + 24);
  v9[1] = v5;
  v9[2] = 1;
  memset(v8, 0, sizeof(v8));
  [a2 copyFromBuffer:v4 sourceOffset:0 sourceBytesPerRow:v9[0] sourceBytesPerImage:v5 * v9[0] sourceSize:v9 toTexture:v3 destinationSlice:0 destinationLevel:0 destinationOrigin:v8];
  v6 = a1[4];

  return v6;
}

void sub_AA00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  objc_destroyWeak((v31 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v32 - 144), 8);
  _Unwind_Resume(a1);
}

id sub_AA5C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    v20 = 0;
    goto LABEL_12;
  }

  v4 = (*(WeakRetained[5] + 2))();
  v5 = v4;
  if (!v4)
  {
    v21 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_19E94(v3);
    }

    goto LABEL_10;
  }

  v6 = [v4 CGImage];
  *(*(*(a1 + 32) + 8) + 24) = CGImageGetWidth(v6);
  *(*(*(a1 + 40) + 8) + 24) = CGImageGetHeight(v6);
  BytesPerRow = CGImageGetBytesPerRow(v6);
  v8 = 4 * *(*(*(a1 + 32) + 8) + 24);
  v9 = [v3[4] newBufferWithLength:v8 * *(*(*(a1 + 40) + 8) + 24) options:0];
  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  DataProvider = CGImageGetDataProvider(v6);
  v13 = CGDataProviderCopyData(DataProvider);
  if (!v13)
  {
    v21 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_19E20(v3);
    }

LABEL_10:

    v20 = 0;
    goto LABEL_11;
  }

  v14 = v13;
  BytePtr = CFDataGetBytePtr(v13);
  v16 = [*(*(*(a1 + 48) + 8) + 40) contents];
  v17 = *(a1 + 40);
  v18 = *(*(v17 + 8) + 24);
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_AD28;
  v23[3] = &unk_2CAD0;
  v23[6] = BytePtr;
  v23[7] = BytesPerRow;
  v23[8] = v16;
  v23[9] = v8;
  v19 = *(a1 + 32);
  v23[4] = v17;
  v23[5] = v19;
  dispatch_apply(v18, 0, v23);
  CFRelease(v14);
  v20 = [[NSMutableData alloc] initWithCapacity:{(objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "length") + 16.0)}];
  [v20 appendBytes:*(*(a1 + 32) + 8) + 24 length:8];
  [v20 appendBytes:*(*(a1 + 40) + 8) + 24 length:8];
  [v20 appendBytes:objc_msgSend(*(*(*(a1 + 48) + 8) + 40) length:{"contents"), objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "length")}];
LABEL_11:

LABEL_12:

  return v20;
}

void *sub_AD28(void *result, uint64_t a2)
{
  if ((*(*(result[5] + 8) + 24) & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    v2 = 0;
    v3 = result[6] + (*(*(result[4] + 8) + 24) + ~a2) * result[7];
    v4 = result[8] + result[9] * a2;
    do
    {
      *(v4 + v2) = *(v3 + v2);
      ++v2;
    }

    while (v2 < 4 * *(*(result[5] + 8) + 24));
  }

  return result;
}

id sub_AD88(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = *(*(a1[5] + 8) + 40);
  v5 = 4 * *(*(a1[6] + 8) + 24);
  v6 = *(*(a1[7] + 8) + 24);
  v10[0] = *(*(a1[6] + 8) + 24);
  v10[1] = v6;
  v10[2] = 1;
  memset(v9, 0, sizeof(v9));
  [a2 copyFromBuffer:v4 sourceOffset:0 sourceBytesPerRow:v5 sourceBytesPerImage:v5 * v6 sourceSize:v10 toTexture:v3 destinationSlice:0 destinationLevel:0 destinationOrigin:v9];
  v7 = a1[4];

  return v7;
}

void sub_AFDC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t sub_B004@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 8);
  return result;
}

void sub_B010(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_BF58(void *a1@<X1>, uint64_t a2@<X8>)
{
  v6 = a1;
  os_unfair_lock_lock(&unk_35510);
  if (qword_35518)
  {
    v3 = qword_35518 == v6;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v6 version], v4 != qword_35520))
  {
    qword_35518 = v6;
    qword_35520 = [v6 version];
    sub_C044(v6, v7);
    xmmword_354D8 = v7[0];
    unk_354E8 = v7[1];
    xmmword_354F8 = v7[2];
    qword_35508 = v8;
  }

  v5 = unk_354E8;
  *a2 = xmmword_354D8;
  *(a2 + 16) = v5;
  *(a2 + 32) = xmmword_354F8;
  *(a2 + 48) = qword_35508;
  os_unfair_lock_unlock(&unk_35510);
}

void sub_C044(void *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = a1;
  v7 = [CLKDeviceMetrics metricsWithDevice:v3 identitySizeClass:2];
  [NTKAnalogUtilities dialSizeForDevice:v3];
  v6 = v4;

  *a2 = v6;
  *(a2 + 8) = xmmword_21000;
  *(a2 + 24) = vmulq_n_f64(xmmword_21010, v6);
  [v7 scaledValue:3 withOverride:14.0 forSizeClass:16.0];
  *(a2 + 40) = v5;
  *(a2 + 48) = 0x4020000000000000;
}

void sub_D7BC(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v7 = a1;
  os_unfair_lock_lock(&unk_35568);
  if (qword_35570)
  {
    v3 = qword_35570 == v7;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v7 version], v4 != qword_35578))
  {
    qword_35570 = v7;
    qword_35578 = [v7 version];
    sub_D894(v7, v8);
    xmmword_35528 = v8[0];
    unk_35538 = v8[1];
    xmmword_35548 = v8[2];
    unk_35558 = v8[3];
  }

  v5 = unk_35538;
  *a2 = xmmword_35528;
  a2[1] = v5;
  v6 = unk_35558;
  a2[2] = xmmword_35548;
  a2[3] = v6;
  os_unfair_lock_unlock(&unk_35568);
}

void sub_D894(void *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = a1;
  v12 = [CLKDeviceMetrics metricsWithDevice:v3 identitySizeClass:2];
  [v12 scaledValue:3 withOverride:15.0 forSizeClass:18.0];
  *a2 = v4;
  [v12 scaledValue:3 withOverride:12.0 forSizeClass:13.5];
  *(a2 + 16) = v5;
  [NTKAnalogUtilities dialSizeForDevice:v3];
  v7 = v6;

  *(a2 + 32) = v7 * 0.5;
  *(a2 + 40) = 0x3FF0000000000000;
  [v12 scaledValue:3 withOverride:95.0 forSizeClass:109.0];
  *(a2 + 48) = v8;
  [v12 scaledValue:3 withOverride:74.0 forSizeClass:74.0];
  *(a2 + 56) = v9;
  [v12 setRoundingBehavior:3];
  [v12 scaledValue:3 withOverride:1.0 forSizeClass:0.75];
  *(a2 + 8) = v10;
  [v12 scaledValue:3 withOverride:1.25 forSizeClass:1.5];
  *(a2 + 24) = v11;
}

id sub_EE24(id a1)
{
  v1 = [[NTKSiderealDataSource alloc] initWithXR:0];

  return v1;
}

void sub_FE98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_FEBC(uint64_t a1, void *a2, id *a3)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = +[NTKTimeOffsetManager sharedManager];
    v7 = [v6 faceDisplayTime];
    [WeakRetained _timeDidUpdate:v7];
  }
}

void sub_1029C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _updateLocale];
    WeakRetained = v2;
  }
}

void sub_108FC(uint64_t a1, uint64_t a2)
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

uint64_t sub_10CAC(uint64_t a1)
{
  [*(a1 + 32) _interpolateFromViewMode:*(*(a1 + 32) + 176) toViewMode:*(a1 + 48) progress:1.0];
  [*(a1 + 32) _cleanupAfterSettingViewMode:*(a1 + 48) previousViewMode:*(*(a1 + 32) + 176)];
  v2 = [*(*(a1 + 32) + 96) quad];
  [v2 setShouldDrawGlowPath:*(a1 + 48) == 1];

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

id sub_1113C(int a1, double a2)
{
  v4 = objc_opt_new();
  [v4 setMaximumUnitCount:2];
  [v4 setFormattingContext:2];
  [v4 setAllowedUnits:96];
  [v4 setUnitsStyle:0];
  [v4 setZeroFormattingBehavior:0x10000];
  v5 = [v4 stringFromTimeInterval:fabs(a2)];
  v6 = +[NSLocale currentLocale];
  IsRTL = CLKLayoutIsRTL();
  v8 = [v5 uppercaseStringWithLocale:v6];

  v9 = &stru_2D1E0;
  if (a1)
  {
    v10 = @"−";
    if (a2 >= 0.0)
    {
      v10 = @"+";
    }

    v9 = v10;
  }

  v11 = @"\u200F";
  if (!IsRTL)
  {
    v11 = &stru_2D1E0;
  }

  v12 = [NSString stringWithFormat:@"%@%@%@", v11, v9, v8];

  return v12;
}

double sub_12908(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(&unk_355A0);
  if (qword_355A8)
  {
    v4 = qword_355A8 == v3;
  }

  else
  {
    v4 = 0;
  }

  if (!v4 || (v5 = [v3 version], v5 != qword_355B0))
  {
    qword_355A8 = v3;
    qword_355B0 = [v3 version];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_12A50;
    v11[3] = &unk_2CC50;
    v11[4] = *(a1 + 32);
    qword_35580 = sub_12A50(v11, v3);
    qword_35588 = v6;
    qword_35590 = v7;
    qword_35598 = v8;
  }

  v9 = *&qword_35580;
  os_unfair_lock_unlock(&unk_355A0);

  return v9;
}

double sub_12A50(uint64_t a1, void *a2)
{
  v3 = a2;
  sub_14ADC(v3, &v8);
  [*(a1 + 32) _idealizedSolarDayProgress];
  [v3 screenBounds];
  CLKRectGetCenter();
  CLKDegreesToRadians();
  NTKPointOnCircle();
  v5 = v4;
  sub_14ADC(v3, &v7);

  return v5 - *(&v7 + 1) * 0.5;
}

id sub_12CF0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [NTKSiderealDialView alloc];
  v4 = [*(a1 + 32) device];
  [v4 screenBounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [*(a1 + 32) device];
  sub_14ADC(v13, v20);
  v14 = v20[0];
  v15 = [*(a1 + 32) device];
  v16 = [(NTKSiderealDialView *)v3 initWithFrame:v15 dialDiameter:v6 device:v8, v10, v12, v14];
  v17 = [v2 newImageRefFromView:v16];

  v18 = [[UIImage alloc] initWithCGImage:v17];
  CGImageRelease(v17);

  return v18;
}

id sub_12EC4(uint64_t a1)
{
  v2 = [NTKSiderealWaypointsView alloc];
  v3 = [*(a1 + 32) device];
  [v3 screenBounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [*(a1 + 32) device];
  sub_14ADC(v12, &v22);
  v13 = v23;
  v14 = [*(a1 + 32) device];
  sub_14ADC(v14, v21);
  v15 = v21[0];
  v16 = [*(*(a1 + 32) + 56) waypoints];
  v17 = [(NTKSiderealWaypointsView *)v2 initWithFrame:v16 orbitDiameter:v5 dialDiameter:v7 waypoints:v9, v11, v13, v15];

  v18 = [*(a1 + 32) newImageRefFromView:v17];
  v19 = [[UIImage alloc] initWithCGImage:v18];
  CGImageRelease(v18);

  return v19;
}

id sub_13274(uint64_t a1)
{
  v2 = [*(a1 + 32) _newGnomonLayer];
  v3 = objc_alloc_init(CALayer);
  [v3 setOpaque:0];
  [v3 setBackgroundColor:0];
  [v2 size];
  v5 = v4;
  [v2 size];
  [v3 setFrame:{0.0, 0.0, v5, v6 + 4.0}];
  [v3 addSublayer:v2];
  [v2 size];
  v8 = v7;
  [v2 size];
  [v2 setFrame:{0.0, 2.0, v8, v9}];
  [v3 size];
  v11 = v10;
  v13 = v12;
  v14 = [*(a1 + 32) device];
  [v14 screenScale];
  v16 = v15;
  v22.width = v11;
  v22.height = v13;
  UIGraphicsBeginImageContextWithOptions(v22, 0, v16);

  CurrentContext = UIGraphicsGetCurrentContext();
  [v3 renderInContext:CurrentContext];
  Image = CGBitmapContextCreateImage(CurrentContext);
  UIGraphicsEndImageContext();
  v19 = [[UIImage alloc] initWithCGImage:Image];
  CGImageRelease(Image);

  return v19;
}

id sub_134B4(uint64_t a1)
{
  [*(a1 + 32) poseForDayGnomonImage];
  v3 = v2;
  [*(a1 + 32) setSolarDayProgress:0.75];
  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) dayContainerView];
  v6 = [v4 newImageRefFromSolarContainerView:v5 withHeight:v3];

  v7 = [UIImage imageWithCGImage:v6];
  CGImageRelease(v6);

  return v7;
}

id sub_1362C(uint64_t a1)
{
  [*(a1 + 32) poseForDayDiskBloomImage];
  v3 = v2;
  [*(a1 + 32) setSolarDayProgress:0.75];
  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) dayContainerView];
  v6 = [v4 newImageRefFromSolarContainerView:v5 withHeight:v3];

  v7 = [UIImage imageWithCGImage:v6];
  CGImageRelease(v6);

  return v7;
}

id sub_137A4(uint64_t a1)
{
  [*(a1 + 32) poseForDayDiskImage];
  v3 = v2;
  [*(a1 + 32) setSolarDayProgress:0.75];
  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) dayContainerView];
  v6 = [v4 newImageRefFromSolarContainerView:v5 withHeight:v3];

  v7 = [UIImage imageWithCGImage:v6];
  CGImageRelease(v6);

  return v7;
}

id sub_1391C(uint64_t a1)
{
  [*(a1 + 32) poseForNightGnomonImage];
  v3 = v2;
  [*(a1 + 32) setSolarDayProgress:0.75];
  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) nightContainerView];
  v6 = [v4 newImageRefFromSolarContainerView:v5 withHeight:v3];

  v7 = [UIImage imageWithCGImage:v6];
  CGImageRelease(v6);

  return v7;
}

id sub_13A94(uint64_t a1)
{
  [*(a1 + 32) poseForNightDiskImage];
  v3 = v2;
  [*(a1 + 32) setSolarDayProgress:0.75];
  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) nightContainerView];
  v6 = [v4 newImageRefFromSolarContainerView:v5 withHeight:v3];

  v7 = [UIImage imageWithCGImage:v6];
  CGImageRelease(v6);

  return v7;
}

id sub_13C0C(uint64_t a1)
{
  [*(a1 + 32) poseForNightRingImage];
  v3 = v2;
  [*(a1 + 32) setSolarDayProgress:0.75];
  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) nightContainerView];
  v6 = [v4 newImageRefFromSolarContainerView:v5 withHeight:v3];

  v7 = [UIImage imageWithCGImage:v6];
  CGImageRelease(v6);

  return v7;
}

void sub_14698(id a1)
{
  v3 = +[NTKSiderealColorManager sharedInstance];
  v1 = [v3 outerComplicationColorCurve];
  v2 = qword_355B8;
  qword_355B8 = v1;
}

void sub_14764(id a1)
{
  v3 = +[NTKSiderealColorManager sharedInstance];
  v1 = [v3 innerComplicationColorCurve];
  v2 = qword_355C8;
  qword_355C8 = v1;
}

void sub_14ADC(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v7 = a1;
  os_unfair_lock_lock(&unk_35628);
  if (qword_35630)
  {
    v3 = qword_35630 == v7;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v7 version], v4 != qword_35638))
  {
    qword_35630 = v7;
    qword_35638 = [v7 version];
    sub_14BC4(v7, v8);
    xmmword_355F8 = v8[2];
    unk_35608 = v8[3];
    xmmword_35618 = v8[4];
    xmmword_355D8 = v8[0];
    unk_355E8 = v8[1];
  }

  v5 = unk_35608;
  a2[2] = xmmword_355F8;
  a2[3] = v5;
  a2[4] = xmmword_35618;
  v6 = unk_355E8;
  *a2 = xmmword_355D8;
  a2[1] = v6;
  os_unfair_lock_unlock(&unk_35628);
}

void sub_14BC4(void *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = a1;
  v12 = [CLKDeviceMetrics metricsWithDevice:v3 identitySizeClass:2];
  [NTKAnalogUtilities dialSizeForDevice:v3];
  *a2 = v4;
  [v12 scaledValue:3 withOverride:16.5 forSizeClass:20.0];
  *(a2 + 16) = v5;
  [v12 scaledValue:3 withOverride:75.0 forSizeClass:85.0];
  *(a2 + 8) = v6;
  [v12 scaledValue:3 withOverride:95.0 forSizeClass:109.0];
  *(a2 + 24) = v7;
  *(a2 + 32) = xmmword_21140;
  [v12 scaledValue:11.0];
  *(a2 + 48) = v8;
  [v12 scaledValue:57.5];
  *(a2 + 56) = v9 + 3.0;
  [NTKAnalogUtilities dialSizeForDevice:v3];
  v11 = v10;

  *(a2 + 64) = v11 * 0.5;
  *(a2 + 72) = 0x3FF0000000000000;
}

id sub_15AC8()
{
  if (qword_356C0 != -1)
  {
    sub_19F24();
  }

  v1 = qword_356B8;

  return v1;
}

void sub_15D00(void *a1@<X1>, uint64_t a2@<X8>)
{
  v9 = a1;
  *(a2 + 72) = 0;
  os_unfair_lock_lock(&unk_356A0);
  if (qword_356A8)
  {
    v3 = qword_356A8 == v9;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v9 version], v4 != qword_356B0))
  {
    qword_356A8 = v9;
    qword_356B0 = [v9 version];
    sub_15E0C(v9, v10);
    xmmword_35660 = v10[2];
    unk_35670 = v10[3];
    xmmword_35640 = v10[0];
    *algn_35650 = v10[1];
    v5 = qword_35688;
    qword_35680 = v11;
    qword_35688 = v12;

    xmmword_35690 = v13;
  }

  v6 = unk_35670;
  *(a2 + 32) = xmmword_35660;
  *(a2 + 48) = v6;
  v7 = qword_35688;
  *(a2 + 64) = qword_35680;
  v8 = *algn_35650;
  *a2 = xmmword_35640;
  *(a2 + 16) = v8;
  *(a2 + 72) = v7;
  *(a2 + 80) = xmmword_35690;
  os_unfair_lock_unlock(&unk_356A0);
}

void sub_15E0C(void *a1@<X1>, void *a2@<X8>)
{
  v15 = a1;
  a2[9] = 0;
  v3 = [CLKDeviceMetrics metricsWithDevice:v15 identitySizeClass:2];
  [v3 scaledValue:3 withOverride:8.0 forSizeClass:10.0];
  a2[2] = v4;
  [v3 scaledValue:3 withOverride:121.0 forSizeClass:139.0];
  a2[1] = v5;
  [v3 scaledValue:3 withOverride:153.0 forSizeClass:175.0];
  *a2 = v6;
  [v3 scaledSize:3 withOverride:1.5 forSizeClass:{8.5, 1.5, 9.5}];
  a2[3] = v7;
  a2[4] = v8;
  [v3 scaledSize:3 withOverride:1.0 forSizeClass:{8.0, 1.0, 8.5}];
  a2[5] = v9;
  a2[6] = v10;
  [v3 scaledSize:3 withOverride:1.0 forSizeClass:{5.0, 1.0, 5.5}];
  a2[7] = v11;
  a2[8] = v12;
  [v3 scaledValue:3 withOverride:0.5 forSizeClass:1.0];
  a2[10] = v13;
  [v3 scaledValue:3 withOverride:-1.0 forSizeClass:-1.5];
  a2[11] = v14;
}

void sub_15F58(id a1)
{
  qword_356B8 = [UIColor colorWithRed:0.549019608 green:0.776470588 blue:1.0 alpha:1.0];

  _objc_release_x1();
}

void sub_1637C(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v8 = a1;
  os_unfair_lock_lock(&unk_35728);
  if (qword_35730)
  {
    v3 = qword_35730 == v8;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v8 version], v4 != qword_35738))
  {
    qword_35730 = v8;
    qword_35738 = [v8 version];
    sub_16464(v8, v9);
    xmmword_356E8 = v9[2];
    unk_356F8 = v9[3];
    xmmword_35708 = v9[4];
    unk_35718 = v9[5];
    xmmword_356C8 = v9[0];
    unk_356D8 = v9[1];
  }

  v5 = unk_356F8;
  a2[2] = xmmword_356E8;
  a2[3] = v5;
  v6 = unk_35718;
  a2[4] = xmmword_35708;
  a2[5] = v6;
  v7 = unk_356D8;
  *a2 = xmmword_356C8;
  a2[1] = v7;
  os_unfair_lock_unlock(&unk_35728);
}

void sub_16464(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v7 = [CLKDeviceMetrics metricsWithDevice:a1 identitySizeClass:2];
  [v7 setRoundingBehavior:3];
  *a2 = xmmword_21190;
  *(a2 + 16) = xmmword_211A0;
  *(a2 + 32) = 0x4004000000000000;
  [v7 scaledValue:3 withOverride:16.0 forSizeClass:18.5];
  *(a2 + 40) = v3;
  [v7 scaledValue:3 withOverride:29.5 forSizeClass:34.5];
  *(a2 + 48) = v4;
  *(a2 + 56) = 0x4000000000000000;
  [v7 scaledValue:3 withOverride:35.5 forSizeClass:40.5];
  *(a2 + 64) = v5;
  [v7 scaledValue:6.0];
  *(a2 + 72) = v6;
  *(a2 + 80) = xmmword_211B0;
}

void sub_17658(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 - 128));
  objc_destroyWeak((v1 - 120));
  _Unwind_Resume(a1);
}

id sub_1768C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = [*(a1 + 32) newRenderPipelineStateForDevice:WeakRetained[2] withDescriptor:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_1770C(uint64_t a1)
{
  v2 = objc_alloc_init(MTLRenderPipelineDescriptor);
  [v2 setLabel:@"Sidereal Pipeline"];
  [v2 setVertexFunction:*(a1 + 32)];
  [v2 setFragmentFunction:*(a1 + 40)];
  v3 = [*(a1 + 48) colorPixelFormat];
  v4 = [v2 colorAttachments];
  v5 = [v4 objectAtIndexedSubscript:0];
  [v5 setPixelFormat:v3];

  v6 = *(a1 + 56);
  v7 = [*(a1 + 40) name];
  v8 = (*(v6 + 16))(v6, v2, v7);

  return v8;
}

id sub_177FC(uint64_t a1)
{
  v2 = objc_alloc_init(MTLRenderPipelineDescriptor);
  [v2 setLabel:@"Sidereal Gradient Pipeline"];
  [v2 setVertexFunction:*(a1 + 32)];
  [v2 setFragmentFunction:*(a1 + 40)];
  v3 = [*(a1 + 48) colorPixelFormat];
  v4 = [v2 colorAttachments];
  v5 = [v4 objectAtIndexedSubscript:0];
  [v5 setPixelFormat:v3];

  v6 = *(a1 + 56);
  v7 = [*(a1 + 40) name];
  v8 = (*(v6 + 16))(v6, v2, v7);

  return v8;
}

id sub_178EC(uint64_t a1)
{
  v2 = objc_alloc_init(MTLRenderPipelineDescriptor);
  [v2 setLabel:@"Sidereal Glow Pipeline"];
  [v2 setVertexFunction:*(a1 + 32)];
  [v2 setFragmentFunction:*(a1 + 40)];
  v3 = [*(a1 + 48) colorPixelFormat];
  v4 = [v2 colorAttachments];
  v5 = [v4 objectAtIndexedSubscript:0];
  [v5 setPixelFormat:v3];

  LODWORD(v5) = *(a1 + 64);
  v6 = [v2 colorAttachments];
  v7 = [v6 objectAtIndexedSubscript:0];
  v8 = v7;
  if (v5 == 1)
  {
    [v7 setBlendingEnabled:0];
  }

  else
  {
    [v7 setBlendingEnabled:1];

    v9 = [v2 colorAttachments];
    v10 = [v9 objectAtIndexedSubscript:0];
    [v10 setRgbBlendOperation:0];

    v11 = [v2 colorAttachments];
    v12 = [v11 objectAtIndexedSubscript:0];
    [v12 setSourceRGBBlendFactor:4];

    v6 = [v2 colorAttachments];
    v8 = [v6 objectAtIndexedSubscript:0];
    [v8 setDestinationRGBBlendFactor:5];
  }

  v13 = *(a1 + 56);
  v14 = [*(a1 + 40) name];
  v15 = (*(v13 + 16))(v13, v2, v14);

  return v15;
}

id sub_17AB4(uint64_t a1)
{
  v2 = objc_alloc_init(MTLRenderPipelineDescriptor);
  [v2 setLabel:@"Sidereal Glow Pipeline"];
  [v2 setVertexFunction:*(a1 + 32)];
  [v2 setFragmentFunction:*(a1 + 40)];
  v3 = [*(a1 + 48) colorPixelFormat];
  v4 = [v2 colorAttachments];
  v5 = [v4 objectAtIndexedSubscript:0];
  [v5 setPixelFormat:v3];

  LODWORD(v5) = *(a1 + 64);
  v6 = [v2 colorAttachments];
  v7 = [v6 objectAtIndexedSubscript:0];
  v8 = v7;
  if (v5 == 1)
  {
    [v7 setBlendingEnabled:0];
  }

  else
  {
    [v7 setBlendingEnabled:1];

    v9 = [v2 colorAttachments];
    v10 = [v9 objectAtIndexedSubscript:0];
    [v10 setRgbBlendOperation:0];

    v11 = [v2 colorAttachments];
    v12 = [v11 objectAtIndexedSubscript:0];
    [v12 setSourceRGBBlendFactor:4];

    v6 = [v2 colorAttachments];
    v8 = [v6 objectAtIndexedSubscript:0];
    [v8 setDestinationRGBBlendFactor:5];
  }

  v13 = *(a1 + 56);
  v14 = [*(a1 + 40) name];
  v15 = (*(v13 + 16))(v13, v2, v14);

  return v15;
}

id sub_17C7C(uint64_t a1)
{
  v2 = objc_alloc_init(MTLRenderPipelineDescriptor);
  [v2 setLabel:@"Sidereal Blur Pipeline"];
  [v2 setVertexFunction:*(a1 + 32)];
  [v2 setFragmentFunction:*(a1 + 40)];
  v3 = [*(a1 + 48) colorPixelFormat];
  v4 = [v2 colorAttachments];
  v5 = [v4 objectAtIndexedSubscript:0];
  [v5 setPixelFormat:v3];

  v6 = [v2 colorAttachments];
  v7 = [v6 objectAtIndexedSubscript:0];
  [v7 setBlendingEnabled:0];

  v8 = *(a1 + 56);
  v9 = [*(a1 + 40) name];
  v10 = (*(v8 + 16))(v8, v2, v9);

  return v10;
}

id sub_17D9C(uint64_t a1)
{
  v2 = objc_alloc_init(MTLRenderPipelineDescriptor);
  [v2 setLabel:@"Sidereal Composite Pipeline"];
  [v2 setVertexFunction:*(a1 + 32)];
  [v2 setFragmentFunction:*(a1 + 40)];
  v3 = [*(a1 + 48) colorPixelFormat];
  v4 = [v2 colorAttachments];
  v5 = [v4 objectAtIndexedSubscript:0];
  [v5 setPixelFormat:v3];

  v6 = [v2 colorAttachments];
  v7 = [v6 objectAtIndexedSubscript:0];
  [v7 setBlendingEnabled:0];

  v8 = *(a1 + 56);
  v9 = [*(a1 + 40) name];
  v10 = (*(v8 + 16))(v8, v2, v9);

  return v10;
}

id sub_1804C(uint64_t a1, void *a2)
{
  v8 = xmmword_212A0;
  v9 = 1;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  memset(v7, 0, sizeof(v7));
  [a2 copyFromBuffer:v3 sourceOffset:0 sourceBytesPerRow:1024 sourceBytesPerImage:0x10000 sourceSize:&v8 toTexture:v4 destinationSlice:0 destinationLevel:0 destinationOrigin:v7];
  v5 = *(a1 + 40);

  return v5;
}

void sub_183F4(uint64_t a1, uint64_t a2)
{
  v32 = [*(*(a1 + 32) + 208) objectAtIndexedSubscript:a2];
  v4 = [v32 startingEvent];
  [v4 angle];
  v6 = v5;

  v7 = [v32 endingEvent];
  [v7 angle];
  v9 = v8;

  v10 = [*(a1 + 32) numSlicesForAngle:(v6 - v9)];
  v11 = *(*(a1 + 32) + 432);
  if (v11 == 1)
  {
    v12 = +[UIColor blackColor];
    goto LABEL_5;
  }

  if (v11 == 2)
  {
    v12 = +[UIColor whiteColor];
LABEL_5:
    v13 = v12;
    goto LABEL_7;
  }

  v13 = 0;
LABEL_7:
  v14 = [v32 type];
  v18 = 0;
  if (v14 > 2)
  {
    if ((v14 - 3) < 2)
    {
      v19 = *(a1 + 32);
      v20 = 232;
    }

    else if ((v14 - 5) >= 2)
    {
      if (v14 != &dword_4 + 3)
      {
        goto LABEL_20;
      }

      v19 = *(a1 + 32);
      v20 = 248;
    }

    else
    {
      v19 = *(a1 + 32);
      v20 = 240;
    }

    goto LABEL_19;
  }

  if ((v14 - 1) < 2)
  {
    v19 = *(a1 + 32);
    v20 = 224;
LABEL_19:
    v18 = *(v19 + v20);
    goto LABEL_20;
  }

  if (!v14)
  {
    if (*(*(a1 + 32) + 432) == 1)
    {
      +[UIColor whiteColor];
    }

    else
    {
      +[UIColor blackColor];
    }
    v30 = ;

    v18 = 0;
    v13 = v30;
  }

LABEL_20:
  v21 = *(*(a1 + 32) + 216);
  if (v13)
  {
    CLKUIConvertToRGBfFromUIColor_fast();
  }

  else
  {
    LODWORD(v15) = *(a1 + 48);
    LODWORD(v16) = *(a1 + 52);
    LODWORD(v17) = *(a1 + 56);
    [v18 rgbfColorForAltitude:{v15, v16, v17}];
  }

  [v32 gradientStartPoint];
  v25 = v24;
  [v32 gradientEndPoint];
  v27 = 0.01;
  if (*(*(a1 + 32) + 409))
  {
    v27 = 0.0;
  }

  v28 = v21;
  v29 = *(a1 + 40) + 96 * a2;
  *v29 = v31;
  *(v29 + 16) = v31;
  *(v29 + 32) = v31;
  *(v29 + 48) = v27;
  *(v29 + 52) = v27;
  *(v29 + 56) = v6;
  *(v29 + 60) = v9;
  *(v29 + 64) = v25;
  *(v29 + 72) = v26;
  *(v29 + 80) = v28;
  *(v29 + 84) = v10;
  *(v29 + 88) = 0;
}

void sub_1867C(void *a1, unint64_t a2)
{
  v4 = [*(a1[4] + 208) objectAtIndexedSubscript:a2];
  v5 = a1[5];
  v6 = (a2 + v5 - 1) % v5;
  v7 = (a2 + 1) % v5;
  v22 = v4;
  if (![v4 type])
  {
    v10 = a1[6];
    v8 = *(v10 + 96 * v6 + 32);
    v9 = *(v10 + 96 * v7 + 32);
    goto LABEL_5;
  }

  if ([v22 type] == &dword_4 + 3)
  {
    v8 = *(a1[6] + 96 * a2 + 32);
    v9 = v8;
LABEL_5:
    v11 = v22;
    goto LABEL_16;
  }

  v12 = [v22 startingEvent];
  v13 = [v12 type];

  if ((v13 - 1) < 4)
  {
    goto LABEL_9;
  }

  if ((v13 - 6) <= 3)
  {
    v6 = a2;
LABEL_9:
    v14 = *(a1[6] + 96 * v6 + 32);
    goto LABEL_10;
  }

  v14 = 0uLL;
LABEL_10:
  v15 = [v22 endingEvent];
  v16 = [v15 type];

  if ((v16 - 6) < 4)
  {
    v17 = a1[6] + 96 * v7;
  }

  else
  {
    if ((v16 - 1) > 3)
    {
      v9 = 0uLL;
      goto LABEL_15;
    }

    v17 = a1[6] + 96 * a2;
  }

  v9 = *(v17 + 32);
LABEL_15:
  v11 = v22;
  v8 = v21;
LABEL_16:
  v18 = *(a1[4] + 432);
  if ((v18 - 1) < 2)
  {
    v19 = a1[6];
    *(v19 + 96 * a2 + 48) = 1008981770;
    v20 = 1008981770;
    goto LABEL_24;
  }

  if (v18 == 3 || !v18)
  {
    if (!a2)
    {
      *(a1[6] + 48) = 0;
    }

    if (a1[5] - 1 == a2)
    {
      v19 = a1[6];
      v20 = 0;
LABEL_24:
      *(v19 + 96 * a2 + 52) = v20;
    }
  }

  *(a1[6] + 96 * a2) = v8;
  *(a1[6] + 96 * a2 + 16) = v9;
}

id sub_19438(uint64_t a1, int a2)
{
  [*(a1 + 32) setVertexBufferOffset:96 * a2 atIndex:0];
  v4 = (2 * *(*(a1 + 48) + 96 * a2 + 84) + 2);
  v5 = *(a1 + 32);
  v6 = *(*(a1 + 40) + 72);

  return [v5 drawIndexedPrimitives:4 indexCount:v4 indexType:0 indexBuffer:v6 indexBufferOffset:0];
}

void sub_194B8(uint64_t a1, void *a2, int a3, int a4, double a5, __n128 a6)
{
  v10 = a2;
  v27 = a6;
  v11 = [v10 texture];
  v12 = v11;
  if (v11)
  {
    v13 = a5;
    v25 = v13;
    v21 = [v11 width];
    v14 = [v12 height];
    v15.f32[0] = v21;
    v15.f32[1] = v14;
    v24[0] = vmul_f32(v15, 0xBF00000000000000);
    v24[1] = vmul_f32(v15, 0x3F00000000000000);
    v24[2] = vmul_f32(v15, 0xBF0000003F800000);
    v24[3] = vmul_f32(v15, 0x3F0000003F800000);
    v24[4] = v15;
    v16 = *(a1 + 40);
    v17 = 2.0 / *(*(a1 + 32) + 192);
    v26 = v17;
    [v16 setVertexBytes:v24 length:48 atIndex:1];
    [*(a1 + 40) setFragmentTexture:v12 atIndex:6];
    [*(a1 + 40) setFragmentBytes:&v27 length:16 atIndex:6];
    v18 = &OBJC_IVAR___NTKSiderealBackgroundQuad__nightMask;
    if (a3)
    {
      v18 = &OBJC_IVAR___NTKSiderealBackgroundQuad__dayMask;
    }

    [*(a1 + 40) setFragmentTexture:*(*(a1 + 32) + *v18) atIndex:3];
    v22 = 0;
    v23 = 1065353216;
    if (a4)
    {
      v22 = 1065353216;
      v23 = 0;
    }

    [*(a1 + 40) setFragmentBytes:&v23 length:4 atIndex:4];
    [*(a1 + 40) setFragmentBytes:&v22 length:4 atIndex:5];
    [*(a1 + 40) drawPrimitives:4 vertexStart:0 vertexCount:4];
  }

  else
  {
    v19 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_19F38(v10, v19);
    }
  }
}

void sub_19D4C(uint64_t *a1)
{
  v1 = *a1;
  sub_AFF8();
  sub_AFDC(&dword_0, v2, v3, "NTKSiderealCachedMTLTexture texture load error — imageData for cacheKey: %@ is nil. ", v4, v5, v6, v7, v8);
}

void sub_19DB8(uint64_t a1)
{
  sub_B004(a1, __stack_chk_guard);
  sub_AFF8();
  sub_AFDC(&dword_0, v1, v2, "NTKSiderealCachedMTLTexture texture load error — generateImageBlock for the cacheKey: %@ is nil.", v3, v4, v5, v6, v7);
}

void sub_19E20(uint64_t a1)
{
  sub_B004(a1, __stack_chk_guard);
  sub_AFF8();
  sub_B010(&dword_0, v1, v2, "NTKSiderealCachedMTLTexture texture load error — pixelsRef for cacheKey: %@ and image: %@ is NULL.");
}

void sub_19E94(uint64_t a1)
{
  sub_B004(a1, __stack_chk_guard);
  sub_AFF8();
  sub_AFDC(&dword_0, v1, v2, "NTKSiderealCachedMTLTexture texture load error — image generated by the generateImageBlock for the cacheKey: %@ is nil.", v3, v4, v5, v6, v7);
}

void sub_19F38(void *a1, NSObject *a2)
{
  v3 = [a1 cacheKey];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "NTKSiderealBackgroundQuad draw sprite error - Could not draw cached sprite: %@; Attempting to access nil metal texture.", &v4, 0xCu);
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

__float2 __sincosf_stret(float a1)
{
  v3 = ___sincosf_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}