id NTALogForCategory(unint64_t a1)
{
  if (a1 >= 0xF)
  {
    sub_6094();
  }

  if (qword_11510 != -1)
  {
    sub_6080();
  }

  v2 = qword_11498[a1];

  return v2;
}

void sub_2C2C(id a1)
{
  v1 = os_log_create("com.apple.nanotimeapps", "NanoTimeApps");
  v2 = qword_11498[0];
  qword_11498[0] = v1;

  v3 = os_log_create("com.apple.nanotimeapps", "TimeAppServices");
  v4 = qword_114A0;
  qword_114A0 = v3;

  v5 = os_log_create("com.apple.nanotimeapps", "TimeAppServicesSound");
  v6 = qword_11508;
  qword_11508 = v5;

  v7 = os_log_create("com.apple.nanotimeapps", "NanoTimer");
  v8 = qword_114A8;
  qword_114A8 = v7;

  v9 = os_log_create("com.apple.nanotimeapps", "NanoAlarm");
  v10 = qword_114B0;
  qword_114B0 = v9;

  v11 = os_log_create("com.apple.nanotimeapps", "NanoStopwatch");
  v12 = qword_114B8;
  qword_114B8 = v11;

  v13 = os_log_create("com.apple.nanotimeapps", "NanoWorldClock");
  v14 = qword_114C0;
  qword_114C0 = v13;

  v15 = os_log_create("com.apple.nanotimeapps", "NanoClockAlertProvider");
  v16 = qword_114E0;
  qword_114E0 = v15;

  v17 = os_log_create("com.apple.nanotimeapps", "NanoClockActivateProvider");
  v18 = qword_114E8;
  qword_114E8 = v17;

  v19 = os_log_create("com.apple.nanotimeapps", "NanoTimerSiri");
  v20 = qword_114F0;
  qword_114F0 = v19;

  v21 = os_log_create("com.apple.nanotimeapps", "Tool");
  v22 = qword_114F8;
  qword_114F8 = v21;

  v23 = os_log_create("com.apple.nanotimeapps", "SessionProvider");
  v24 = qword_11500;
  qword_11500 = v23;

  v25 = os_log_create("com.apple.nanotimeapps", "Complication");
  v26 = qword_114C8;
  qword_114C8 = v25;

  v27 = os_log_create("com.apple.nanotimeapps", "SunriseComplication");
  v28 = qword_114D0;
  qword_114D0 = v27;

  qword_114D8 = os_log_create("com.apple.nanotimeapps", "WorldClockComplication");

  _objc_release_x1();
}

void sub_4AC8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 specifierForID:@"MONOGRAM_ID"];
  [v3 reloadSpecifier:v4];
}

BOOL _nameContainsEmojiCharacters(void *a1)
{
  v1 = qword_11518;
  v2 = a1;
  if (v1 != -1)
  {
    sub_60C0();
  }

  v5.location = 0;
  v5.length = 0;
  v3 = qword_11520;
  v6.length = CFStringGetLength(v2);
  v6.location = 0;
  LODWORD(v3) = CFStringFindCharacterFromSet(v2, v3, v6, 0, &v5);

  return v3 != 0;
}

void sub_5B3C(id a1)
{
  v1 = CTFontCreateWithName(@"AppleColorEmoji", 0.0, 0);
  if (v1)
  {
    v2 = v1;
    v4 = CTFontCopyCharacterSet(v1);
    v3 = [(__CFCharacterSet *)v4 mutableCopy];
    [v3 removeCharactersInRange:{0, 128}];
    CFRelease(v2);
    qword_11520 = v3;
  }
}

void sub_5C10(id a1)
{
  qword_11528 = objc_alloc_init(NCBSWorldCityDisplayListModel);

  _objc_release_x1();
}

void sub_6008(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Skipping user visit as missing title for urlString: %{public}@", &v2, 0xCu);
}