BOOL sub_100002BB8(id a1, CARSettingsPanel *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

id sub_100003C44(uint64_t a1)
{
  result = [*(a1 + 32) AIEnabled];
  if (*(a1 + 40) != result)
  {
    [*(a1 + 32) setAIEnabled:?];
    v3 = *(a1 + 32);

    return [v3 resetAllSpecifiers];
  }

  return result;
}

void sub_100003E10(uint64_t a1)
{
  v1 = [*(a1 + 32) devicePickerSpecifier];
  [v1 refreshSpecifierIfNeeded];
}

void sub_1000045B8(id a1, BSProcessHandle *a2, NSError *a3)
{
  if (a3)
  {
    NSLog(@"open application request failed! error: %@", a2, a3);
  }

  else
  {
    NSLog(@"open application request succeeded! process: %@", a2, a2);
  }
}

void sub_100004B34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100004B50(id a1, BOOL a2, NSError *a3)
{
  v4 = a3;
  if (v4 || !a2)
  {
    v5 = sub_10001C784();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100090920();
    }
  }
}

void sub_100004BB0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v6)
  {
    v8 = sub_10001C784();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100090988();
    }
  }

  else
  {
    [WeakRetained setFocusActive:{objc_msgSend(v5, "isActive")}];
  }
}

void sub_100005048(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000506C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained panelController];
  [v1 pushPanel:WeakRetained];
}

void sub_100005688(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000056AC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 BOOLValue];

  [WeakRetained _updateAnnounceEnabled:v4];
}

void sub_100005854(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100005878(uint64_t a1, void *a2)
{
  v3 = [a2 BOOLValue];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateAnnounceMuted:v3 ^ 1];
}

void sub_100005A60(uint64_t a1)
{
  v2 = sub_10001C784();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100090B04();
  }

  v3 = sub_10001C784();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100090BA8();
  }

  v5 = *(a1 + 32);
  v4 = (a1 + 32);
  [v5 setPendingAnnounceEnablementChangeFromUserNotifications:0];
  v6 = sub_10001C784();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100090BDC();
  }

  v7 = sub_10001C784();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_100090C10();
  }

  v8 = [*v4 pendingAnnounceEnablementChangeFromSiri];
  v9 = sub_10001C784();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[Settings] Waiting for pending Siri preferences change to reload specifiers.", buf, 2u);
    }

    goto LABEL_16;
  }

  if (v10)
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[Settings] No Siri announce enablement change is pending.", v12, 2u);
  }

  [*v4 reloadSpecifiers];
  if (([*v4 _isAnnounceEnabled] & 1) == 0)
  {
    v9 = [*v4 panelController];
    v11 = [*v4 muteOptionsPanel];
    [v9 popIfPanel:v11];

LABEL_16:
  }
}

void sub_100005D04(uint64_t a1)
{
  v2 = sub_10001C784();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100090DE0();
  }

  v3 = sub_10001C784();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100090E84();
  }

  v5 = *(a1 + 32);
  v4 = (a1 + 32);
  [v5 setPendingAnnounceEnablementChangeFromSiri:0];
  v6 = sub_10001C784();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100090EB8();
  }

  v7 = sub_10001C784();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_100090EEC();
  }

  v8 = [*v4 pendingAnnounceEnablementChangeFromUserNotifications];
  v9 = sub_10001C784();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[Settings] Waiting for pending User Notifications settings change to reload specifiers.", buf, 2u);
    }
  }

  else
  {
    if (v10)
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[Settings] No User Notifications settings change is pending", v11, 2u);
    }

    [*v4 reloadSpecifiers];
  }
}

void sub_100006A40(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_100006AA0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_100006ABC(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

id sub_100006ADC()
{

  return [v0 pendingAnnounceEnablementChangeFromUserNotifications];
}

void sub_100006E58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100006E7C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained panelController];
  [v1 pushPanel:WeakRetained];
}

void sub_100007610(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100007634(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained panelController];
  [v1 pushPanel:WeakRetained];
}

void sub_100007F44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100007F68(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained panelController];
  [v1 pushPanel:WeakRetained];
}

void sub_10000866C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100008690(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained panelController];
  [v1 pushPanel:WeakRetained];
}

void sub_1000088A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000088D0(id *a1, void *a2)
{
  v3 = a2;
  v4 = [CARWallpaperCellSpecifier alloc];
  v5 = [a1[4] wallpaperPreferences];
  v6 = [a1[4] panelController];
  v7 = [v6 carSession];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100008A14;
  v13 = &unk_1000DAED8;
  objc_copyWeak(&v15, a1 + 6);
  v8 = v3;
  v14 = v8;
  v9 = [(CARWallpaperCellSpecifier *)v4 initWithWallpaper:v8 wallpaperPreferences:v5 carSession:v7 actionBlock:&v10];

  [a1[5] addObject:{v9, v10, v11, v12, v13}];
  objc_destroyWeak(&v15);
}

void sub_100008A14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained _newPreviewPanelForWallpaper:*(a1 + 32)];
  v4 = sub_10001C784();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[Settings] [CARWallpaper] Presenting preview panel for #wallpaper %{public}@", &v7, 0xCu);
  }

  v6 = [WeakRetained panelController];
  [v6 presentPanel:v3];
}

void sub_1000093A8(uint64_t a1)
{
  v4 = [*(a1 + 32) panelController];
  v2 = [v4 vehicle];
  v3 = [*(a1 + 32) wallpaperPreferences];
  [v3 setVehicle:v2];
}

uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = UIApplicationMain(a1, a2, 0, v6);

  objc_autoreleasePoolPop(v4);
  return v7;
}

void sub_10000B16C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000B190(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained panelController];
  [v1 pushPanel:WeakRetained];
}

void sub_10000BFFC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _tappyTap];
}

void sub_10000C5C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000C610(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained groupSpecifier];
  v2 = [v1 selectedTitle];
  v3 = [WeakRetained cellSpecifier];
  [v3 setDetail:v2];

  v4 = UIContentSizeCategoryLarge;
  v5 = [WeakRetained groupSpecifier];
  v6 = [v5 selectedIndex];

  if ((v6 - 1) <= 2)
  {
    v7 = **(&off_1000DB020 + (v6 - 1));

    v4 = v7;
  }

  v8 = +[CARPrototypePref contentSize];
  [v8 setValue:v4];
}

id sub_10000C718(uint64_t a1, void *a2)
{
  if (a2)
  {
    return [a2 _updateSelectedIndex];
  }

  return result;
}

void sub_10000C924(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000C948(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained panelController];
  [v1 pushPanel:WeakRetained];
}

void sub_10000D408(id a1)
{
  v1 = sub_10001C80C(@"CARPLAY_START_SILENTMODE_MIRROR_IPHONE");
  v2 = sub_10001C80C(@"CARPLAY_START_SILENTMODE_MIRROR_IPHONE_FOOTER");
  v3 = [CARSilentModeInCarPlayOption optionWithFullTitle:v1 footer:v2 silentModeType:0 accessibilityIdentifier:@"CPSettingsSilentModeMirrorPhone"];
  v4 = sub_10001C80C(@"CARPLAY_START_SILENTMODE_ON");
  v5 = sub_10001C80C(@"CARPLAY_START_SILENTMODE_ON_FOOTER");
  v6 = [CARSilentModeInCarPlayOption optionWithFullTitle:v4 footer:v5 silentModeType:1 accessibilityIdentifier:@"CPSettingsSilentModeTurnOn", v3];
  v12[1] = v6;
  v7 = sub_10001C80C(@"CARPLAY_START_SILENTMODE_OFF");
  v8 = sub_10001C80C(@"CARPLAY_START_SILENTMODE_OFF_FOOTER");
  v9 = [CARSilentModeInCarPlayOption optionWithFullTitle:v7 footer:v8 silentModeType:2 accessibilityIdentifier:@"CPSettingsSilentModeTurnOff"];
  v12[2] = v9;
  v10 = [NSArray arrayWithObjects:v12 count:3];
  v11 = qword_100101E78;
  qword_100101E78 = v10;
}

void sub_10000D77C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000D7A0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained panelController];
  [v1 pushPanel:WeakRetained];
}

void sub_10000DB00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000DB44(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained silentModeOptions];
  v2 = [WeakRetained groupSpecifier];
  v3 = [v1 objectAtIndexedSubscript:{objc_msgSend(v2, "selectedIndex")}];

  v4 = [WeakRetained silentModeStatus];
  [v4 setCarPlaySilentModePreference:{objc_msgSend(v3, "silentModeType")}];

  v5 = +[NSDistributedNotificationCenter defaultCenter];
  [v5 postNotificationName:CRSilentModePanelInteraction object:0 userInfo:0];

  [WeakRetained reloadSpecifiers];
}

void sub_10000DC30(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setShowThreeWaySwitch:1];
  v2 = +[NSDistributedNotificationCenter defaultCenter];
  [v2 postNotificationName:CRSilentModePanelInteraction object:0 userInfo:0];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000DD04;
  block[3] = &unk_1000DAD70;
  v5 = WeakRetained;
  v3 = WeakRetained;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_10000E31C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = sub_10001C784();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[Settings] Silent mode panel: external process changed silent mode state", v3, 2u);
  }

  [WeakRetained setShowThreeWaySwitch:{objc_msgSend(WeakRetained, "_shouldShowThreeWaySwitch")}];
  [WeakRetained reloadSpecifiers];
}

void sub_10000F3B4(id a1, CRVehicle *a2, NSError *a3)
{
  v3 = a3;
  if (v3)
  {
    v4 = sub_10001C784();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10009155C(v3, v4);
    }
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.carkit.capabilities-changed", 0, 0, 1u);
}

void sub_10000FE48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000FE6C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained panelController];
  [v1 pushPanel:WeakRetained];
}

void sub_10001185C(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) tableSource];
  v5 = [v4 specifierSections];
  v9 = [v5 objectAtIndexedSubscript:a2];

  v6 = [*(a1 + 32) tableView];
  v7 = [v6 headerViewForSection:a2];

  v8 = [v9 title];
  [v7 setTextValue:v8];
}

void sub_100011920(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) tableSource];
  v5 = [v4 specifierSections];
  v9 = [v5 objectAtIndexedSubscript:a2];

  v6 = [*(a1 + 32) tableView];
  v7 = [v6 footerViewForSection:a2];

  v8 = [v9 footer];
  [v7 setTextValue:v8];
}

void sub_1000119E4(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  [v2 beginUpdates];

  [*(a1 + 32) _performBatchUpdatesForReloadIndexPaths:*(a1 + 40) insertIndexPaths:*(a1 + 48) removeIndexPaths:*(a1 + 56)];
  v3 = [*(a1 + 32) tableView];
  [v3 endUpdates];
}

void sub_100011B78(id *a1)
{
  if ([a1[4] count])
  {
    v2 = [a1[5] tableView];
    [v2 deleteSections:a1[4] withRowAnimation:0];
  }

  if ([a1[6] count])
  {
    v3 = [a1[5] tableView];
    [v3 insertSections:a1[6] withRowAnimation:0];
  }

  if ([a1[7] count])
  {
    v4 = [a1[5] tableView];
    [v4 reloadSections:a1[7] withRowAnimation:0];
  }
}

void sub_100012E80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100012E9C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 bs_compactMap:&stru_1000DB158];
    v4 = [v3 componentsJoinedByString:@"\n\n"];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100012FE0;
    v6[3] = &unk_1000DB180;
    objc_copyWeak(&v8, (a1 + 32));
    v7 = v4;
    v5 = v4;
    dispatch_async(&_dispatch_main_q, v6);

    objc_destroyWeak(&v8);
  }
}

id sub_100012F84(id a1, NSData *a2)
{
  v2 = a2;
  v3 = [[NSString alloc] initWithData:v2 encoding:4];

  return v3;
}

void sub_100012FE0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained analyticsTextView];
  [v2 setText:*(a1 + 32)];
}

void sub_1000138A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000138CC(uint64_t a1, void *a2)
{
  if (a2)
  {
    [a2 _preferenceValueSet];
  }
}

void sub_1000138DC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained performAction:v3];
}

void sub_100014BE0(id a1, id a2)
{
  v3 = +[NSDistributedNotificationCenter defaultCenter];
  v2 = [NSNotification notificationWithName:@"com.apple.CarPlay.internal.default" object:0];
  [v3 postNotification:v2];
}

void sub_100014C5C(id a1, id a2)
{
  v3 = +[NSDistributedNotificationCenter defaultCenter];
  v2 = [NSNotification notificationWithName:@"com.apple.CarPlay.internal.instructionCard" object:0];
  [v3 postNotification:v2];
}

void sub_100014CD8(id a1, id a2)
{
  v3 = +[NSDistributedNotificationCenter defaultCenter];
  v2 = [NSNotification notificationWithName:@"com.apple.CarPlay.internal.map" object:0];
  [v3 postNotification:v2];
}

void sub_100014E78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100014E9C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained panelController];
  [v1 pushPanel:WeakRetained];
}

void sub_1000150E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001510C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained panelController];
  [v1 pushPanel:WeakRetained];
}

void sub_1000164D4(uint64_t a1)
{
  v2 = +[UIPasteboard generalPasteboard];
  [v2 setString:*(a1 + 32)];
}

void sub_100016530(uint64_t a1)
{
  v2 = +[UIPasteboard generalPasteboard];
  [v2 setString:*(a1 + 32)];
}

void sub_10001658C(uint64_t a1)
{
  v3 = +[UIPasteboard generalPasteboard];
  v2 = [*(a1 + 32) stringValue];
  [v3 setString:v2];
}

void sub_100016604(uint64_t a1)
{
  v2 = +[UIPasteboard generalPasteboard];
  [v2 setString:*(a1 + 32)];
}

void sub_10001665C(id a1, id a2)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"ResetUSBHostToDeviceModeConnectionDarwinNotification", 0, 0, 1u);
}

void sub_100016698(id a1, id a2)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.CarPlay.internal.toggleDynamicContent", 0, 0, 1u);
}

void sub_1000166D4(id a1, id a2)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.CarPlay.internal.toggleLayoutChange", 0, 0, 1u);
}

void sub_100016858(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001687C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained panelController];
  [v1 pushPanel:WeakRetained];
}

void sub_100016A64(id a1)
{
  v1 = qword_100101E80;
  qword_100101E80 = &off_1000E2B08;
}

void sub_100017044(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v5 - 152));
  _Unwind_Resume(a1);
}

void sub_1000170EC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v3)
  {
    v5 = [v3 BOOLValue];
    v6 = sub_10001C784();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 67240192;
      v7[1] = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[Settings] Sound Recognition preference is on: %{public}d", v7, 8u);
    }

    [WeakRetained setSoundRecognitionPreference:v5];
    [WeakRetained reloadSpecifiers];
  }
}

void sub_1000171D8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v3)
  {
    v5 = [v3 BOOLValue];
    v6 = sub_10001C784();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 67240192;
      v7[1] = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[Settings] Sound Recognition Car Horn preference is on: %{public}d", v7, 8u);
    }

    [WeakRetained setCarHornPreference:v5];
  }
}

void sub_1000172BC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v3)
  {
    v5 = [v3 BOOLValue];
    v6 = sub_10001C784();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 67240192;
      v7[1] = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[Settings] Sound Recognition Siren preference is on: %{public}d", v7, 8u);
    }

    [WeakRetained setSirenPreference:v5];
  }
}

void sub_1000173A0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v3)
  {
    v5 = [v3 BOOLValue];
    v6 = sub_10001C784();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 67240192;
      v7[1] = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[Settings] Sound Recognition Baby Crying preference is on: %{public}d", v7, 8u);
    }

    [WeakRetained setBabyCryingPreference:v5];
  }
}

void sub_1000175BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000175E0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained panelController];
  [v1 pushPanel:WeakRetained];
}

void sub_10001800C(id a1)
{
  v1 = sub_10001C80C(@"ACCESSIBILITY_CAR_HORN");
  v2 = [CARSoundRecognitionSetting settingWithSoundType:v1];
  v3 = sub_10001C80C(@"ACCESSIBILITY_SIREN");
  v4 = [CARSoundRecognitionSetting settingWithSoundType:v3, v2];
  v9[1] = v4;
  v5 = sub_10001C80C(@"ACCESSIBILITY_BABY_CRYING");
  v6 = [CARSoundRecognitionSetting settingWithSoundType:v5];
  v9[2] = v6;
  v7 = [NSArray arrayWithObjects:v9 count:3];
  v8 = qword_100101E98;
  qword_100101E98 = v7;
}

void sub_100018920(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v28 + 32));
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100018988(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained currentStyles];
  v3 = [WeakRetained appearanceGroupSpecifier];
  v4 = [v2 objectAtIndexedSubscript:{objc_msgSend(v3, "selectedIndex")}];

  v5 = sub_10001C784();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138543362;
    v19 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[Settings] Setting new interface style preference: %{public}@", &v18, 0xCu);
  }

  if ([v4 style] == 2 || (objc_msgSend(WeakRetained, "wallpaperPreferences"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "currentWallpaper"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "traits"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "supportsDynamicAppearance"), v8, v7, v6, (v9 & 1) != 0) || (objc_msgSend(WeakRetained, "wallpaperPreferences"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "updateWallpaperToSupportDynamicAppearance"), v10, (v11 & 1) != 0))
  {
    v12 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 style]);
    v13 = +[CARPrototypePref latestInterfaceStyle];
    [v13 setValue:v12];

    v14 = [WeakRetained panelController];
    v15 = [v14 vehicle];

    [v15 setAppearanceModePreference:{objc_msgSend(v4, "style")}];
    v16 = [WeakRetained panelController];
    [v16 saveVehicle:v15];
  }

  else
  {
    v17 = sub_10001C784();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10009171C(v17);
    }

    [WeakRetained _updateSpecifiers];
  }
}

void sub_100018BC8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v3)
  {
    if ([v3 BOOLValue])
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    v6 = sub_10001C784();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134349056;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[Settings] Setting new interface style preference: %{public}ld", &v10, 0xCu);
    }

    v7 = [WeakRetained panelController];
    v8 = [v7 vehicle];

    [v8 setMapsAppearancePreference:v5];
    v9 = [WeakRetained panelController];
    [v9 saveVehicle:v8];
  }
}

void sub_100018E44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100018E68(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained panelController];
  [v1 pushPanel:WeakRetained];
}

void sub_100019340(id a1)
{
  v1 = sub_10001C80C(@"DISPLAY_MODE_AUTOMATIC");
  v2 = [CARDisplayStyle displayStyle:0 name:v1 enabled:1];
  v3 = sub_10001C80C(@"DISPLAY_MODE_ALWAYS_LIGHT");
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = +[CARDisplayStyle displayStyle:name:enabled:](CARDisplayStyle, "displayStyle:name:enabled:", 1, v3, [v4 BOOLForKey:@"allowLightModeOption"]);
  v10[1] = v5;
  v6 = sub_10001C80C(@"DISPLAY_MODE_ALWAYS_DARK");
  v7 = [CARDisplayStyle displayStyle:2 name:v6 enabled:1];
  v10[2] = v7;
  v8 = [NSArray arrayWithObjects:v10 count:3];
  v9 = qword_100101EA8;
  qword_100101EA8 = v8;
}

id sub_10001952C(uint64_t a1)
{
  v2 = [*(a1 + 32) panelController];
  v3 = [v2 vehicle];
  v4 = [*(a1 + 32) wallpaperPreferences];
  [v4 setVehicle:v3];

  [*(a1 + 32) reloadSpecifiers];
  v5 = *(a1 + 32);

  return [v5 _updateSpecifiers];
}

void sub_1000198B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000198E0(id a1, BOOL a2, NSError *a3)
{
  v4 = a3;
  if (v4 || !a2)
  {
    v5 = sub_10001C784();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100091774(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }
}

void sub_100019940(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000199F8;
  v5[3] = &unk_1000DB180;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);

  objc_destroyWeak(&v7);
}

void sub_1000199F8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _drivingToggleChanged:{objc_msgSend(*(a1 + 32), "BOOLValue")}];
}

void sub_100019C00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100019C24(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained panelController];
  [v1 pushPanel:WeakRetained];
}

id sub_100019E00(uint64_t a1)
{
  v2 = [*(a1 + 32) dndSpecifier];
  v3 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) _isDrivingToggleOn]);
  [v2 setCellValue:v3];

  v4 = *(a1 + 32);

  return [v4 reloadSpecifiers];
}

void sub_10001A19C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 80));
  _Unwind_Resume(a1);
}

void sub_10001A1E8(uint64_t a1)
{
  v1 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained dndStatus];
  [v2 setActivateWithCarPlay:v1];
}

void sub_10001A248(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (*(a1 + 40) != a2)
  {
    v7 = sub_10001C784();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10009184C(v5, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001A328;
  block[3] = &unk_1000DAD70;
  block[4] = WeakRetained;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_10001A800(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&a23);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001A894(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [CARAirPlayLoggingPanel alloc];
  v2 = [WeakRetained panelController];
  v3 = [(CARSettingsPanel *)v1 initWithPanelController:v2];

  [(CARAirPlayLoggingPanel *)v3 setSettingProvider:WeakRetained];
  v4 = [WeakRetained panelController];
  [v4 pushPanel:v3];
}

void sub_10001A938(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [CARAirPlayAnalyticsPanel alloc];
  v2 = [WeakRetained panelController];
  v3 = [(CARSettingsPanel *)v1 initWithPanelController:v2];

  v4 = [WeakRetained panelController];
  [v4 pushPanel:v3];
}

void sub_10001A9D0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [CARAirPlayAcknowledgementsPanel alloc];
  v2 = [WeakRetained panelController];
  v3 = [(CARSettingsPanel *)v1 initWithPanelController:v2];

  v4 = [WeakRetained panelController];
  [v4 pushPanel:v3];
}

void sub_10001ABB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001ABD4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained panelController];
  [v1 pushPanel:WeakRetained];
}

void sub_10001B318(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001B33C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained panelController];
  [v1 pushPanel:WeakRetained];
}

void sub_10001B508(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001B524(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 BOOLValue];

  if (v4)
  {
    v5 = [WeakRetained siriPreferences];
    v6 = [v5 mainAutoSendEnabled];

    if ((v6 & 1) == 0)
    {
      v7 = [WeakRetained siriPreferences];
      v8 = [v7 autoSendInHeadphonesEnabled];

      v9 = +[AFPreferences sharedPreferences];
      [v9 setMessageWithoutConfirmationEnabled:1];

      v10 = +[AFPreferences sharedPreferences];
      [v10 setMessageWithoutConfirmationHeadphonesEnabled:v8];
    }
  }

  v11 = +[AFPreferences sharedPreferences];
  [v11 setMessageWithoutConfirmationInCarPlayEnabled:v4];
}

void sub_10001B770(id a1, id a2)
{
  v2 = [a2 BOOLValue];
  v3 = +[AFPreferences sharedPreferences];
  [v3 setShowAppsBehindSiriInCarPlayEnabled:v2];
}

uint64_t sub_10001BBDC(uint64_t a1)
{
  qword_100101EB0 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

id sub_10001C784()
{
  if (qword_100101EC8 != -1)
  {
    sub_10009195C();
  }

  v1 = qword_100101EC0;

  return v1;
}

void sub_10001C7C8(id a1)
{
  qword_100101EC0 = os_log_create("com.apple.carplay.settings", "General");

  _objc_release_x1();
}

id sub_10001C80C(void *a1)
{
  v1 = a1;
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:v1 value:&stru_1000DE3D8 table:@"Localizable"];

  return v3;
}

id sub_10001C8A0(void *a1)
{
  v1 = a1;
  v6.width = 40.0;
  v6.height = 40.0;
  UIGraphicsBeginImageContextWithOptions(v6, 1, 2.0);
  [v1 setFill];

  v2 = [UIBezierPath bezierPathWithRect:0.0, 0.0, 40.0, 40.0];
  [v2 fill];

  v3 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v3;
}

void sub_10001DBE0(id a1)
{
  v1 = sub_10001C80C(@"CARPLAY_START_ANNOUNCE_NEW_MESSAGES");
  v2 = sub_10001C80C(@"CARPLAY_START_ANNOUNCE_SELECTED_SETTING_FOOTER");
  v3 = [CARMuteOptionsMode modeWithFullTitle:v1 footer:v2 muteType:1 announceType:2 accessibilityIdentifier:@"CPSettingsAnnounceMessagesAnnounceOptionsAnnounce"];
  v4 = sub_10001C80C(@"CARPLAY_START_SILENCE_NEW_MESSAGES");
  v5 = sub_10001C80C(@"CARPLAY_START_SILENCE_SELECTED_SETTING_FOOTER");
  v6 = [CARMuteOptionsMode modeWithFullTitle:v4 footer:v5 muteType:2 announceType:3 accessibilityIdentifier:@"CPSettingsAnnounceMessagesAnnounceOptionsSilence", v3];
  v12[1] = v6;
  v7 = sub_10001C80C(@"CARPLAY_START_REMEMBER_PREVIOUS_SETTING");
  v8 = sub_10001C80C(@"CARPLAY_START_REMEMBER_PREVIOUS_SETTING_FOOTER");
  v9 = [CARMuteOptionsMode modeWithFullTitle:v7 footer:v8 muteType:3 announceType:4 accessibilityIdentifier:@"CPSettingsAnnounceMessagesAnnounceOptionsRememberPrevious"];
  v12[2] = v9;
  v10 = [NSArray arrayWithObjects:v12 count:3];
  v11 = qword_100101ED8;
  qword_100101ED8 = v10;
}

void sub_10001E040(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001E070(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained modes];
  v2 = [WeakRetained groupSpecifier];
  v3 = [v1 objectAtIndexedSubscript:{objc_msgSend(v2, "selectedIndex")}];

  [WeakRetained _updateSettingsForMode:v3];
  [WeakRetained reloadSpecifiers];
}

void sub_10001E238(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001E25C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained panelController];
  [v1 pushPanel:WeakRetained];
}

id sub_10001E4D4(uint64_t a1)
{
  [*(a1 + 32) _updateCurrentMode];
  v2 = *(a1 + 32);

  return [v2 reloadSpecifiers];
}

void sub_10001EF00(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _toggleLoggingEnabled];
}

void sub_10001F93C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33)
{
  objc_destroyWeak((v33 + 32));
  objc_destroyWeak((v34 + 32));
  objc_destroyWeak((v35 + 32));
  objc_destroyWeak(&a33);
  objc_destroyWeak((v36 - 136));
  objc_destroyWeak((v36 - 128));
  _Unwind_Resume(a1);
}

void sub_10001F9C4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [CARColorFiltersPanel alloc];
  v2 = [WeakRetained panelController];
  v3 = [(CARColorFiltersPanel *)v1 initWithPanelController:v2];

  v4 = [WeakRetained panelController];
  [v4 pushPanel:v3];
}

void sub_10001FA5C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 BOOLValue];

  [WeakRetained boldTextToggleChanged:v4];
}

void sub_10001FAC8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 BOOLValue];

  [WeakRetained voiceControlToggleChanged:v4];
}

void sub_10001FB34(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [CARSoundRecognitionPanel alloc];
  v2 = [WeakRetained panelController];
  v3 = [(CARSoundRecognitionPanel *)v1 initWithPanelController:v2];

  v4 = [WeakRetained panelController];
  [v4 pushPanel:v3];
}

void sub_10001FBCC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained panelController];
  v2 = [WeakRetained textSizePanel];
  [v1 pushPanel:v2];
}

void sub_10001FC40(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [CARSubtitlesPanel alloc];
  v2 = [WeakRetained panelController];
  v3 = [(CARSettingsPanel *)v1 initWithPanelController:v2];

  v4 = [WeakRetained panelController];
  [v4 pushPanel:v3];
}

void sub_10001FE20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001FE44(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained panelController];
  [v1 pushPanel:WeakRetained];
}

id sub_100020660(uint64_t a1)
{
  [*(a1 + 32) reloadSpecifiers];
  v2 = *(a1 + 32);

  return [v2 _updateSpecifiers];
}

void sub_10002098C(uint64_t a1)
{
  v2 = [*(a1 + 32) _isDevicePickerLimitedUIOn];
  v3 = *(a1 + 32);
  if (v2)
  {
    [v3 setEnabled:0];
    v4 = *(a1 + 32);
    v5 = [v4 _limitedUIAttributedString];
    [v4 setAttributedTitle:v5];

    v6 = *(a1 + 32);

    [v6 setTitle:0];
  }

  else
  {
    [v3 setEnabled:1];
    [*(a1 + 32) setAttributedTitle:0];
    v7 = *(a1 + 32);
    v8 = sub_10001C80C(@"DEVICE_PICKER_CELL_TITLE");
    [v7 setTitle:v8];
  }
}

void sub_1000210C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000210E4(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = [[NSString alloc] initWithData:v3 encoding:4];

    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000211C8;
    v6[3] = &unk_1000DB180;
    objc_copyWeak(&v8, (a1 + 32));
    v7 = v4;
    v5 = v4;
    dispatch_async(&_dispatch_main_q, v6);

    objc_destroyWeak(&v8);
  }
}

void sub_1000211C8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained acknowledgementsTextView];
  [v2 setText:*(a1 + 32)];
}

void sub_100021480(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained groupSpecifiers];
  v3 = [v2 objectAtIndexedSubscript:*(a1 + 48)];
  v4 = [v3 isEnabled];

  if (v4)
  {
    [WeakRetained setSelectedIndex:*(a1 + 48)];
    v5 = *(a1 + 32);
    if (v5)
    {
      (*(v5 + 16))();
    }
  }
}

void sub_1000217E4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 value];
    (*(v2 + 16))(v2, [v3 unsignedIntValue]);
  }
}

uint64_t sub_100021B20(uint64_t result, void *a2)
{
  v2 = *(result + 32);
  if (v2)
  {
    v3 = [a2 BOOLValue];
    v4 = *(v2 + 16);

    return v4(v2, v3);
  }

  return result;
}

void sub_100021D8C(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  objc_opt_class();
  v5 = [*(a1 + 32) optionsPicker];
  v6 = [v5 options];
  v7 = [v6 objectAtIndex:a3];
  if (v7 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v9 = [v8 font];
    [v10 setOverrideTitleFont:v9];
  }
}

void sub_100023848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, id a44)
{
  objc_destroyWeak((v44 + 32));
  objc_destroyWeak((v45 + 32));
  objc_destroyWeak(&a44);
  objc_destroyWeak(&STACK[0x370]);
  objc_destroyWeak(&STACK[0x378]);
  _Unwind_Resume(a1);
}

void sub_100023A24(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100023ACC;
  v6[3] = &unk_1000DB590;
  v7 = v3;
  v5 = v3;
  [WeakRetained _performUpdatesOnSubtitleSettings:v6];
}

void sub_100023ACC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setClosedCaptionsEnabled:{objc_msgSend(v2, "BOOLValue")}];
}

void sub_100023B24(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100023BAC;
  v4[3] = &unk_1000DB5B0;
  v5 = a2;
  [WeakRetained _performUpdatesOnSubtitleSettings:v4];
}

void sub_100023BB8(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100023C40;
  v4[3] = &unk_1000DB5F8;
  v5 = a2;
  [WeakRetained _performUpdatesOnSubtitleSettings:v4];
}

void sub_100023C4C(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100023CD4;
  v4[3] = &unk_1000DB5B0;
  v5 = a2;
  [WeakRetained _performUpdatesOnSubtitleSettings:v4];
}

void sub_100023CE0(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100023D68;
  v4[3] = &unk_1000DB5F8;
  v5 = a2;
  [WeakRetained _performUpdatesOnSubtitleSettings:v4];
}

void sub_100023D74(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100023DFC;
  v4[3] = &unk_1000DB5B0;
  v5 = a2;
  [WeakRetained _performUpdatesOnSubtitleSettings:v4];
}

void sub_100023E08(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100023E90;
  v4[3] = &unk_1000DB5F8;
  v5 = a2;
  [WeakRetained _performUpdatesOnSubtitleSettings:v4];
}

void sub_100023E9C(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100023F24;
  v4[3] = &unk_1000DB5B0;
  v5 = a2;
  [WeakRetained _performUpdatesOnSubtitleSettings:v4];
}

void sub_100023F30(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100023FB8;
  v4[3] = &unk_1000DB5F8;
  v5 = a2;
  [WeakRetained _performUpdatesOnSubtitleSettings:v4];
}

void sub_100023FC4(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002404C;
  v4[3] = &unk_1000DB5B0;
  v5 = a2;
  [WeakRetained _performUpdatesOnSubtitleSettings:v4];
}

void sub_100024058(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000240E0;
  v4[3] = &unk_1000DB5F8;
  v5 = a2;
  [WeakRetained _performUpdatesOnSubtitleSettings:v4];
}

void sub_1000240EC(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100024174;
  v4[3] = &unk_1000DB5B0;
  v5 = a2;
  [WeakRetained _performUpdatesOnSubtitleSettings:v4];
}

void sub_100024180(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100024208;
  v4[3] = &unk_1000DB5F8;
  v5 = a2;
  [WeakRetained _performUpdatesOnSubtitleSettings:v4];
}

void sub_100024214(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002429C;
  v4[3] = &unk_1000DB5B0;
  v5 = a2;
  [WeakRetained _performUpdatesOnSubtitleSettings:v4];
}

void sub_1000242A8(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100024330;
  v4[3] = &unk_1000DB5F8;
  v5 = a2;
  [WeakRetained _performUpdatesOnSubtitleSettings:v4];
}

void sub_10002433C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 value];

  LODWORD(v3) = [v5 unsignedIntValue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000243FC;
  v6[3] = &unk_1000DB5B0;
  v7 = v3;
  [WeakRetained _performUpdatesOnSubtitleSettings:v6];
}

void sub_100024408(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 value];

  LODWORD(v3) = [v5 unsignedIntValue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000244C8;
  v6[3] = &unk_1000DB5B0;
  v7 = v3;
  [WeakRetained _performUpdatesOnSubtitleSettings:v6];
}

void sub_1000244D4(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002455C;
  v4[3] = &unk_1000DB5F8;
  v5 = a2;
  [WeakRetained _performUpdatesOnSubtitleSettings:v4];
}

void sub_10002547C(uint64_t a1)
{
  v4 = [*(a1 + 32) collectionView];
  v2 = [v4 delegate];
  v3 = [*(a1 + 32) collectionView];
  [v2 collectionView:v3 didUpdateContentSize:{*(a1 + 40), *(a1 + 48)}];
}

id sub_100025F04(uint64_t a1)
{
  v2 = [*(a1 + 32) collectionViewLayout];
  [*(a1 + 32) effectiveSectionInset];
  [v2 setSectionInset:?];

  v3 = *(a1 + 32);

  return [v3 _reloadData];
}

id sub_100026518(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100026598;
  v2[3] = &unk_1000DAD70;
  v2[4] = *(a1 + 32);
  return [UIView animateWithDuration:v2 animations:0.0];
}

void sub_100026598(uint64_t a1)
{
  v2 = [*(a1 + 32) collectionView];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002666C;
  v4[3] = &unk_1000DAD70;
  v5 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100026728;
  v3[3] = &unk_1000DB700;
  v3[4] = v5;
  [v2 performBatchUpdates:v4 completion:v3];
}

void sub_10002666C(uint64_t a1)
{
  v2 = [*(a1 + 32) collectionSource];
  v3 = [*(a1 + 32) collectionView];
  v4 = [v2 numberOfSectionsInCollectionView:v3];

  if (v4 >= 1)
  {
    for (i = 0; i != v4; ++i)
    {
      v6 = [*(a1 + 32) collectionView];
      v7 = [NSIndexSet indexSetWithIndex:i];
      [v6 reloadSections:v7];
    }
  }
}

void sub_100026728(uint64_t a1)
{
  v2 = [*(a1 + 32) collectionView];
  v3 = [v2 collectionViewLayout];
  [v3 invalidateLayout];

  v4 = [*(a1 + 32) collectionView];
  [v4 setNeedsLayout];

  v5 = [*(a1 + 32) collectionView];
  [v5 layoutIfNeeded];
}

void sub_100027318(id a1)
{
  v1 = objc_alloc_init(NSNumberFormatter);
  v2 = qword_100101EE0;
  qword_100101EE0 = v1;

  v3 = qword_100101EE0;

  [v3 setNumberStyle:6];
}

void sub_1000282FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100028320(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained panelController];
  [v1 pushPanel:WeakRetained];
}

void sub_100029184(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&a23);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100029220(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v3)
  {
    v5 = [v3 BOOLValue];
    v6 = sub_10001C784();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 67240192;
      v7[1] = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[Settings] New color filter preference is on: %{public}d", v7, 8u);
    }

    [WeakRetained setColorFiltersPreference:v5];
    [WeakRetained reloadSpecifiers];
  }
}

void sub_10002930C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained colorFilterPickerGroupSpecifier];
  v3 = [v2 selectedTitle];
  v4 = [WeakRetained cellSpecifier];
  [v4 setDetail:v3];

  v5 = sub_10001C784();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [WeakRetained colorFilterPickerGroupSpecifier];
    v7 = 134217984;
    v8 = [v6 selectedIndex];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[Settings] New color filter preference type selected: %lu", &v7, 0xCu);
  }

  [WeakRetained setColorFiltersPreference];
}

void sub_100029420(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained colorFilterIntensityPickerGroupSpecifier];
  v3 = [v2 selectedTitle];
  v4 = [WeakRetained cellSpecifier];
  [v4 setDetail:v3];

  v5 = sub_10001C784();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [WeakRetained colorFilterIntensityPickerGroupSpecifier];
    v7 = 134217984;
    v8 = [v6 selectedIndex];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[Settings] New color filter intensity preference type selected: %lu", &v7, 0xCu);
  }

  [WeakRetained setColorFiltersIntensityPreference];
}

void sub_10002966C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100029690(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained panelController];
  [v1 pushPanel:WeakRetained];
}

void sub_10002A074(id a1)
{
  v1 = sub_10001C80C(@"ACCESSIBILITY_COLOR_FILTERS_GRAYSCALE");
  v2 = [CARColorFilterSetting filterPreference:2 name:v1];
  v11[0] = v2;
  v3 = sub_10001C80C(@"ACCESSIBILITY_COLOR_FILTERS_RED_GREEN");
  v4 = [CARColorFilterSetting filterPreference:3 name:v3];
  v11[1] = v4;
  v5 = sub_10001C80C(@"ACCESSIBILITY_COLOR_FILTERS_GREEN_RED");
  v6 = [CARColorFilterSetting filterPreference:4 name:v5];
  v11[2] = v6;
  v7 = sub_10001C80C(@"ACCESSIBILITY_COLOR_FILTERS_BLUE_YELLOW");
  v8 = [CARColorFilterSetting filterPreference:5 name:v7];
  v11[3] = v8;
  v9 = [NSArray arrayWithObjects:v11 count:4];
  v10 = qword_100101EF8;
  qword_100101EF8 = v9;
}

void sub_10002A23C(id a1)
{
  v1 = [CARColorFilterSetting filterPreference:2 name:&stru_1000DE3D8];
  v10[0] = v1;
  v2 = sub_10001C80C(@"ACCESSIBILITY_COLOR_FILTERS_PROTANOPIA");
  v3 = [CARColorFilterSetting filterPreference:3 name:v2];
  v10[1] = v3;
  v4 = sub_10001C80C(@"ACCESSIBILITY_COLOR_FILTERS_DEUTERANOPIA");
  v5 = [CARColorFilterSetting filterPreference:4 name:v4];
  v10[2] = v5;
  v6 = sub_10001C80C(@"ACCESSIBILITY_COLOR_FILTERS_TRITANOPIA");
  v7 = [CARColorFilterSetting filterPreference:5 name:v6];
  v10[3] = v7;
  v8 = [NSArray arrayWithObjects:v10 count:4];
  v9 = qword_100101F08;
  qword_100101F08 = v8;
}

void sub_10002A994(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10002A9B4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _performAction:v3];
}

void sub_10002AA10(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v2 smartWidgetHidden] ^ 1);
    [v2 setCellValue:v3];
  }
}

void sub_10002B0A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

void sub_10002B0DC(void *a1, void *a2, uint64_t a3)
{
  obj = a2;
  v5 = a1[4];
  v6 = [obj title];
  [v5 addObject:v6];

  v7 = [obj value];
  LODWORD(v6) = [v7 isEqual:a1[5]];

  if (v6)
  {
    objc_storeWeak((a1[6] + 24), obj);
    *(*(a1[7] + 8) + 24) = a3;
  }
}

void sub_10002B18C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleUpdatedSelection];
}

void sub_10002B5B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10002B5CC(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v7);
  }

  v5 = [WeakRetained cellSpecifier];
  v6 = [v7 title];
  [v5 setDetail:v6];
}

void sub_10002B8A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10002B8C8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained panelController];
  [v1 pushPanel:WeakRetained];
}

void sub_10002BB34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10002BB50(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _performAction:v3];
}

void sub_10002BEAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10002BECC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _performAction:v3];
}

void sub_10002C37C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10002C3A0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained panelController];
  [v1 pushPanel:WeakRetained];
}

void *sub_10002E3F8()
{
  v1 = [v0 leafIcons];
  sub_1000317B8(0, &qword_1000FEF90);
  sub_10002E8C0();
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10002E928(&_swiftEmptyDictionarySingleton);
  v4 = v3;
  v52 = v0;
  if ((v2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v2 = v57;
    v5 = v58;
    v6 = v59;
    v7 = v60;
    v8 = v61;
  }

  else
  {
    v9 = -1 << *(v2 + 32);
    v5 = v2 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v2 + 56);

    v7 = 0;
  }

  v51 = v6;
  v12 = (v6 + 64) >> 6;
  v53 = v2;
  v54 = v5;
  while (v2 < 0)
  {
    if (!__CocoaSet.Iterator.next()())
    {
      goto LABEL_33;
    }

    swift_dynamicCast();
    v19 = v56;
    v17 = v7;
    v18 = v8;
    if (!v56)
    {
      goto LABEL_33;
    }

LABEL_19:
    v20 = [v19 applicationBundleID];
    v55 = v18;
    if (v20)
    {
      v21 = v20;
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;
    }

    else
    {
      v22 = 0;
      v24 = 0;
    }

    v25 = v19;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v56 = v4;
    v28 = sub_100030558(v22, v24);
    v29 = v4[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_47;
    }

    v32 = v27;
    if (v4[3] >= v31)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v27)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_100030AAC();
        if (v32)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
      sub_1000307E8(v31, isUniquelyReferenced_nonNull_native);
      v33 = sub_100030558(v22, v24);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_49;
      }

      v28 = v33;
      if (v32)
      {
LABEL_8:

        v13 = v4[7];
        v14 = *(v13 + 8 * v28);
        *(v13 + 8 * v28) = v25;

        goto LABEL_9;
      }
    }

    v4[(v28 >> 6) + 8] |= 1 << v28;
    v35 = (v4[6] + 16 * v28);
    *v35 = v22;
    v35[1] = v24;
    *(v4[7] + 8 * v28) = v25;

    v36 = v4[2];
    v37 = __OFADD__(v36, 1);
    v38 = v36 + 1;
    if (v37)
    {
      goto LABEL_48;
    }

    v4[2] = v38;
LABEL_9:
    v7 = v17;
    v5 = v54;
    v8 = v55;
    v2 = v53;
  }

  v15 = v7;
  v16 = v8;
  v17 = v7;
  if (!v8)
  {
    while (1)
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v17 >= v12)
      {
        goto LABEL_33;
      }

      v16 = *(v5 + 8 * v17);
      ++v15;
      if (v16)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_46;
  }

LABEL_15:
  v18 = (v16 - 1) & v16;
  v19 = *(*(v2 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));
  if (v19)
  {
    goto LABEL_19;
  }

LABEL_33:
  sub_10002ED00();

  v39 = OBJC_IVAR____TtC15CarPlaySettings9IconModel_visibleIdentifiers;
  swift_beginAccess();
  v40 = *&v52[v39];
  v41 = *(v40 + 16);

  if (!v41)
  {
LABEL_44:

    return _swiftEmptyArrayStorage;
  }

  v42 = 0;
LABEL_35:
  v43 = (v40 + 40 + 16 * v42);
  v44 = v42;
  while (v44 < *(v40 + 16))
  {
    if (v4[2])
    {
      v45 = *(v43 - 1);
      v46 = *v43;

      v47 = sub_100030558(v45, v46);
      if (v48)
      {
        v49 = *(v4[7] + 8 * v47);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        v42 = v44 + 1;
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        if (v41 - 1 != v44)
        {
          goto LABEL_35;
        }

        goto LABEL_44;
      }
    }

    ++v44;
    v43 += 2;
    if (v41 == v44)
    {
      goto LABEL_44;
    }
  }

LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  sub_100030C14(&unk_100101970);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_10002E8C0()
{
  result = qword_1000FEF98;
  if (!qword_1000FEF98)
  {
    sub_1000317B8(255, &qword_1000FEF90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FEF98);
  }

  return result;
}

void sub_10002E928(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    sub_100030C14(&qword_1000FF238);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = sub_100030C14(&unk_100101970);
  v4 = v1 + 64;
  v5 = 1 << *(v1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(v1 + 64);
  v40 = v1;
  v8 = v5 + 63;
  if (v3 == &type metadata for String)
  {
    v25 = v8 >> 6;

    v26 = 0;
    while (v7)
    {
      v31 = v26;
LABEL_36:
      v32 = *(*(v1 + 56) + 8 * (__clz(__rbit64(v7)) | (v31 << 6)));
      v7 &= v7 - 1;

      v33 = v32;
      swift_dynamicCast();
      v34 = sub_100030558(v41, v42);
      if (v35)
      {
        v27 = (v2[6] + 16 * v34);
        *v27 = v41;
        v27[1] = v42;
        v28 = v34;

        v29 = v2[7];
        v30 = *(v29 + 8 * v28);
        *(v29 + 8 * v28) = v33;
      }

      else
      {
        if (v2[2] >= v2[3])
        {
          goto LABEL_44;
        }

        *(v2 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v34;
        v36 = (v2[6] + 16 * v34);
        *v36 = v41;
        v36[1] = v42;
        *(v2[7] + 8 * v34) = v33;
        v37 = v2[2];
        v38 = __OFADD__(v37, 1);
        v39 = v37 + 1;
        if (v38)
        {
          goto LABEL_45;
        }

        v2[2] = v39;
      }

      v26 = v31;
      v1 = v40;
    }

    while (1)
    {
      v31 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v31 >= v25)
      {
LABEL_40:

        return;
      }

      v7 = *(v4 + 8 * v31);
      ++v26;
      if (v7)
      {
        goto LABEL_36;
      }
    }
  }

  else
  {
    v9 = v8 >> 6;
    v10 = (v2 + 8);

    v11 = 0;
    while (v7)
    {
LABEL_16:
      v15 = *(*(v1 + 56) + 8 * (__clz(__rbit64(v7)) | (v11 << 6)));

      v16 = v15;
      swift_dynamicCast();
      Hasher.init(_seed:)();
      if (v42)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v17 = Hasher._finalize()();
      v18 = -1 << *(v2 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*&v10[8 * (v19 >> 6)]) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *&v10[8 * v20];
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_42;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*&v10[8 * (v19 >> 6)])) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      v7 &= v7 - 1;
      *&v10[(v12 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v12;
      v13 = (v2[6] + 16 * v12);
      *v13 = v41;
      v13[1] = v42;
      *(v2[7] + 8 * v12) = v16;
      ++v2[2];
      v1 = v40;
    }

    while (1)
    {
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v14 >= v9)
      {
        goto LABEL_40;
      }

      v7 = *(v4 + 8 * v14);
      ++v11;
      if (v7)
      {
        v11 = v14;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
}

uint64_t sub_10002ED50(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15CarPlaySettings9IconModel_visibleIdentifiers;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id sub_10002EE0C(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC15CarPlaySettings9IconModel_visibleIdentifiers] = a1;
  *&v5[OBJC_IVAR____TtC15CarPlaySettings9IconModel_iconImageCache] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, "initWithStore:iconRepository:", 0, 0);
}

id sub_10002EE7C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC15CarPlaySettings9IconModel_visibleIdentifiers] = a1;
  *&v2[OBJC_IVAR____TtC15CarPlaySettings9IconModel_iconImageCache] = a2;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "initWithStore:iconRepository:", 0, 0);
}

uint64_t sub_10002EEEC()
{
  v40.receiver = v0;
  v40.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v40, "loadAllIcons");
  v1 = OBJC_IVAR____TtC15CarPlaySettings9IconModel_visibleIdentifiers;
  swift_beginAccess();
  result = *&v0[v1];
  v3 = *(result + 16);
  if (v3)
  {
    v35 = OBJC_IVAR____TtC15CarPlaySettings9IconModel_iconImageCache;

    for (i = (v34 + 40); ; i += 2)
    {
      v6 = *(i - 1);
      v5 = *i;

      v7._countAndFlagsBits = 0x2E6B6E696C707061;
      v7._object = 0xE800000000000000;
      if (!String.hasPrefix(_:)(v7))
      {
        break;
      }

LABEL_4:
      if (!--v3)
      {
      }
    }

    if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v5 == v8)
    {
    }

    else
    {
      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v10 & 1) == 0)
      {
        v11 = *&v0[v35];
        v12 = type metadata accessor for LeafIcon();
        v13 = objc_allocWithZone(v12);

        v14 = String._bridgeToObjectiveC()();
        v15 = String._bridgeToObjectiveC()();
        v39.receiver = v13;
        v39.super_class = v12;
        v16 = objc_msgSendSuper2(&v39, "initWithLeafIdentifier:applicationBundleID:", v14, v15);

        v17 = type metadata accessor for LeafIconDataSource();
        v18 = objc_allocWithZone(v17);
        v19 = &v18[OBJC_IVAR____TtC15CarPlaySettings18LeafIconDataSource_identifier];
        *v19 = v6;
        *(v19 + 1) = v5;
        *&v18[OBJC_IVAR____TtC15CarPlaySettings18LeafIconDataSource_iconImageCache] = v11;
        v38.receiver = v18;
        v38.super_class = v17;
        v20 = v16;
        v21 = objc_msgSendSuper2(&v38, "init");
        [v20 addIconDataSource:v21];

LABEL_14:
        [v0 addIcon:{v20, v34}];

        goto LABEL_4;
      }
    }

    v22 = *&v0[v35];
    v23 = objc_allocWithZone(type metadata accessor for CalendarLeafIcon());
    v24 = objc_allocWithZone(SBCalendarIconImageProvider);

    v25 = [v24 init];
    *&v23[OBJC_IVAR____TtC15CarPlaySettings16CalendarLeafIcon_imageProvider] = v25;
    v26 = String._bridgeToObjectiveC()();
    v27 = String._bridgeToObjectiveC()();
    v28 = type metadata accessor for LeafIcon();
    v37.receiver = v23;
    v37.super_class = v28;
    v29 = objc_msgSendSuper2(&v37, "initWithLeafIdentifier:applicationBundleID:", v26, v27);

    v30 = type metadata accessor for LeafIconDataSource();
    v31 = objc_allocWithZone(v30);
    v32 = &v31[OBJC_IVAR____TtC15CarPlaySettings18LeafIconDataSource_identifier];
    *v32 = v6;
    *(v32 + 1) = v5;
    *&v31[OBJC_IVAR____TtC15CarPlaySettings18LeafIconDataSource_iconImageCache] = v22;
    v36.receiver = v31;
    v36.super_class = v30;
    v20 = v29;
    v33 = objc_msgSendSuper2(&v36, "init");
    [v20 addIconDataSource:v33];

    [*&v20[OBJC_IVAR____TtC15CarPlaySettings16CalendarLeafIcon_imageProvider] setDelegate:v20];
    goto LABEL_14;
  }

  return result;
}

char *sub_10002F2A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = objc_allocWithZone(v4);
  v9 = [objc_allocWithZone(SBCalendarIconImageProvider) init];
  *&v8[OBJC_IVAR____TtC15CarPlaySettings16CalendarLeafIcon_imageProvider] = v9;
  v10 = String._bridgeToObjectiveC()();
  v11 = String._bridgeToObjectiveC()();
  v20.receiver = v8;
  v20.super_class = type metadata accessor for LeafIcon();
  v12 = objc_msgSendSuper2(&v20, "initWithLeafIdentifier:applicationBundleID:", v10, v11);

  v13 = type metadata accessor for LeafIconDataSource();
  v14 = objc_allocWithZone(v13);
  v15 = &v14[OBJC_IVAR____TtC15CarPlaySettings18LeafIconDataSource_identifier];
  *v15 = a1;
  *(v15 + 1) = a2;
  *&v14[OBJC_IVAR____TtC15CarPlaySettings18LeafIconDataSource_iconImageCache] = a3;
  v19.receiver = v14;
  v19.super_class = v13;
  v16 = v12;
  v17 = objc_msgSendSuper2(&v19, "init");
  [v16 addIconDataSource:{v17, v19.receiver, v19.super_class}];

  [*&v16[OBJC_IVAR____TtC15CarPlaySettings16CalendarLeafIcon_imageProvider] setDelegate:v16];
  return v16;
}

id sub_10002F3EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = String._bridgeToObjectiveC()();
  v9 = String._bridgeToObjectiveC()();
  v18.receiver = v7;
  v18.super_class = v3;
  v10 = objc_msgSendSuper2(&v18, "initWithLeafIdentifier:applicationBundleID:", v8, v9);

  v11 = type metadata accessor for LeafIconDataSource();
  v12 = objc_allocWithZone(v11);
  v13 = &v12[OBJC_IVAR____TtC15CarPlaySettings18LeafIconDataSource_identifier];
  *v13 = a1;
  *(v13 + 1) = a2;
  *&v12[OBJC_IVAR____TtC15CarPlaySettings18LeafIconDataSource_iconImageCache] = a3;
  v17.receiver = v12;
  v17.super_class = v11;
  v14 = v10;
  v15 = objc_msgSendSuper2(&v17, "init");
  [v14 addIconDataSource:{v15, v17.receiver, v17.super_class}];

  return v14;
}

id sub_10002F4F4(uint64_t a1, void *a2)
{
  v4 = [objc_allocWithZone(v2) initWithStore:a1 iconRepository:a2];
  swift_unknownObjectRelease();

  return v4;
}

id sub_10002F5FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = String._bridgeToObjectiveC()();
  v8 = String._bridgeToObjectiveC()();
  v17.receiver = v3;
  v17.super_class = type metadata accessor for LeafIcon();
  v9 = objc_msgSendSuper2(&v17, "initWithLeafIdentifier:applicationBundleID:", v7, v8);

  v10 = type metadata accessor for LeafIconDataSource();
  v11 = objc_allocWithZone(v10);
  v12 = &v11[OBJC_IVAR____TtC15CarPlaySettings18LeafIconDataSource_identifier];
  *v12 = a1;
  *(v12 + 1) = a2;
  *&v11[OBJC_IVAR____TtC15CarPlaySettings18LeafIconDataSource_iconImageCache] = a3;
  v16.receiver = v11;
  v16.super_class = v10;
  v13 = v9;
  v14 = objc_msgSendSuper2(&v16, "init");
  [v13 addIconDataSource:{v14, v16.receiver, v16.super_class}];

  return v13;
}

id sub_10002F6EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR____TtC15CarPlaySettings18LeafIconDataSource_identifier];
  *v8 = a1;
  *(v8 + 1) = a2;
  *&v7[OBJC_IVAR____TtC15CarPlaySettings18LeafIconDataSource_iconImageCache] = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, "init");
}

id sub_10002F75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = String._bridgeToObjectiveC()();

  if (a4)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v8 = [objc_allocWithZone(v4) initWithLeafIdentifier:v6 applicationBundleID:v7];

  return v8;
}

id sub_10002F854()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LeafIcon();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_10002F888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = [objc_allocWithZone(SBCalendarIconImageProvider) init];
  *&v3[OBJC_IVAR____TtC15CarPlaySettings16CalendarLeafIcon_imageProvider] = v7;
  v8 = String._bridgeToObjectiveC()();
  v9 = String._bridgeToObjectiveC()();
  v18.receiver = v3;
  v18.super_class = type metadata accessor for LeafIcon();
  v10 = objc_msgSendSuper2(&v18, "initWithLeafIdentifier:applicationBundleID:", v8, v9);

  v11 = type metadata accessor for LeafIconDataSource();
  v12 = objc_allocWithZone(v11);
  v13 = &v12[OBJC_IVAR____TtC15CarPlaySettings18LeafIconDataSource_identifier];
  *v13 = a1;
  *(v13 + 1) = a2;
  *&v12[OBJC_IVAR____TtC15CarPlaySettings18LeafIconDataSource_iconImageCache] = a3;
  v17.receiver = v12;
  v17.super_class = v11;
  v14 = v10;
  v15 = objc_msgSendSuper2(&v17, "init");
  [v14 addIconDataSource:{v15, v17.receiver, v17.super_class}];

  [*&v14[OBJC_IVAR____TtC15CarPlaySettings16CalendarLeafIcon_imageProvider] setDelegate:v14];
  return v14;
}

id sub_10002F9C0()
{
  ObjectType = swift_getObjectType();
  [v0 reloadIconImage];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "localeChanged");
}

id sub_10002FAD8(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v5 = [*(v4 + OBJC_IVAR____TtC15CarPlaySettings16CalendarLeafIcon_imageProvider) *a4];

  return v5;
}

id sub_10002FBB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = &v3[OBJC_IVAR____TtC15CarPlaySettings18LeafIconDataSource_identifier];
  *v8 = a1;
  *(v8 + 1) = a2;
  *&v3[OBJC_IVAR____TtC15CarPlaySettings18LeafIconDataSource_iconImageCache] = a3;
  v10.receiver = v3;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, "init");
}

id sub_10002FC84(void *a1, double a2, double a3, double a4, uint64_t a5, void *a6)
{
  v10 = a6;
  v11 = a1;
  v12 = sub_100030CC8(a2, a3, a4);

  return v12;
}

id sub_10002FD64(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t (*a10)(void *, uint64_t, double, double, double, double))
{
  v18 = a7;
  v19 = a8;
  v20 = a1;
  v21 = a10(a8, a9, a2, a3, a4, a5);

  return v21;
}

id CARDevicePickerManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CARResolvedWallpaperView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10002FF44(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v20 = swift_allocObject();
  v21 = [objc_allocWithZone(SBIconListGridLayoutConfiguration) init];
  [v21 setNumberOfPortraitRows:a1];
  [v21 setNumberOfPortraitColumns:a2];
  [v21 setIconImageInfo:{a3, a4, a5, a6}];
  [v21 setPortraitLayoutInsets:{a7, a8, a9, a10}];
  [v21 setShowsLabels:0];
  v22 = [objc_allocWithZone(SBIconListFlowLayout) initWithLayoutConfiguration:v21];

  *(v20 + 16) = v22;
  return v20;
}

uint64_t sub_100030084(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v21 = [objc_allocWithZone(SBIconListGridLayoutConfiguration) init];
  [v21 setNumberOfPortraitRows:a1];
  [v21 setNumberOfPortraitColumns:a2];
  [v21 setIconImageInfo:{a3, a4, a5, a6}];
  [v21 setPortraitLayoutInsets:{a7, a8, a9, a10}];
  [v21 setShowsLabels:0];
  v22 = [objc_allocWithZone(SBIconListFlowLayout) initWithLayoutConfiguration:v21];

  *(v10 + 16) = v22;
  return v10;
}

uint64_t sub_1000301B0(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6, double a7, double a8, double a9)
{
  v18 = *(a1 + 16);
  v17 = *(a1 + 24);
  v19 = *(sub_100066270() + 1);
  v27.origin.x = a2;
  v27.origin.y = a3;
  v27.size.width = a4;
  v27.size.height = a5;
  v28 = CGRectInset(v27, 36.0, 0.0);
  v20 = (v28.size.height - v19 * v18) / (v18 + 1.0);
  v21 = (v28.size.width - v19 * v17) / (v17 + 1.0);
  v22 = swift_allocObject();
  v23 = [objc_allocWithZone(SBIconListGridLayoutConfiguration) init];
  [v23 setNumberOfPortraitRows:v18];
  [v23 setNumberOfPortraitColumns:v17];
  [v23 setIconImageInfo:{a6, a7, a8, a9}];
  [v23 setPortraitLayoutInsets:{v20, v21, v20, v21}];
  [v23 setShowsLabels:0];
  v24 = [objc_allocWithZone(SBIconListFlowLayout) initWithLayoutConfiguration:v23];
  sub_100031764(a1);

  *(v22 + 16) = v24;
  return v22;
}

void *sub_1000303D0()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t sub_100030420()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

BOOL sub_100030464(uint64_t a1, uint64_t a2)
{
  if (a2 == 2)
  {
    return a1 != 1;
  }

  else
  {
    return a2 == 1;
  }
}

uint64_t sub_100030484(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return qword_1000A1D58[a1];
  }
}

id sub_1000304A4(void *a1, uint64_t a2)
{
  sub_1000317B8(0, &qword_1000FEFD0);
  v4 = a1;
  v5 = SBHIconImageStyleConfiguration.init(homeScreenStyleData:)(v4);
  v6 = sub_100031800(v5, a2);

  return v6;
}

id sub_100030528(void *a1, uint64_t a2)
{
  v3 = sub_100031800(a1, a2);

  return v3;
}

unint64_t sub_100030558(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  if (a2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v4 = Hasher._finalize()();

  return sub_100030664(a1, a2, v4);
}

unint64_t sub_1000305EC(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100030730(a1, a2, v4);
}

unint64_t sub_100030664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12)
      {
        if (a2)
        {
          v13 = *v11 == a1 && v12 == a2;
          if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            return v6;
          }
        }
      }

      else if (!a2)
      {
        return v6;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_100030730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1000307E8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100030C14(&qword_1000FF238);
  v31 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 56) + 8 * v19);
      v32 = *(*(v5 + 48) + 16 * v19);
      v21 = *(*(v5 + 48) + 16 * v19 + 8);
      if ((v31 & 1) == 0)
      {

        v22 = v20;
      }

      Hasher.init(_seed:)();
      if (v21)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v32;
      *(*(v7 + 56) + 8 * v15) = v20;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_36;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v7;
  return result;
}

id sub_100030AAC()
{
  v1 = v0;
  sub_100030C14(&qword_1000FF238);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 16 * v17) = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;

        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_100030C14(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

id sub_100030CC8(double a1, double a2, double a3)
{
  v8 = *(v3 + OBJC_IVAR____TtC15CarPlaySettings18LeafIconDataSource_identifier);
  v7 = *(v3 + OBJC_IVAR____TtC15CarPlaySettings18LeafIconDataSource_identifier + 8);
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v8 && v9 == v7)
  {
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v11 & 1) == 0)
    {
      if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v8 && v12 == v7)
      {
      }

      else
      {
        v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v14 & 1) == 0)
        {
          v15 = String._bridgeToObjectiveC()();
          v16 = SBHGetApplicationIconImage();
LABEL_23:

          return v16;
        }
      }

      v37 = CRSNowPlayingIconIdentifier;
      v38 = objc_opt_self();
      v39 = v37;
      v15 = [v38 lightAppearance];
      v16 = SBHGetGraphicIconImageWithImageAppearance();

      goto LABEL_23;
    }
  }

  v17 = *(v3 + OBJC_IVAR____TtC15CarPlaySettings18LeafIconDataSource_iconImageCache);
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v17 + 16))
  {
    v20 = sub_1000305EC(v18, v19);
    v22 = v21;

    if (v22)
    {
      v23 = *(*(v17 + 56) + 8 * v20);
      v24 = [v23 iconImageData];
      if (v24)
      {
        v25 = v24;
        v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v27;

        v29 = objc_allocWithZone(UIImage);
        sub_10003191C(v26, v28);
        isa = Data._bridgeToObjectiveC()().super.isa;
        v31 = [v29 initWithData:isa scale:a3];

        sub_100031970(v26, v28);
        if (v31)
        {
          v32 = sub_100056DE4(a1, a2, a3);
          v33 = [v23 isPrerendered];
          v34 = objc_opt_self();
          v35 = &selRef_defaultAppearance;
          if (!v33)
          {
            v35 = &selRef_darkAppearance;
          }

          v36 = [v34 *v35];
          v16 = SBHGetIconImageWithImageAppearance();

          sub_100031970(v26, v28);
          return v16;
        }

        sub_100031970(v26, v28);
      }
    }
  }

  else
  {
  }

  return 0;
}

id sub_100031018(void *a1, char a2)
{
  if (!a1 || (result = [a1 sbh_iconImageAppearance]) == 0)
  {
    result = [objc_opt_self() defaultAppearance];
  }

  if ((a2 & 1) == 0)
  {
    v4 = result;
    v5 = [result appearanceType];
    result = v4;
    if (!v5)
    {
      v6 = v4;
      v7 = [objc_opt_self() darkAppearance];

      return v7;
    }
  }

  return result;
}

id sub_1000310C8(void *a1, double a2, double a3, double a4)
{
  v10 = *(v4 + OBJC_IVAR____TtC15CarPlaySettings18LeafIconDataSource_identifier);
  v9 = *(v4 + OBJC_IVAR____TtC15CarPlaySettings18LeafIconDataSource_identifier + 8);
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v10 && v11 == v9)
  {
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v13 & 1) == 0)
    {
      if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v10 && v14 == v9)
      {
      }

      else
      {
        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v16 & 1) == 0)
        {
          v17 = String._bridgeToObjectiveC()();
          SBHIconServicesOptionsForImageOptions();
          v18 = SBHGetApplicationIconImageWithTraitCollection();
LABEL_21:

          return v18;
        }
      }

      v35 = CRSNowPlayingIconIdentifier;
      v36 = objc_opt_self();
      v37 = v35;
      v17 = [v36 sbh_iconImageAppearanceFromTraitCollection:a1];
      SBHIconServicesOptionsForImageOptions();
      v18 = SBHGetGraphicIconImageWithImageAppearance();

      goto LABEL_21;
    }
  }

  v19 = *(v4 + OBJC_IVAR____TtC15CarPlaySettings18LeafIconDataSource_iconImageCache);
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v19 + 16))
  {
    v22 = sub_1000305EC(v20, v21);
    v24 = v23;

    if (v24)
    {
      v25 = *(*(v19 + 56) + 8 * v22);
      v26 = [v25 iconImageData];
      if (v26)
      {
        v27 = v26;
        v28 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = v29;

        v31 = objc_allocWithZone(UIImage);
        sub_10003191C(v28, v30);
        isa = Data._bridgeToObjectiveC()().super.isa;
        v17 = [v31 initWithData:isa scale:a4];

        sub_100031970(v28, v30);
        if (v17)
        {
          v33 = sub_100056DE4(a2, a3, a4);
          v34 = sub_100031018(a1, [v25 isPrerendered]);
          SBHIconServicesOptionsForImageOptions();
          v18 = SBHGetIconImageWithImageAppearance();

          sub_100031970(v28, v30);
          goto LABEL_21;
        }

        sub_100031970(v28, v30);
      }
    }
  }

  else
  {
  }

  return 0;
}

id sub_100031414(void *a1, double a2, double a3, double a4)
{
  v9 = *(v4 + OBJC_IVAR____TtC15CarPlaySettings18LeafIconDataSource_identifier);
  v10 = *(v4 + OBJC_IVAR____TtC15CarPlaySettings18LeafIconDataSource_identifier + 8);
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v9 && v11 == v10)
  {

    goto LABEL_13;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v13)
  {
LABEL_13:
    v19 = CRSNowPlayingIconIdentifier;
    v20 = objc_opt_self();
    v21 = v19;
    v17 = [v20 sbh_iconImageAppearanceFromTraitCollection:a1];
    SBHIconServicesOptionsForImageOptions();
    v18 = SBHGetGraphicIconLayerWithImageAppearance();

    goto LABEL_14;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v9 && v14 == v10)
  {

LABEL_17:
    v23 = *(v4 + OBJC_IVAR____TtC15CarPlaySettings18LeafIconDataSource_iconImageCache);
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v23 + 16))
    {
      v26 = sub_1000305EC(v24, v25);
      v28 = v27;

      if (v28)
      {
        v29 = *(*(v23 + 56) + 8 * v26);
        v30 = [v29 iconImageData];
        if (v30)
        {
          v31 = v30;
          v32 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v34 = v33;

          v35 = objc_allocWithZone(UIImage);
          sub_10003191C(v32, v34);
          isa = Data._bridgeToObjectiveC()().super.isa;
          v17 = [v35 initWithData:isa scale:a4];

          sub_100031970(v32, v34);
          if (v17)
          {
            v37 = sub_100056DE4(a2, a3, a4);
            v38 = sub_100031018(a1, [v29 isPrerendered]);
            SBHIconServicesOptionsForImageOptions();
            v18 = SBHGetIconLayerWithImageAppearance();

            sub_100031970(v32, v34);
            goto LABEL_14;
          }

          sub_100031970(v32, v34);
        }

        return 0;
      }
    }

    else
    {
    }

    return 0;
  }

  v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v16)
  {
    goto LABEL_17;
  }

  v17 = String._bridgeToObjectiveC()();
  SBHIconServicesOptionsForImageOptions();
  v18 = SBHGetApplicationIconLayerWithTraitCollection();
LABEL_14:

  return v18;
}

uint64_t sub_1000317B8(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id sub_100031800(void *a1, uint64_t a2)
{
  v4 = [a1 configurationType];
  v5 = [a1 variant];
  v6 = v5;
  if (v4 != 1)
  {
    if (!v4)
    {
      if (v5 < 2)
      {
        goto LABEL_11;
      }

      if (v5 == 2)
      {
        v6 = a2 == 2;
        goto LABEL_11;
      }
    }

LABEL_10:
    v6 = 0;
    goto LABEL_11;
  }

  if (v5)
  {
    if (v5 != 2)
    {
      if (v5 == 1)
      {
        v6 = 3;
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    if (a2 == 2)
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }
  }

  else
  {
    v6 = 2;
  }

LABEL_11:
  v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v7 initWithAppearanceType:v6];
}

uint64_t sub_10003191C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100031970(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

NSString sub_1000319C8()
{
  result = String._bridgeToObjectiveC()();
  qword_100105388 = result;
  return result;
}

uint64_t *sub_100031A00()
{
  if (qword_100101F10 != -1)
  {
    swift_once();
  }

  return &qword_100105388;
}

id sub_100031A50()
{
  if (qword_100101F10 != -1)
  {
    swift_once();
  }

  v0 = qword_100105388;

  return v0;
}

void sub_100031ADC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100031BB0(v1);
}

unint64_t sub_100031B0C()
{
  result = qword_1000FF2A0;
  if (!qword_1000FF2A0)
  {
    type metadata accessor for IconCustomizationModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FF2A0);
  }

  return result;
}

uint64_t type metadata accessor for IconCustomizationModel()
{
  result = qword_100101FE0;
  if (!qword_100101FE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100031BB0(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel__listModel;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    swift_getKeyPath();
    __chkstk_darwin();
    sub_100031B0C();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1000317B8(0, &qword_1000FF2B0);
  v6 = v5;
  v7 = a1;
  v8 = static NSObject.== infix(_:_:)();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void (*sub_100031E0C(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_100031B0C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_100031F24;
}

uint64_t sub_100031F30()
{
  swift_getKeyPath();
  sub_100031B0C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return swift_unknownObjectRetain();
}

uint64_t sub_100031FC0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100031B0C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel__listLayoutProvider;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_100032058()
{
  swift_getKeyPath();
  sub_100031B0C();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1000320F4()
{
  swift_getKeyPath();
  sub_100031B0C();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return swift_unknownObjectRelease();
}

uint64_t sub_100032194(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel__listLayoutProvider;
  swift_beginAccess();
  *(a1 + v4) = a2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

void (*sub_100032228(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_100031B0C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_100032340;
}

void *sub_100032360(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100031B0C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  v6 = v5;
  return v5;
}

id sub_100032400@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_100031B0C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *a2;
  swift_beginAccess();
  v7 = *(v5 + v6);
  *a3 = v7;

  return v7;
}

void sub_1000324A8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1000324D8(v1);
}

void sub_1000324D8(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel__resolvedWallpaper;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    swift_getKeyPath();
    __chkstk_darwin();
    sub_100031B0C();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1000317B8(0, &qword_1000FF2C8);
  v6 = v5;
  v7 = a1;
  v8 = static NSObject.== infix(_:_:)();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void sub_100032654(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *a1;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void (*sub_1000326BC(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_100031B0C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_1000327D4;
}

void sub_1000327E0(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  *v1 = v1[3];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v1);
}

id sub_100032864()
{
  v1 = *(v0 + OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel_panelController);
  result = [v1 vehicle];
  if (result)
  {
    v3 = result;
    swift_getKeyPath();
    v8 = v0;
    sub_100031B0C();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v4 = OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel__homeScreenStyleData;
    swift_beginAccess();
    [v3 setHomeScreenStyle:*(v0 + v4) forDisplayWithID:0];
    [v1 saveVehicle:v3];
    sub_1000317B8(0, &qword_1000FEFD0);
    swift_getKeyPath();
    v7 = v0;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v5 = SBHIconImageStyleConfiguration.init(homeScreenStyleData:)(*(v0 + v4));
    result = [v1 panelTraitOverrides];
    if (result)
    {
      v6 = result;
      sub_1000317B8(0, &qword_1000FFE90);
      [v6 setObject:v5 forTrait:swift_getObjCClassFromMetadata()];

      return swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id sub_100032A28()
{
  swift_getKeyPath();
  v4 = v0;
  sub_100031B0C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel__homeScreenStyleData;
  swift_beginAccess();
  v2 = *(v4 + v1);

  return v2;
}

id (*sub_100032AC4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_100032B28;
}

id sub_100032B28(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_100032864();
  }

  return result;
}

id sub_100032B5C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100031B0C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel__homeScreenStyleData;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_100032C2C(id a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel__homeScreenStyleData;
  swift_beginAccess();
  v5 = *(v1 + v4);
  type metadata accessor for CRHomeScreenStyleData();
  v6 = v5;
  v7 = static NSObject.== infix(_:_:)();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
    a1 = a1;

    sub_100032864();
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    sub_100031B0C();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

id sub_100032D68()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel__homeScreenStyleData;
  swift_beginAccess();
  v4 = *(v2 + v3);
  *(v2 + v3) = v1;
  v5 = v1;

  return sub_100032864();
}

void (*sub_100032DDC(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_100031B0C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = sub_100032AC4(v4);
  return sub_100032EE4;
}

void sub_100032EE4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v1);
}

uint64_t sub_100032F78()
{
  swift_getKeyPath();
  sub_100031B0C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t sub_100033008@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100031B0C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel__iconImageCache;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1000330CC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel__iconImageCache;
  swift_beginAccess();

  sub_100038610(v4, a1);
  v6 = v5;

  if (v6)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    sub_100031B0C();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

double sub_1000331EC@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

__n128 sub_100033200@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 32);
  *(a2 + 32) = result;
  *(a2 + 48) = *(a1 + 48);
  return result;
}

uint64_t sub_10003321C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_100031B0C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = v1 + OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel__iconState;
  v4 = *(v1 + OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel__iconState);
  v5 = *(v1 + OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel__iconState + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  v10 = *(v3 + 48);
  result = sub_100038DBC(v4, *(v3 + 8));
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = v10;
  return result;
}

uint64_t sub_1000332E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100031B0C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = v3 + OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel__iconState;
  v5 = *(v3 + OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel__iconState);
  v6 = *(v3 + OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel__iconState + 8);
  v7 = *(v3 + OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel__iconState + 16);
  v8 = *(v3 + OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel__iconState + 24);
  v9 = *(v3 + OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel__iconState + 32);
  v10 = *(v3 + OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel__iconState + 40);
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 32) = v9;
  *(a2 + 40) = v10;
  *(a2 + 48) = *(v4 + 48);
  return sub_100038DBC(v5, v6);
}

uint64_t sub_100033388()
{
  swift_getKeyPath();
  sub_100031B0C();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10003343C(uint64_t a1, uint64_t a2)
{
  v2 = a1 + OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel__iconState;
  v3 = *(a1 + OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel__iconState);
  v4 = *(a1 + OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel__iconState + 8);
  v5 = *(a2 + 16);
  *v2 = *a2;
  *(v2 + 16) = v5;
  *(v2 + 32) = *(a2 + 32);
  *(v2 + 48) = *(a2 + 48);
  sub_10003976C(a2, v7, &qword_1000FF3D8);
  return sub_100038B84(v3, v4);
}

id sub_1000334EC()
{
  swift_getKeyPath();
  sub_100031B0C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel__iconLayoutController);

  return v1;
}

id sub_100033574@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100031B0C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel__iconLayoutController);
  *a2 = v4;

  return v4;
}

void sub_100033630(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel__iconLayoutController;
  v5 = *(v1 + OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel__iconLayoutController);
  sub_1000317B8(0, &qword_1000FF3B8);
  v6 = v5;
  v7 = static NSObject.== infix(_:_:)();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    sub_100031B0C();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void *sub_100033774()
{
  swift_getKeyPath();
  sub_100031B0C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel___iconManager);
  v2 = v1;
  return v1;
}

id sub_1000337F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100031B0C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel___iconManager);
  *a2 = v4;

  return v4;
}

void sub_100033884(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1000338B4(v1);
}

void sub_1000338B4(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel___iconManager;
  v5 = *(v1 + OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel___iconManager);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    swift_getKeyPath();
    __chkstk_darwin();
    sub_100031B0C();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1000317B8(0, &qword_1000FF3E0);
  v6 = v5;
  v7 = a1;
  v8 = static NSObject.== infix(_:_:)();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

id sub_100033A1C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v6 = OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel___observationRegistrar;
  *&v40 = v0;
  sub_100031B0C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *&v0[OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel___iconManager];
  v8 = v7;
  if (!v7)
  {
    v36 = v5;
    v37 = v3;
    v38 = v2;
    v39 = 0;
    swift_getKeyPath();
    *&v40 = v0;
    v35[1] = v6;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v9 = &v0[OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel__iconState];
    v11 = *&v0[OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel__iconState];
    v10 = *&v0[OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel__iconState + 8];
    v12 = *&v0[OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel__iconState + 32];
    v13 = *&v1[OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel__iconState];
    if (v10)
    {
      sub_100038DBC(v13, *&v1[OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel__iconState + 8]);

      sub_100038B84(v11, v10);
      if (*(v12 + 16))
      {
        v14 = *(v12 + 32);

        type metadata accessor for IconModel();
        swift_getKeyPath();
        *&v40 = v1;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v15 = OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel__iconImageCache;
        swift_beginAccess();
        v16 = *&v1[v15];

        v17 = sub_10002EE0C(v14, v16);
        v8 = [objc_allocWithZone(SBHIconManager) init];
        [v8 setDelegate:v1];
        [v8 setLegibilitySettings:{objc_msgSend(objc_opt_self(), "defaultLegibilitySettings")}];
        swift_unknownObjectRelease();
        [v8 setIconModel:v17];
        v18 = v8;
        sub_1000338B4(v8);

LABEL_11:
        v7 = v39;
        goto LABEL_12;
      }
    }

    else
    {
      sub_100038DBC(v13, 0);
      sub_100038B84(v11, 0);
    }

    v19 = sub_10008DFFC();
    v20 = v36;
    v21 = v37;
    v22 = v38;
    (*(v37 + 16))(v36, v19, v38);
    v23 = v1;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v44 = v27;
      *v26 = 136315138;
      swift_getKeyPath();
      *&v40 = v23;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v28 = v9[48];
      v29 = *(v9 + 1);
      v40 = *v9;
      v41 = v29;
      v42 = *(v9 + 2);
      v43 = v28;
      sub_100030C14(&qword_1000FF3D8);
      v30 = Optional.debugDescription.getter();
      v32 = sub_100037824(v30, v31, &v44);

      *(v26 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v24, v25, "Failed to fetch visible identifiers from iconState: %s", v26, 0xCu);
      sub_100038D70(v27);

      (*(v37 + 8))(v36, v38);
    }

    else
    {

      (*(v21 + 8))(v20, v22);
    }

    v8 = 0;
    goto LABEL_11;
  }

LABEL_12:
  v33 = v7;
  return v8;
}

char *sub_100033EFC(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_100038894(a1);
  swift_unknownObjectRelease();
  return v4;
}

char *sub_100033F40(void *a1)
{
  v1 = sub_100038894(a1);
  swift_unknownObjectRelease();
  return v1;
}

id sub_100033F78()
{
  ObjectType = swift_getObjectType();
  v2 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v2, v0);

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_10003416C(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  *(v9 + 184) = v8;
  *(v9 + 168) = a7;
  *(v9 + 176) = a8;
  *(v9 + 152) = a5;
  *(v9 + 160) = a6;
  *(v9 + 136) = a3;
  *(v9 + 144) = a4;
  *(v9 + 120) = a1;
  *(v9 + 128) = a2;
  v10 = type metadata accessor for Logger();
  *(v9 + 192) = v10;
  *(v9 + 200) = *(v10 - 8);
  *(v9 + 208) = swift_task_alloc();
  *(v9 + 216) = swift_task_alloc();
  *(v9 + 224) = swift_task_alloc();
  *(v9 + 232) = type metadata accessor for MainActor();
  *(v9 + 240) = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v9 + 248) = v12;
  *(v9 + 256) = v11;

  return _swift_task_switch(sub_10003428C, v12, v11);
}

uint64_t sub_10003428C()
{
  v1 = [*(v0[23] + OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel_panelController) vehicle];
  v0[33] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = v0[23];
    v0[34] = static MainActor.shared.getter();
    v4 = swift_task_alloc();
    v0[35] = v4;
    *(v4 + 16) = v3;
    *(v4 + 24) = v2;
    v5 = swift_task_alloc();
    v0[36] = v5;
    *v5 = v0;
    v5[1] = sub_100034408;

    return withDiscardingTaskGroup<A>(returning:isolation:body:)();
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_100034408()
{
  v1 = *v0;

  v2 = *(v1 + 256);
  v3 = *(v1 + 248);

  return _swift_task_switch(sub_100034568, v3, v2);
}

uint64_t sub_100034568()
{
  v98 = v0;
  v1 = *(v0 + 184);
  swift_getKeyPath();
  *(v0 + 96) = v1;
  sub_100031B0C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v1 + OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel___iconManager);
  v3 = sub_100033A1C();
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v3;
  v5 = [v3 iconModel];

  if (!v5)
  {
    goto LABEL_8;
  }

  type metadata accessor for IconModel();
  v6 = swift_dynamicCastClass();
  if (!v6)
  {

LABEL_8:

LABEL_9:
    v21 = *(v0 + 200);
    v20 = *(v0 + 208);
    v22 = *(v0 + 192);
    v23 = sub_10008DFFC();
    (*(v21 + 16))(v20, v23, v22);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    v26 = os_log_type_enabled(v24, v25);
    v27 = *(v0 + 264);
    v29 = *(v0 + 200);
    v28 = *(v0 + 208);
    v30 = *(v0 + 192);
    if (v26)
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Failed to configure necessary types for list configuration, unable to configure SBH icon lists", v31, 2u);
    }

    (*(v29 + 8))(v28, v30);
    goto LABEL_12;
  }

  v7 = v6;
  v96 = v5;
  v8 = *(v0 + 184);
  swift_getKeyPath();
  *(v0 + 104) = v8;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = v8 + OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel__iconState;
  v10 = *(v8 + OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel__iconState + 8);
  if (!v10)
  {

    goto LABEL_9;
  }

  v89 = v7;
  v11 = *(v9 + 24);
  v12 = *(v9 + 32);
  v13 = *(v9 + 40);
  v14 = *(v9 + 48);
  v91 = *v9;
  v92 = *(v9 + 16);
  *(v0 + 16) = *v9;
  *(v0 + 24) = v10;
  *(v0 + 32) = v92;
  *(v0 + 40) = v11;
  v94 = v10;
  *(v0 + 48) = v12;
  *(v0 + 56) = v13;
  *(v0 + 64) = v14 & 1;
  if (v2 && *(v12 + 16))
  {
    v15 = *(v12 + 32);
    v16 = OBJC_IVAR____TtC15CarPlaySettings9IconModel_visibleIdentifiers;
    v17 = v10;
    v18 = v89;
    swift_beginAccess();
    *&v89[v16] = v15;
    sub_100038DBC(v91, v17);

    sub_10002EEEC();
    v19 = sub_100033A1C();
    [v19 relayout];
  }

  else
  {

    v18 = v89;
  }

  v35 = *(v0 + 168);
  v34 = *(v0 + 176);
  v37 = *(v0 + 152);
  v36 = *(v0 + 160);
  v39 = *(v0 + 136);
  v38 = *(v0 + 144);
  v41 = *(v0 + 120);
  v40 = *(v0 + 128);
  v42 = [objc_allocWithZone(SBRootFolderControllerConfiguration) init];
  v43 = v18;
  v44 = v42;
  v45 = [v43 rootFolder];
  [v44 setFolder:v45];

  type metadata accessor for IconListLayoutProvider();

  [v44 setListLayoutProvider:{sub_1000301B0(v0 + 16, v41, v40, v39, v38, v37, v36, v35, v34)}];

  v46 = [v44 folder];
  if (!v46)
  {

LABEL_37:

    sub_100038B84(v91, v94);
    goto LABEL_38;
  }

  v47 = v46;
  v48 = [v46 lists];

  sub_1000317B8(0, &qword_1000FF2B0);
  v49 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v49 >> 62))
  {
    result = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_20;
    }

    goto LABEL_36;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
LABEL_36:

    goto LABEL_37;
  }

LABEL_20:
  if ((v49 & 0xC000000000000001) != 0)
  {
    v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v50 = *(v49 + 32);
  }

  v88 = v50;

  v51 = [v44 listLayoutProvider];

  if (!v51)
  {

    sub_100038B84(v91, v94);

LABEL_38:
    v72 = *(v0 + 216);
    v74 = *(v0 + 192);
    v73 = *(v0 + 200);
    v75 = sub_10008DFFC();
    (*(v73 + 16))(v72, v75, v74);
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.error.getter();
    v78 = os_log_type_enabled(v76, v77);
    v79 = *(v0 + 264);
    v80 = *(v0 + 216);
    v81 = *(v0 + 192);
    v82 = *(v0 + 200);
    if (v78)
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&_mh_execute_header, v76, v77, "Unable to configure SBH list for IconCustomizationModel", v83, 2u);
    }

    else
    {
    }

    (*(v82 + 8))(v80, v81);
    goto LABEL_12;
  }

  v87 = v51;
  v52 = [v51 layoutForIconLocation:SBIconLocationRoot];
  if (!v52)
  {
    goto LABEL_29;
  }

  v53 = v52;
  v54 = [v52 numberOfRowsForOrientation:1];
  result = [v53 numberOfColumnsForOrientation:1];
  if (result >= 0x10000)
  {
    goto LABEL_44;
  }

  if ((result | v54) < 0)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v54 >= 0x10000)
  {
LABEL_46:
    __break(1u);
    return result;
  }

  [v88 setGridSize:result | (v54 << 16)];
  sub_10002E3F8();
  sub_1000317B8(0, &qword_1000FF308);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v88 sortUsingIconOrder:isa];

  swift_unknownObjectRelease();
LABEL_29:
  v90 = v44;
  v84 = *(v0 + 224);
  v56 = *(v0 + 200);
  v85 = *(v0 + 192);
  v57 = *(v0 + 184);
  v86 = v88;
  sub_100031BB0(v88);
  swift_getKeyPath();
  v58 = swift_task_alloc();
  *(v58 + 16) = v57;
  *(v58 + 24) = v87;
  *(v0 + 112) = v57;
  swift_unknownObjectRetain();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_100038B84(v91, v94);
  swift_unknownObjectRelease();

  v59 = sub_10008DFFC();
  (*(v56 + 16))(v84, v59, v85);
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.default.getter();
  v62 = os_log_type_enabled(v60, v61);
  v63 = *(v0 + 264);
  v64 = *(v0 + 224);
  v66 = *(v0 + 192);
  v65 = *(v0 + 200);
  if (v62)
  {
    v95 = *(v0 + 224);
    v67 = swift_slowAlloc();
    v93 = v66;
    v68 = swift_slowAlloc();
    v97[0] = v68;
    *v67 = 136315138;
    v69 = CGRect.debugDescription.getter();
    v71 = sub_100037824(v69, v70, v97);

    *(v67 + 4) = v71;
    _os_log_impl(&_mh_execute_header, v60, v61, "Successfully configured icon customization icon list in frame: %s", v67, 0xCu);
    sub_100038D70(v68);

    swift_unknownObjectRelease();
    (*(v65 + 8))(v95, v93);
  }

  else
  {

    swift_unknownObjectRelease();
    (*(v65 + 8))(v64, v66);
  }

LABEL_12:

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_100034F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[6] = a2;
  sub_100030C14(&qword_1000FF3F0);
  v4[9] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[10] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100035048, v6, v5);
}

uint64_t sub_100035048()
{
  v1 = v0[7];

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  swift_getKeyPath();
  v0[5] = v1;
  sub_100031B0C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel__iconImageCache;
  swift_beginAccess();
  if (!*(*(v1 + v5) + 16))
  {

    goto LABEL_5;
  }

  sub_1000305EC(v2, v4);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
LABEL_5:
    v9 = v0[8];
    v8 = v0[9];
    v10 = v0[7];
    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v10;
    v12[5] = v9;
    v13 = v10;
    v14 = v9;
    sub_100035A24(v8, &unk_1000A1FC0, v12);
    sub_10003970C(v8, &qword_1000FF3F0);
  }

  v16 = v0[8];
  v15 = v0[9];
  v17 = v0[7];
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v17;
  v19[5] = v16;
  v20 = v17;
  v21 = v16;
  sub_100035A24(v15, &unk_1000A1FD0, v19);
  sub_10003970C(v15, &qword_1000FF3F0);

  v22 = v0[1];

  return v22();
}

uint64_t sub_1000352D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v5 = type metadata accessor for UUID();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v4[14] = v6;
  v4[15] = *(v6 - 8);
  v4[16] = swift_task_alloc();

  return _swift_task_switch(sub_1000353F4, 0, 0);
}

id sub_1000353F4()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  v4 = sub_10008DFFC();
  (*(v2 + 16))(v1, v4, v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Fetching oem icon from iconLayoutController", v7, 2u);
  }

  v9 = v0[15];
  v8 = v0[16];
  v10 = v0[14];
  v12 = v0[9];
  v11 = v0[10];

  (*(v9 + 8))(v8, v10);
  swift_getKeyPath();
  v0[17] = OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel___observationRegistrar;
  v0[5] = v12;
  v0[18] = sub_100031B0C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = *(v12 + OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel__iconLayoutController);
  v14 = CRSOEMIdentifier;
  v0[19] = v13;
  v0[20] = v14;
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  v13;
  result = [v11 identifier];
  if (result)
  {
    v19 = result;
    v21 = v0[12];
    v20 = v0[13];
    v22 = v0[11];
    v0[21] = v17;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v23 = UUID.uuidString.getter();
    v25 = v24;
    v0[22] = v24;
    (*(v21 + 8))(v20, v22);
    v26 = swift_task_alloc();
    v0[23] = v26;
    *v26 = v0;
    v26[1] = sub_100035644;

    return sub_1000568FC(v15, v17, v23, v25);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100035644(uint64_t a1)
{
  v2 = *(*v1 + 152);
  *(*v1 + 192) = a1;

  return _swift_task_switch(sub_1000357A0, 0, 0);
}

uint64_t sub_1000357A0()
{
  v1 = v0[24];
  if (v1)
  {
    v2 = v0[9];
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;
    swift_getKeyPath();
    v0[6] = v2;
    v8 = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v0[7] = v2;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    swift_beginAccess();
    sub_10003592C(v1, v7, v4);
    swift_endAccess();
    v0[8] = v2;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_10003592C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_10003832C(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_1000305EC(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_1000384A4();
        v14 = v16;
      }

      result = sub_10003817C(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_100035A24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_100030C14(&qword_1000FF3F0);
  __chkstk_darwin(v8 - 8);
  v10 = v20 - v9;
  sub_10003976C(a1, v20 - v9, &qword_1000FF3F0);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_10003970C(v10, &qword_1000FF3F0);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = dispatch thunk of Actor.unownedExecutor.getter();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v4;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  v18 = (v15 | v13);
  if (v15 | v13)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v13;
    v21[3] = v15;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v16;
  swift_task_create();
}

uint64_t sub_100035C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[32] = a3;
  v4[33] = a4;
  v5 = type metadata accessor for UUID();
  v4[34] = v5;
  v4[35] = *(v5 - 8);
  v4[36] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v4[37] = v6;
  v4[38] = *(v6 - 8);
  v4[39] = swift_task_alloc();

  return _swift_task_switch(sub_100035D58, 0, 0);
}

id sub_100035D58()
{
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[37];
  v4 = sub_10008DFFC();
  (*(v2 + 16))(v1, v4, v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Fetching icon state from iconLayoutController", v7, 2u);
  }

  v9 = v0[38];
  v8 = v0[39];
  v10 = v0[37];
  v12 = v0[32];
  v11 = v0[33];

  (*(v9 + 8))(v8, v10);
  swift_getKeyPath();
  v0[40] = OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel___observationRegistrar;
  v0[30] = v12;
  v0[41] = sub_100031B0C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = *(v12 + OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel__iconLayoutController);
  v0[42] = v13;
  v13;
  result = [v11 identifier];
  if (result)
  {
    v15 = result;
    v17 = v0[35];
    v16 = v0[36];
    v18 = v0[34];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v19 = UUID.uuidString.getter();
    v21 = v20;
    v0[43] = v20;
    (*(v17 + 8))(v16, v18);
    v22 = swift_task_alloc();
    v0[44] = v22;
    *v22 = v0;
    v22[1] = sub_100035F80;

    return sub_1000362B0((v0 + 23), v19, v21);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100035F80()
{
  v1 = *v0;
  v2 = *(*v0 + 336);

  *(v1 + 360) = *(v1 + 184);
  *(v1 + 376) = *(v1 + 200);
  *(v1 + 392) = *(v1 + 216);
  *(v1 + 65) = *(v1 + 232);

  return _swift_task_switch(sub_1000360E4, 0, 0);
}

uint64_t sub_1000360E4()
{
  v1 = *(v0 + 192);
  if (v1)
  {
    *(v0 + 72) = *(v0 + 184);
    *(v0 + 80) = v1;
    *(v0 + 88) = *(v0 + 200);
    *(v0 + 104) = *(v0 + 216);
    *(v0 + 120) = *(v0 + 232);
    sub_100039E44(v0 + 128);
    v2 = *(v0 + 128);
    v9 = *(v0 + 136);
    v10 = *(v0 + 152);
    v3 = *(v0 + 168);
    v4 = *(v0 + 176);
    sub_10003970C(v0 + 184, &qword_1000FF3D8);
  }

  else
  {
    v4 = *(v0 + 65);
    v3 = *(v0 + 400);
    v9 = *(v0 + 368);
    v10 = *(v0 + 384);
    v2 = *(v0 + 360);
  }

  v5 = *(v0 + 256);
  *(v0 + 16) = v2;
  *(v0 + 24) = v9;
  *(v0 + 40) = v10;
  *(v0 + 56) = v3;
  *(v0 + 64) = v4;
  swift_getKeyPath();
  v6 = swift_task_alloc();
  *(v6 + 16) = v5;
  *(v6 + 24) = v0 + 16;
  *(v0 + 248) = v5;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_100038B84(v2, v9);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000362B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[29] = a3;
  v4[30] = v3;
  v4[27] = a1;
  v4[28] = a2;
  v5 = type metadata accessor for Logger();
  v4[31] = v5;
  v4[32] = *(v5 - 8);
  v4[33] = swift_task_alloc();

  return _swift_task_switch(sub_1000363A0, 0, 0);
}

uint64_t sub_1000363A0()
{
  v1 = v0[30];
  v2 = String._bridgeToObjectiveC()();
  v0[34] = v2;
  v0[2] = v0;
  v0[7] = v0 + 25;
  v0[3] = sub_100036504;
  v3 = swift_continuation_init();
  v0[17] = sub_100030C14(&qword_1000FF310);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1000375C0;
  v0[13] = &unk_1000DB908;
  v0[14] = v3;
  [v1 fetchIconStateForVehicleID:v2 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100036504()
{

  return _swift_task_switch(sub_100036610, 0, 0);
}

uint64_t sub_100036610()
{
  v38 = v0;

  v1 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  *(v0 + 208) = 0;
  v3 = [v1 dataWithPropertyList:isa format:100 options:0 error:v0 + 208];

  v4 = *(v0 + 208);
  if (v3)
  {
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    PropertyListDecoder.init()();
    sub_100038E80();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

    sub_100031970(v5, v7);

    v9 = *(v0 + 144);
    v8 = *(v0 + 152);
    v10 = *(v0 + 160);
    v11 = *(v0 + 168);
    v12 = *(v0 + 176);
    v13 = *(v0 + 184);
    v14 = *(v0 + 192);
  }

  else
  {
    v15 = v4;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v17 = *(v0 + 256);
    v16 = *(v0 + 264);
    v18 = *(v0 + 248);
    v19 = sub_10008DFFC();
    (*(v17 + 16))(v16, v19, v18);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    v22 = os_log_type_enabled(v20, v21);
    v24 = *(v0 + 256);
    v23 = *(v0 + 264);
    v25 = *(v0 + 248);
    if (v22)
    {
      v36 = *(v0 + 248);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v37 = v27;
      *v26 = 136315138;
      v28 = Dictionary.description.getter();
      v35 = v23;
      v30 = v29;

      v31 = sub_100037824(v28, v30, &v37);

      *(v26 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v20, v21, "Unable to parse icon state: %s", v26, 0xCu);
      sub_100038D70(v27);

      (*(v24 + 8))(v35, v36);
    }

    else
    {

      (*(v24 + 8))(v23, v25);
    }

    v9 = 0;
    v8 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
  }

  v32 = *(v0 + 216);

  *v32 = v9;
  *(v32 + 8) = v8;
  *(v32 + 16) = v10;
  *(v32 + 24) = v11;
  *(v32 + 32) = v12;
  *(v32 + 40) = v13;
  *(v32 + 48) = v14;
  v33 = *(v0 + 8);

  return v33();
}

void sub_100036998()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel_clusterThemeManager))
  {
    return;
  }

  v5 = [*(v0 + OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel_panelController) loadWallpaperPreferences];
  if (!v5)
  {
    return;
  }

  v30 = v5;
  v6 = [v5 currentWallpaper];
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = v6;
  v8 = [v30 dataProvider];
  if (!v8 || (v9 = [v8 resolveWallpaper:v7], swift_unknownObjectRelease(), !v9))
  {
    swift_unknownObjectRelease();
LABEL_10:
    v17 = v30;

    return;
  }

  swift_getKeyPath();
  v31 = v0;
  sub_100031B0C();
  v10 = v0;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel__resolvedWallpaper;
  swift_beginAccess();
  v29[1] = v10;
  v12 = *(v10 + v11);
  if (v12)
  {
    v13 = [objc_msgSend(v12 "wallpaper")];
    swift_unknownObjectRelease();
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v18 = [objc_msgSend(v9 "wallpaper")];
  swift_unknownObjectRelease();
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  if (v16)
  {
    if (v14 == v19 && v16 == v21)
    {

      swift_unknownObjectRelease();

      return;
    }

    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v23)
    {

      swift_unknownObjectRelease();
      return;
    }
  }

  else
  {
  }

  v24 = v9;
  sub_1000324D8(v9);
  v25 = sub_10008DFFC();
  (*(v2 + 16))(v4, v25, v1);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "Successfully resolved wallpaper", v28, 2u);
  }

  else
  {
  }

  swift_unknownObjectRelease();

  (*(v2 + 8))(v4, v1);
}

void sub_100036DA0(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v30 - v11;
  type metadata accessor for CARThemeManagerData();

  sub_10004582C(a1, a2);
  if (v13)
  {
    v14 = (*(*v13 + 248))();
    v15 = (*(*v14 + 184))(v14);

    v16 = [v15 data];

    v17 = *(v3 + OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel_clusterThemeManager);
    if (v17 && (v18 = [*(v3 + OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel_clusterThemeManager) loadWallpaperFromData:v16]) != 0)
    {
      v19 = [v17 resolveWallpaper:v18];
      if (v19)
      {
        v20 = v19;
        v21 = sub_10008DFFC();
        (*(v7 + 16))(v12, v21, v6);
        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v30[1] = v3;
          *v24 = 0;
          _os_log_impl(&_mh_execute_header, v22, v23, "Successfully resolved asset wallpaper wallpaper", v24, 2u);
        }

        (*(v7 + 8))(v12, v6);
        v25 = v20;
        sub_1000324D8(v20);
        swift_unknownObjectRelease();

        return;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    v26 = sub_10008DFFC();
    (*(v7 + 16))(v10, v26, v6);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Unable to fetch theme manager data for icon customization view", v29, 2u);
    }

    (*(v7 + 8))(v10, v6);
  }
}

uint64_t sub_100037280(void *a1)
{
  v2 = [a1 displays];
  sub_1000317B8(0, &qword_1000FF320);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = [a1 themeData];
  sub_1000317B8(0, &qword_1000FF328);
  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100036DA0(v3, v5);
}

id sub_100037484()
{
  [*(v0 + OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel_clusterThemeManager) invalidate];
  swift_getKeyPath();
  sub_100031B0C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return [*(v0 + OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel__iconLayoutController) invalidate];
}

uint64_t sub_1000375C0(uint64_t a1)
{
  v1 = *sub_100039470((a1 + 32), *(a1 + 56));
  **(*(v1 + 64) + 40) = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return _swift_continuation_resume(v1);
}

uint64_t sub_100037644(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10003772C;

  return v4();
}

uint64_t sub_10003772C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_100037824(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000378F0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100038E1C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100038D70(v11);
  return v7;
}

unint64_t sub_1000378F0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1000379FC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_1000379FC(uint64_t a1, unint64_t a2)
{
  v3 = sub_100037A48(a1, a2);
  sub_100037B78(&off_1000DB8E0);
  return v3;
}

char *sub_100037A48(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100037C64(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100037C64(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100037B78(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100037CD8(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100037C64(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100030C14(&qword_1000FF3D0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100037CD8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100030C14(&qword_1000FF3D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_100037DCC(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100037E10(a1, v4);
}

unint64_t sub_100037E10(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1000393C0(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10003941C(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_100037ED8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100030C14(&qword_1000FF3F8);
  v35 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10003817C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_10003832C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000305EC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100037ED8(v16, a4 & 1);
      v11 = sub_1000305EC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_1000384A4();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return _objc_release_x1();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

id sub_1000384A4()
{
  v1 = v0;
  sub_100030C14(&qword_1000FF3F8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_100038610(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = v9 | (v4 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(*(a1 + 56) + 8 * v12);

      v17 = v16;
      v18 = sub_1000305EC(v14, v15);
      v20 = v19;

      if ((v20 & 1) == 0)
      {

        return;
      }

      sub_1000317B8(0, &qword_1000FF3E8);
      v21 = *(*(a2 + 56) + 8 * v18);
      v22 = static NSObject.== infix(_:_:)();

      if ((v22 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a1 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

unint64_t sub_100038790(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100030C14(&qword_1000FF3F8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1000305EC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

char *sub_100038894(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel__listModel] = 0;
  *&v1[OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel__listLayoutProvider] = 0;
  *&v1[OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel__resolvedWallpaper] = 0;
  v4 = &v1[OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel__iconState];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  v4[48] = 0;
  *&v1[OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel___iconManager] = 0;
  ObservationRegistrar.init()();
  *&v1[OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel__iconImageCache] = sub_100038790(&_swiftEmptyArrayStorage);
  sub_100038B84(*v4, *(v4 + 1));
  v4[48] = 0;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  *v4 = 0u;
  *&v1[OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel_panelController] = a1;
  v5 = objc_allocWithZone(CRSIconLayoutController);
  swift_unknownObjectRetain();
  v6 = [v5 init];
  *&v1[OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel__iconLayoutController] = v6;
  v7 = [a1 vehicle];
  if (!v7 || (v8 = v7, v9 = [v7 homeScreenStyleDataForDisplayWithID:0], v8, !v9))
  {
    v9 = [objc_allocWithZone(CRHomeScreenStyleData) initWithStyleType:2 styleVariant:2];
  }

  *&v1[OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel__homeScreenStyleData] = v9;
  v10 = [a1 vehicle];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 clusterAssetIdentifier];

    if (!v12)
    {
      goto LABEL_9;
    }

    result = [a1 carSession];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v14 = result;
    v15 = [result configuration];

    LODWORD(v14) = [v15 supportsVehicleData];
    if (v14)
    {
      v10 = [objc_allocWithZone(CRSUIClusterThemeManager) init];
    }

    else
    {
LABEL_9:
      v10 = 0;
    }
  }

  *&v1[OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel_clusterThemeManager] = v10;
  v20.receiver = v1;
  v20.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v20, "init");
  v17 = *&v16[OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel_clusterThemeManager];
  if (v17)
  {
    [v17 setDelegate:v16];
  }

  v18 = CFNotificationCenterGetDarwinNotifyCenter();
  v19 = String._bridgeToObjectiveC()();
  CFNotificationCenterAddObserver(v18, v16, sub_100037168, v19, 0, CFNotificationSuspensionBehaviorCoalesce);

  return v16;
}

uint64_t sub_100038B84(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_100038BD4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100038C7C;

  return sub_100034F74(v7, a2, v6, v5);
}

uint64_t sub_100038C7C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100038D70(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_100038DBC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_100038E1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_100038E80()
{
  result = qword_1000FF318;
  if (!qword_1000FF318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FF318);
  }

  return result;
}

unint64_t sub_100038ED4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100030C14(&qword_1000FF3C0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10003976C(v4, v13, &qword_1000FF3C8);
      result = sub_100037DCC(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1000393B0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void sub_100039010(void *a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v6 = a1;
    v7 = [objc_opt_self() defaultCenter];
    if (qword_100101F10 != -1)
    {
      swift_once();
    }

    memset(v10, 0, sizeof(v10));
    v8 = qword_100105388;
    Notification.init(name:object:userInfo:)();
    isa = Notification._bridgeToObjectiveC()().super.isa;
    (*(v3 + 8))(v5, v2);
    [v7 postNotification:isa];
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_100039188()
{
  swift_getKeyPath();
  sub_100031B0C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel__iconState + 8);
  if (!v1)
  {
    return sub_100038ED4(&_swiftEmptyArrayStorage);
  }

  v2 = *(v0 + OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel__iconState);

  v3 = sub_100039980();
  sub_100038B84(v2, v1);
  return v3;
}

uint64_t sub_10003929C()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_100039370()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel__iconLayoutController);
  *(v1 + OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel__iconLayoutController) = v2;
  v4 = v2;
}

_OWORD *sub_1000393B0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void *sub_100039470(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_1000394E4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel___iconManager);
  *(v1 + OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel___iconManager) = v2;
  v4 = v2;
}

uint64_t sub_100039524()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel__iconImageCache;
  swift_beginAccess();
  *(v2 + v3) = v1;
}

uint64_t sub_100039594()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000398F0;

  return sub_1000352D8(v4, v5, v2, v3);
}

uint64_t sub_10003962C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100039674()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000398F0;

  return sub_100035C3C(v4, v5, v2, v3);
}

uint64_t sub_10003970C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100030C14(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10003976C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_100030C14(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000397D4()
{

  return swift_deallocObject();
}

uint64_t sub_10003980C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100038C7C;

  return sub_100037644(v2);
}

uint64_t sub_1000398F8()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_100039950@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

uint64_t sub_100039964()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = v1 * v2;
  if ((v1 * v2) >> 64 != (v1 * v2) >> 63)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100039980()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = (__chkstk_darwin)();
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v29 - v6;
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  v8 = *(v0 + 16);
  v31[0] = *v0;
  v31[1] = v8;
  v31[2] = *(v0 + 32);
  v32 = *(v0 + 48);
  sub_100039DF0();
  v17 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v19 = v18;

  v20 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v30[0] = 0;
  v22 = [v20 propertyListWithData:isa options:0 format:0 error:v30];

  v23 = v30[0];
  if (v22)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100038E1C(v31, v30);
    sub_100030C14(&qword_1000FF468);
    if (swift_dynamicCast())
    {
      sub_100038D70(v31);
      sub_100031970(v17, v19);
      return v29[0];
    }

    else
    {
      v25 = sub_10008DFFC();
      (*(v2 + 16))(v7, v25, v1);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "Unable to serialize icon state to dictionary", v28, 2u);
      }

      (*(v2 + 8))(v7, v1);
      v15 = sub_100038ED4(&_swiftEmptyArrayStorage);
      sub_100031970(v17, v19);
      sub_100038D70(v31);
    }
  }

  else
  {
    v24 = v23;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_100031970(v17, v19);
    v9 = sub_10008DFFC();
    (*(v2 + 16))(v5, v9, v1);
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      swift_errorRetain();
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v14;
      *v13 = v14;
      _os_log_impl(&_mh_execute_header, v10, v11, "Unable to encode IconState to dictionary: %@", v12, 0xCu);
      sub_10003ACC8(v13);
    }

    (*(v2 + 8))(v5, v1);
    v15 = sub_100038ED4(&_swiftEmptyArrayStorage);
  }

  return v15;
}

unint64_t sub_100039DF0()
{
  result = qword_1000FF460;
  if (!qword_1000FF460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FF460);
  }

  return result;
}

void sub_100039E44(uint64_t a1@<X8>)
{
  v3 = *(v1 + 4);
  if (!*(v3 + 16))
  {
    v9 = 0;
    v10 = 0;
    v4 = 0;
    v5 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
LABEL_9:
    *a1 = v9;
    *(a1 + 8) = v10;
    *(a1 + 16) = v4;
    *(a1 + 24) = v5;
    *(a1 + 32) = v11;
    *(a1 + 40) = v12;
    *(a1 + 48) = v13;
    return;
  }

  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v4 * v5;
  if ((v4 * v5) >> 64 == (v4 * v5) >> 63)
  {
    v7 = *(v3 + 32);
    if (v6 >= *(v7 + 16))
    {

      goto LABEL_8;
    }

    if ((v6 & 0x8000000000000000) == 0)
    {
      sub_10003ABF0(v7, v7 + 32, 0, (2 * v6) | 1);
      v7 = v8;
LABEL_8:
      v17 = *v1;
      sub_100030C14(&qword_1000FF470);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1000A1FF0;
      *(v11 + 32) = v7;
      v12 = *(v1 + 5);
      v16 = v12;
      v14 = *(v1 + 48);
      v10 = *(&v17 + 1);
      v9 = v17;
      v13 = v14 & 1;
      sub_10003AD30(&v17, v15);
      sub_10003976C(&v16, v15, &qword_1000FF478);
      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_100039F94(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000DB9A8, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100039FF4(unsigned __int8 a1)
{
  v1 = 0x4C6E6F63494D454FLL;
  v2 = 0x63496E6564646968;
  if (a1 != 5)
  {
    v2 = 0x7379616C70736964;
  }

  v3 = 0x7473694C6E6F6369;
  if (a1 != 3)
  {
    v3 = 0x6564724F6E6F6369;
  }

  if (a1 <= 4u)
  {
    v2 = v3;
  }

  v4 = 1937207154;
  if (a1 != 1)
  {
    v4 = 0x736E6D756C6F63;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10003A0FC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC0000006C656261;
  v3 = 0x4C6E6F63494D454FLL;
  v4 = a1;
  v5 = 0x63496E6564646968;
  v6 = 0xEB00000000736E6FLL;
  if (a1 != 5)
  {
    v5 = 0x7379616C70736964;
    v6 = 0xEF6E6F63494D454FLL;
  }

  v7 = 0x7473694C6E6F6369;
  v8 = 0xE900000000000073;
  if (a1 != 3)
  {
    v7 = 0x6564724F6E6F6369;
    v8 = 0xE900000000000072;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0xE400000000000000;
  v10 = 1937207154;
  if (a1 != 1)
  {
    v10 = 0x736E6D756C6F63;
    v9 = 0xE700000000000000;
  }

  if (!a1)
  {
    v10 = 0x4C6E6F63494D454FLL;
    v9 = 0xEC0000006C656261;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE400000000000000;
        if (v11 != 1937207154)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0xE700000000000000;
        if (v11 != 0x736E6D756C6F63)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xEB00000000736E6FLL;
        if (v11 != 0x63496E6564646968)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0xEF6E6F63494D454FLL;
        if (v11 != 0x7379616C70736964)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }

    if (a2 == 3)
    {
      v2 = 0xE900000000000073;
      if (v11 != 0x7473694C6E6F6369)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    v3 = 0x6564724F6E6F6369;
    v2 = 0xE900000000000072;
  }

  if (v11 != v3)
  {
LABEL_36:
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_37;
  }

LABEL_33:
  if (v12 != v2)
  {
    goto LABEL_36;
  }

  v13 = 1;
LABEL_37:

  return v13 & 1;
}

uint64_t sub_10003A35C()
{
  String.hash(into:)();
}

Swift::Int sub_10003A494()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10003A5D8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100039F94(*a1);
  *a2 = result;
  return result;
}

void sub_10003A608(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC0000006C656261;
  v4 = 0x4C6E6F63494D454FLL;
  v5 = 0xEB00000000736E6FLL;
  v6 = 0x63496E6564646968;
  if (v2 != 5)
  {
    v6 = 0x7379616C70736964;
    v5 = 0xEF6E6F63494D454FLL;
  }

  v7 = 0xE900000000000073;
  v8 = 0x7473694C6E6F6369;
  if (v2 != 3)
  {
    v8 = 0x6564724F6E6F6369;
    v7 = 0xE900000000000072;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE400000000000000;
  v10 = 1937207154;
  if (v2 != 1)
  {
    v10 = 0x736E6D756C6F63;
    v9 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_10003A708()
{
  v1 = *v0;
  v2 = 0x4C6E6F63494D454FLL;
  v3 = 0x63496E6564646968;
  if (v1 != 5)
  {
    v3 = 0x7379616C70736964;
  }

  v4 = 0x7473694C6E6F6369;
  if (v1 != 3)
  {
    v4 = 0x6564724F6E6F6369;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 1937207154;
  if (v1 != 1)
  {
    v5 = 0x736E6D756C6F63;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10003A804@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100039F94(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10003A838(uint64_t a1)
{
  v2 = sub_10003B164();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003A874(uint64_t a1)
{
  v2 = sub_10003B164();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10003A8B0@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10003AD8C(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_10003A900(void *a1)
{
  v3 = v1;
  v5 = sub_100030C14(&qword_1000FF480);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_100039470(a1, a1[3]);
  sub_10003B164();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v11) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = *(v3 + 32);
    HIBYTE(v10) = 3;
    sub_100030C14(&qword_1000FF490);
    sub_10003B540(&qword_1000FF498, &qword_1000FF4A0);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = *(v3 + 40);
    HIBYTE(v10) = 5;
    sub_100030C14(&qword_1000FF478);
    sub_10003B5CC(&qword_1000FF4A0);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v11) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_10003ABF0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_100030C14(&qword_1000FF4D8);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_10003ACC8(uint64_t a1)
{
  v2 = sub_100030C14(&unk_100101D40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10003AD8C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100030C14(&qword_1000FF4C0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  sub_100039470(a1, a1[3]);
  sub_10003B164();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100038D70(a1);
  }

  LOBYTE(v24) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v12 = v9;
  LOBYTE(v24) = 1;
  v22 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v24) = 2;
  v21 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_100030C14(&qword_1000FF490);
  v23 = 4;
  sub_10003B540(&qword_1000FF4C8, &qword_1000FF4D0);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v20 = v24;
  sub_100030C14(&qword_1000FF478);
  v23 = 5;
  sub_10003B5CC(&qword_1000FF4D0);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v18 = 0;
  v19 = v24;
  LOBYTE(v24) = 6;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v8, v5);

  v14 = v20;

  v15 = v19;

  sub_100038D70(a1);

  *a2 = v12;
  *(a2 + 8) = v11;
  v17 = v21;
  *(a2 + 16) = v22;
  *(a2 + 24) = v17;
  *(a2 + 32) = v14;
  *(a2 + 40) = v15;
  *(a2 + 48) = v13 & 1;
  return result;
}

unint64_t sub_10003B164()
{
  result = qword_1000FF488;
  if (!qword_1000FF488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FF488);
  }

  return result;
}

uint64_t sub_10003B1B8(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_10003B204()
{
  result = qword_1000FF4A8;
  if (!qword_1000FF4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FF4A8);
  }

  return result;
}

unint64_t sub_10003B25C()
{
  result = qword_1000FF4B0;
  if (!qword_1000FF4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FF4B0);
  }

  return result;
}

unint64_t sub_10003B2B4()
{
  result = qword_1000FF4B8;
  if (!qword_1000FF4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FF4B8);
  }

  return result;
}

__n128 sub_10003B308(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10003B324(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10003B36C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IconState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IconState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10003B540(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10003B1B8(&qword_1000FF490);
    sub_10003B5CC(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10003B5CC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10003B1B8(&qword_1000FF478);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10003B63C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100030C14(&qword_1000FF4E0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_10003976C(v2, &v14 - v9, &qword_1000FF4E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorScheme();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_10003B860(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.colorScheme.setter();
}

uint64_t sub_10003B928()
{
  sub_100030C14(&qword_1000FF4E8);
  State.init(wrappedValue:)();
  return v1;
}

id sub_10003B970()
{
  v1 = *(v0 + *(type metadata accessor for CARThemeLayoutPreview() + 24));

  return v1;
}

uint64_t type metadata accessor for CARThemeLayoutPreview()
{
  result = qword_100102510;
  if (!qword_100102510)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10003B9F0()
{
  type metadata accessor for CARThemeLayoutPreview();

  return swift_unknownObjectRetain();
}

uint64_t sub_10003BA24()
{
  v1 = *(v0 + *(type metadata accessor for CARThemeLayoutPreview() + 32));

  return v1;
}

uint64_t sub_10003BA64@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CARThemeLayoutPreview();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v32[1] = v7;
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *(v1 + *(v6 + 20));
  sub_100030C14(&qword_1000FF698);
  State.wrappedValue.getter();
  if (v33)
  {
    v9 = v33;
    v10 = sub_10003C5D4();
    v12 = nullsub_9(v9, v10, v11);
    v33 = v12;
    v34 = v13;
    v35 = v14;
    v36 = 0;
    sub_10003D314();
    v15 = v12;

    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v16 = static Color.clear.getter();
    v34 = 0;
    v35 = 0;
    v33 = v16;
    v36 = 1;
    sub_10003D314();
    _ConditionalContent<>.init(storage:)();
  }

  v17 = *(&v37 + 1);
  v32[0] = v37;
  v18 = v38;
  v19 = v39;
  v20 = static Alignment.center.getter();
  v22 = v21;
  v23 = swift_unknownObjectRetain();
  v26 = nullsub_9(v23, v24, v25);
  sub_10003C188(v2, v8);
  v27 = *(v5 + 80);
  v28 = v8;
  v29 = (v27 + 16) & ~v27;
  v30 = swift_allocObject();
  result = sub_10003C348(v28, v30 + v29);
  *a1 = v32[0];
  *(a1 + 8) = v17;
  *(a1 + 16) = v18;
  *(a1 + 24) = v19;
  *(a1 + 32) = v26;
  *(a1 + 40) = v20;
  *(a1 + 48) = v22;
  *(a1 + 56) = sub_10003C3AC;
  *(a1 + 64) = v30;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  return result;
}

void sub_10003BCE0(uint64_t a1)
{
  v2 = type metadata accessor for CARThemeLayoutPreview();
  __chkstk_darwin(v2);
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v23[3] = v3;
  v23[4] = v4;
  v5 = __chkstk_darwin(v3);
  __chkstk_darwin(v5);
  v7 = v23 - v6;
  sub_1000317B8(0, &qword_1000FF688);
  v24 = v2;
  v8 = *(a1 + *(v2 + 24));
  v9 = [v8 asset];
  v10 = [v9 url];

  v11 = [v10 url];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v12 = [v8 asset];
  v13 = [v12 packageType];

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17 = sub_10003C40C(v7, v14, v16, 0);
  v18 = v17;
  v19 = (a1 + *(v24 + 20));
  v20 = v19[1];
  v26 = *v19;
  v21 = v26;
  v27 = v20;
  v25 = v17;

  v22 = v21;
  sub_100030C14(&qword_1000FF698);
  State.wrappedValue.setter();
}

uint64_t sub_10003C188(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CARThemeLayoutPreview();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003C1EC()
{
  v1 = type metadata accessor for CARThemeLayoutPreview();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  sub_100030C14(&qword_1000FF4E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for ColorScheme();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10003C348(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CARThemeLayoutPreview();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10003C3AC()
{
  v1 = *(type metadata accessor for CARThemeLayoutPreview() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_10003BCE0(v2);
}

id sub_10003C40C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v7 = v6;
  v8 = String._bridgeToObjectiveC()();

  if (a4)
  {
    v9.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  v18 = 0;
  v10 = [swift_getObjCClassFromMetadata() packageWithContentsOfURL:v7 type:v8 options:v9.super.isa error:&v18];

  v11 = v18;
  if (v10)
  {
    v12 = type metadata accessor for URL();
    v13 = *(*(v12 - 8) + 8);
    v14 = v11;
    v13(a1, v12);
  }

  else
  {
    v15 = v18;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v16 = type metadata accessor for URL();
    (*(*(v16 - 8) + 8))(a1, v16);
  }

  return v10;
}

uint64_t sub_10003C5D4()
{
  v1 = type metadata accessor for ColorScheme();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v19 - v6;
  v8 = type metadata accessor for CARThemeLayoutPreview();
  v9 = *(v0 + *(v8 + 24));
  sub_10003B63C(v7);
  (*(v2 + 104))(v5, enum case for ColorScheme.dark(_:), v1);
  v10 = static ColorScheme.== infix(_:_:)();
  v11 = *(v2 + 8);
  v11(v5, v1);
  v11(v7, v1);
  if (v10)
  {
    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  v13 = [v9 stateForPaletteIDWithInterfaceStyle:v12];
  v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v14 + 16) && (v15 = sub_1000305EC(*(v0 + *(v8 + 32)), *(v0 + *(v8 + 32) + 8)), (v16 & 1) != 0))
  {
    v17 = *(*(v14 + 56) + 16 * v15);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

uint64_t sub_10003C7C8@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_100030C14(&qword_1000FF4E0);

  return swift_storeEnumTagMultiPayload();
}

double sub_10003C828@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_10003C8DC(a1, a6);
  v11 = type metadata accessor for CARThemeLayoutPreview();
  v12 = v11[5];
  sub_100030C14(&qword_1000FF4E8);
  State.init(wrappedValue:)();
  result = *&v15;
  *(a6 + v12) = v15;
  *(a6 + v11[6]) = a2;
  *(a6 + v11[7]) = a3;
  v14 = (a6 + v11[8]);
  *v14 = a4;
  v14[1] = a5;
  return result;
}

uint64_t sub_10003C8DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100030C14(&qword_1000FF4F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_10003C978@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Alignment.center.getter();
  v6 = v5;
  if (os_variant_has_internal_ui())
  {
    v7 = static HorizontalAlignment.center.getter();
    sub_10003CB00(a1, &v29);
    v8 = v29;
    v9 = v30;
    v10 = v31;
    v11 = v32;
    v12 = v33;
    v13 = v34;
    v14 = v35;
    v15 = v36;
    v16 = 1;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
  }

  v22 = v7;
  *&v23 = v16;
  *(&v23 + 1) = v8;
  *&v24 = v9;
  *(&v24 + 1) = v10;
  *&v25 = v11;
  *(&v25 + 1) = v12;
  *&v26 = v13;
  *(&v26 + 1) = v14;
  *&v27 = v15;
  *(&v27 + 1) = v4;
  v28 = v6;
  v29 = v7;
  *&v42[38] = v24;
  *&v42[22] = v23;
  *&v42[6] = v7;
  *&v42[102] = v6;
  *&v42[86] = v27;
  *&v42[70] = v26;
  *&v42[54] = v25;
  v30 = 0;
  v31 = v16;
  v32 = v8;
  v33 = v9;
  v34 = v10;
  v35 = v11;
  v36 = v12;
  v37 = v13;
  v38 = v14;
  v39 = v15;
  v40 = v4;
  v41 = v6;
  sub_10003976C(&v22, v21, &qword_1000FF4F8);
  sub_10003970C(&v29, &qword_1000FF4F8);
  v17 = *&v42[32];
  *(a2 + 50) = *&v42[48];
  v18 = *&v42[80];
  *(a2 + 66) = *&v42[64];
  *(a2 + 82) = v18;
  *(a2 + 96) = *&v42[94];
  result = *v42;
  v20 = *&v42[16];
  *(a2 + 2) = *v42;
  *(a2 + 18) = v20;
  *a2 = 256;
  *(a2 + 34) = v17;
  return result;
}

uint64_t sub_10003CB00@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v4 - 8);
  v5 = [a1 displayName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10003D498();
  v6 = Text.init<A>(_:)();
  v8 = v7;
  v10 = v9;
  v11 = Text.bold()();
  v13 = v12;
  v30 = v14;
  v16 = v15;
  sub_10003D4EC(v6, v8, v10 & 1);

  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v17._countAndFlagsBits = 40;
  v17._object = 0xE100000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v17);
  v18 = [a1 identifier];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v22._countAndFlagsBits = v19;
  v22._object = v21;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v22);

  v23._countAndFlagsBits = 41;
  v23._object = 0xE100000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v23);
  LocalizedStringKey.init(stringInterpolation:)();
  v24 = Text.init(_:tableName:bundle:comment:)();
  v26 = v25;
  LOBYTE(v21) = v27 & 1;
  *a2 = v11;
  *(a2 + 8) = v13;
  *(a2 + 16) = v30 & 1;
  *(a2 + 24) = v16;
  *(a2 + 32) = v24;
  *(a2 + 40) = v25;
  *(a2 + 48) = v27 & 1;
  *(a2 + 56) = v28;
  sub_10003D4FC(v11, v13, v30 & 1);

  sub_10003D4FC(v24, v26, v21);

  sub_10003D4EC(v24, v26, v21);

  sub_10003D4EC(v11, v13, v30 & 1);
}

uint64_t sub_10003CDA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100030C14(&qword_1000FF4F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10003CE80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100030C14(&qword_1000FF4F0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_10003CF44()
{
  sub_10003D010();
  if (v0 <= 0x3F)
  {
    sub_10003D068();
    if (v1 <= 0x3F)
    {
      sub_1000317B8(319, &qword_1000FF568);
      if (v2 <= 0x3F)
      {
        sub_10003D0CC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10003D010()
{
  if (!qword_1001005A0)
  {
    type metadata accessor for ColorScheme();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_1001005A0);
    }
  }
}

void sub_10003D068()
{
  if (!qword_1000FF560)
  {
    sub_10003B1B8(&qword_1000FF4E8);
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_1000FF560);
    }
  }
}

unint64_t sub_10003D0CC()
{
  result = qword_1000FF5D0;
  if (!qword_1000FF5D0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1000FF5D0);
  }

  return result;
}

unint64_t sub_10003D144()
{
  result = qword_1000FF610;
  if (!qword_1000FF610)
  {
    sub_10003B1B8(&qword_1000FF618);
    sub_10003D1D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FF610);
  }

  return result;
}

unint64_t sub_10003D1D0()
{
  result = qword_1000FF620;
  if (!qword_1000FF620)
  {
    sub_10003B1B8(&qword_1000FF628);
    sub_10003D288();
    sub_10003D450(&qword_1000FF648, &qword_1000FF650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FF620);
  }

  return result;
}

unint64_t sub_10003D288()
{
  result = qword_1000FF630;
  if (!qword_1000FF630)
  {
    sub_10003B1B8(&qword_1000FF638);
    sub_10003D314();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FF630);
  }

  return result;
}

unint64_t sub_10003D314()
{
  result = qword_1000FF640;
  if (!qword_1000FF640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FF640);
  }

  return result;
}

unint64_t sub_10003D36C()
{
  result = qword_1000FF658;
  if (!qword_1000FF658)
  {
    sub_10003B1B8(&qword_1000FF660);
    sub_10003D450(&qword_1000FF668, &qword_1000FF670);
    sub_10003D450(&qword_1000FF678, &qword_1000FF4F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FF658);
  }

  return result;
}

uint64_t sub_10003D450(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10003B1B8(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10003D498()
{
  result = qword_1000FF680;
  if (!qword_1000FF680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FF680);
  }

  return result;
}

uint64_t sub_10003D4EC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10003D4FC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10003D50C(uint64_t a1)
{
  v2 = type metadata accessor for CARThemeLayoutPreview();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10003D568()
{
  result = qword_1000FF6A0;
  if (!qword_1000FF6A0)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FF6A0);
  }

  return result;
}

void *sub_10003D5D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a3 + 16))(a2, a3);
  v4 = v3;
  if (v3 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = [v7 associatedPaletteID];
      if (v10)
      {

        v11 = [v8 associatedPaletteID];
        if (!v11)
        {
          CRSUIClusterThemePalette.id.getter();
LABEL_19:

LABEL_20:

          goto LABEL_6;
        }

        v12 = v11;
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;

        v16 = CRSUIClusterThemePalette.id.getter();
        if (!v15)
        {
          goto LABEL_19;
        }

        if (v13 == v16 && v15 == v17)
        {
        }

        else
        {
          v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v18 & 1) == 0)
          {
            goto LABEL_20;
          }
        }
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
LABEL_6:
      ++v6;
      if (v9 == i)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

LABEL_26:

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_10003D7F0(void *a1)
{
  v1 = [a1 palettes];
  sub_1000317B8(0, &qword_1000FF7D0);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t sub_10003D854(int a1, id a2)
{
  v2 = [a2 wallpapers];
  sub_1000317B8(0, &qword_1001006F0);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id sub_10003D8BC(void *a1)
{
  v1 = [a1 defaultPalette];

  return v1;
}

void *sub_10003D8F0(void *a1, void *a2)
{
  v3 = [a1 defaultWallpaper];
  v4 = sub_10003DE68(v3, a2);

  return v4;
}

uint64_t sub_10003D93C(void *a1, id a2, void *a3)
{
  v3 = a2;
  v4 = [a2 palettes];
  sub_1000317B8(0, &qword_1000FF7D0);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    goto LABEL_39;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v40 = v3;
    v45 = v5;
    if (!i)
    {
      break;
    }

    v7 = 0;
    v42 = v5 & 0xC000000000000001;
    v8 = v5 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v42)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *(v8 + 16))
        {
          goto LABEL_36;
        }

        v9 = *(v5 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v12 = CRSUIClusterThemePalette.id.getter();
      v3 = v13;
      v14 = [a1 currentPaletteID];
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      if (v12 == v15 && v3 == v17)
      {

LABEL_18:

        v20 = [v40 wallpapers];
        sub_1000317B8(0, &qword_1001006F0);
        v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v21 >> 62)
        {
          v22 = _CocoaArrayWrapper.endIndex.getter();
          v46 = v21;
          if (v22)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v46 = v21;
          if (v22)
          {
LABEL_20:
            v5 = 0;
            v41 = v21 & 0xFFFFFFFFFFFFFF8;
            v43 = v21 & 0xC000000000000001;
            do
            {
              if (v43)
              {
                v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v5 >= *(v41 + 16))
                {
                  goto LABEL_38;
                }

                v23 = *(v21 + 8 * v5 + 32);
              }

              v24 = v23;
              v25 = v5 + 1;
              if (__OFADD__(v5, 1))
              {
                goto LABEL_37;
              }

              v26 = CRSUIClusterThemeWallpaper.id.getter();
              v3 = v27;
              v28 = [objc_msgSend(a1 "currentWallpaper")];
              swift_unknownObjectRelease();
              v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v31 = v30;

              if (v26 == v29 && v3 == v31)
              {

LABEL_34:

                v34 = sub_10003DE68(v24, a3);
                type metadata accessor for CARThemeModel();
                v48 = &type metadata for CARCenterConsoleLayoutThemeProvider;
                v49 = &off_1000DBC08;
                *&v47 = v40;
                *(&v47 + 1) = a3;
                v35 = v40;
                v36 = a3;
                v37 = sub_10004E618(v10, v34, &v47);

                return v37;
              }

              v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v21 = v46;
              if (v33)
              {
                goto LABEL_34;
              }

              ++v5;
            }

            while (v25 != v22);
          }
        }

        goto LABEL_42;
      }

      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v5 = v45;
      if (v19)
      {
        goto LABEL_18;
      }

      ++v7;
      if (v11 == i)
      {
        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    ;
  }

LABEL_42:

  __break(1u);
  return result;
}

uint64_t sub_10003DD14()
{
  v1 = [*v0 palettes];
  sub_1000317B8(0, &qword_1000FF7D0);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t sub_10003DD7C()
{
  v1 = [*(v0 + 8) wallpapers];
  sub_1000317B8(0, &qword_1001006F0);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

id sub_10003DDE4()
{
  v1 = [*v0 defaultPalette];

  return v1;
}

void *sub_10003DE1C()
{
  v1 = *(v0 + 8);
  v2 = [*v0 defaultWallpaper];
  v3 = sub_10003DE68(v2, v1);

  return v3;
}

void *sub_10003DE68(void *a1, id a2)
{
  v2 = [a2 wallpapers];
  sub_1000317B8(0, &qword_1001006F0);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = [a1 identifier];
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      v13 = [v7 identifier];
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      if (v10 == v14 && v12 == v16)
      {

LABEL_17:

        return v7;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
        goto LABEL_17;
      }

      ++v5;
      if (v8 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

LABEL_21:

  __break(1u);
  return result;
}

__n128 sub_10003E054(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10003E060(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10003E0A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10003E0F4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100030C14(&qword_1000FF4E0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_10003E2DC(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorScheme();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}