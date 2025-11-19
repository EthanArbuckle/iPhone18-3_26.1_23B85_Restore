void sub_1C24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C40(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleLocationUpdate:v6 anyLocation:v5];
}

void sub_2C68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_2C88(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 7);
    if (!v4 || *(a1 + 40))
    {
      v4 = *(WeakRetained + 6);
    }

    v5 = v4;
  }

  else
  {
    v5 = +[NSDate date];
  }

  v6 = v5;

  return v6;
}

void sub_2E40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2E64(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _stopAnimating];
}

void sub_37D8(id a1)
{
  v1 = objc_opt_new();
  [v1 setDateFormat:@"d"];
  v2 = +[NSLocale autoupdatingCurrentLocale];
  [v1 setLocale:v2];

  v3 = qword_12008;
  qword_12008 = v1;

  v4 = objc_opt_new();
  [v4 setDateFormat:@"EEEEE"];
  v5 = +[NSLocale autoupdatingCurrentLocale];
  [v4 setLocale:v5];

  v6 = qword_12010;
  qword_12010 = v4;
}

void sub_38A0(uint64_t a1, void *a2, uint64_t a3)
{
  v18 = a2;
  [*(a1 + 32) setDay:*(a1 + 72) + a3];
  v5 = [*(a1 + 40) dateFromComponents:*(a1 + 32)];
  v6 = [qword_12008 stringFromDate:v5];
  v7 = [v18 dayLabel];
  [v7 setText:v6];

  [*(a1 + 48) setDay:*(a1 + 80) + a3];
  v8 = [*(a1 + 40) dateFromComponents:*(a1 + 48)];
  v9 = [NSMutableDictionary dictionaryWithObjectsAndKeys:&off_CA10, @"vista", v8, @"entry date", 0];
  v10 = v9;
  v11 = *(a1 + 56);
  if (v11)
  {
    [v9 setObject:v11 forKey:@"CurrentLocation"];
  }

  v12 = *(a1 + 64);
  if (v12)
  {
    [v10 setObject:v12 forKey:@"AnyLocation"];
  }

  v13 = [v18 moonView];
  [v13 handleTemplateMetadata:v10 reason:0];

  v14 = [qword_12010 stringFromDate:v5];
  v15 = [v18 weekdayLabel];
  [v15 setText:v14];

  if (!a3)
  {
    v16 = +[UIColor whiteColor];
    v17 = [v18 weekdayLabel];
    [v17 setTextColor:v16];
  }
}

void sub_3DF8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 moonView];
  v5 = [v4 layer];
  [v5 setFilters:*(a1 + 32)];

  v6 = [v3 dayLabel];
  v7 = [v6 layer];
  [v7 setFilters:*(a1 + 40)];

  v9 = [v3 weekdayLabel];

  v8 = [v9 layer];
  [v8 setFilters:*(a1 + 40)];
}

void sub_3EC8(uint64_t a1, void *a2)
{
  v3 = [a2 layer];
  [v3 setFilters:*(a1 + 32)];
}

uint64_t sub_4748(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&stru_1204C);
  if (qword_12050)
  {
    v3 = qword_12050 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_12058))
  {
    v5 = byte_12048;
  }

  else
  {
    qword_12050 = v2;
    qword_12058 = [v2 version];
    sub_47F0(qword_12058, v2);
    v5 = 1;
    byte_12048 = 1;
  }

  os_unfair_lock_unlock(&stru_1204C);

  return v5;
}

void sub_47F0(uint64_t a1, uint64_t a2)
{
  v2 = [CLKDeviceMetrics metricsWithDevice:a2 identitySizeClass:2];
  v8[0] = &off_CA28;
  v8[1] = &off_CA40;
  v9[0] = &off_CA58;
  v9[1] = &off_CA68;
  v3 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];
  [v2 scaledValue:v3 withOverrides:9.0];
  qword_12020 = v4;

  [v2 scaledValue:7.5];
  qword_12028 = v5;
  [v2 scaledValue:3 withOverride:14.0 forSizeClass:15.0];
  qword_12030 = v6;
  qword_12038 = qword_12020;
  [v2 scaledValue:1.0];
  qword_12040 = v7;
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