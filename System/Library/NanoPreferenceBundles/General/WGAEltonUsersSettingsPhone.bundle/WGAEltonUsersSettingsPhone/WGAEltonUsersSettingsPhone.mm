void sub_1198(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_11D0(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && *(WeakRetained + 38) == a2)
  {
    v5 = WeakRetained;
    v4 = [WeakRetained[17] synchronize];
    [v5 reloadSpecifiers];
    WeakRetained = v5;
  }
}

void sub_1250(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && *(WeakRetained + 39) == a2)
  {
    v5 = WeakRetained;
    v4 = [WeakRetained[18] synchronize];
    [v5 reloadSpecifiers];
    WeakRetained = v5;
  }
}

void sub_1D30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_1D58(uint64_t a1)
{
  [*(*(a1 + 32) + 136) setObject:*(a1 + 40) forKey:@"allGesturesToggleEnabledState"];
  v2 = [*(*(a1 + 32) + 136) synchronize];
  v3 = objc_opt_new();
  v4 = WAGPreferencesDomain;
  v14 = @"allGesturesToggleEnabledState";
  v5 = [NSArray arrayWithObjects:&v14 count:1];
  v6 = [NSSet setWithArray:v5];
  [v3 synchronizeNanoDomain:v4 keys:v6];

  v7 = *(a1 + 32);
  if (*(a1 + 56))
  {
    v8 = [v7 _getCurrentCachedLocalCoverToMuteEnablement];
    v9 = *(a1 + 32);
    v10 = [NSNumber numberWithBool:v8];
    [v9 _setCoverToMuteEnabled:v10 specifier:0];
  }

  else
  {
    v11 = [v7 _getCoverToMuteEnableState:0];
    v12 = [v11 BOOLValue];

    [*(a1 + 32) _setCurrentCachedCoverToMuteEnablement:v12];
    [*(a1 + 32) _setCoverToMuteEnabled:*(a1 + 40) specifier:*(a1 + 48)];
  }

  return [*(a1 + 32) reloadSpecifiers];
}

void sub_1EE8(uint64_t a1)
{
  v2 = +[WatchControlSettings sharedInstance];
  [v2 disableAllGreySupportFeatures];

  v3 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1FAC;
  block[3] = &unk_8358;
  v5 = *(a1 + 32);
  dispatch_after(v3, &_dispatch_main_q, block);
}

void sub_1FBC(uint64_t a1)
{
  [*(a1 + 32) setProperty:&__kCFBooleanFalse forKey:PSValueKey];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained reloadSpecifier:*(a1 + 32)];
}

void sub_284C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_2874(uint64_t a1)
{
  [*(*(a1 + 32) + 136) setObject:*(a1 + 40) forKey:@"flickGestureState"];
  v2 = [*(*(a1 + 32) + 136) synchronize];
  v3 = objc_opt_new();
  v4 = WAGPreferencesDomain;
  v8 = @"flickGestureState";
  v5 = [NSArray arrayWithObjects:&v8 count:1];
  v6 = [NSSet setWithArray:v5];
  [v3 synchronizeNanoDomain:v4 keys:v6];

  return [*(a1 + 32) reloadSpecifiers];
}

void sub_298C(uint64_t a1)
{
  v2 = +[WatchControlSettings sharedInstance];
  [v2 disableAllGreySupportFeatures];

  v3 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2A50;
  block[3] = &unk_8358;
  v5 = *(a1 + 32);
  dispatch_after(v3, &_dispatch_main_q, block);
}

void sub_2A60(uint64_t a1)
{
  [*(a1 + 32) setProperty:&__kCFBooleanFalse forKey:PSValueKey];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained reloadSpecifier:*(a1 + 32)];
}

void sub_34D4(id a1)
{
  qword_C590 = os_log_create("com.apple.WatchGestures", "EltonPhoneSettings");

  _objc_release_x1();
}

void sub_38CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_38F8(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && *(WeakRetained + 36) == a2)
  {
    v5 = WeakRetained;
    v4 = [WeakRetained[17] synchronize];
    [v5 reloadSpecifiers];
    WeakRetained = v5;
  }
}

void sub_419C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_41C4(uint64_t a1)
{
  [*(*(a1 + 32) + 136) setObject:*(a1 + 40) forKey:@"gestureMode"];
  v2 = [*(*(a1 + 32) + 136) synchronize];
  v3 = objc_opt_new();
  v4 = WAGPreferencesDomain;
  v7 = @"gestureMode";
  v5 = [NSArray arrayWithObjects:&v7 count:1];
  v6 = [NSSet setWithArray:v5];
  [v3 synchronizeNanoDomain:v4 keys:v6];
}

void sub_42CC(uint64_t a1)
{
  v2 = +[WatchControlSettings sharedInstance];
  [v2 disableAllGreySupportFeatures];

  v3 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_4390;
  block[3] = &unk_8358;
  v5 = *(a1 + 32);
  dispatch_after(v3, &_dispatch_main_q, block);
}

void sub_43A0(uint64_t a1)
{
  [*(a1 + 32) setProperty:&__kCFBooleanFalse forKey:PSValueKey];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained reloadSpecifier:*(a1 + 32)];
}

void sub_531C(id a1)
{
  qword_C5A0 = os_log_create("com.apple.WatchGestures", "EltonPhoneSettings");

  _objc_release_x1();
}