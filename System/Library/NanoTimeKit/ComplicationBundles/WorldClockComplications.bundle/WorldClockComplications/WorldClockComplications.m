void sub_23BDD0F34(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = 40;
  if (!a2)
  {
    v7 = 48;
  }

  v8 = *(a1 + v7);
  v13 = *MEMORY[0x277D740A8];
  v14[0] = v8;
  v9 = MEMORY[0x277CBEAC0];
  v10 = a2;
  v11 = [v9 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  [v6 setAttributes:v11 range:{a3, a4}];

  v12 = *MEMORY[0x277D85DE8];
}

id sub_23BDD1578(void *a1, void *a2, uint64_t a3, void *a4)
{
  v4 = 0;
  if (a2 && !a3)
  {
    v6 = a1[4];
    v7 = a1[5];
    v8 = a1[6];
    v9 = a4;
    v10 = a2;
    v11 = [v9 font];
    v12 = [v9 smallCapsBaseFont];

    v4 = [v6 _swapPlaceholderString:v7 withTimeStringForDate:v8 inString:v10 usingBaseFont:v11 smallCapsBaseFont:v12];
  }

  return v4;
}

id sub_23BDD2A94(void *a1, void *a2, uint64_t a3, void *a4)
{
  v4 = 0;
  if (a2 && !a3)
  {
    v6 = a1[4];
    v7 = a1[5];
    v8 = a1[6];
    v9 = a4;
    v10 = a2;
    v11 = [v9 font];
    v12 = [v9 smallCapsBaseFont];

    v13 = [v6 _swapPlaceholderString:v7 withTimeStringForDate:v8 inString:v10 usingBaseFont:v11 smallCapsBaseFont:v12];

    v14 = [v13 mutableCopy];
    v15 = *MEMORY[0x277D740C0];
    v16 = [MEMORY[0x277D75348] systemOrangeColor];
    [v14 addAttribute:v15 value:v16 range:{0, objc_msgSend(v13, "length")}];

    v4 = [v14 copy];
  }

  return v4;
}

void sub_23BDD2D7C(uint64_t a1)
{
  v2 = [MEMORY[0x277D755B8] systemImageNamed:@"location.fill"];
  v3 = [MEMORY[0x277D755D0] configurationWithFont:*(a1 + 32) scale:1];
  v6 = [v2 imageWithConfiguration:v3];

  v4 = [v6 imageWithRenderingMode:2];
  v5 = qword_27E1C78C8;
  qword_27E1C78C8 = v4;
}

uint64_t sub_23BDD3088(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_27E1C78E0 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

void sub_23BDD32C0()
{
  v9[1] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v1 = [v0 BOOLForKey:@"PerformanceTestingEnabled"];

  if (v1)
  {
    v2 = [MEMORY[0x277CBEB38] dictionaryWithContentsOfFile:@"/tmp/WorldClock-performance_test.plist"];
    if (!v2)
    {
      v2 = objc_opt_new();
    }

    v3 = [v2 objectForKeyedSubscript:@"cityAddTest"];
    if (!v3)
    {
      v3 = objc_opt_new();
    }

    v4 = CFAbsoluteTimeGetCurrent() + *MEMORY[0x277CBECD0];
    v8 = @"timestamp";
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:v4];
    v9[0] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    [v3 setObject:v6 forKeyedSubscript:@"cityAdded"];

    [v2 setObject:v3 forKeyedSubscript:@"cityAddTest"];
    [v2 writeToFile:@"/tmp/WorldClock-performance_test.plist" atomically:1];
  }

  dispatch_async(MEMORY[0x277D85CD0], &unk_284E8ED90);
  v7 = *MEMORY[0x277D85DE8];
}

double NWCMapPointForLocationOnMap(void *a1, double a2, double a3, double a4)
{
  v6 = a1;
  [v6 bounds];
  Width = CGRectGetWidth(v18);
  [v6 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v19.origin.x = v9;
  v19.origin.y = v11;
  v19.size.width = v13;
  v19.size.height = v15;
  CGRectGetHeight(v19);
  v16 = a4 + (a3 + 180.0) * Width / 360.0;
  if (v16 < 0.0)
  {
    v16 = Width + v16;
  }

  if (v16 > Width)
  {
    return v16 - Width;
  }

  return v16;
}

double NWCDayOfYearForDate(void *a1)
{
  v1 = MEMORY[0x277CBEA80];
  v2 = a1;
  v3 = [v1 alloc];
  v4 = [v3 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  v5 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
  [v4 setTimeZone:v5];

  v6 = [v4 components:4 fromDate:v2];
  [v6 setMonth:1];
  [v6 setDay:1];
  [v6 setHour:0];
  [v6 setMinute:0];
  [v6 setSecond:0];
  v7 = [v4 dateFromComponents:v6];
  v8 = [v4 components:128 fromDate:v7 toDate:v2 options:1];

  v9 = [v8 second] / 86400.0 + 1.0;
  return v9;
}

id NWCNightMaskPathForDayOfYear()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v27[0] = *MEMORY[0x277D85DE8];
  v5 = v0;
  v6 = sin((v4 + 284.0) * 0.98630137 * 0.0174532925) * 23.45;
  v7 = (modf(v4, &v25) * 24.0 + -12.0) * 15.0;
  v8 = tan(v6 * 0.0174532925);
  v9 = &v26;
  for (i = -180; i != 181; ++i)
  {
    v11 = i;
    v12 = 90.0;
    if (v8 != 0.0)
    {
      v13 = cos((v7 + v11) * 0.0174532925);
      v12 = atan(-v13 / v8) * 57.2957795;
    }

    *(v9 - 1) = v12;
    *v9 = v11;
    v9 += 2;
  }

  v14 = [MEMORY[0x277D75208] bezierPath];
  v15 = malloc_type_malloc(0x1690uLL, 0x1000040451B5BE8uLL);
  v16 = 0x1FFFFFFFFFFFFD2ELL;
  do
  {
    v17 = &v15[v16];
    v17[722] = NWCMapPointForLocationOnMap(v5, *&v27[v16], *&v27[v16 + 1], v2);
    *(v17 + 723) = v18;
    v16 += 2;
  }

  while (v16 * 8);
  v19 = 2;
  v20 = 720;
  while (v15[v19] >= v15[v19 - 2])
  {
    v19 += 2;
    v20 -= 2;
    if (!(v20 * 8))
    {
      goto LABEL_12;
    }
  }

  v21 = malloc_type_malloc(0x1690uLL, 0xE6267FB8uLL);
  __memcpy_chk();
  memcpy(&v21[v20], v15, v19 * 8);
  free(v15);
  v15 = v21;
LABEL_12:
  [v14 moveToPoint:{*v15, v15[1]}];
  v22 = 0x1FFFFFFFFFFFFD30;
  do
  {
    [v14 addLineToPoint:{v15[v22 + 722], v15[v22 + 723]}];
    v22 += 2;
  }

  while (v22 * 8);
  free(v15);

  v23 = *MEMORY[0x277D85DE8];

  return v14;
}

id sub_23BDD3DF4(void *a1, uint64_t a2, void *a3)
{
  v4 = NWCDayOfYearForDate(a3);
  v5 = NWCNightMaskPathForDayOfYear();
  v6 = [MEMORY[0x277D75208] bezierPath];
  [a1 bounds];
  v8 = v7;
  v10 = v9;
  if (sin((v4 + 284.0) * 0.98630137 * 0.0174532925) * 23.45 <= 0.0)
  {
    v10 = 0.0;
  }

  [v6 moveToPoint:?];
  [v6 appendPath:v5];
  [v6 addLineToPoint:{v8, v10}];
  [v6 addLineToPoint:{0.0, v10}];
  [a1 bounds];
  v18.width = v11;
  v18.height = v12;
  UIGraphicsBeginImageContextWithOptions(v18, 0, 0.0);
  v13 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.65];
  [v13 setFill];

  [v6 fillWithBlendMode:17 alpha:1.0];
  v14 = [MEMORY[0x277D75348] systemGrayColor];
  [v14 setStroke];
  [v5 stroke];
  v15 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v15;
}

__CFString *NWCComplicationLocationNameForPlacemark(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  v6 = &stru_284E8F490;
  if (!a1 || !v4)
  {
    goto LABEL_28;
  }

  v7 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v8 = [v5 locality];
  if (![v8 length])
  {
    goto LABEL_6;
  }

  v9 = [v5 administrativeArea];
  v2 = [v9 length];

  if (v2)
  {
    v8 = [v5 locality];
    [v7 addObject:v8];
LABEL_6:
  }

  v10 = [v5 locality];
  v11 = [v10 length];
  if (v11 && ([v5 administrativeArea], v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "length")))
  {
  }

  else
  {
    v12 = [v5 inlandWater];
    v13 = [v12 length];

    if (v11)
    {
    }

    if (!v13)
    {
      goto LABEL_15;
    }

    v10 = [v5 inlandWater];
    [v7 addObject:v10];
  }

LABEL_15:
  v14 = [v5 administrativeArea];
  v15 = [v14 length];

  if (v15)
  {
    v16 = [v5 administrativeArea];
    [v7 addObject:v16];
  }

  v17 = [v5 country];
  v18 = [v17 length];

  if (v18)
  {
    v19 = [v5 country];
    [v7 addObject:v19];
  }

  if (![v7 count])
  {
    v20 = [v5 ocean];
    v21 = [v20 length];

    if (v21)
    {
      v22 = [v5 ocean];
      [v7 addObject:v22];
    }
  }

  if ([v7 count] < 2)
  {
    if ([v7 count] == 1)
    {
      v6 = [v7 firstObject];
    }

    else
    {
      v6 = &stru_284E8F490;
    }
  }

  else
  {
    v23 = NWCComplicationLocalizedString(@"LOCATION_LOCALITY_MULTIPLE_FORMAT", @"multiple locality items", 0);
    v24 = MEMORY[0x277CCACA8];
    v25 = [v7 objectAtIndexedSubscript:0];
    v26 = [v7 objectAtIndexedSubscript:1];
    v6 = [v24 localizedStringWithFormat:v23, v25, v26];
  }

LABEL_28:

  return v6;
}

uint64_t sub_23BDD4344()
{
  qword_27E1C78E8 = objc_alloc_init(NWCComplicationGeocoder);

  return MEMORY[0x2821F96F8]();
}

void sub_23BDD4818(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23BDD4854(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handlePlacemarks:v6 fromLocation:*(a1 + 32) error:v5];
}

void sub_23BDD4B54(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 40);
        v8 = *(a1 + 48);
        (*(*(*(&v10 + 1) + 8 * v6) + 16))(*(*(&v10 + 1) + 8 * v6));
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x277D85DE8];
}

id NTALogForCategory(unint64_t a1)
{
  if (a1 >= 0xF)
  {
    sub_23BDD8768();
  }

  if (qword_27E1C7970 != -1)
  {
    sub_23BDD8754();
  }

  v2 = qword_27E1C78F8[a1];

  return v2;
}

uint64_t sub_23BDD4D18()
{
  v0 = os_log_create("com.apple.nanotimeapps", "NanoTimeApps");
  v1 = qword_27E1C78F8[0];
  qword_27E1C78F8[0] = v0;

  v2 = os_log_create("com.apple.nanotimeapps", "TimeAppServices");
  v3 = qword_27E1C7900;
  qword_27E1C7900 = v2;

  v4 = os_log_create("com.apple.nanotimeapps", "TimeAppServicesSound");
  v5 = qword_27E1C7968;
  qword_27E1C7968 = v4;

  v6 = os_log_create("com.apple.nanotimeapps", "NanoTimer");
  v7 = qword_27E1C7908;
  qword_27E1C7908 = v6;

  v8 = os_log_create("com.apple.nanotimeapps", "NanoAlarm");
  v9 = qword_27E1C7910;
  qword_27E1C7910 = v8;

  v10 = os_log_create("com.apple.nanotimeapps", "NanoStopwatch");
  v11 = qword_27E1C7918;
  qword_27E1C7918 = v10;

  v12 = os_log_create("com.apple.nanotimeapps", "NanoWorldClock");
  v13 = qword_27E1C7920;
  qword_27E1C7920 = v12;

  v14 = os_log_create("com.apple.nanotimeapps", "NanoClockAlertProvider");
  v15 = qword_27E1C7940;
  qword_27E1C7940 = v14;

  v16 = os_log_create("com.apple.nanotimeapps", "NanoClockActivateProvider");
  v17 = qword_27E1C7948;
  qword_27E1C7948 = v16;

  v18 = os_log_create("com.apple.nanotimeapps", "NanoTimerSiri");
  v19 = qword_27E1C7950;
  qword_27E1C7950 = v18;

  v20 = os_log_create("com.apple.nanotimeapps", "Tool");
  v21 = qword_27E1C7958;
  qword_27E1C7958 = v20;

  v22 = os_log_create("com.apple.nanotimeapps", "SessionProvider");
  v23 = qword_27E1C7960;
  qword_27E1C7960 = v22;

  v24 = os_log_create("com.apple.nanotimeapps", "Complication");
  v25 = qword_27E1C7928;
  qword_27E1C7928 = v24;

  v26 = os_log_create("com.apple.nanotimeapps", "SunriseComplication");
  v27 = qword_27E1C7930;
  qword_27E1C7930 = v26;

  qword_27E1C7938 = os_log_create("com.apple.nanotimeapps", "WorldClockComplication");

  return MEMORY[0x2821F96F8]();
}

void sub_23BDD54D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23BDD54F4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleLocation:v7 error:v6];
}

void sub_23BDD5D04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23BDD5D20(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setWaitingForGeocodeRequest:0];
    if (v6)
    {
      v9 = NTALogForCategory(7uLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_23BDD8794(v6, v9);
      }

      [v8 _scheduleReverseGeocodeTimer:300.0];
    }

    else
    {
      v10 = NWCComplicationLocationNameForPlacemark(*(a1 + 32), v5);
      [v8 setLocationName:v10];

      [v8 setDisplayedLocation:*(a1 + 32)];
      [v8 setGeocodeDelayedLocation:0];
      [v8 _invalidate];
    }
  }
}

uint64_t sub_23BDD63A0()
{
  qword_27E1C7978 = objc_alloc_init(MEMORY[0x277D0EB88]);

  return MEMORY[0x2821F96F8]();
}

void sub_23BDD63DC(uint64_t a1, CLLocationDegrees a2, CLLocationDegrees a3, double a4)
{
  v25 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setWaitingForChinaShiftingRequest:0];
    v10 = CLLocationCoordinate2DMake(a2, a3);
    v11 = objc_alloc(MEMORY[0x277CE41F8]);
    [*(a1 + 32) altitude];
    v13 = v12;
    [*(a1 + 32) verticalAccuracy];
    v15 = v14;
    v16 = [*(a1 + 32) timestamp];
    v17 = [v11 initWithCoordinate:v16 altitude:2 horizontalAccuracy:v10.latitude verticalAccuracy:v10.longitude timestamp:v13 referenceFrame:{a4, v15}];

    v18 = NTALogForCategory(7uLL);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 32);
      v21 = 138412546;
      v22 = v19;
      v23 = 2112;
      v24 = v17;
      _os_log_impl(&dword_23BDCF000, v18, OS_LOG_TYPE_DEFAULT, "Successfully performed China shift from source location: %@\n ...to shifted location: %@", &v21, 0x16u);
    }

    [v9 setChinaShiftedLocation:v17];
    [v9 _invalidate];
  }

  v20 = *MEMORY[0x277D85DE8];
}

void sub_23BDD657C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setWaitingForChinaShiftingRequest:0];
    v6 = NTALogForCategory(7uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_23BDD8820(v3, v6);
    }
  }
}

void sub_23BDD76A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_23BDD76BC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23BDD76D4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = *(a1 + 32);
  v11 = v7;
  v9 = [v7 entryDate];
  v10 = [v8 compare:v9];

  if (v10 != -1)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

__CFString *_NWCComplicationLocalizedStringsTableForType(uint64_t a1)
{
  v1 = @"Complication";
  if (a1 == 1)
  {
    v1 = @"WorldClockComplication";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"SunriseComplication";
  }
}

id _NWCComplicationPreGloryVersionedImageNames()
{
  if (qword_27E1C7990 != -1)
  {
    sub_23BDD8974();
  }

  v1 = qword_27E1C7988;

  return v1;
}

uint64_t sub_23BDD829C()
{
  qword_27E1C7988 = [MEMORY[0x277CBEB98] setWithArray:&unk_284E905E8];

  return MEMORY[0x2821F96F8]();
}

id _NWCPreGloryComplicationImageName(void *a1)
{
  v1 = a1;
  v2 = _NWCComplicationPreGloryVersionedImageNames();
  v3 = [v2 containsObject:v1];

  if (v3)
  {
    v4 = [v1 stringByAppendingString:@"-pre5_0"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id NWCComplicationBundle()
{
  if (qword_27E1C79A0 != -1)
  {
    sub_23BDD8988();
  }

  v1 = qword_27E1C7998;

  return v1;
}

uint64_t sub_23BDD83AC()
{
  qword_27E1C7998 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return MEMORY[0x2821F96F8]();
}

id NWCPreGloryComplicationImageNamed(void *a1)
{
  v1 = _NWCPreGloryComplicationImageName(a1);
  v2 = MEMORY[0x277D755B8];
  v3 = NWCComplicationBundle();
  v4 = [MEMORY[0x277D759A0] mainScreen];
  v5 = [v4 traitCollection];
  v6 = [v2 imageNamed:v1 inBundle:v3 compatibleWithTraitCollection:v5];

  return v6;
}

id NWCComplicationLocalizedString(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = @"Complication";
  if (a3 == 1)
  {
    v5 = @"WorldClockComplication";
  }

  if (!a3)
  {
    v5 = @"SunriseComplication";
  }

  v6 = v5;
  v7 = NWCComplicationBundle();
  v8 = [v7 localizedStringForKey:v4 value:&stru_284E8F490 table:v6];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v4;
  }

  v10 = v9;

  return v10;
}

id NWCComplicationPrimaryColor(uint64_t a1)
{
  if (a1 == 1)
  {
    [MEMORY[0x277D75348] systemOrangeColor];
  }

  else
  {
    [MEMORY[0x277D75348] whiteColor];
  }
  v1 = ;

  return v1;
}

uint64_t NWCShouldChinaShiftCoordinates(void *a1)
{
  v1 = a1;
  [v1 coordinate];
  v3 = v2;
  [v1 coordinate];
  v4 = [MEMORY[0x277D0EB88] isLocationShiftRequiredForCoordinate:v3];
  v5 = [v1 referenceFrame];

  if (v5 == 2)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

void sub_23BDD862C(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_23BDCF000, a2, OS_LOG_TYPE_ERROR, "Unable to produce complication template for (unhandled) complication family: %ld.", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_23BDD86A4(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v6 = 138412290;
  v7 = v4;
  _os_log_debug_impl(&dword_23BDCF000, a2, OS_LOG_TYPE_DEBUG, "Attempt to set nil block on %@ ", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

void sub_23BDD8794(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_23BDCF000, a2, OS_LOG_TYPE_ERROR, "Reverse geocode received an error. Schedule retry. Error? %{public}@.", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_23BDD8820(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_23BDCF000, a2, OS_LOG_TYPE_ERROR, "Failed to China shift location. Error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_23BDD8898(void *a1, uint64_t a2, NSObject *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = objc_opt_class();
  v7 = v6;
  v8 = [a1 cachedEntryModels];
  v10 = 138543874;
  v11 = v6;
  v12 = 2112;
  v13 = a2;
  v14 = 2112;
  v15 = v8;
  _os_log_error_impl(&dword_23BDCF000, a3, OS_LOG_TYPE_ERROR, "[%{public}@] entryModelForDate is nil for date: %@. Models: %@", &v10, 0x20u);

  v9 = *MEMORY[0x277D85DE8];
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x282136CD0](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

uint64_t sub_23BDD8F8C(double a1)
{
  if (!atomic_load(&dword_27E1C78C4))
  {
    sub_23BDD9140(a1);
  }

  return MEMORY[0x28218B1F0]();
}

uint64_t sub_23BDD8FB8(double a1)
{
  if (!atomic_load(&dword_27E1C78C4))
  {
    sub_23BDD9140(a1);
  }

  return MEMORY[0x28218B278]();
}

uint64_t sub_23BDD8FE4(double a1)
{
  if (!atomic_load(&dword_27E1C78C4))
  {
    sub_23BDD9140(a1);
  }

  return MEMORY[0x28218B280]();
}

uint64_t sub_23BDD9010(double a1)
{
  if (!atomic_load(&dword_27E1C78C4))
  {
    sub_23BDD9140(a1);
  }

  return MEMORY[0x28218B2E0]();
}

uint64_t sub_23BDD903C(double a1)
{
  if (!atomic_load(&dword_27E1C78C4))
  {
    sub_23BDD9140(a1);
  }

  return MEMORY[0x28218B2F0]();
}

double sub_23BDD9068(double result)
{
  if (!atomic_load(&dword_27E1C78C4))
  {
    return sub_23BDD9140(result);
  }

  return result;
}

double sub_23BDD908C(double result)
{
  if (!atomic_load(&dword_27E1C78C4))
  {
    return sub_23BDD9140(result);
  }

  return result;
}

double sub_23BDD90B0(double result)
{
  if (!atomic_load(&dword_27E1C78C4))
  {
    return sub_23BDD9140(result);
  }

  return result;
}

double sub_23BDD90D4(double result)
{
  if (!atomic_load(&dword_27E1C78C4))
  {
    return sub_23BDD9140(result);
  }

  return result;
}

double sub_23BDD90F8(double result)
{
  if (!atomic_load(&dword_27E1C78C4))
  {
    return sub_23BDD9140(result);
  }

  return result;
}

double sub_23BDD911C(double result)
{
  if (!atomic_load(&dword_27E1C78C4))
  {
    return sub_23BDD9140(result);
  }

  return result;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_23BDD9140(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/NanoTimeKit.framework/NanoTimeKit", 0);
  atomic_store(1u, &dword_27E1C78C4);
  return a1;
}