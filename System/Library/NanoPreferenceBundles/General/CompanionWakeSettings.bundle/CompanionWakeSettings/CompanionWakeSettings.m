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
      sub_3FE4(a1, v3, v6);
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
    block[3] = &unk_8250;
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

void sub_220C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  v2 = [WeakRetained isLegacyGizmo];

  v3 = [NSMutableArray arrayWithArray:&off_8898];
  if (v2)
  {
    v4 = &off_88B0;
  }

  else
  {
    v4 = &off_88C8;
  }

  v11[0] = @"RETURN_TO_CLOCK_ALWAYS";
  v11[1] = @"RETURN_TO_CLOCK_AFTER_2_MINUTES";
  v12[0] = v4;
  v12[1] = &off_88E0;
  v11[2] = @"RETURN_TO_CLOCK_AFTER_1_HOUR";
  v11[3] = @"RETURN_TO_CLOCK_ON_CROWN_PRESS";
  v12[2] = &off_88F8;
  v12[3] = &off_8910;
  v5 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:4];
  v6 = [NSMutableDictionary dictionaryWithDictionary:v5];

  if ((CSLSAllowReturnToAppUntilCrownPress() & 1) == 0)
  {
    [v3 removeLastObject];
    [v6 setObject:0 forKeyedSubscript:@"RETURN_TO_CLOCK_ON_CROWN_PRESS"];
  }

  v7 = [v3 copy];
  v8 = qword_D190;
  qword_D190 = v7;

  v9 = [v6 copy];
  v10 = qword_D198;
  qword_D198 = v9;
}

void sub_2398(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = [NSString stringWithFormat:@"%@_LABEL", v3];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:v10 value:&stru_8450 table:@"CompanionWakeSettings"];

  v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:*(a1 + 32) set:0 get:0 detail:0 cell:3 edit:0];
  [v6 setIdentifier:v3];
  v7 = [qword_D198 objectForKeyedSubscript:v3];

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

void sub_3B3C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v6 localizedStringForKey:v5 value:&stru_8450 table:@"CompanionWakeSettings"];

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

void sub_3FE4(uint64_t a1, uint64_t a2, NSObject *a3)
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