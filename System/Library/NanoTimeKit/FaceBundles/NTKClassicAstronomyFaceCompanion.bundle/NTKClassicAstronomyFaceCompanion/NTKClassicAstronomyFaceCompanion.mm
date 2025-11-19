uint64_t sub_1200(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&stru_1577C);
  if (qword_15780)
  {
    v3 = qword_15780 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_15788))
  {
    v5 = byte_15778;
  }

  else
  {
    qword_15780 = v2;
    qword_15788 = [v2 version];
    sub_12A8(qword_15788, v2);
    v5 = 1;
    byte_15778 = 1;
  }

  os_unfair_lock_unlock(&stru_1577C);

  return v5;
}

void sub_12A8(uint64_t a1, uint64_t a2)
{
  v2 = [CLKDeviceMetrics metricsWithDevice:a2 identitySizeClass:3];
  v24[0] = &off_10BB8;
  v24[1] = &off_10BD0;
  v25[0] = &off_10D38;
  v25[1] = &off_10D48;
  v3 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];
  [v2 constantValue:v3 withOverrides:0.0];
  *&v4 = v4;
  dword_15750 = LODWORD(v4);

  v22[0] = &off_10BB8;
  v22[1] = &off_10BE8;
  v23[0] = &off_10D58;
  v23[1] = &off_10D68;
  v5 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];
  [v2 scaledValue:v5 withOverrides:16.0];
  *&v6 = v6;
  dword_15754 = LODWORD(v6);

  v20 = &off_10C00;
  v21 = &off_10D38;
  v7 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  [v2 scaledValue:v7 withOverrides:13.0];
  *&v8 = v8;
  dword_15768 = LODWORD(v8);

  v18[0] = &off_10BB8;
  v18[1] = &off_10C00;
  v19[0] = &off_10D78;
  v19[1] = &off_10D88;
  v18[2] = &off_10C18;
  v19[2] = &off_10D98;
  v9 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:3];
  [v2 scaledValue:v9 withOverrides:8.0];
  *&v10 = v10;
  dword_15758 = LODWORD(v10);

  *&v11 = *&dword_15758 + *&dword_15768 * 2.0;
  dword_1575C = v11;
  [v2 scaledValue:20.0];
  *&v12 = v12;
  dword_15760 = LODWORD(v12);
  [v2 scaledValue:16.0];
  *&v13 = v13;
  dword_15764 = LODWORD(v13);
  v16[0] = &off_10BB8;
  v16[1] = &off_10BD0;
  v17[0] = &off_10DA8;
  v17[1] = &off_10DA8;
  v16[2] = &off_10BE8;
  v16[3] = &off_10C00;
  v17[2] = &off_10DB8;
  v17[3] = &off_10DC8;
  v16[4] = &off_10C18;
  v17[4] = &off_10DD8;
  v14 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:5];
  [v2 scaledValue:v14 withOverrides:6.0];
  qword_15770 = v15;
}

void sub_1F74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1F98(uint64_t a1, void *a2, id *a3)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateTimeAnimated:1];
}

id sub_2198()
{
  if (qword_15798 != -1)
  {
    sub_6EDC();
  }

  v1 = qword_15790;

  return v1;
}

id sub_3564(uint64_t a1)
{
  if (qword_157C0 != -1)
  {
    sub_6EF0();
  }

  if ((a1 & 0xFFFFFFFC) != 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = a1;
  }

  v3 = qword_157A0[v2];

  return v3;
}

void sub_35C0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if ((WeakRetained[416] & 2) != 0)
    {
      v3 = WeakRetained + 160;
      v4 = *(a1 + 56);
      if (!*&WeakRetained[8 * v4 + 160])
      {
        v21 = WeakRetained;
        v5 = off_10450[v4];
        v6 = [NSString stringWithFormat:@"PLANET%d", v4];
        v7 = *(a1 + 32);
        v8 = NTKClockFaceLocalizedString();
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
}

void sub_441C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateLocaleAnimated:1];
}

void sub_4500(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateTimeAnimated:1];
}

void sub_4920(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_493C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateLocation:v6 lastLocation:v5];
}

void sub_4C3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_4C64(uint64_t a1)
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

void sub_51E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_5204(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _wheelDelayedBlockFired];
}

__CFString *NTKTimeFormatWithAstronomyVistaBetweenNowAndOverrideDate(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = +[NSCalendar currentCalendar];
  v8 = NTKRoundDateDownToNearestSecond();

  v9 = NTKRoundDateDownToNearestSecond();

  [v9 timeIntervalSinceDate:v8];
  if (v10 == 0.0)
  {
    v11 = &stru_10690;
    goto LABEL_27;
  }

  v12 = v10;
  v13 = objc_opt_new();
  [v13 setUnitsStyle:3];
  [v13 setMaximumUnitCount:2];
  [v13 setFormattingContext:2];
  v14 = [v7 startOfDayForDate:v8];
  v15 = [v7 dateByAddingUnit:16 value:1 toDate:v8 options:0];
  v16 = [v7 startOfDayForDate:v15];

  [v14 timeIntervalSinceDate:v8];
  v18 = v17;
  [v16 timeIntervalSinceDate:v8];
  v20 = v19;
  v21 = v8;
  switch(a1)
  {
    case 2:
      v22 = v13;
      if (fabs(v12) >= 31536000.0)
      {
        v23 = 4;
      }

      else
      {
        v23 = 20;
      }

      goto LABEL_18;
    case 1:
LABEL_8:
      if (v12 <= v18 || v12 >= v20)
      {
        [v13 setAllowedUnits:16];
        if (v12 >= v18)
        {
          v24 = v14;
        }

        else
        {
          v24 = v16;
        }

        v25 = v24;

        v21 = v25;
        break;
      }

      v22 = v13;
      v23 = 48;
      goto LABEL_18;
    case 0:
      if (fabs(v12) < 3600.0)
      {
        v22 = v13;
        v23 = 112;
LABEL_18:
        [v22 setAllowedUnits:v23];
        break;
      }

      goto LABEL_8;
  }

  v26 = [v13 stringFromDate:v21 toDate:v9];
  if (qword_157D0 != -1)
  {
    sub_6F04();
  }

  if (byte_157C8 == 1)
  {
    v27 = +[NSLocale currentLocale];
    v28 = [v26 uppercaseStringWithLocale:v27];

    v26 = v28;
  }

  if (v12 <= 0.0)
  {
    v29 = v26;
  }

  else
  {
    v29 = [NSString stringWithFormat:@"+%@", v26];
  }

  v11 = v29;

LABEL_27:

  return v11;
}

void sub_6354(id a1)
{
  qword_15790 = NTKClockFaceLocalizedString();

  _objc_release_x1();
}

void sub_639C(id a1)
{
  v1 = CGColorSpaceCreateWithName(kCGColorSpaceExtendedSRGB);
  v2 = 0;
  v3 = &unk_9938;
  do
  {
    v4 = CGColorCreate(v1, v3);
    v5 = [UIColor colorWithCGColor:v4];
    v6 = qword_157A0[v2];
    qword_157A0[v2] = v5;

    CGColorRelease(v4);
    ++v2;
    v3 += 4;
  }

  while (v2 != 4);

  CGColorSpaceRelease(v1);
}

void sub_644C(id a1)
{
  v1 = NTKClockFaceLocalizedString();
  if (v1 && [@"1" isEqualToString:v1])
  {
    byte_157C8 = 1;
  }

  _objc_release_x1();
}