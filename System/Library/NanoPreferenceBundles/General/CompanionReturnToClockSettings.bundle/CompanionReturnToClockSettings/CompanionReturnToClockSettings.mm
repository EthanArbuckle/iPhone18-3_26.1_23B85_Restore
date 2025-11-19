void sub_1714(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1738(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = cslprf_sessions_log();
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_6304(a1, v3, v6);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = [*(a1 + 32) domain];
    v8 = *(a1 + 40);
    *buf = 138412546;
    v16 = v7;
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "synchronized %@ %@", buf, 0x16u);
  }

  if (*(a1 + 40) && WeakRetained)
  {
    v9 = WeakRetained[18];
    v10 = [*(a1 + 32) domain];
    [v9 synchronizeNanoDomain:v10 keys:*(a1 + 40)];
  }

  if (*(a1 + 48))
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1920;
    block[3] = &unk_C2A0;
    objc_copyWeak(&v14, (a1 + 56));
    v13 = *(a1 + 48);
    v12 = v3;
    dispatch_async(&_dispatch_main_q, block);

    objc_destroyWeak(&v14);
  }
}

void sub_1920(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
}

void sub_23C4(uint64_t a1)
{
  *(*(a1 + 32) + 136) = 1;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, *(a1 + 32), sub_2480, @"CSLOnWakeTimeoutPreferenceChangedNotification", 0, 0);
  v3 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v3, *(a1 + 32), sub_2480, @"CSLPRFSessionsSettingsChangedNotification", 0, 0);
  v4 = +[PDRRegistry sharedInstance];
  [v4 addDelegate:*(a1 + 32)];
}

void sub_24F4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 136) == 1)
  {
    *(v2 + 136) = 0;
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, *(a1 + 32));
    v5 = +[PDRRegistry sharedInstance];
    [v5 removeDelegate:*(a1 + 32)];
  }
}

void sub_260C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 nanoDomainAccessor];
  [v3 _synchronizeDomainWithAccessor:v4 keys:0 withCompletion:&stru_C330];
}

void sub_267C(id a1, CSLPRFReturnToClockSettingsViewController *a2, NSError *a3)
{
  v4 = a2;
  v3 = v4;
  BSDispatchMain();
}

id sub_2708(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    [result reloadReturnToAppSettingsModel];
    v3 = *(a1 + 32);
    v4 = *(v3 + 192);
    *(v3 + 192) = 0;

    v5 = *(a1 + 32);

    return [v5 reloadSpecifiers];
  }

  return result;
}

void sub_2F4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2F70(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = cslprf_sessions_log();
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_6304(a1, v3, v6);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = [*(a1 + 32) domain];
    v8 = *(a1 + 40);
    *buf = 138412546;
    v16 = v7;
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "synchronized %@ %@", buf, 0x16u);
  }

  if (*(a1 + 40) && WeakRetained)
  {
    v9 = WeakRetained[21];
    v10 = [*(a1 + 32) domain];
    [v9 synchronizeNanoDomain:v10 keys:*(a1 + 40)];
  }

  if (*(a1 + 48))
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_3158;
    block[3] = &unk_C2A0;
    objc_copyWeak(&v14, (a1 + 56));
    v13 = *(a1 + 48);
    v12 = v3;
    dispatch_async(&_dispatch_main_q, block);

    objc_destroyWeak(&v14);
  }
}

void sub_3158(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
}

void sub_3554(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_3574(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = [v8 name];
    v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:*(a1 + 32) set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    [v5 setApp:v8];
    v6 = [v8 bundleID];
    [v5 setIdentifier:v6];

    v7 = [v8 bundleID];
    [v5 setProperty:v7 forKey:PSLazyIconAppID];

    [v5 setProperty:&__kCFBooleanTrue forKey:PSLazyIconLoading];
    [v5 setProperty:objc_opt_class() forKey:PSCellClassKey];
    [v5 setProperty:WeakRetained forKey:@"ReturnToAppSettingsDelegate"];
    [v5 setProperty:WeakRetained[18] forKey:@"ReturnToAppSettingsModel"];
    [v5 setProperty:&__kCFBooleanTrue forKey:@"ReturnToAppAppSpecifier"];
    [*(a1 + 40) addObject:v5];
  }
}

void sub_37D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_37EC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 allValues];

  [WeakRetained _setApps:v4];
}

void sub_3E24(uint64_t a1)
{
  v2 = *(*(a1 + 32) + OBJC_IVAR___PSListController__specifiers);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_3EC8;
  v5[3] = &unk_C410;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  [v2 enumerateObjectsUsingBlock:v5];
}

void sub_3EC8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  v8 = [v6 identifier];
  LODWORD(v7) = [v7 isEqualToString:v8];

  if (v7)
  {
    v9 = cslprf_sessions_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 32);
      v11 = 138412546;
      v12 = v10;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "%@ changed reloading specifier %@", &v11, 0x16u);
    }

    [*(a1 + 40) reloadSpecifier:v6];
    *a4 = 1;
  }
}

void sub_452C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  v2 = [WeakRetained isLegacyGizmo];

  v3 = [NSMutableArray arrayWithArray:&off_CCF8];
  if (v2)
  {
    v4 = &off_CD10;
  }

  else
  {
    v4 = &off_CD28;
  }

  v11[0] = @"RETURN_TO_CLOCK_ALWAYS";
  v11[1] = @"RETURN_TO_CLOCK_AFTER_2_MINUTES";
  v12[0] = v4;
  v12[1] = &off_CD40;
  v11[2] = @"RETURN_TO_CLOCK_AFTER_1_HOUR";
  v11[3] = @"RETURN_TO_CLOCK_ON_CROWN_PRESS";
  v12[2] = &off_CD58;
  v12[3] = &off_CD70;
  v5 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:4];
  v6 = [NSMutableDictionary dictionaryWithDictionary:v5];

  if ((CSLSAllowReturnToAppUntilCrownPress() & 1) == 0)
  {
    [v3 removeLastObject];
    [v6 setObject:0 forKeyedSubscript:@"RETURN_TO_CLOCK_ON_CROWN_PRESS"];
  }

  v7 = [v3 copy];
  v8 = qword_11DB0;
  qword_11DB0 = v7;

  v9 = [v6 copy];
  v10 = qword_11DB8;
  qword_11DB8 = v9;
}

void sub_46B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = [NSString stringWithFormat:@"%@_LABEL", v3];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:v10 value:&stru_C5E8 table:@"CompanionWakeSettings"];

  v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:*(a1 + 32) set:0 get:0 detail:0 cell:3 edit:0];
  [v6 setIdentifier:v3];
  v7 = [qword_11DB8 objectForKeyedSubscript:v3];

  v8 = [v7 integerValue];
  v9 = *(a1 + 32);
  if (v8 == v9[3])
  {
    [v9 setSelectedSpecifier:v6];
  }

  [v6 setProperty:v7 forKey:PSValueKey];
  [v6 setProperty:&__kCFBooleanTrue forKey:@"kCSLPRFReturnToClockSetting"];
  [*(*(a1 + 32) + 8) addObject:v6];
}

void sub_5E5C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v6 localizedStringForKey:v5 value:&stru_C5E8 table:@"CompanionWakeSettings"];

  v7 = [PSSpecifier preferenceSpecifierNamed:v10 target:*(a1 + 32) set:0 get:0 detail:0 cell:3 edit:0];
  v8 = [NSNumber numberWithBool:a3];
  [v7 setProperty:v8 forKey:PSValueKey];

  [v7 setProperty:&__kCFBooleanTrue forKey:@"kCSLPRFReturnToClockCustomSetting"];
  [*(*(a1 + 32) + 8) addObject:v7];
  v9 = *(a1 + 32);
  if (v9[24] == a3)
  {
    [v9 setSelectedSpecifier:v7];
  }
}

void sub_6304(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v6 = [*(a1 + 32) domain];
  v7 = *(a1 + 40);
  v8 = 138412802;
  v9 = v6;
  v10 = 2112;
  v11 = v7;
  v12 = 2112;
  v13 = a2;
  _os_log_error_impl(&dword_0, a3, OS_LOG_TYPE_ERROR, "could not synchronize %@ %@ %@", &v8, 0x20u);
}