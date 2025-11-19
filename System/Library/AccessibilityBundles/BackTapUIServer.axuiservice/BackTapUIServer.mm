id accessibilityLocalizedString(void *a1)
{
  v1 = a1;
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 localizedStringForKey:v1 value:&stru_8420 table:@"Accessibility"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_105C(id a1)
{
  qword_CAC0 = objc_alloc_init(AXBackTapUIServer);

  _objc_release_x1();
}

void sub_1170(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_118C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1258;
  v3[3] = &unk_82D0;
  objc_copyWeak(&v5, (a1 + 40));
  v4 = *(a1 + 32);
  [WeakRetained _addBackTapViewController:v3];

  objc_destroyWeak(&v5);
}

void sub_1258(uint64_t a1)
{
  v2 = [AXPhoenixGestureDetector alloc];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [v2 initWithDelegate:WeakRetained];
  v5 = objc_loadWeakRetained((a1 + 40));
  [v5 setGestureDetector:v4];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, *(a1 + 32), sub_155C, kAXSHomeClickSpeedChangedNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v7 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v7, *(a1 + 32), sub_155C, kAXSSideButtonClickSpeedChangedNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v8 = objc_loadWeakRetained((a1 + 40));
  [v8 _updateClickSpeed];

  v9 = objc_loadWeakRetained((a1 + 40));
  v10 = [v9 gestureDetector];

  if (v10)
  {
    v11 = +[AXSettings sharedInstance];
    v12 = [v11 backTapFalsePositiveAlertsEnabled];
    v13 = objc_loadWeakRetained((a1 + 40));
    v14 = [v13 gestureDetector];
    [v14 setFalsePositiveLoggingEnabled:v12];

    v15 = +[AXSettings sharedInstance];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1564;
    v27[3] = &unk_82A8;
    objc_copyWeak(&v28, (a1 + 40));
    [v15 registerUpdateBlock:v27 forRetrieveSelector:"backTapFalsePositiveAlertsEnabled" withListener:*(a1 + 32)];

    objc_destroyWeak(&v28);
    v16 = +[AXSettings sharedInstance];
    v17 = [v16 backTapRNNModelEnabled];
    v18 = objc_loadWeakRetained((a1 + 40));
    v19 = [v18 gestureDetector];
    [v19 setRnnModelEnabled:v17];

    v20 = +[AXSettings sharedInstance];
    v22 = _NSConcreteStackBlock;
    v23 = 3221225472;
    v24 = sub_15F0;
    v25 = &unk_82A8;
    objc_copyWeak(&v26, (a1 + 40));
    [v20 registerUpdateBlock:&v22 forRetrieveSelector:"backTapRNNModelEnabled" withListener:*(a1 + 32)];

    objc_destroyWeak(&v26);
    v21 = objc_loadWeakRetained((a1 + 40));
    [v21 _registerForBackTapEvents:v22];
  }

  else
  {
    v21 = AXLogBackTap();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_31DC(v21);
    }
  }
}

void sub_1564(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v2 = +[AXSettings sharedInstance];
    v3 = [v2 backTapFalsePositiveAlertsEnabled];
    v4 = [v5 gestureDetector];
    [v4 setFalsePositiveLoggingEnabled:v3];

    WeakRetained = v5;
  }
}

void sub_15F0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v2 = +[AXSettings sharedInstance];
    v3 = [v2 backTapRNNModelEnabled];
    v4 = [v5 gestureDetector];
    [v4 setRnnModelEnabled:v3];

    WeakRetained = v5;
  }
}

BOOL sub_174C(id a1, AXEventRepresentation *a2)
{
  v2 = [(AXEventRepresentation *)a2 accessibilityData];
  if ([v2 page] == &dword_0 + 1)
  {
    v3 = [v2 usage];
    v4 = +[AXSettings sharedInstance];
    v5 = v4;
    if (v3 == &dword_0 + 1)
    {
      [v4 backTapDoubleTapAction];
    }

    else
    {
      [v4 backTapTripleTapAction];
    }
    v6 = ;

    if (v6)
    {
      v7 = +[AXPISystemActionHelper sharedInstance];
      [v7 performActionForSystemAction:v6 fromClient:AXPISystemActionHelperClientBackTap];

      LOBYTE(v6) = 1;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

void sub_1C94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1CB8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = AXLogBackTap();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_3220(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _serverEnabled];

    [*(a1 + 32) setGestureDetectorRunning:1];
  }
}

void sub_1E18(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = AXLogBackTap();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_328C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  else
  {
    [*(a1 + 32) setGestureDetectorRunning:0];
  }
}

void sub_2314(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) objectForKey:@"filename"];
  [v1 _confirmFalsePositiveReportForFilename:v2];
}

void sub_26D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_26F4(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setBackTapViewController:v2];

  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void sub_28B4(uint64_t a1)
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 backTapFalsePositiveAlertsEnabled];

  if (v3)
  {
    v4 = +[AXUIDisplayManager sharedDisplayManager];
    v5 = [*(a1 + 32) activeAlertIdentifier];
    [v4 hideAlertWithIdentifier:v5 forService:*(a1 + 32)];

    v6 = +[AXUIDisplayManager sharedDisplayManager];
    v7 = accessibilityLocalizedString(@"alert.message.title");
    v8 = accessibilityLocalizedString(@"alert.message.subtitle");
    v9 = *(a1 + 40);
    v12 = @"filename";
    v13 = v9;
    v10 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v11 = [v6 showAlertWithText:v7 subtitleText:v8 iconImage:0 type:3 priority:30 duration:v10 userInfo:6.0 forService:*(a1 + 32)];
    [*(a1 + 32) setReportAlertIdentifier:v11];
  }
}

void sub_2B90(uint64_t a1)
{
  v2 = +[AXUIDisplayManager sharedDisplayManager];
  v3 = [*(a1 + 32) activeAlertIdentifier];
  [v2 hideAlertWithIdentifier:v3 forService:*(a1 + 32)];

  v4 = +[AXUIDisplayManager sharedDisplayManager];
  v5 = accessibilityLocalizedString(@"alert.detected.title");
  v6 = accessibilityLocalizedString(@"alert.detected.message.double.tap");
  v7 = AXUIAlertDisplayTimeDefaultForAlerts;
  v10 = AXUIAlertUserInfoKeyHideFromScreenshots;
  v11 = &__kCFBooleanTrue;
  v8 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v9 = [v4 showAlertWithText:v5 subtitleText:v6 iconImage:0 type:3 priority:30 duration:v8 userInfo:v7 forService:*(a1 + 32)];
}

void sub_2E58(uint64_t a1)
{
  v2 = +[AXUIDisplayManager sharedDisplayManager];
  v3 = [*(a1 + 32) activeAlertIdentifier];
  [v2 hideAlertWithIdentifier:v3 forService:*(a1 + 32)];

  v4 = +[AXUIDisplayManager sharedDisplayManager];
  v5 = accessibilityLocalizedString(@"alert.detected.title");
  v6 = accessibilityLocalizedString(@"alert.detected.message.triple.tap");
  v7 = AXUIAlertDisplayTimeDefaultForAlerts;
  v10 = AXUIAlertUserInfoKeyHideFromScreenshots;
  v11 = &__kCFBooleanTrue;
  v8 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v9 = [v4 showAlertWithText:v5 subtitleText:v6 iconImage:0 type:3 priority:30 duration:v8 userInfo:v7 forService:*(a1 + 32)];
}

void sub_31AC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}