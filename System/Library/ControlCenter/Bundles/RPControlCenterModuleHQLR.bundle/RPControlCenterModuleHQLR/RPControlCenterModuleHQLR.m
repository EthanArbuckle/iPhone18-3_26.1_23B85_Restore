void sub_1C74(id a1)
{
  qword_37D80 = objc_alloc_init(RPFeatureFlagUtility);

  _objc_release_x1();
}

void sub_2358(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 8) == 1)
  {
    if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v2 = 136446466;
      v3 = "[RPBackgroundActivity activateWithUserInteractionHandler:]_block_invoke";
      v4 = 1024;
      v5 = 67;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Background activity already active, skipping activation", &v2, 0x12u);
    }
  }

  else
  {
    *(v1 + 8) = 1;
  }
}

void sub_2594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25AC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 8))
  {
    *(v1 + 8) = 0;
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136446466;
    v3 = "[RPBackgroundActivity deactivate]_block_invoke";
    v4 = 1024;
    v5 = 82;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Background activity not active, skipping deactivation", &v2, 0x12u);
  }
}

void sub_296C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Block_object_dispose((v22 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_299C(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = *(*(a1 + 32) + 8);
  v2 = [*(a1 + 40) copy];
  [*(a1 + 32) setCurrentTimerString:v2];
}

void sub_2A04(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained currentAttribution];

    if (v9)
    {
      v10 = [STBackgroundActivitiesStatusDomainBackgroundActivityAttribution alloc];
      v11 = [v8 currentAttribution];
      v12 = [v11 backgroundActivityIdentifier];
      v13 = [v8 currentAttribution];
      v14 = [v13 activityAttribution];
      v15 = [v10 initWithBackgroundActivityIdentifier:v12 activityAttribution:v14];

      v16 = [v8 currentAttribution];
      [v5 removeAttribution:v16];

      [v5 addAttribution:v15];
      [v8 setCurrentAttribution:v15];
    }

    else if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136446466;
      v18 = "[RPBackgroundActivity updateTimerString:]_block_invoke";
      v19 = 1024;
      v20 = 136;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d No current attribution to update with timer string", &v17, 0x12u);
    }

    [v6 setUserInitiated:0];
  }

  else if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136446466;
    v18 = "[RPBackgroundActivity updateTimerString:]_block_invoke";
    v19 = 1024;
    v20 = 122;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Self was deallocated during timer update", &v17, 0x12u);
  }
}

void sub_3070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  objc_destroyWeak((v29 + 48));
  objc_destroyWeak((v30 - 128));
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_30C0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    if (__RPLogLevel <= 1u)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 32);
        v11 = 136446722;
        v12 = "[RPBackgroundActivity publishNewDataWithUserInteractionHandler:]_block_invoke";
        v13 = 1024;
        v14 = 180;
        v15 = 2112;
        v16 = v8;
        _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Removing background activity attribution=%@", &v11, 0x1Cu);
      }

      v7 = *(a1 + 32);
    }

    [v5 removeAttribution:v7];
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    if (__RPLogLevel <= 1u)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 40);
        v11 = 136446722;
        v12 = "[RPBackgroundActivity publishNewDataWithUserInteractionHandler:]_block_invoke";
        v13 = 1024;
        v14 = 184;
        v15 = 2112;
        v16 = v10;
        _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Adding background activity attribution=%@", &v11, 0x1Cu);
      }

      v9 = *(a1 + 40);
    }

    [v5 addAttribution:v9];
  }

  [v6 setUserInitiated:1];
}

void sub_3274(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 6);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_3570;
    block[3] = &unk_30EE0;
    block[4] = WeakRetained;
    v9 = a1[4];
    dispatch_sync(v4, block);
    v5 = v3[5];
    if (v5)
    {
      if (a1[5])
      {
        if (__RPLogLevel > 1u)
        {
          goto LABEL_8;
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v11 = "[RPBackgroundActivity publishNewDataWithUserInteractionHandler:]_block_invoke";
          v12 = 1024;
          v13 = 205;
          _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Setting user interaction handler", buf, 0x12u);
        }

        v5 = v3[5];
        if (v5)
        {
LABEL_8:
          v6[0] = _NSConcreteStackBlock;
          v6[1] = 3221225472;
          v6[2] = sub_3578;
          v6[3] = &unk_30F08;
          v7 = a1[5];
          [v5 handleUserInteractionsWithBlock:v6];
        }
      }

      else
      {
        if (__RPLogLevel > 1u)
        {
          goto LABEL_19;
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v11 = "[RPBackgroundActivity publishNewDataWithUserInteractionHandler:]_block_invoke";
          v12 = 1024;
          v13 = 213;
          _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Clearing user interaction handler", buf, 0x12u);
        }

        v5 = v3[5];
        if (v5)
        {
LABEL_19:
          [v5 handleUserInteractionsWithBlock:0];
        }
      }
    }

    else if (__RPLogLevel <= 2u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_21668();
    }
  }

  else if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v11 = "[RPBackgroundActivity publishNewDataWithUserInteractionHandler:]_block_invoke";
    v12 = 1024;
    v13 = 191;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Self was deallocated during publish operation", buf, 0x12u);
  }
}

void sub_3578(uint64_t a1, void *a2)
{
  v3 = a2;
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446466;
    v5 = "[RPBackgroundActivity publishNewDataWithUserInteractionHandler:]_block_invoke";
    v6 = 1024;
    v7 = 208;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d User interaction detected", &v4, 0x12u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_3738(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

void sub_3798(id a1)
{
  v3 = [NSURL fileURLWithPath:@"/System/Library/Frameworks/ReplayKit.framework"];
  v1 = [NSBundle bundleWithURL:v3];
  v2 = qword_37D90;
  qword_37D90 = v1;
}

void sub_76FC(uint64_t a1)
{
  v2 = [*(a1 + 32) isExpanded];
  v3 = *(*(a1 + 32) + 128);
  if (v2)
  {
    [v3 setHidden:0];
    [*(*(a1 + 32) + 64) setHidden:0];
    v10 = *(*(a1 + 32) + 104);
    v4 = &v10;
  }

  else
  {
    [v3 setHidden:1];
    [*(*(a1 + 32) + 64) setHidden:1];
    v9 = *(*(a1 + 32) + 112);
    v4 = &v9;
  }

  v5 = [NSArray arrayWithObjects:v4 count:1];
  [NSLayoutConstraint activateConstraints:v5];

  v6 = *(a1 + 32);
  if (v6[72] == 1)
  {
    [v6 updatePhoneViewConstraints];
    v6 = *(a1 + 32);
  }

  v7 = [v6 view];
  [v7 setNeedsLayout];

  v8 = [*(a1 + 32) view];
  [v8 layoutIfNeeded];
}

void sub_7870(uint64_t a1)
{
  if (([*(a1 + 32) isExpanded] & 1) == 0)
  {
    v2 = [*(a1 + 32) callRecordingView];
    [v2 teardownVideoEffectsPreviewForDisappear];
  }
}

void sub_86A4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained notifyClientDelegatesStart:1 withRecordingType:3];

  v3 = +[RPFeatureFlagUtility sharedInstance];
  v4 = [v3 systemBannerEnabled];

  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = objc_loadWeakRetained(v5 + 1);
    [v6 setRecordingType:3];

    [*(a1 + 32) updateGlyphState];
    v7 = *(a1 + 32);

    [v7 startRecordingCountdown];
  }

  else
  {
    [v5 updateGlyphState];
    v8 = *(a1 + 32);
    v9 = [NSArray arrayWithObject:NSRunLoopCommonModes];
    [v8 performSelector:"startHQLR" withObject:v8 afterDelay:v9 inModes:3.0];
  }
}

void sub_8B00(uint64_t a1, char a2)
{
  if (a2)
  {
    if (__RPLogLevel || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    *buf = 136446466;
    v7 = "[RPCCUICallRecordingModuleViewController acquireProcessAssertionWithHandler:]_block_invoke";
    v8 = 1024;
    v9 = 439;
    v3 = " [DEBUG] %{public}s:%d  assertion acquired";
  }

  else
  {
    if (__RPLogLevel || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    *buf = 136446466;
    v7 = "[RPCCUICallRecordingModuleViewController acquireProcessAssertionWithHandler:]_block_invoke";
    v8 = 1024;
    v9 = 437;
    v3 = " [DEBUG] %{public}s:%d  assertion failed";
  }

  _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, v3, buf, 0x12u);
LABEL_9:
  if (*(a1 + 32))
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_8C98;
    block[3] = &unk_30FC0;
    v5 = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, block);
  }
}

id sub_8E0C(uint64_t a1)
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136446466;
    v4 = "[RPCCUICallRecordingModuleViewController startHQLR]_block_invoke";
    v5 = 1024;
    v6 = 453;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Started HQLR session, back in VC", &v3, 0x12u);
  }

  [*(a1 + 32) updateGlyphState];
  return [*(a1 + 32) invalidateProcessAssertion];
}

void sub_9064(uint64_t a1)
{
  v1 = *(a1 + 32);
  SBSRequestPasscodeUnlockAlertUI();
}

uint64_t sub_90E0(uint64_t a1, uint64_t a2)
{
  NSLog(@"%s completed authentication unlocked %i", "[RPCCUICallRecordingModuleViewController authenticateWithCompletionHandler:]_block_invoke_2", a2);
  v3 = *(*(a1 + 32) + 16);

  return v3();
}

void sub_930C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained terminateAngelRecordingSession];

  v3 = objc_loadWeakRetained((*(a1 + 32) + 8));
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_93D8;
  v5[3] = &unk_31078;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 stopCurrentSession:v5];
}

uint64_t sub_93D8(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_9470;
  block[3] = &unk_30DF0;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_972C(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 40);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_97B0;
    block[3] = &unk_30DF0;
    block[4] = v2;
    dispatch_async(v3, block);
  }
}

id sub_97B0(uint64_t a1)
{
  [*(a1 + 32) setIsDeviceLocked:0];
  v2 = *(*(a1 + 32) + 24);

  return [v2 requestExpandModule];
}

void sub_9EB0(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_9F28;
  block[3] = &unk_30DF0;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_9F30(uint64_t a1)
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v4 = "[RPCCUICallRecordingModuleViewController performButtonActionForDynamicIslandOrExpanded]_block_invoke_3";
    v5 = 1024;
    v6 = 577;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Started Ready to Record mode", buf, 0x12u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_A058;
  block[3] = &unk_30DF0;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_A28C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v5 = "[RPCCUICallRecordingModuleViewController recordButtonTapped]_block_invoke";
      v6 = 1024;
      v7 = 606;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d successfully authenticated", buf, 0x12u);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_A3B8;
    block[3] = &unk_30DF0;
    block[4] = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, block);
  }
}

id sub_A3B8(uint64_t a1)
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
    v3 = [WeakRetained isCountingDown];
    v4 = objc_loadWeakRetained((*(a1 + 32) + 8));
    v5 = [v4 lockUIControls];
    v6 = objc_loadWeakRetained((*(a1 + 32) + 8));
    v7 = [v6 recordingOn];
    v8 = objc_loadWeakRetained((*(a1 + 32) + 8));
    *buf = 136447490;
    v15 = "[RPCCUICallRecordingModuleViewController recordButtonTapped]_block_invoke";
    v16 = 1024;
    v17 = 610;
    v18 = 1024;
    v19 = v3;
    v20 = 1024;
    v21 = v5;
    v22 = 1024;
    v23 = v7;
    v24 = 1024;
    v25 = [v8 highQualityLocalRecordingOn];
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d isCountingDown:%i lockUIControls:%i, recordingOn:%i highQualityLocalRecordingOn:%i", buf, 0x2Au);
  }

  v9 = objc_loadWeakRetained((*(a1 + 32) + 8));
  v10 = [v9 recordingOn];

  v11 = *(a1 + 32);
  if (!v10)
  {
    return [v11 performButtonAction];
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_A5B8;
  v13[3] = &unk_30DF0;
  v13[4] = v11;
  return [v11 presentRecordingAlertWithHandler:v13];
}

void sub_A5B8(uint64_t a1)
{
  v2 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_A64C;
  block[3] = &unk_30DF0;
  block[4] = *(a1 + 32);
  dispatch_after(v2, &_dispatch_main_q, block);
}

id sub_A8F8(uint64_t a1)
{
  [*(*(a1 + 32) + 128) setCountdownState:3];
  v2 = *(a1 + 32);

  return [v2 setCountdown:2];
}

void sub_A948(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v3 = [WeakRetained isCountingDown];

  if (v3)
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      if (v4 == 1)
      {
        [*(*(a1 + 32) + 128) setCountdownState:1];
        v5 = *(a1 + 32);
        v6 = 0;
      }

      else
      {
        if (v4 != 2)
        {
          return;
        }

        [*(*(a1 + 32) + 128) setCountdownState:2];
        v5 = *(a1 + 32);
        v6 = 1;
      }

      [v5 setCountdown:v6];
    }

    else
    {
      [*(*(a1 + 32) + 128) isCountingDown:0];
      v7 = *(*(a1 + 32) + 128);

      [v7 updateCallRecordingState:3];
    }
  }
}

void sub_ADA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_ADC0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  SBSGetScreenLockStatus();
  [WeakRetained setIsDeviceLocked:0];
  if (!__RPLogLevel && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2 = WeakRetained[121];
    *buf = 136446722;
    v4 = "[RPCCUICallRecordingModuleViewController setupLockScreenNotifications]_block_invoke";
    v5 = 1024;
    v6 = 685;
    v7 = 1024;
    v8 = v2;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [DEBUG] %{public}s:%d _isDeviceLocked=%d", buf, 0x18u);
  }
}

void sub_B35C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 128);
  WeakRetained = objc_loadWeakRetained((v2 + 8));
  v5 = [WeakRetained currentTimerString];
  [v3 setTimerLabel:v5];

  v7 = objc_loadWeakRetained((*(a1 + 32) + 8));
  v6 = [v7 currentTimerString];
  [*(a1 + 32) setSelectedValueText:v6];
}

void sub_B84C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained cancelReadyToRecord];
}

uint64_t sub_BA80(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  switch(a1)
  {
    case 2:
      v4 = a4();
      goto LABEL_7;
    case 1:
      v4 = a3();
LABEL_7:
      v5 = *v4;
      v6 = v4[1];

      return v5;
    case 0:
      v4 = a2();
      goto LABEL_7;
  }

  result = sub_21DBC();
  __break(1u);
  return result;
}

unint64_t StartButtonState.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

Swift::Int sub_BB38()
{
  v1 = *v0;
  sub_21DCC();
  sub_21DDC(v1);
  return sub_21DEC();
}

Swift::Int sub_BBAC()
{
  v1 = *v0;
  sub_21DCC();
  sub_21DDC(v1);
  return sub_21DEC();
}

uint64_t *sub_BBF0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_BC48()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2178C();

  return v1;
}

uint64_t sub_BCBC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 104))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_BD54()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2179C();
}

uint64_t (*sub_BDC4(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2177C();
  return sub_BE68;
}

uint64_t sub_BE90(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_BED8(uint64_t a1)
{
  v2 = sub_BE90(&qword_37210, &qword_24D30);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_BE90(&qword_37208, &unk_25B00);
  sub_2176C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_C010(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_BE90(&qword_37210, &qword_24D30);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR33CallRecordingStartButtonViewModel__recordingOn;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_BE90(&qword_37208, &unk_25B00);
  sub_2175C();
  swift_endAccess();
  return sub_C180;
}

uint64_t sub_C1B4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2178C();

  return v1;
}

uint64_t sub_C228@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 152))();
  *a2 = result;
  return result;
}

uint64_t sub_C2BC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2179C();
}

uint64_t (*sub_C32C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2177C();
  return sub_F910;
}

void sub_C3D0(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_C45C(uint64_t a1)
{
  v2 = sub_BE90(&qword_37220, &qword_24D88);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_BE90(&qword_37218, &qword_24D80);
  sub_2176C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_C594(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_BE90(&qword_37220, &qword_24D88);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR33CallRecordingStartButtonViewModel__recordingState;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_BE90(&qword_37218, &qword_24D80);
  sub_2175C();
  swift_endAccess();
  return sub_F914;
}

uint64_t sub_C704(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;
  }

  sub_BE90(&qword_37228, &qword_24D90);
  return sub_2174C();
}

uint64_t sub_C798()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_C7D0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t (*sub_C7F8())()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2178C();

  if (!v2)
  {
    return 0;
  }

  v0 = swift_allocObject();
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  return sub_C9F8;
}

uint64_t sub_C8B0@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*(**a1 + 200))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_F918;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t sub_C940(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_F90C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 208);
  sub_CD2C(v3);
  return v7(v6, v5);
}

uint64_t sub_C9F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_CA20(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  if (a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;
  }

  return sub_2179C();
}

void (*sub_CAD4(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x50uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 48) = swift_getKeyPath();
  v3[7] = swift_getKeyPath();
  v3[8] = sub_2177C();
  v3[9] = v4;
  v5 = *v4;
  v6 = v4[1];
  if (*v4)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    v8 = sub_F90C;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v3[4] = v8;
  v3[5] = v7;
  sub_CD2C(v5);
  return sub_CBCC;
}

void sub_CBCC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  if (a2)
  {
    v4 = v2[5];
    if (v3)
    {
      v5 = swift_allocObject();
      *(v5 + 16) = v3;
      *(v5 + 24) = v4;
      v6 = sub_F918;
    }

    else
    {
      v6 = 0;
      v5 = 0;
    }

    v11 = v2[8];
    v10 = v2[9];
    v13 = v2[6];
    v12 = v2[7];
    v14 = *v10;
    v15 = v10[1];
    *v10 = v6;
    v10[1] = v5;
    sub_CD2C(v3);
    sub_CD3C(v14);
    v16 = v2[5];
    sub_CD3C(v2[4]);
    v11(v2, 0);
  }

  else
  {
    if (v3)
    {
      v7 = v2[5];
      v8 = swift_allocObject();
      *(v8 + 16) = v3;
      *(v8 + 24) = v7;
      v9 = sub_F918;
    }

    else
    {
      v9 = 0;
      v8 = 0;
    }

    v18 = v2[8];
    v17 = v2[9];
    v20 = v2[6];
    v19 = v2[7];
    v22 = *v17;
    v21 = v17[1];
    *v17 = v9;
    v17[1] = v8;
    sub_CD3C(v22);
    v18(v2, 0);
  }

  free(v2);
}

uint64_t sub_CD2C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_CD3C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_CD74(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  swift_beginAccess();
  sub_BE90(a2, a3);
  sub_2175C();
  return swift_endAccess();
}

uint64_t sub_CDEC(uint64_t a1)
{
  v2 = sub_BE90(&qword_37238, &qword_24DE8);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_BE90(&qword_37230, &qword_24DE0);
  sub_2176C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_CF24(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_BE90(&qword_37238, &qword_24DE8);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR33CallRecordingStartButtonViewModel__buttonAction;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_BE90(&qword_37230, &qword_24DE0);
  sub_2175C();
  swift_endAccess();
  return sub_F914;
}

void sub_D094(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[16];
  v6 = v3[13];
  v13 = v3[14];
  v8 = v3[11];
  v7 = v3[12];
  v10 = v3[9];
  v9 = v3[10];
  if (a2)
  {
    v4(v3[12], v6, v3[10]);
    swift_beginAccess();
    sub_2176C();
    swift_endAccess();
    v11 = *(v8 + 8);
    v11(v6, v9);
    v12 = v13;
    v11(v13, v9);
  }

  else
  {
    swift_beginAccess();
    sub_2176C();
    swift_endAccess();
    v12 = v13;
    (*(v8 + 8))(v13, v9);
  }

  free(v12);
  free(v6);
  free(v7);

  free(v3);
}

uint64_t sub_D1FC()
{
  v1 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR33CallRecordingStartButtonViewModel__recordingOn;
  v2 = sub_BE90(&qword_37208, &unk_25B00);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR33CallRecordingStartButtonViewModel__recordingState;
  v4 = sub_BE90(&qword_37218, &qword_24D80);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR33CallRecordingStartButtonViewModel__buttonAction;
  v6 = sub_BE90(&qword_37230, &qword_24DE0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t sub_D300()
{
  v1 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR33CallRecordingStartButtonViewModel__recordingOn;
  v2 = sub_BE90(&qword_37208, &unk_25B00);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR33CallRecordingStartButtonViewModel__recordingState;
  v4 = sub_BE90(&qword_37218, &qword_24D80);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR33CallRecordingStartButtonViewModel__buttonAction;
  v6 = sub_BE90(&qword_37230, &qword_24DE0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v7, v8);
}

uint64_t sub_D440()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_D478();
  return v3;
}

uint64_t sub_D478()
{
  v20 = sub_BE90(&qword_37230, &qword_24DE0);
  v1 = *(v20 - 8);
  v2 = (*(v1 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v19 - v3;
  v5 = sub_BE90(&qword_37218, &qword_24D80);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v19 - v8;
  v10 = sub_BE90(&qword_37208, &unk_25B00);
  v11 = *(v10 - 8);
  v12 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v14 = &v19 - v13;
  v15 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR33CallRecordingStartButtonViewModel__recordingOn;
  LOBYTE(v21) = 0;
  sub_2174C();
  (*(v11 + 32))(v0 + v15, v14, v10);
  v16 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR33CallRecordingStartButtonViewModel__recordingState;
  v21 = 0;
  sub_2174C();
  (*(v6 + 32))(v0 + v16, v9, v5);
  v17 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR33CallRecordingStartButtonViewModel__buttonAction;
  v21 = 0;
  v22 = 0;
  sub_BE90(&qword_37228, &qword_24D90);
  sub_2174C();
  (*(v1 + 32))(v0 + v17, v4, v20);
  return v0;
}

uint64_t sub_D704@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CallRecordingStartButtonViewModel(0);
  result = sub_2173C();
  *a1 = result;
  return result;
}

uint64_t sub_D770(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_D7BC()
{
  type metadata accessor for CallRecordingStartButtonViewModel(0);
  sub_E888(&qword_37240, type metadata accessor for CallRecordingStartButtonViewModel);

  return sub_2181C();
}

uint64_t sub_D848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = sub_21BBC();
  v6 = *(v22 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_21BDC();
  v10 = *(v21 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v23 = a1;
  v24 = a2;

  sub_BE90(&qword_37248, &qword_24DF0);
  sub_E110(&qword_37250, &qword_37248, &qword_24DF0, sub_E0E0);
  sub_21B4C();
  sub_21BFC();
  sub_217FC();
  v15 = (a3 + *(sub_BE90(&qword_37298, &qword_24E18) + 36));
  v16 = v26;
  *v15 = v25;
  v15[1] = v16;
  v15[2] = v27;
  LODWORD(a1) = *(sub_BE90(&qword_372A0, &qword_24E20) + 36);
  sub_21BAC();
  sub_21BCC();
  (*(v6 + 8))(v9, v22);
  sub_21B6C();
  (*(v10 + 8))(v13, v21);
  v17 = sub_21C0C();
  v18 = (*(*a2 + 152))();
  result = sub_BE90(&qword_372A8, &qword_24E28);
  v20 = (a3 + *(result + 36));
  *v20 = v17;
  v20[1] = v18;
  return result;
}

void (*sub_DB40(uint64_t a1))(void)
{
  v2 = sub_2172C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10A48();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_2170C();
  v9 = sub_21CDC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, "HQLR start/stop button pressed", v10, 2u);
  }

  v11 = (*(v3 + 8))(v6, v2);
  result = (*(*a1 + 200))(v11);
  if (result)
  {
    v13 = result;
    result();
    return sub_CD3C(v13);
  }

  return result;
}

uint64_t sub_DCEC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = sub_2189C();
  v64 = 1;
  v5 = *(*v3 + 152);
  v6 = v5();
  if (v6 == 2 || v6 == 1)
  {
    v7 = sub_10300();
  }

  else
  {
    if (v6)
    {
      goto LABEL_13;
    }

    v7 = sub_10328();
  }

  v8 = *v7;
  v9 = *(v7 + 1);

  v10 = sub_21B3C();
  LOBYTE(v9) = sub_21A0C();
  v11 = *sub_10350();
  v12 = sub_217BC();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = (v5)(v12);
  v59 = v4;
  v58 = v9;
  switch(v21)
  {
    case 2:
      v22 = sub_10698();
      goto LABEL_12;
    case 1:
      v22 = sub_107A8();
LABEL_12:
      v24 = *v22;
      v23 = v22[1];
      *v63 = v24;

      sub_F864();
      v25 = sub_21A9C();
      v27 = v26;
      v29 = v28;
      sub_21A4C();
      v30 = sub_21A6C();
      v32 = v31;
      v34 = v33;
      v36 = v35;
      sub_F8B8(v25, v27, v29 & 1);

      v63[0] = 0;

      sub_F8C8(v30, v32, v34 & 1);

      sub_F8B8(v30, v32, v34 & 1);

      *(&v65 + 9) = *v62;
      HIDWORD(v65) = *&v62[3];
      *(&v68 + 1) = *v61;
      DWORD1(v68) = *&v61[3];
      HIDWORD(v69) = *&v60[3];
      *(&v69 + 9) = *v60;
      *&v65 = v10;
      v70 = v36;
      v71 = v10;
      BYTE8(v65) = v58;
      v72 = v58;
      *&v73[3] = *&v62[3];
      *&v66 = v14;
      *(&v66 + 1) = v16;
      *&v67 = v18;
      *(&v67 + 1) = v20;
      LOBYTE(v68) = 0;
      *(&v68 + 1) = v30;
      *&v69 = v32;
      BYTE8(v69) = v34 & 1;
      *v73 = *v62;
      v74 = v14;
      v75 = v16;
      v76 = v18;
      v77 = v20;
      v78 = 0;
      *&v79[3] = *&v61[3];
      *v79 = *v61;
      v80 = v30;
      v81 = v32;
      v82 = v34 & 1;
      *v83 = *v60;
      *&v83[3] = *&v60[3];
      v84 = v36;
      sub_F734(&v65, v63);
      sub_F7A4(&v71);
      *&v63[39] = v67;
      *&v63[55] = v68;
      *&v63[71] = v69;
      *&v63[87] = v70;
      *&v63[7] = v65;
      *&v63[23] = v66;
      LOBYTE(v30) = v64;
      v37 = sub_21B1C();
      KeyPath = swift_getKeyPath();
      v39 = sub_21A1C();
      v40 = *sub_1035C();
      sub_217BC();
      v42 = v41;
      v44 = v43;
      v46 = v45;
      v48 = v47;
      v49 = sub_219CC();
      v50 = *sub_10370();
      result = sub_217BC();
      v52 = *&v63[48];
      *(a1 + 49) = *&v63[32];
      *(a1 + 65) = v52;
      *(a1 + 81) = *&v63[64];
      *(a1 + 96) = *&v63[79];
      v53 = *&v63[16];
      *(a1 + 17) = *v63;
      *a1 = v59;
      *(a1 + 8) = 0;
      *(a1 + 16) = v30;
      *(a1 + 33) = v53;
      *(a1 + 112) = KeyPath;
      *(a1 + 120) = v37;
      *(a1 + 128) = v39;
      *(a1 + 136) = v42;
      *(a1 + 144) = v44;
      *(a1 + 152) = v46;
      *(a1 + 160) = v48;
      *(a1 + 168) = 0;
      *(a1 + 176) = v49;
      *(a1 + 184) = v54;
      *(a1 + 192) = v55;
      *(a1 + 200) = v56;
      *(a1 + 208) = v57;
      *(a1 + 216) = 0;
      return result;
    case 0:
      v22 = sub_10588();
      goto LABEL_12;
  }

LABEL_13:
  result = sub_21DBC();
  __break(1u);
  return result;
}

uint64_t sub_E098(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_E110(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_E098(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_E194()
{
  result = qword_37268;
  if (!qword_37268)
  {
    sub_E098(&qword_37270, &qword_24E00);
    sub_F530(&qword_37278, &qword_37280, &qword_24E08);
    sub_F530(&qword_37288, &qword_37290, &qword_24E10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_37268);
  }

  return result;
}

uint64_t sub_E278()
{
  type metadata accessor for CallRecordingStartButtonViewModel(0);
  sub_E888(&qword_37240, type metadata accessor for CallRecordingStartButtonViewModel);

  return sub_2180C();
}

uint64_t sub_E324@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21B7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_E38C(uint64_t a1)
{
  v3 = sub_21B7C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_E414()
{
  sub_21BEC();
  sub_BE90(&qword_372B0, &qword_24E30);
  sub_BE90(&qword_372B8, &qword_24E38);
  sub_BE90(&qword_372C0, &qword_24E40);
  sub_F530(&qword_372C8, &qword_372B0, &qword_24E30);
  sub_21B9C();
  sub_E888(&qword_372D0, &type metadata accessor for Capsule);
  swift_getOpaqueTypeConformance2();
  sub_E8D0();
  return sub_21AEC();
}

uint64_t sub_E5AC()
{
  v0 = *(*(sub_21B9C() - 8) + 64);
  __chkstk_darwin();
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = enum case for RoundedCornerStyle.continuous(_:);
  v4 = sub_218AC();
  (*(*(v4 - 8) + 104))(v2, v3, v4);
  sub_BE90(&qword_372B0, &qword_24E30);
  sub_F530(&qword_372C8, &qword_372B0, &qword_24E30);
  sub_E888(&qword_372D0, &type metadata accessor for Capsule);
  sub_21ACC();
  return sub_F6D8(v2);
}

uint64_t sub_E734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *sub_10404();

  v5 = sub_219DC();
  v6 = sub_BE90(&qword_372B0, &qword_24E30);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  v7 = a2 + *(sub_BE90(&qword_372E8, &qword_24E48) + 36);
  *v7 = v4;
  *(v7 + 8) = v5;
  v8 = *sub_104D8();
  v9 = (a2 + *(sub_BE90(&qword_372C0, &qword_24E40) + 36));
  v10 = *(sub_2183C() + 20);
  v11 = enum case for RoundedCornerStyle.continuous(_:);
  v12 = sub_218AC();
  (*(*(v12 - 8) + 104))(&v9[v10], v11, v12);
  *v9 = v8;
  *(v9 + 1) = v8;
  result = sub_BE90(&qword_37308, &qword_25FA0);
  *&v9[*(result + 36)] = 256;
  return result;
}

uint64_t sub_E888(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_E8D0()
{
  result = qword_372D8;
  if (!qword_372D8)
  {
    sub_E098(&qword_372C0, &qword_24E40);
    sub_E988();
    sub_F530(&qword_37300, &qword_37308, &qword_25FA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_372D8);
  }

  return result;
}

unint64_t sub_E988()
{
  result = qword_372E0;
  if (!qword_372E0)
  {
    sub_E098(&qword_372E8, &qword_24E48);
    sub_F530(&qword_372C8, &qword_372B0, &qword_24E30);
    sub_F530(&qword_372F0, &qword_372F8, &unk_24E50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_372E0);
  }

  return result;
}

uint64_t sub_EA6C()
{
  v0 = sub_21BBC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21BDC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BAC();
  sub_21BCC();
  (*(v1 + 8))(v4, v0);
  sub_21B6C();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_EBE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21B7C();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

unint64_t sub_EC58()
{
  result = qword_37310;
  if (!qword_37310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_37310);
  }

  return result;
}

uint64_t sub_ED14()
{
  sub_21BEC();
  sub_BE90(&qword_372B0, &qword_24E30);
  sub_BE90(&qword_372B8, &qword_24E38);
  sub_BE90(&qword_372C0, &qword_24E40);
  sub_F530(&qword_372C8, &qword_372B0, &qword_24E30);
  sub_21B9C();
  sub_E888(&qword_372D0, &type metadata accessor for Capsule);
  swift_getOpaqueTypeConformance2();
  sub_E8D0();
  return sub_21AEC();
}

void sub_EEC4()
{
  sub_EFE8(319, &qword_37340);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_EFE8(319, &qword_37348);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_F034();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_EFE8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_217AC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_F034()
{
  if (!qword_37350)
  {
    sub_E098(&qword_37228, &qword_24D90);
    v0 = sub_217AC();
    if (!v1)
    {
      atomic_store(v0, &qword_37350);
    }
  }
}

__n128 sub_F098(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_F0A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_F0EC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_F14C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B7C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_F1CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B7C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_F25C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_F294()
{
  result = sub_21B7C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_F304()
{
  result = qword_374F0;
  if (!qword_374F0)
  {
    sub_E098(&qword_372A8, &qword_24E28);
    sub_F3BC();
    sub_F530(&qword_37520, &qword_37528, "ju");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_374F0);
  }

  return result;
}

unint64_t sub_F3BC()
{
  result = qword_374F8;
  if (!qword_374F8)
  {
    sub_E098(&qword_372A0, &qword_24E20);
    sub_F478();
    sub_E888(&qword_37518, type metadata accessor for RecordButtonModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_374F8);
  }

  return result;
}

unint64_t sub_F478()
{
  result = qword_37500;
  if (!qword_37500)
  {
    sub_E098(&qword_37298, &qword_24E18);
    sub_F530(&qword_37508, &qword_37510, "&u");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_37500);
  }

  return result;
}

uint64_t sub_F530(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_E098(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_F578()
{
  sub_E098(&qword_372B0, &qword_24E30);
  sub_E098(&qword_372B8, &qword_24E38);
  sub_E098(&qword_372C0, &qword_24E40);
  sub_F530(&qword_372C8, &qword_372B0, &qword_24E30);
  sub_21B9C();
  sub_E888(&qword_372D0, &type metadata accessor for Capsule);
  swift_getOpaqueTypeConformance2();
  sub_E8D0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_F6D8(uint64_t a1)
{
  v2 = sub_21B9C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_F734(uint64_t a1, uint64_t a2)
{
  v4 = sub_BE90(&qword_37530, &qword_250B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_F7A4(uint64_t a1)
{
  v2 = sub_BE90(&qword_37530, &qword_250B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_F80C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2185C();
  *a1 = result;
  return result;
}

uint64_t sub_F838(uint64_t *a1)
{
  v1 = *a1;

  return sub_2186C();
}

unint64_t sub_F864()
{
  result = qword_37538;
  if (!qword_37538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_37538);
  }

  return result;
}

uint64_t sub_F8B8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_F8C8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void sub_F930()
{
  v0 = objc_opt_self();
  v1 = sub_21C5C();
  v2 = [v0 _rpLocalizedStringFromFrameworkBundleWithKey:v1];

  v3 = sub_21C6C();
  v5 = v4;

  qword_38A78 = v3;
  unk_38A80 = v5;
}

uint64_t *sub_F9C8()
{
  if (qword_38118 != -1)
  {
    swift_once();
  }

  return &qword_38A78;
}

void sub_FA40()
{
  v0 = objc_opt_self();
  v1 = sub_21C5C();
  v2 = [v0 _rpLocalizedStringFromFrameworkBundleWithKey:v1];

  v3 = sub_21C6C();
  v5 = v4;

  qword_38A88 = v3;
  unk_38A90 = v5;
}

uint64_t *sub_FAD8()
{
  if (qword_38120 != -1)
  {
    swift_once();
  }

  return &qword_38A88;
}

void sub_FB50()
{
  v0 = objc_opt_self();
  v1 = sub_21C5C();
  v2 = [v0 _rpLocalizedStringFromFrameworkBundleWithKey:v1];

  v3 = sub_21C6C();
  v5 = v4;

  qword_38A98 = v3;
  unk_38AA0 = v5;
}

uint64_t *sub_FBE8()
{
  if (qword_38128 != -1)
  {
    swift_once();
  }

  return &qword_38A98;
}

void sub_FC60()
{
  v0 = objc_opt_self();
  v1 = sub_21C5C();
  v2 = [v0 _rpLocalizedStringFromFrameworkBundleWithKey:v1];

  v3 = sub_21C6C();
  v5 = v4;

  qword_38AA8 = v3;
  unk_38AB0 = v5;
}

uint64_t *sub_FCF8()
{
  if (qword_38130 != -1)
  {
    swift_once();
  }

  return &qword_38AA8;
}

void sub_FD70()
{
  v0 = objc_opt_self();
  v1 = sub_21C5C();
  v2 = [v0 _rpLocalizedStringFromFrameworkBundleWithKey:v1];

  v3 = sub_21C6C();
  v5 = v4;

  qword_38AB8 = v3;
  unk_38AC0 = v5;
}

uint64_t *sub_FE08()
{
  if (qword_38138 != -1)
  {
    swift_once();
  }

  return &qword_38AB8;
}

uint64_t *sub_FF74()
{
  if (qword_38140 != -1)
  {
    swift_once();
  }

  return &qword_38AC8;
}

void sub_100CC()
{
  v0 = objc_opt_self();
  v1 = sub_21C5C();
  v2 = [v0 _rpLocalizedStringFromFrameworkBundleWithKey:v1];

  v3 = sub_21C6C();
  v5 = v4;

  qword_38AD0 = v3;
  *algn_38AD8 = v5;
}

uint64_t *sub_10164()
{
  if (qword_38148 != -1)
  {
    swift_once();
  }

  return &qword_38AD0;
}

void sub_101DC()
{
  v0 = objc_opt_self();
  v1 = sub_21C5C();
  v2 = [v0 _rpLocalizedStringFromFrameworkBundleWithKey:v1];

  v3 = sub_21C6C();
  v5 = v4;

  qword_38AE0 = v3;
  *algn_38AE8 = v5;
}

uint64_t *sub_10274()
{
  if (qword_38150 != -1)
  {
    swift_once();
  }

  return &qword_38AE0;
}

uint64_t sub_103AC(uint64_t a1, void (*a2)(void), uint64_t *a3)
{
  a2();
  v4 = sub_21B2C();

  *a3 = v4;
  return result;
}

uint64_t *sub_10404()
{
  if (qword_38158 != -1)
  {
    swift_once();
  }

  return &qword_38AF0;
}

uint64_t sub_10478(void *a1, uint64_t *a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v6 = *a2;
  }
}

void sub_104F0()
{
  v0 = objc_opt_self();
  v1 = sub_21C5C();
  v2 = [v0 _rpLocalizedStringFromFrameworkBundleWithKey:v1];

  v3 = sub_21C6C();
  v5 = v4;

  qword_38AF8 = v3;
  unk_38B00 = v5;
}

uint64_t *sub_10588()
{
  if (qword_38160 != -1)
  {
    swift_once();
  }

  return &qword_38AF8;
}

void sub_10600()
{
  v0 = objc_opt_self();
  v1 = sub_21C5C();
  v2 = [v0 _rpLocalizedStringFromFrameworkBundleWithKey:v1];

  v3 = sub_21C6C();
  v5 = v4;

  qword_38B08 = v3;
  unk_38B10 = v5;
}

uint64_t *sub_10698()
{
  if (qword_38168 != -1)
  {
    swift_once();
  }

  return &qword_38B08;
}

void sub_10710()
{
  v0 = objc_opt_self();
  v1 = sub_21C5C();
  v2 = [v0 _rpLocalizedStringFromFrameworkBundleWithKey:v1];

  v3 = sub_21C6C();
  v5 = v4;

  qword_38B18 = v3;
  unk_38B20 = v5;
}

uint64_t *sub_107A8()
{
  if (qword_38170 != -1)
  {
    swift_once();
  }

  return &qword_38B18;
}

uint64_t sub_10820(void *a1, void *a2, void *a3)
{
  if (*a1 != -1)
  {
    v6 = a2;
    v7 = a3;
    swift_once();
    a2 = v6;
    a3 = v7;
  }

  v3 = *a2;
  v4 = *a3;

  return v3;
}

uint64_t sub_109C4()
{
  v0 = sub_2172C();
  sub_10AE4(v0, qword_38B28);
  sub_10AAC(v0, qword_38B28);
  return sub_2171C();
}

uint64_t sub_10A48()
{
  if (qword_38178 != -1)
  {
    swift_once();
  }

  v0 = sub_2172C();

  return sub_10AAC(v0, qword_38B28);
}

uint64_t sub_10AAC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_10AE4(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

unint64_t sub_10B48()
{
  result = qword_37540;
  if (!qword_37540)
  {
    type metadata accessor for VideoEffectsPreview();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_37540);
  }

  return result;
}

uint64_t sub_10BA0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_218BC();
  v5 = *(*a1 + 200);

  v7 = v5(v6);
  if (v7)
  {

    type metadata accessor for VideoEffectsPreview();
    sub_10B48();
    v8 = sub_2180C();
    v10 = v9;
    v11 = (*(*a1 + 440))();
    result = (*(*a1 + 344))();
    if (v11)
    {
      v13 = 1.0 / v13;
    }
  }

  else
  {

    v8 = 0;
    v10 = 0;
    v13 = 0.0;
  }

  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v8;
  *(a2 + 32) = v10;
  *(a2 + 40) = v13;
  *(a2 + 48) = 0;
  return result;
}

uint64_t sub_10CEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*a1 + 200);

  v6 = v4(v5);
  if (v6)
  {

    type metadata accessor for VideoEffectsPreview();
    sub_10B48();
    v7 = sub_2180C();
    v9 = v8;
    v10 = (*(*a1 + 440))();
    result = (*(*a1 + 344))();
    if (v10)
    {
      v12 = 1.0 / v12;
    }
  }

  else
  {

    v7 = 0;
    v9 = 0;
    v12 = 0.0;
  }

  *a2 = v7;
  *(a2 + 8) = v9;
  *(a2 + 16) = v12;
  *(a2 + 24) = 0;
  return result;
}

__n128 sub_10E20@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = sub_218BC();
  sub_10CEC(v3, &v8);
  v5 = v9;
  v6 = v10;
  result = v8;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = result;
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_10E90()
{
  type metadata accessor for VideoEffectsPreview();
  sub_10B48();

  return sub_2180C();
}

uint64_t sub_10EE0()
{
  type metadata accessor for VideoEffectsPreview();
  sub_10B48();

  return sub_2181C();
}

uint64_t sub_10F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2172C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10A48();
  (*(v5 + 16))(v8, v9, v4);

  v10 = sub_2170C();
  v11 = sub_21CDC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = (*(*a3 + 152))();
    *(v12 + 4) = v14;
    *v13 = v14;
    _os_log_impl(&dword_0, v10, v11, "VideoViewRep: makeUIView %@", v12, 0xCu);
    sub_11294(v13);
  }

  v15 = (*(v5 + 8))(v8, v4);
  result = (*(*a3 + 152))(v15);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_111A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_115B0();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_11208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_115B0();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1126C()
{
  sub_115B0();
  sub_2196C();
  __break(1u);
}

uint64_t sub_11294(uint64_t a1)
{
  v2 = sub_BE90(&qword_37548, &qword_252F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_112FC(void *a1)
{
  v2 = sub_2172C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10A48();
  (*(v3 + 16))(v6, v7, v2);
  v8 = a1;
  v9 = sub_2170C();
  v10 = sub_21CDC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v8;
    *v12 = v8;
    v13 = v8;
    _os_log_impl(&dword_0, v9, v10, "VideoViewRep: updateUIView %@", v11, 0xCu);
    sub_11294(v12);
  }

  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_114C0()
{
  result = qword_37550;
  if (!qword_37550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_37550);
  }

  return result;
}

unint64_t sub_1154C()
{
  result = qword_37558;
  if (!qword_37558)
  {
    sub_E098(&qword_37560, &unk_25490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_37558);
  }

  return result;
}

unint64_t sub_115B0()
{
  result = qword_37568;
  if (!qword_37568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_37568);
  }

  return result;
}

char *RPCCUICallRecordingBackgroundView.init(frame:parent:)(void *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v12 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR33RPCCUICallRecordingBackgroundView_viewModel;
  type metadata accessor for CallRecordingStartButtonViewModel(0);
  v13 = sub_D440();
  *&v6[v12] = v13;
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = *(*v13 + 208);

  v15(sub_11BC4, v14);

  v16 = *&v6[v12];

  v18 = sub_F8F8(v17);
  v20 = v19;
  type metadata accessor for RPHostingViewController();
  v50 = v18;
  v51 = v20;
  sub_11C18();

  v21 = sub_21B8C();
  *&v6[OBJC_IVAR____TtC25RPControlCenterModuleHQLR33RPCCUICallRecordingBackgroundView_hostingViewController] = RPHostingViewController.__allocating_init(rootView:)(v21);
  v49.receiver = v6;
  v49.super_class = type metadata accessor for RPCCUICallRecordingBackgroundView();
  v22 = objc_msgSendSuper2(&v49, "initWithFrame:", a2, a3, a4, a5);
  v23 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR33RPCCUICallRecordingBackgroundView_hostingViewController;
  v24 = *&v22[OBJC_IVAR____TtC25RPControlCenterModuleHQLR33RPCCUICallRecordingBackgroundView_hostingViewController];
  v25 = v22;
  result = [v24 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v27 = result;
  [v25 addSubview:result];

  [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
  result = [*&v22[v23] view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v28 = result;
  v48 = a1;
  [result setTranslatesAutoresizingMaskIntoConstraints:0];

  sub_BE90(&qword_37588, qword_254B0);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_254A0;
  result = [*&v22[v23] view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v30 = result;
  v31 = [result leadingAnchor];

  v32 = [v25 leadingAnchor];
  v33 = [v31 constraintEqualToAnchor:v32];

  *(v29 + 32) = v33;
  result = [*&v22[v23] view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v34 = result;
  v35 = [result trailingAnchor];

  v36 = [v25 trailingAnchor];
  v37 = [v35 constraintEqualToAnchor:v36];

  *(v29 + 40) = v37;
  result = [*&v22[v23] view];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v38 = result;
  v39 = [result topAnchor];

  v40 = [v25 topAnchor];
  v41 = [v39 constraintEqualToAnchor:v40];

  *(v29 + 48) = v41;
  result = [*&v22[v23] view];
  if (result)
  {
    v42 = result;
    v43 = objc_opt_self();
    v44 = [v42 bottomAnchor];

    v45 = [v25 bottomAnchor];
    v46 = [v44 constraintEqualToAnchor:v45];

    *(v29 + 56) = v46;
    sub_11C90();
    isa = sub_21CBC().super.isa;

    [v43 activateConstraints:isa];

    return v25;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_11B8C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_11BC4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  [Strong recordButtonTapped];
}

unint64_t sub_11C18()
{
  result = qword_37578;
  if (!qword_37578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_37578);
  }

  return result;
}

unint64_t sub_11C90()
{
  result = qword_37590;
  if (!qword_37590)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_37590);
  }

  return result;
}

id RPHostingViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

void sub_11D78()
{
  v1 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR33RPCCUICallRecordingBackgroundView_viewModel;
  type metadata accessor for CallRecordingStartButtonViewModel(0);
  *(v0 + v1) = sub_D440();
  sub_21D7C();
  __break(1u);
}

Swift::Void __swiftcall RPCCUICallRecordingBackgroundView.layoutSubviews()()
{
  v1 = [*&v0[OBJC_IVAR____TtC25RPControlCenterModuleHQLR33RPCCUICallRecordingBackgroundView_hostingViewController] view];
  if (v1)
  {
    [v0 bounds];
    [v1 setFrame:?];
  }

  else
  {
    __break(1u);
  }
}

void sub_11FA0()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = *(v0 + OBJC_IVAR____TtC25RPControlCenterModuleHQLR33RPCCUICallRecordingBackgroundView_viewModel);
  v5 = v1;
  if ([v1 highQualityLocalRecordingOn])
  {
    v3 = &dword_0 + 1;
  }

  else
  {
    v3 = [v5 hqlrCountdownStarted];
  }

  (*(*v2 + 112))(v3);
  if ([v5 highQualityLocalRecordingReady])
  {
    v4 = 1;
  }

  else if ([v5 highQualityLocalRecordingOn])
  {
    v4 = 2;
  }

  else if ([v5 hqlrCountdownStarted])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  (*(*v2 + 160))(v4);
}

id RPCCUICallRecordingBackgroundView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame:{a1, a2, a3, a4}];
}

id RPCCUICallRecordingBackgroundView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RPCCUICallRecordingBackgroundView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_12254()
{
  v1 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR22CallRecordingGlyphView_package;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_122A0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR22CallRecordingGlyphView_package;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1235C()
{
  v0 = sub_1087C();
  v1 = *v0;
  v2 = *(v0 + 1);

  return v1;
}

uint64_t sub_12390()
{
  v1 = (v0 + OBJC_IVAR____TtC25RPControlCenterModuleHQLR22CallRecordingGlyphView_glyphState);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

id sub_123E8(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC25RPControlCenterModuleHQLR22CallRecordingGlyphView_glyphState];
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 1);
  *v5 = a1;
  *(v5 + 1) = a2;
  if (v6 == a1 && v7 == a2)
  {
  }

  v9 = sub_21DAC();

  if ((v9 & 1) == 0)
  {
    return [v2 invalidateIntrinsicContentSize];
  }

  return result;
}

void (*sub_12498(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR22CallRecordingGlyphView_glyphState;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;

  return sub_12538;
}

void sub_12538(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = (*(*a1 + 40) + *(*a1 + 48));
  v6 = *v5;
  v7 = v5[1];
  *v5 = v3;
  v5[1] = v4;
  v9 = v6 == v3 && v7 == v4;
  if (a2)
  {
    if (v9)
    {
    }

    else
    {
      v10 = sub_21DAC();

      if ((v10 & 1) == 0)
      {
        [*(v2 + 40) invalidateIntrinsicContentSize];
      }
    }

    v11 = *(v2 + 32);
    goto LABEL_15;
  }

  if (v9)
  {
LABEL_15:

    goto LABEL_16;
  }

  v12 = sub_21DAC();

  if ((v12 & 1) == 0)
  {
    [*(v2 + 40) invalidateIntrinsicContentSize];
  }

LABEL_16:

  free(v2);
}

id sub_12638()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *sub_1266C()
{
  *&v0[OBJC_IVAR____TtC25RPControlCenterModuleHQLR22CallRecordingGlyphView_package] = 0;
  v1 = &v0[OBJC_IVAR____TtC25RPControlCenterModuleHQLR22CallRecordingGlyphView_glyphState];
  v2 = sub_1087C();
  v3 = *(v2 + 1);
  *v1 = *v2;
  *(v1 + 1) = v3;
  v15.receiver = v0;
  v15.super_class = type metadata accessor for CallRecordingGlyphView();

  v4 = objc_msgSendSuper2(&v15, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = objc_opt_self();
  v7 = v4;
  v8 = [v6 bundleForClass:ObjCClassFromMetadata];
  v9 = objc_allocWithZone(BSUICAPackageView);
  v10 = sub_21C5C();
  v11 = [v9 initWithPackageName:v10 inBundle:v8];

  v12 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR22CallRecordingGlyphView_package;
  swift_beginAccess();
  v13 = *&v7[v12];
  *&v7[v12] = v11;

  return v7;
}

void sub_127E4()
{
  *(v0 + OBJC_IVAR____TtC25RPControlCenterModuleHQLR22CallRecordingGlyphView_package) = 0;
  v1 = (v0 + OBJC_IVAR____TtC25RPControlCenterModuleHQLR22CallRecordingGlyphView_glyphState);
  v2 = sub_1087C();
  v3 = *(v2 + 1);
  *v1 = *v2;
  v1[1] = v3;
  sub_21D7C();
  __break(1u);
}

void sub_128CC()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for CallRecordingGlyphView();
  v1 = objc_msgSendSuper2(&v14, "layoutSubviews");
  v2 = *(&stru_20.nsects + (swift_isaMask & *v0));
  v3 = (v2)(v1);
  if (v3)
  {
    v4 = v3;
    (*&stru_68.segname[swift_isaMask & *v0])();
    v5 = sub_21C5C();

    [v4 setState:v5];
  }

  v6 = v2();
  if (v6)
  {
    v7 = v6;
    [v6 sizeToFit];
  }

  v8 = v2();
  if (v8)
  {
    v9 = v8;
    [v0 bounds];
    MidX = CGRectGetMidX(v15);
    [v0 bounds];
    [v9 setCenter:{MidX, CGRectGetMidY(v16)}];
  }

  v11 = v2();
  if (v11)
  {
    v12 = v11;
    [v11 setAlpha:1.0];
  }

  v13 = v2();
  [v0 insertSubview:v13 above:v0];
}

double sub_12B00()
{
  v0 = *sub_10940();
  v1 = *sub_1094C();
  return v0;
}

uint64_t sub_12BFC()
{
  v1 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR23RPCCUICallRecordingView_glyphVisible;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_12C40(char a1)
{
  v3 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR23RPCCUICallRecordingView_glyphVisible;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_12CF0()
{
  v1 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR23RPCCUICallRecordingView_valueVisible;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_12D34(char a1)
{
  v3 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR23RPCCUICallRecordingView_valueVisible;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_12DEC()
{
  v1 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR23RPCCUICallRecordingView_continuousSliderCornerRadius;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_12E30(double a1)
{
  v3 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR23RPCCUICallRecordingView_continuousSliderCornerRadius;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id variable initialization expression of RPCCUICallRecordingView.glyphView()
{
  v0 = objc_allocWithZone(type metadata accessor for CallRecordingGlyphView());

  return [v0 init];
}

void RPCCUICallRecordingView.init(frame:parent:audioOnly:)(void *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  v6[OBJC_IVAR____TtC25RPControlCenterModuleHQLR23RPCCUICallRecordingView_glyphVisible] = 0;
  v6[OBJC_IVAR____TtC25RPControlCenterModuleHQLR23RPCCUICallRecordingView_valueVisible] = 0;
  *&v6[OBJC_IVAR____TtC25RPControlCenterModuleHQLR23RPCCUICallRecordingView_continuousSliderCornerRadius] = 0;
  *&v6[OBJC_IVAR____TtC25RPControlCenterModuleHQLR23RPCCUICallRecordingView_hostingViewController] = 0;
  v14 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR23RPCCUICallRecordingView_viewModel;
  type metadata accessor for CallRecordingViewModel();
  *&v6[v14] = sub_1E530();
  v15 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR23RPCCUICallRecordingView_preview;
  type metadata accessor for VideoEffectsPreview();
  *&v6[v15] = sub_189F0();
  v16 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR23RPCCUICallRecordingView_glyphView;
  *&v7[v16] = [objc_allocWithZone(type metadata accessor for CallRecordingGlyphView()) init];
  v78.receiver = v7;
  v78.super_class = type metadata accessor for RPCCUICallRecordingView();
  v17 = objc_msgSendSuper2(&v78, "initWithFrame:", a3, a4, a5, a6);
  v18 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR23RPCCUICallRecordingView_viewModel;
  v19 = *(**&v17[OBJC_IVAR____TtC25RPControlCenterModuleHQLR23RPCCUICallRecordingView_viewModel] + 280);

  v19(a2);

  v20 = *&v17[v18];
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = *(*v20 + 328);

  v22(sub_15308, v21);

  v23 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR23RPCCUICallRecordingView_preview;
  v24 = *&v17[OBJC_IVAR____TtC25RPControlCenterModuleHQLR23RPCCUICallRecordingView_preview];

  v25 = *sub_10080();
  v26.n128_u64[0] = *sub_1009C();
  (*(*v24 + 496))(v25, v26);

  v27 = *&v17[v18];
  v28 = *&v17[v23];

  sub_1EC18();
  type metadata accessor for RPHostingViewController();
  sub_15310();

  v29 = sub_21B8C();
  v30 = RPHostingViewController.__allocating_init(rootView:)(v29);
  v31 = [v30 view];
  if (!v31)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v32 = v31;
  [v17 addSubview:v31];

  v33 = *&v17[OBJC_IVAR____TtC25RPControlCenterModuleHQLR23RPCCUICallRecordingView_glyphView];
  if (!v33 || (v34 = *&v17[OBJC_IVAR____TtC25RPControlCenterModuleHQLR23RPCCUICallRecordingView_glyphView], (v35 = swift_dynamicCastClass()) == 0))
  {

    goto LABEL_11;
  }

  v36 = v35;
  v37 = v33;
  [v17 addSubview:v36];
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  v38 = [v30 view];
  if (!v38)
  {
    goto LABEL_13;
  }

  v39 = v38;
  v77 = a1;
  [v38 setTranslatesAutoresizingMaskIntoConstraints:0];

  [v36 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_BE90(&qword_37588, qword_254B0);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_25510;
  v41 = [v30 view];
  if (!v41)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v42 = v41;
  v43 = [v41 leadingAnchor];

  v44 = [v17 leadingAnchor];
  v45 = [v43 constraintEqualToAnchor:v44];

  *(v40 + 32) = v45;
  v46 = [v30 view];
  if (!v46)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v47 = v46;
  v48 = [v46 trailingAnchor];

  v49 = [v17 trailingAnchor];
  v50 = [v48 constraintEqualToAnchor:v49];

  *(v40 + 40) = v50;
  v51 = [v30 view];
  if (!v51)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v52 = v51;
  v53 = [v51 topAnchor];

  v54 = [v17 topAnchor];
  v55 = [v53 constraintEqualToAnchor:v54];

  *(v40 + 48) = v55;
  v56 = [v30 view];

  if (v56)
  {
    v76 = objc_opt_self();
    v57 = [v56 bottomAnchor];

    v58 = [v17 bottomAnchor];
    v59 = [v57 constraintEqualToAnchor:v58];

    *(v40 + 56) = v59;
    v60 = [v36 leadingAnchor];

    v61 = [v17 leadingAnchor];
    v62 = [v60 constraintEqualToAnchor:v61];

    *(v40 + 64) = v62;
    v63 = [v36 trailingAnchor];

    v64 = [v17 trailingAnchor];
    v65 = [v63 constraintEqualToAnchor:v64];

    *(v40 + 72) = v65;
    v66 = [v36 topAnchor];

    v67 = [v17 topAnchor];
    v68 = [v66 constraintEqualToAnchor:v67 constant:*sub_1096C()];

    *(v40 + 80) = v68;
    v69 = [v36 widthAnchor];

    v70 = sub_10958();
    v71 = [v69 constraintEqualToConstant:*v70];

    *(v40 + 88) = v71;
    v72 = [v36 heightAnchor];

    v73 = [v72 constraintEqualToConstant:*v70];
    *(v40 + 96) = v73;
    sub_11C90();
    isa = sub_21CBC().super.isa;

    [v76 activateConstraints:isa];

    v75 = *&v17[OBJC_IVAR____TtC25RPControlCenterModuleHQLR23RPCCUICallRecordingView_hostingViewController];
    *&v17[OBJC_IVAR____TtC25RPControlCenterModuleHQLR23RPCCUICallRecordingView_hostingViewController] = v30;
    v30 = v75;
LABEL_11:

    return;
  }

LABEL_17:
  __break(1u);
}

void sub_1385C(char a1)
{
  v2 = sub_2172C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = sub_10A48();
    (*(v3 + 16))(v6, v9, v2);
    v10 = sub_2170C();
    v11 = sub_21CDC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 67109120;
      *(v12 + 4) = a1 & 1;
      _os_log_impl(&dword_0, v10, v11, "audio only toggled %{BOOL}d", v12, 8u);
    }

    (*(v3 + 8))(v6, v2);
    [v8 audioOnlyToggled:a1 & 1];
  }
}

Swift::Void __swiftcall RPCCUICallRecordingView.setValueVisible(_:)(Swift::Bool a1)
{
  (*(&stru_68.flags + (swift_isaMask & *v1)))();
  v3 = 0.0;
  if (a1)
  {
    v3 = 1.0;
  }

  [v1 setAlpha:v3];
}

Swift::Void __swiftcall RPCCUICallRecordingView.isCountingDown(_:)(Swift::Bool a1)
{
  v3 = *(**(v1 + OBJC_IVAR____TtC25RPControlCenterModuleHQLR23RPCCUICallRecordingView_viewModel) + 184);

  v3(a1);
}

void RPCCUICallRecordingView.updateCallRecordingState(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2172C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10A48();
  (*(v5 + 16))(v8, v9, v4);
  v10 = sub_2170C();
  v11 = sub_21CDC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = CallRecordingState.rawValue.getter(a1);
    _os_log_impl(&dword_0, v10, v11, "Setting recording state to %ld", v12, 0xCu);
  }

  (*(v5 + 8))(v8, v4);
  v13 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR23RPCCUICallRecordingView_viewModel;
  v14 = *(**(v2 + OBJC_IVAR____TtC25RPControlCenterModuleHQLR23RPCCUICallRecordingView_viewModel) + 136);

  v14(a1);

  v16[2] = 0;
  v16[3] = a1;
  sub_15A04();
  sub_21CAC();
  sub_21CAC();
  if (v16[1] == v16[0])
  {
    v15 = *(**(v2 + v13) + 352);

    v15(206967550000, 0xE500000000000000);
  }

  sub_14DE0(a1);
}

uint64_t RPCCUICallRecordingView.setCountdownState(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2172C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10A48();
  (*(v5 + 16))(v8, v9, v4);
  v10 = sub_2170C();
  v11 = sub_21CDC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = CallRecordingState.rawValue.getter(a1);
    _os_log_impl(&dword_0, v10, v11, "Setting countdown state to %ld", v12, 0xCu);
  }

  (*(v5 + 8))(v8, v4);
  v13 = *(**(v2 + OBJC_IVAR____TtC25RPControlCenterModuleHQLR23RPCCUICallRecordingView_viewModel) + 232);

  v13(a1);
}

Swift::Void __swiftcall RPCCUICallRecordingView.setTimerLabel(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = *(**(v1 + OBJC_IVAR____TtC25RPControlCenterModuleHQLR23RPCCUICallRecordingView_viewModel) + 352);

  v4(countAndFlagsBits, object);
}

Swift::Void __swiftcall RPCCUICallRecordingView.setupVideoEffectsPreviewForAppear()()
{
  v1 = v0;
  v2 = sub_2172C();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = __chkstk_darwin(v2);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v50 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v50 - v12;
  __chkstk_darwin(v11);
  v15 = &v50 - v14;
  v16 = sub_10A48();
  v17 = v3[2];
  v51 = v16;
  v52 = v17;
  (v17)(v15);
  v18 = sub_2170C();
  v19 = sub_21CDC();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v53 = v13;
    *v20 = 0;
    _os_log_impl(&dword_0, v18, v19, "RPCCUICallRecordingView: prepare video effects preview", v20, 2u);
    v13 = v53;
  }

  v21 = v3[1];
  v53 = (v3 + 1);
  v21(v15, v2);
  v22 = v2;
  v23 = *(**(v1 + OBJC_IVAR____TtC25RPControlCenterModuleHQLR23RPCCUICallRecordingView_viewModel) + 272);

  v25 = v23(v24);

  if (v25)
  {
    v52(v13, v51, v22);
    v26 = sub_2170C();
    v27 = sub_21CDC();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_0, v26, v27, "RPCCUICallRecordingView: audio only, exit video effects setup", v28, 2u);
    }

    v29 = v13;
LABEL_14:
    v21(v29, v22);
    return;
  }

  v30 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR23RPCCUICallRecordingView_preview;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v34 = *(**(v1 + OBJC_IVAR____TtC25RPControlCenterModuleHQLR23RPCCUICallRecordingView_preview) + 536);

  v34(v35, CGRectZero.origin.x, y, width, height);

  v36 = *(**(v1 + v30) + 152);

  v38 = v36(v37);

  if (!v38)
  {
    v52(v7, v51, v22);
    v47 = sub_2170C();
    v48 = sub_21CDC();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_0, v47, v48, "RPCCUICallRecordingView: preview.videoView == nil", v49, 2u);
    }

    v29 = v7;
    goto LABEL_14;
  }

  v52(v10, v51, v22);
  v39 = sub_2170C();
  v40 = sub_21CDC();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_0, v39, v40, "RPCCUICallRecordingView: will start frame receiver", v41, 2u);
  }

  v21(v10, v22);
  v42 = *(**(v1 + v30) + 520);

  v42(v43);

  v44 = v38;
  v45 = [v44 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setVideoGravity:AVLayerVideoGravityResizeAspect];

  v46 = [v44 layer];
  [v46 setCornerRadius:*sub_FFE8()];
}

Swift::Void __swiftcall RPCCUICallRecordingView.teardownVideoEffectsPreviewForDisappear()()
{
  v1 = v0;
  v2 = sub_2172C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10A48();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_2170C();
  v9 = sub_21CDC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, "RPCCUICallRecordingView: will stop frame receiver", v10, 2u);
  }

  (*(v3 + 8))(v6, v2);
  v11 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR23RPCCUICallRecordingView_preview;
  v12 = *(**(v1 + OBJC_IVAR____TtC25RPControlCenterModuleHQLR23RPCCUICallRecordingView_preview) + 528);

  v12(v13);

  v14 = *(**(v1 + v11) + 544);

  v14(v15);
}

void sub_14DE0(uint64_t a1)
{
  v3 = sub_2172C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = (__chkstk_darwin)();
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v30 - v9;
  v11 = *(v1 + OBJC_IVAR____TtC25RPControlCenterModuleHQLR23RPCCUICallRecordingView_glyphView);
  if (v11 && (type metadata accessor for CallRecordingGlyphView(), (v12 = swift_dynamicCastClass()) != 0))
  {
    v13 = v12;
    v14 = v11;
    v15 = sub_10A48();
    (*(v4 + 16))(v10, v15, v3);
    v16 = sub_2170C();
    v17 = sub_21CDC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134217984;
      *(v18 + 4) = CallRecordingState.rawValue.getter(a1);
      _os_log_impl(&dword_0, v16, v17, "Setting glyph state to %ld", v18, 0xCu);
    }

    (*(v4 + 8))(v10, v3);
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        v24 = [objc_opt_self() sharedInstance];
        v25 = [v24 systemBannerEnabled];

        if (!v25)
        {
          v19 = sub_108A4();
          goto LABEL_20;
        }

LABEL_15:
        v19 = sub_1087C();
        goto LABEL_20;
      }

      if (a1 == 3)
      {
        v26 = [objc_opt_self() sharedInstance];
        v27 = [v26 systemBannerEnabled];

        if (v27)
        {
          v19 = sub_108F4();
        }

        else
        {
          v19 = sub_108CC();
        }

        goto LABEL_20;
      }
    }

    else
    {
      if (!a1)
      {
        v19 = sub_1091C();
LABEL_20:
        v28 = *v19;
        v29 = v19[1];

        sub_15A58(v13, v28, v29);

        return;
      }

      if (a1 == 1)
      {
        goto LABEL_15;
      }
    }

    v30[1] = a1;
    sub_21DBC();
    __break(1u);
  }

  else
  {
    v20 = sub_10A48();
    (*(v4 + 16))(v8, v20, v3);
    v21 = sub_2170C();
    v22 = sub_21CDC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_0, v21, v22, "Glyph view does not exist", v23, 2u);
    }

    (*(v4 + 8))(v8, v3);
  }
}

id sub_151E4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_152D0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_15310()
{
  result = qword_37608;
  if (!qword_37608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_37608);
  }

  return result;
}

uint64_t sub_15364(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_15430(v11, 0, 0, 1, a1, a2);
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
    sub_15D14(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_15CC8(v11);
  return v7;
}

unint64_t sub_15430(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1553C(a5, a6);
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
    result = sub_21D6C();
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

char *sub_1553C(uint64_t a1, unint64_t a2)
{
  v4 = sub_15588(a1, a2);
  sub_156B8(&off_31610);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_15588(uint64_t a1, unint64_t a2)
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

  v6 = sub_157A4(v5, 0);
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

  result = sub_21D6C();
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
        v10 = sub_21C9C();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_157A4(v10, 0);
        result = sub_21D4C();
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

uint64_t sub_156B8(uint64_t result)
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_15818(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_157A4(uint64_t a1, uint64_t a2)
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

  sub_BE90(&qword_37668, ".r");
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_15818(char *result, int64_t a2, char a3, char *a4)
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
    sub_BE90(&qword_37668, ".r");
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

void sub_1590C()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC25RPControlCenterModuleHQLR23RPCCUICallRecordingView_glyphVisible) = 0;
  *(v0 + OBJC_IVAR____TtC25RPControlCenterModuleHQLR23RPCCUICallRecordingView_valueVisible) = 0;
  *(v0 + OBJC_IVAR____TtC25RPControlCenterModuleHQLR23RPCCUICallRecordingView_continuousSliderCornerRadius) = 0;
  *(v0 + OBJC_IVAR____TtC25RPControlCenterModuleHQLR23RPCCUICallRecordingView_hostingViewController) = 0;
  v2 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR23RPCCUICallRecordingView_viewModel;
  type metadata accessor for CallRecordingViewModel();
  *(v0 + v2) = sub_1E530();
  v3 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR23RPCCUICallRecordingView_preview;
  type metadata accessor for VideoEffectsPreview();
  *(v0 + v3) = sub_189F0();
  v4 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR23RPCCUICallRecordingView_glyphView;
  *(v1 + v4) = [objc_allocWithZone(type metadata accessor for CallRecordingGlyphView()) init];
  sub_21D7C();
  __break(1u);
}

unint64_t sub_15A04()
{
  result = qword_37610;
  if (!qword_37610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_37610);
  }

  return result;
}

void sub_15A58(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_2172C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10A48();
  (*(v7 + 16))(v10, v11, v6);

  v12 = sub_2170C();
  v13 = sub_21CDC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v22 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_15364(a2, a3, &v22);
    _os_log_impl(&dword_0, v12, v13, "Updating glyph state to %s", v14, 0xCu);
    sub_15CC8(v15);
  }

  (*(v7 + 8))(v10, v6);
  v16 = *&stru_68.segname[(swift_isaMask & *a1) + 8];

  v17 = v16(a2, a3);
  v18 = (*(&stru_20.nsects + (swift_isaMask & *a1)))(v17);
  if (v18)
  {
    v19 = v18;
    v20 = sub_21C5C();
    [v19 setState:v20];
  }
}

uint64_t sub_15CC8(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_15D14(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

id RPHostingViewController.__allocating_init(rootView:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC25RPControlCenterModuleHQLR23RPHostingViewController_rootView] = a1;
  v8 = a1;
  v4 = objc_allocWithZone(sub_BE90(&qword_37678, qword_255A0));
  swift_retain_n();
  *&v3[OBJC_IVAR____TtC25RPControlCenterModuleHQLR23RPHostingViewController_hostingController] = sub_218CC();
  v7.receiver = v3;
  v7.super_class = v1;
  v5 = objc_msgSendSuper2(&v7, "initWithNibName:bundle:", 0, 0);

  return v5;
}

id RPHostingViewController.init(rootView:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC25RPControlCenterModuleHQLR23RPHostingViewController_rootView] = a1;
  v6 = a1;
  v2 = objc_allocWithZone(sub_BE90(&qword_37678, qword_255A0));
  swift_retain_n();
  *&v1[OBJC_IVAR____TtC25RPControlCenterModuleHQLR23RPHostingViewController_hostingController] = sub_218CC();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for RPHostingViewController();
  v3 = objc_msgSendSuper2(&v5, "initWithNibName:bundle:", 0, 0);

  return v3;
}

Swift::Void __swiftcall RPHostingViewController.viewDidLoad()()
{
  v1 = v0;
  v34.receiver = v0;
  v34.super_class = type metadata accessor for RPHostingViewController();
  objc_msgSendSuper2(&v34, "viewDidLoad");
  v2 = *&v0[OBJC_IVAR____TtC25RPControlCenterModuleHQLR23RPHostingViewController_hostingController];
  [v2 willMoveToParentViewController:v1];
  v3 = [objc_allocWithZone(UIView) init];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [v2 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = v4;
  [v3 addSubview:v4];

  [v2 didMoveToParentViewController:v1];
  v6 = [v2 view];
  if (!v6)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = v6;
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  v8 = [v2 view];
  if (!v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = v8;
  v10 = [objc_opt_self() clearColor];
  [v9 setBackgroundColor:v10];

  [v1 setView:v3];
  sub_BE90(&qword_37588, qword_254B0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_254A0;
  v12 = [v3 leadingAnchor];
  v13 = [v2 view];
  if (!v13)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v14 = v13;
  v15 = [v13 leadingAnchor];

  v16 = [v12 constraintEqualToAnchor:v15];
  *(v11 + 32) = v16;
  v17 = [v3 trailingAnchor];
  v18 = [v2 view];
  if (!v18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v19 = v18;
  v20 = [v18 trailingAnchor];

  v21 = [v17 constraintEqualToAnchor:v20];
  *(v11 + 40) = v21;
  v22 = [v3 topAnchor];
  v23 = [v2 view];
  if (!v23)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v24 = v23;
  v25 = [v23 topAnchor];

  v26 = [v22 constraintEqualToAnchor:v25];
  *(v11 + 48) = v26;
  v27 = [v3 bottomAnchor];
  v28 = [v2 view];
  if (v28)
  {
    v29 = v28;
    v30 = objc_opt_self();
    v31 = [v29 bottomAnchor];

    v32 = [v27 constraintEqualToAnchor:v31];
    *(v11 + 56) = v32;
    sub_11C90();
    isa = sub_21CBC().super.isa;

    [v30 activateConstraints:isa];

    return;
  }

LABEL_15:
  __break(1u);
}

id RPHostingViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_21C5C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id RPHostingViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RPHostingViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_16594()
{
  v0 = sub_2172C();
  sub_10AE4(v0, qword_38308);
  sub_10AAC(v0, qword_38308);
  return sub_2171C();
}

uint64_t sub_1663C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 152))();
  *a2 = result;
  return result;
}

uint64_t sub_16688(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 160);
  v4 = *a1;
  return v3(v2);
}

uint64_t (*sub_166F4(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2177C();
  return sub_F910;
}

uint64_t sub_167B4(uint64_t a1)
{
  v2 = sub_BE90(&qword_376C0, &qword_25668);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_BE90(&qword_376B8, &qword_25660);
  sub_2176C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_168EC(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_BE90(&qword_376C0, &qword_25668);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR19VideoEffectsPreview__videoView;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_BE90(&qword_376B8, &qword_25660);
  sub_2175C();
  swift_endAccess();
  return sub_C180;
}

uint64_t sub_16ACC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2178C();

  return v1;
}

uint64_t sub_16B38@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 200))();
  *a2 = result;
  return result;
}

uint64_t sub_16B84(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 208);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_16BF0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2179C();
}

uint64_t (*sub_16C5C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2177C();
  return sub_F910;
}

uint64_t sub_16D1C(uint64_t a1)
{
  v2 = sub_BE90(&qword_376D8, &qword_256C8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_BE90(&qword_376D0, &qword_256C0);
  sub_2176C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_16E54(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_BE90(&qword_376D8, &qword_256C8);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR19VideoEffectsPreview__frameReceiver;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_BE90(&qword_376D0, &qword_256C0);
  sub_2175C();
  swift_endAccess();
  return sub_F914;
}

id sub_16FC4()
{
  v0 = objc_allocWithZone(type metadata accessor for CaptureFrameReceiverObserver());

  return [v0 init];
}

uint64_t (*sub_170F0(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2177C();
  return sub_F910;
}

uint64_t sub_171BC(uint64_t a1)
{
  v2 = sub_BE90(&qword_376E8, &qword_25720);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_BE90(&qword_376E0, &qword_25718);
  sub_2176C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_172F4(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_BE90(&qword_376E8, &qword_25720);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR19VideoEffectsPreview__width;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_BE90(&qword_376E0, &qword_25718);
  sub_2175C();
  swift_endAccess();
  return sub_F914;
}

uint64_t (*sub_17530(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2177C();
  return sub_F910;
}

uint64_t sub_17600(uint64_t a1)
{
  v2 = sub_BE90(&qword_376E8, &qword_25720);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_BE90(&qword_376E0, &qword_25718);
  sub_2176C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_17738(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_BE90(&qword_376E8, &qword_25720);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR19VideoEffectsPreview__height;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_BE90(&qword_376E0, &qword_25718);
  sub_2175C();
  swift_endAccess();
  return sub_F914;
}

double sub_178EC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2178C();

  return v1;
}

uint64_t sub_17A10()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2179C();
}

uint64_t (*sub_17A80(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2177C();
  return sub_BE68;
}

uint64_t sub_17B4C(uint64_t a1)
{
  v2 = sub_BE90(&qword_376E8, &qword_25720);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_BE90(&qword_376E0, &qword_25718);
  sub_2176C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_17C84(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_BE90(&qword_376E8, &qword_25720);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR19VideoEffectsPreview__aspectRatio;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_BE90(&qword_376E0, &qword_25718);
  sub_2175C();
  swift_endAccess();
  return sub_F914;
}

uint64_t sub_17DF4(__int128 *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  type metadata accessor for CGAffineTransform(0);
  return sub_2174C();
}

double sub_17E6C@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2178C();

  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

double sub_17EF0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  (*(**a1 + 392))(v5);
  v3 = v5[1];
  *a2 = v5[0];
  a2[1] = v3;
  result = *&v6;
  a2[2] = v6;
  return result;
}

uint64_t sub_17F5C(_OWORD *a1, uint64_t a2)
{
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  v4[2] = a1[2];
  return (*(**a2 + 400))(v4);
}

uint64_t sub_17FC4(__int128 *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];

  return sub_2179C();
}

uint64_t (*sub_18040(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2177C();
  return sub_F910;
}

void sub_180E4(void *a1@<X8>)
{
  *a1 = 0x3FF0000000000000;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0x3FF0000000000000;
  a1[4] = 0;
  a1[5] = 0;
}

uint64_t sub_18114(uint64_t a1)
{
  v2 = sub_BE90(&qword_376F8, &qword_25808);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_BE90(&qword_376F0, &qword_25800);
  sub_2176C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_1824C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_BE90(&qword_376F8, &qword_25808);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR19VideoEffectsPreview__currentAffineTransform;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_BE90(&qword_376F0, &qword_25800);
  sub_2175C();
  swift_endAccess();
  return sub_F914;
}

uint64_t sub_183BC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2178C();

  return v1;
}

uint64_t sub_18430@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 440))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_184D8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2179C();
}

uint64_t (*sub_18548(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2177C();
  return sub_F910;
}

uint64_t sub_18610(uint64_t a1)
{
  v2 = sub_BE90(&qword_37210, &qword_24D30);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_BE90(&qword_37208, &unk_25B00);
  sub_2176C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_18748(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_BE90(&qword_37210, &qword_24D30);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR19VideoEffectsPreview__isLandscape;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_BE90(&qword_37208, &unk_25B00);
  sub_2175C();
  swift_endAccess();
  return sub_F914;
}

id sub_188B8()
{
  v0 = objc_opt_self();

  return [v0 defaultSize];
}

double sub_188F0()
{
  v1 = v0 + OBJC_IVAR____TtC25RPControlCenterModuleHQLR19VideoEffectsPreview_maxDimensions;
  swift_beginAccess();
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_18938(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR____TtC25RPControlCenterModuleHQLR19VideoEffectsPreview_maxDimensions);
  result = swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_189F0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_18A28();
  return v3;
}

uint64_t sub_18A28()
{
  v1 = v0;
  v2 = sub_BE90(&qword_37208, &unk_25B00);
  v52 = *(v2 - 8);
  v53 = v2;
  v3 = (*(v52 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v51 = &v46 - v4;
  v5 = sub_BE90(&qword_376F0, &qword_25800);
  v49 = *(v5 - 8);
  v50 = v5;
  v6 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v48 = &v46 - v7;
  v47 = sub_BE90(&qword_376E0, &qword_25718);
  v8 = *(v47 - 8);
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = &v46 - v10;
  v12 = sub_BE90(&qword_376D0, &qword_256C0);
  v13 = *(v12 - 8);
  v14 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v16 = &v46 - v15;
  v17 = sub_BE90(&qword_376B8, &qword_25660);
  v18 = *(v17 - 8);
  v19 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v21 = &v46 - v20;
  v22 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR19VideoEffectsPreview__videoView;
  v54[0] = 0;
  sub_BE90(&qword_376B0, &qword_25610);
  sub_2174C();
  (*(v18 + 32))(v1 + v22, v21, v17);
  v23 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR19VideoEffectsPreview__frameReceiver;
  v54[0] = 0;
  sub_BE90(&qword_376C8, &qword_25670);
  sub_2174C();
  (*(v13 + 32))(v1 + v23, v16, v12);
  v24 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR19VideoEffectsPreview_captureFrameReceiverObserver;
  *(v1 + v24) = [objc_allocWithZone(type metadata accessor for CaptureFrameReceiverObserver()) init];
  v25 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR19VideoEffectsPreview__width;
  v54[0] = 0x409E000000000000;
  sub_2174C();
  v26 = *(v8 + 32);
  v27 = v47;
  v26(v1 + v25, v11, v47);
  v28 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR19VideoEffectsPreview__height;
  v54[0] = 0x4090E00000000000;
  sub_2174C();
  v26(v1 + v28, v11, v27);
  v29 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR19VideoEffectsPreview__aspectRatio;
  v54[0] = 0x3FFC71C71C71C71CLL;
  sub_2174C();
  v26(v1 + v29, v11, v27);
  v30 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR19VideoEffectsPreview__currentAffineTransform;
  v54[0] = 0x3FF0000000000000;
  v54[1] = 0;
  v54[2] = 0;
  v54[3] = 0x3FF0000000000000;
  type metadata accessor for CGAffineTransform(0);
  v54[4] = 0;
  v54[5] = 0;
  v31 = v48;
  sub_2174C();
  (*(v49 + 32))(v1 + v30, v31, v50);
  v32 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR19VideoEffectsPreview__isLandscape;
  LOBYTE(v54[0]) = 1;
  v33 = v51;
  sub_2174C();
  (*(v52 + 32))(v1 + v32, v33, v53);
  v34 = (v1 + OBJC_IVAR____TtC25RPControlCenterModuleHQLR19VideoEffectsPreview_maxDimensions);
  [objc_opt_self() defaultSize];
  *v34 = v35;
  v34[1] = v36;
  if (qword_38300 != -1)
  {
    swift_once();
  }

  v37 = sub_2172C();
  sub_10AAC(v37, qword_38308);
  v38 = sub_2170C();
  v39 = sub_21CDC();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v54[0] = swift_slowAlloc();
    *v40 = 136315394;
    *(v40 + 4) = sub_15364(0xD000000000000074, 0x8000000000027A70, v54);
    *(v40 + 12) = 2080;
    *(v40 + 14) = sub_15364(0x292874696E69, 0xE600000000000000, v54);
    _os_log_impl(&dword_0, v38, v39, "%s%s", v40, 0x16u);
    swift_arrayDestroy();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v54[0] = 0;

  sub_2179C();
  swift_getKeyPath();
  swift_getKeyPath();
  v54[0] = 0;

  sub_2179C();
  v41 = *(v1 + OBJC_IVAR____TtC25RPControlCenterModuleHQLR19VideoEffectsPreview_captureFrameReceiverObserver);
  v42 = swift_allocObject();
  swift_weakInit();
  v43 = (v41 + OBJC_IVAR____TtC25RPControlCenterModuleHQLR28CaptureFrameReceiverObserver_captureFrameReceiverDidChange);
  swift_beginAccess();
  v44 = v43[1];
  *v43 = sub_19190;
  v43[1] = v42;

  return v1;
}

uint64_t sub_19158()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_19190()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = (*(*Strong + 152))();
    if (v2)
    {

      (*(*v1 + 520))();
    }

    else
    {
      if (qword_38300 != -1)
      {
        swift_once();
      }

      v8 = sub_2172C();
      sub_10AAC(v8, qword_38308);
      v9 = sub_2170C();
      v10 = sub_21CDC();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v13 = v12;
        *v11 = 136315138;
        *(v11 + 4) = sub_15364(0x292874696E69, 0xE600000000000000, &v13);
        _os_log_impl(&dword_0, v9, v10, "%s captureFrameReceiverDidChange no videoView, skipping start", v11, 0xCu);
        sub_15CC8(v12);
      }
    }
  }

  else
  {
    if (qword_38300 != -1)
    {
      swift_once();
    }

    v3 = sub_2172C();
    sub_10AAC(v3, qword_38308);
    v4 = sub_2170C();
    v5 = sub_21CDC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v13 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_15364(0x292874696E69, 0xE600000000000000, &v13);
      _os_log_impl(&dword_0, v4, v5, "%s captureFrameReceiverDidChange nil", v6, 0xCu);
      sub_15CC8(v7);
    }
  }
}

void sub_19468()
{
  v1 = v0;
  if (qword_38300 != -1)
  {
LABEL_45:
    swift_once();
  }

  v2 = sub_2172C();
  sub_10AAC(v2, qword_38308);
  v3 = sub_2170C();
  v4 = sub_21CDC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    aBlock[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_15364(0xD000000000000014, 0x8000000000027B20, aBlock);
    _os_log_impl(&dword_0, v3, v4, "%s", v5, 0xCu);
    sub_15CC8(v6);
  }

  v7 = [objc_opt_self() availableFrameSenderEndpointsByPID];
  sub_1BFFC(0, &qword_37708, NSNumber_ptr);
  sub_BE90(&qword_37710, &unk_25858);
  sub_1BAE4();
  v8 = sub_21C4C();

  v9 = 1 << *(v8 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v8 + 64);
  v12 = (v9 + 63) >> 6;

  v41 = 0;
  v13 = 0;
  while (1)
  {
    v14 = v13;
    if (!v11)
    {
      break;
    }

LABEL_11:
    if (!*(v8 + 16))
    {

      goto LABEL_40;
    }

    v15 = *(*(v8 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v11)))));
    v16 = sub_1BB4C(v15);
    if ((v17 & 1) == 0)
    {

LABEL_40:
      v31 = v41;
LABEL_41:

      return;
    }

    v18 = *(*(v8 + 56) + 8 * v16);
    if (v18 >> 62)
    {
      if (v18 < 0)
      {
        v21 = *(*(v8 + 56) + 8 * v16);
      }

      v19 = sub_21D8C();
    }

    else
    {
      v19 = *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8));
    }

    v11 &= v11 - 1;
    if (v19)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {

        v20 = sub_21D5C();
      }

      else
      {
        if (!*(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          return;
        }

        v20 = *(v18 + 32);
      }

      v41 = v20;
    }

    else
    {
    }
  }

  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_45;
    }

    if (v13 >= v12)
    {
      break;
    }

    v11 = *(v8 + 64 + 8 * v13);
    ++v14;
    if (v11)
    {
      goto LABEL_11;
    }
  }

  if (v41)
  {
    v40 = v41;
    v22 = sub_2170C();
    v23 = sub_21CDC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      *(v24 + 4) = v40;
      *v25 = v41;
      v26 = v40;
      _os_log_impl(&dword_0, v22, v23, "Creating frame receiver for endpoint=%@", v24, 0xCu);
      sub_1BF9C(v25, &qword_37548, &qword_252F0);
    }

    v27 = (*(*v1 + 200))();
    if (!v27)
    {
      v36 = swift_allocObject();
      swift_weakInit();
      v37 = objc_allocWithZone(CMCaptureFrameReceiver);
      aBlock[4] = sub_1BB90;
      aBlock[5] = v36;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BA6C;
      aBlock[3] = &unk_316B0;
      v38 = _Block_copy(aBlock);

      v39 = [v37 initWithFrameSenderServerEndpoint:v40 frameReceiverHandler:v38];
      _Block_release(v38);

      (*(*v1 + 208))(v39);

      return;
    }

    v28 = sub_2170C();
    v29 = sub_21CDC();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_0, v28, v29, "Frame receiver already exists - returning", v30, 2u);
    }

    v31 = v40;
    goto LABEL_41;
  }

  v32 = sub_2170C();
  v33 = sub_21CDC();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_0, v32, v33, "first endpoint not found", v34, 2u);
  }

  v35 = *(*v1 + 208);

  v35(0);
}

uint64_t sub_19B34(void *a1, char a2)
{
  v4 = sub_21C1C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21C3C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a1 && (a2 & 1) != 0)
    {
      v15 = result;
      sub_1BFFC(0, &qword_37A08, OS_dispatch_queue_ptr);
      v16 = a1;
      v24 = v5;
      v17 = v16;
      v23 = sub_21CEC();
      v18 = swift_allocObject();
      *(v18 + 16) = v15;
      *(v18 + 24) = v17;
      aBlock[4] = sub_1C084;
      aBlock[5] = v18;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_19E30;
      aBlock[3] = &unk_31810;
      v19 = _Block_copy(aBlock);
      v20 = v17;

      sub_21C2C();
      aBlock[0] = &_swiftEmptyArrayStorage;
      sub_1C0D4();
      sub_BE90(&qword_37A18, &unk_25970);
      sub_1C12C();
      sub_21D3C();
      v21 = v23;
      sub_21CFC();
      _Block_release(v19);

      (*(v24 + 8))(v8, v4);
      return (*(v10 + 8))(v13, v9);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_19E30(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_19E74()
{
  v1 = v0;
  if (qword_38300 != -1)
  {
    swift_once();
  }

  v2 = sub_2172C();
  sub_10AAC(v2, qword_38308);
  v3 = sub_2170C();
  v4 = sub_21CDC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_15364(0xD000000000000013, 0x8000000000027B40, &v14);
    _os_log_impl(&dword_0, v3, v4, "%s", v5, 0xCu);
    sub_15CC8(v6);
  }

  v7 = *(v1 + OBJC_IVAR____TtC25RPControlCenterModuleHQLR19VideoEffectsPreview_captureFrameReceiverObserver);
  v8 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR28CaptureFrameReceiverObserver_observing;
  swift_beginAccess();
  if (*(v7 + v8) == 1)
  {
    sub_1BFFC(0, &qword_37728, CMCaptureFrameReceiver_ptr);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = *(v7 + OBJC_IVAR____TtC25RPControlCenterModuleHQLR28CaptureFrameReceiverObserver_keyPath);
    v11 = *(v7 + OBJC_IVAR____TtC25RPControlCenterModuleHQLR28CaptureFrameReceiverObserver_keyPath + 8);
    v12 = sub_21C5C();
    [ObjCClassFromMetadata removeObserver:v7 forKeyPath:v12];

    *(v7 + v8) = 0;
  }

  return (*(*v1 + 208))(0);
}

void sub_1A070()
{
  v1 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR28CaptureFrameReceiverObserver_observing;
  swift_beginAccess();
  if (*(v0 + v1) == 1)
  {
    sub_1BFFC(0, &qword_37728, CMCaptureFrameReceiver_ptr);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = *(v0 + OBJC_IVAR____TtC25RPControlCenterModuleHQLR28CaptureFrameReceiverObserver_keyPath);
    v4 = *(v0 + OBJC_IVAR____TtC25RPControlCenterModuleHQLR28CaptureFrameReceiverObserver_keyPath + 8);
    v5 = sub_21C5C();
    [ObjCClassFromMetadata removeObserver:v0 forKeyPath:v5];

    *(v0 + v1) = 0;
  }
}

void sub_1A11C()
{
  v1 = v0;
  if (qword_38300 != -1)
  {
    swift_once();
  }

  v2 = sub_2172C();
  sub_10AAC(v2, qword_38308);
  v3 = sub_2170C();
  v4 = sub_21CDC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_15364(0xD000000000000015, 0x8000000000027B60, &v14);
    _os_log_impl(&dword_0, v3, v4, "%s", v5, 0xCu);
    sub_15CC8(v6);
  }

  v7 = (*(*v1 + 152))();
  if (v7)
  {
  }

  else
  {
    (*(*v1 + 160))([objc_allocWithZone(RPCCUIVideoView) init]);
  }

  v8 = *(v1 + OBJC_IVAR____TtC25RPControlCenterModuleHQLR19VideoEffectsPreview_captureFrameReceiverObserver);
  v9 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR28CaptureFrameReceiverObserver_observing;
  swift_beginAccess();
  if ((*(v8 + v9) & 1) == 0)
  {
    sub_1BFFC(0, &qword_37728, CMCaptureFrameReceiver_ptr);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v11 = *(v8 + OBJC_IVAR____TtC25RPControlCenterModuleHQLR28CaptureFrameReceiverObserver_keyPath);
    v12 = *(v8 + OBJC_IVAR____TtC25RPControlCenterModuleHQLR28CaptureFrameReceiverObserver_keyPath + 8);
    v13 = sub_21C5C();
    [ObjCClassFromMetadata addObserver:v8 forKeyPath:v13 options:0 context:0];

    *(v8 + v9) = 1;
  }
}

void sub_1A368()
{
  v1 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR28CaptureFrameReceiverObserver_observing;
  swift_beginAccess();
  if ((*(v0 + v1) & 1) == 0)
  {
    sub_1BFFC(0, &qword_37728, CMCaptureFrameReceiver_ptr);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = *(v0 + OBJC_IVAR____TtC25RPControlCenterModuleHQLR28CaptureFrameReceiverObserver_keyPath);
    v4 = *(v0 + OBJC_IVAR____TtC25RPControlCenterModuleHQLR28CaptureFrameReceiverObserver_keyPath + 8);
    v5 = sub_21C5C();
    [ObjCClassFromMetadata addObserver:v0 forKeyPath:v5 options:0 context:0];

    *(v0 + v1) = 1;
  }
}

uint64_t sub_1A424()
{
  v1 = v0;
  if (qword_38300 != -1)
  {
    swift_once();
  }

  v2 = sub_2172C();
  sub_10AAC(v2, qword_38308);
  v3 = sub_2170C();
  v4 = sub_21CDC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_15364(0xD000000000000012, 0x8000000000027B80, &v10);
    _os_log_impl(&dword_0, v3, v4, "%s", v5, 0xCu);
    sub_15CC8(v6);
  }

  v7 = (*(*v1 + 152))();
  [v7 flushVideoView];

  v8 = *(*v1 + 160);

  return v8(0);
}

void sub_1A5D8(opaqueCMSampleBuffer *a1)
{
  v2 = v1;
  v4 = (*(*v1 + 152))();
  if (!v4)
  {
    return;
  }

  v67 = v4;
  v5 = [v67 layer];
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    v8 = [v6 sampleBufferRenderer];
    v9 = [v8 status];

    if (v9 == &dword_0 + 2)
    {
      v10 = [v7 sampleBufferRenderer];
      [v10 flush];
    }
  }

  v11 = CMSampleBufferGetFormatDescription(a1);
  if (!v11)
  {
    goto LABEL_10;
  }

  v12 = v11;
  Dimensions = CMVideoFormatDescriptionGetDimensions(v11);
  v14 = Dimensions;
  v15 = (Dimensions >> 32);
  if (([v67 enqueueSampleBuffer:a1] & 1) == 0 && (*(*v2 + 248))() == v14 && (*(*v2 + 296))() == v15)
  {

LABEL_10:

    return;
  }

  if (qword_38300 != -1)
  {
    swift_once();
  }

  v16 = sub_2172C();
  sub_10AAC(v16, qword_38308);
  v17 = sub_2170C();
  v18 = sub_21CDC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "updating the transform, width and height", v19, 2u);
  }

  v20 = (*(*v2 + 448))([v67 isLandscape]);
  v21 = (*(*v2 + 256))(v20, v14);
  (*(*v2 + 304))(v21, v15);
  v22 = [v67 layer];

  [v22 affineTransform];
  v65 = *&transform.c;
  v66 = *&transform.a;
  v70 = transform;
  v64 = *&transform.tx;

  *&transform.a = v66;
  *&transform.c = v65;
  *&transform.tx = v64;
  CGAffineTransformDecompose(&v68, &transform);
  rotation = v68.rotation;
  v24 = sub_2170C();
  v25 = sub_21CDC();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 134217984;
    *(v26 + 4) = rotation;
    _os_log_impl(&dword_0, v24, v25, "transform rotation component %f", v26, 0xCu);
  }

  v27 = fabs(rotation);
  if (v27 >= 0.0001 && vabdd_f64(3.14159265, v27) >= 0.0001)
  {
    v37 = sub_2170C();
    v38 = sub_21CDC();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_0, v37, v38, "NOT isZeroOr180", v39, 2u);
    }

    v40 = *(*v2 + 248);
    v41 = v40();
    v35.n128_u64[0] = 1.0;
    if (v41 <= 0.0)
    {
      goto LABEL_30;
    }

    v36 = (*(*v2 + 296))(1.0);
    v35.n128_f64[0] = v40();
  }

  else
  {
    v28 = sub_2170C();
    v29 = sub_21CDC();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_0, v28, v29, "YES isZeroOr180", v30, 2u);
    }

    v31 = (*v2 + 296);
    v32 = *v31;
    v34 = (*v31)();
    v35.n128_u64[0] = 1.0;
    if (v34 <= 0.0)
    {
      goto LABEL_30;
    }

    v36 = (*(*v2 + 248))(1.0);
    v33 = v32();
  }

  v35.n128_f64[0] = v36 / v35.n128_f64[0];
LABEL_30:
  v42 = (*(*v2 + 352))(v33, v35);
  v43 = *(*v2 + 440);
  v44 = (v43)(v42);
  v45 = *(*v2 + 488);
  v46 = v45();
  if (v44)
  {
    v49 = v47;
    v50 = (v45)(v46);
    v51 = v50 / (*(*v2 + 344))();
  }

  else
  {
    v49 = v48 * (*(*v2 + 344))(v46);
    v45();
  }

  [v67 updateIntrinsicContentSize:{v49, v51, v64, v65, v66}];
  (*(*v2 + 400))(&v70);
  v52 = v67;

  v53 = sub_2170C();
  v54 = sub_21CDC();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *&v68.scale.width = swift_slowAlloc();
    *v55 = 134219266;
    *(v55 + 4) = (*(*v2 + 344))();
    *(v55 + 12) = 2048;
    *(v55 + 14) = (*(*v2 + 248))();
    *(v55 + 22) = 2048;
    *(v55 + 24) = (*(*v2 + 296))();
    *(v55 + 32) = 1024;
    *(v55 + 34) = v43() & 1;

    *(v55 + 38) = 2080;
    transform = v70;
    type metadata accessor for CGAffineTransform(0);
    v56 = sub_21C7C();
    v58 = sub_15364(v56, v57, &v68);

    *(v55 + 40) = v58;
    *(v55 + 48) = 2080;
    [v52 intrinsicContentSize];
    transform.a = v59;
    transform.b = v60;
    type metadata accessor for CGSize(0);
    v61 = sub_21C7C();
    v63 = sub_15364(v61, v62, &v68);

    *(v55 + 50) = v63;
    _os_log_impl(&dword_0, v53, v54, "set aspect ratio %f (w:%f, h:%f), isLandscape:%{BOOL}d, transform %s, videoView intrinsicContentSize %s", v55, 0x3Au);
    swift_arrayDestroy();
  }

  else
  {
  }
}

uint64_t sub_1B064()
{
  v1 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR19VideoEffectsPreview__videoView;
  v2 = sub_BE90(&qword_376B8, &qword_25660);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR19VideoEffectsPreview__frameReceiver;
  v4 = sub_BE90(&qword_376D0, &qword_256C0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR19VideoEffectsPreview__width;
  v6 = sub_BE90(&qword_376E0, &qword_25718);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtC25RPControlCenterModuleHQLR19VideoEffectsPreview__height, v6);
  v7(v0 + OBJC_IVAR____TtC25RPControlCenterModuleHQLR19VideoEffectsPreview__aspectRatio, v6);
  v8 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR19VideoEffectsPreview__currentAffineTransform;
  v9 = sub_BE90(&qword_376F0, &qword_25800);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR19VideoEffectsPreview__isLandscape;
  v11 = sub_BE90(&qword_37208, &unk_25B00);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  return v0;
}

uint64_t sub_1B25C()
{
  v1 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR19VideoEffectsPreview__videoView;
  v2 = sub_BE90(&qword_376B8, &qword_25660);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR19VideoEffectsPreview__frameReceiver;
  v4 = sub_BE90(&qword_376D0, &qword_256C0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR19VideoEffectsPreview__width;
  v6 = sub_BE90(&qword_376E0, &qword_25718);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtC25RPControlCenterModuleHQLR19VideoEffectsPreview__height, v6);
  v7(v0 + OBJC_IVAR____TtC25RPControlCenterModuleHQLR19VideoEffectsPreview__aspectRatio, v6);
  v8 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR19VideoEffectsPreview__currentAffineTransform;
  v9 = sub_BE90(&qword_376F0, &qword_25800);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR19VideoEffectsPreview__isLandscape;
  v11 = sub_BE90(&qword_37208, &unk_25B00);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v12 = *(*v0 + 48);
  v13 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v12, v13);
}

uint64_t sub_1B490@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for VideoEffectsPreview();
  result = sub_2173C();
  *a1 = result;
  return result;
}

uint64_t sub_1B4EC()
{
  v1 = (v0 + OBJC_IVAR____TtC25RPControlCenterModuleHQLR28CaptureFrameReceiverObserver_captureFrameReceiverDidChange);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_1B544(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC25RPControlCenterModuleHQLR28CaptureFrameReceiverObserver_captureFrameReceiverDidChange);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1B620()
{
  v1 = *(v0 + OBJC_IVAR____TtC25RPControlCenterModuleHQLR28CaptureFrameReceiverObserver_keyPath);
  v2 = *(v0 + OBJC_IVAR____TtC25RPControlCenterModuleHQLR28CaptureFrameReceiverObserver_keyPath + 8);

  return v1;
}

uint64_t sub_1B65C()
{
  v1 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR28CaptureFrameReceiverObserver_observing;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B6A0(char a1)
{
  v3 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR28CaptureFrameReceiverObserver_observing;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *sub_1B750()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC25RPControlCenterModuleHQLR28CaptureFrameReceiverObserver_captureFrameReceiverDidChange];
  *v2 = CallRecordingState.rawValue.getter;
  v2[1] = 0;
  v3 = &v0[OBJC_IVAR____TtC25RPControlCenterModuleHQLR28CaptureFrameReceiverObserver_keyPath];
  *v3 = 0xD000000000000022;
  v3[1] = 0x8000000000027BA0;
  v0[OBJC_IVAR____TtC25RPControlCenterModuleHQLR28CaptureFrameReceiverObserver_observing] = 0;
  v12.receiver = v0;
  v12.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v12, "init");
  sub_1BFFC(0, &qword_37728, CMCaptureFrameReceiver_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = *&v4[OBJC_IVAR____TtC25RPControlCenterModuleHQLR28CaptureFrameReceiverObserver_keyPath];
  v7 = *&v4[OBJC_IVAR____TtC25RPControlCenterModuleHQLR28CaptureFrameReceiverObserver_keyPath + 8];
  v8 = v4;

  v9 = sub_21C5C();

  [ObjCClassFromMetadata addObserver:v8 forKeyPath:v9 options:0 context:0];

  v10 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR28CaptureFrameReceiverObserver_observing;
  swift_beginAccess();
  v8[v10] = 1;

  return v8;
}

uint64_t sub_1B8BC()
{
  v1 = v0 + OBJC_IVAR____TtC25RPControlCenterModuleHQLR28CaptureFrameReceiverObserver_captureFrameReceiverDidChange;
  swift_beginAccess();
  v3 = *v1;
  v2 = *(v1 + 8);

  v3(v4);
}

id sub_1B9E0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1BA6C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a2;
  v6(a2, a3);
}

unint64_t sub_1BAE4()
{
  result = qword_37718;
  if (!qword_37718)
  {
    sub_1BFFC(255, &qword_37708, NSNumber_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_37718);
  }

  return result;
}

unint64_t sub_1BB4C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21D0C(*(v2 + 40));

  return sub_1C190(a1, v4);
}

uint64_t sub_1BB98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for VideoEffectsPreview()
{
  result = qword_38450;
  if (!qword_38450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BC2C()
{
  sub_1BE38(319, &qword_37760, &qword_376B0, &qword_25610);
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    sub_1BE38(319, &qword_37768, &qword_376C8, &qword_25670);
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      sub_1C28C(319, &qword_37770, &type metadata for CGFloat, &type metadata accessor for Published);
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        sub_1BE8C();
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          sub_1C28C(319, &qword_37340, &type metadata for Bool, &type metadata accessor for Published);
          if (v9 <= 0x3F)
          {
            v14 = *(v8 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_1BE38(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_E098(a3, a4);
    v5 = sub_217AC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1BE8C()
{
  if (!qword_37778)
  {
    type metadata accessor for CGAffineTransform(255);
    v0 = sub_217AC();
    if (!v1)
    {
      atomic_store(v0, &qword_37778);
    }
  }
}

uint64_t sub_1BEE8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BF08(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

__n128 sub_1BF30(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1BF44(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BF64(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 48) = v3;
  return result;
}

uint64_t sub_1BF9C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_BE90(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1BFFC(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1C044()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1C0D4()
{
  result = qword_37A10;
  if (!qword_37A10)
  {
    sub_21C1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_37A10);
  }

  return result;
}

unint64_t sub_1C12C()
{
  result = qword_37A20;
  if (!qword_37A20)
  {
    sub_E098(&qword_37A18, &unk_25970);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_37A20);
  }

  return result;
}

unint64_t sub_1C190(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1BFFC(0, &qword_37708, NSNumber_ptr);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_21D1C();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void sub_1C28C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1C2E8(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      goto LABEL_12;
    }

    if (a1 == 3)
    {

      return static Color.red.getter();
    }

LABEL_15:
    sub_21DBC();
    __break(1u);
    return static Color.red.getter();
  }

  if (!a1)
  {

    return sub_21B1C();
  }

  if (a1 != 1)
  {
    goto LABEL_15;
  }

LABEL_12:

  return static Color.gray.getter();
}

uint64_t sub_1C370(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 != 2 && a1 != 3)
    {
      goto LABEL_9;
    }

LABEL_7:
    v1 = sub_FE08();
    goto LABEL_8;
  }

  if (!a1)
  {
    goto LABEL_7;
  }

  if (a1 == 1)
  {
    v1 = sub_FCF8();
LABEL_8:
    v2 = *v1;
    v3 = v1[1];

    return v2;
  }

LABEL_9:
  result = sub_21DBC();
  __break(1u);
  return result;
}

unint64_t sub_1C420@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_207F8(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1C454(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_31868;
  v7._object = a2;
  v4 = sub_21D9C(v3, v7);

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C4A8(char a1)
{
  if (a1)
  {
    return 0x776F64746E756F63;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C4D4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x776F64746E756F63;
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    v5 = 0xE000000000000000;
  }

  else
  {
    v5 = 0xE90000000000006ELL;
  }

  if (*a2)
  {
    v6 = 0x776F64746E756F63;
  }

  else
  {
    v6 = 0;
  }

  if (*a2)
  {
    v7 = 0xE90000000000006ELL;
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_21DAC();
  }

  return v9 & 1;
}

Swift::Int sub_1C570()
{
  v1 = *v0;
  sub_21DCC();
  sub_21C8C();

  return sub_21DEC();
}

uint64_t sub_1C5E8()
{
  *v0;
  sub_21C8C();
}

Swift::Int sub_1C64C()
{
  v1 = *v0;
  sub_21DCC();
  sub_21C8C();

  return sub_21DEC();
}

uint64_t sub_1C6C0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_31868;
  v8._object = v3;
  v5 = sub_21D9C(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1C720(uint64_t *a1@<X8>)
{
  v2 = 0x776F64746E756F63;
  if (!*v1)
  {
    v2 = 0;
  }

  v3 = 0xE000000000000000;
  if (*v1)
  {
    v3 = 0xE90000000000006ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1C798@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result;
  return result;
}

uint64_t (*sub_1C840(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2177C();
  return sub_BE68;
}

uint64_t sub_1C900(uint64_t a1)
{
  v2 = sub_BE90(&qword_37A38, &qword_25A00);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_BE90(&qword_37A30, &qword_259F8);
  sub_2176C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_1CA38(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_BE90(&qword_37A38, &qword_25A00);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR22CallRecordingViewModel__callRecordingState;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_BE90(&qword_37A30, &qword_259F8);
  sub_2175C();
  swift_endAccess();
  return sub_C180;
}

uint64_t sub_1CBDC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2178C();

  return v1;
}

uint64_t sub_1CC50@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 176))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1CCE8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2179C();
}

uint64_t (*sub_1CD5C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2177C();
  return sub_F910;
}

uint64_t sub_1CE1C(uint64_t a1)
{
  v2 = sub_BE90(&qword_37A48, &qword_25A58);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_BE90(&qword_37A40, &qword_25A50);
  sub_2176C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_1CF54(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_BE90(&qword_37A48, &qword_25A58);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR22CallRecordingViewModel__glyphState;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_BE90(&qword_37A40, &qword_25A50);
  sub_2175C();
  swift_endAccess();
  return sub_F914;
}

uint64_t sub_1D108@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 224))();
  *a2 = result;
  return result;
}

uint64_t (*sub_1D1B0(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2177C();
  return sub_F910;
}

uint64_t sub_1D270(uint64_t a1)
{
  v2 = sub_BE90(&qword_37A58, &qword_25AB0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_BE90(&qword_37A50, &qword_25AA8);
  sub_2176C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_1D3A8(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_BE90(&qword_37A58, &qword_25AB0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR22CallRecordingViewModel__countdownState;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_BE90(&qword_37A50, &qword_25AA8);
  sub_2175C();
  swift_endAccess();
  return sub_F914;
}

uint64_t sub_1D518()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2178C();

  return v1;
}

uint64_t sub_1D58C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 272))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1D634()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2178C();

  swift_getKeyPath();
  swift_getKeyPath();

  v1 = sub_2179C();
  v2 = *(*v0 + 272);
  result = (v2)(v1);
  if (v6 != (result & 1))
  {
    result = (*(*v0 + 320))();
    if (result)
    {
      v4 = result;
      v5 = v2();
      v4(v5 & 1);
      return sub_CD3C(v4);
    }
  }

  return result;
}

uint64_t (*sub_1D798(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2178C();

  *(a1 + 8) = *(a1 + 9);
  return sub_1D82C;
}

uint64_t sub_1D82C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_1D634();
}

uint64_t sub_1D870(uint64_t a1)
{
  v2 = sub_BE90(&qword_37210, &qword_24D30);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_BE90(&qword_37208, &unk_25B00);
  sub_2176C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_1D9A8(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_BE90(&qword_37210, &qword_24D30);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR22CallRecordingViewModel__audioOnly;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_BE90(&qword_37208, &unk_25B00);
  sub_2175C();
  swift_endAccess();
  return sub_F914;
}

uint64_t sub_1DB18()
{
  v1 = (v0 + OBJC_IVAR____TtC25RPControlCenterModuleHQLR22CallRecordingViewModel_audioOnlyToggleHandler);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  sub_CD2C(v3);
  return v3;
}

uint64_t sub_1DB74(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC25RPControlCenterModuleHQLR22CallRecordingViewModel_audioOnlyToggleHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_CD3C(v6);
}

uint64_t sub_1DC64()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2178C();

  return v1;
}

uint64_t sub_1DCD8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 344))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1DD2C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 352);

  return v4(v2, v3);
}

uint64_t sub_1DD9C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2179C();
}

uint64_t (*sub_1DE18(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2177C();
  return sub_F910;
}

uint64_t sub_1DEEC(uint64_t a1)
{
  v2 = sub_BE90(&qword_37A68, &qword_25B60);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_BE90(&qword_37A60, &qword_25B58);
  sub_2176C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_1E024(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_BE90(&qword_37A68, &qword_25B60);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR22CallRecordingViewModel__timerLabel;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_BE90(&qword_37A60, &qword_25B58);
  sub_2175C();
  swift_endAccess();
  return sub_F914;
}

uint64_t sub_1E194()
{
  v1 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR22CallRecordingViewModel__callRecordingState;
  v2 = sub_BE90(&qword_37A30, &qword_259F8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR22CallRecordingViewModel__glyphState;
  v4 = sub_BE90(&qword_37A40, &qword_25A50);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR22CallRecordingViewModel__countdownState;
  v6 = sub_BE90(&qword_37A50, &qword_25AA8);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR22CallRecordingViewModel__audioOnly;
  v8 = sub_BE90(&qword_37208, &unk_25B00);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = *(v0 + OBJC_IVAR____TtC25RPControlCenterModuleHQLR22CallRecordingViewModel_audioOnlyToggleHandler + 8);
  sub_CD3C(*(v0 + OBJC_IVAR____TtC25RPControlCenterModuleHQLR22CallRecordingViewModel_audioOnlyToggleHandler));
  v10 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR22CallRecordingViewModel__timerLabel;
  v11 = sub_BE90(&qword_37A60, &qword_25B58);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  return v0;
}

uint64_t sub_1E344()
{
  v1 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR22CallRecordingViewModel__callRecordingState;
  v2 = sub_BE90(&qword_37A30, &qword_259F8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR22CallRecordingViewModel__glyphState;
  v4 = sub_BE90(&qword_37A40, &qword_25A50);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR22CallRecordingViewModel__countdownState;
  v6 = sub_BE90(&qword_37A50, &qword_25AA8);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR22CallRecordingViewModel__audioOnly;
  v8 = sub_BE90(&qword_37208, &unk_25B00);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = *(v0 + OBJC_IVAR____TtC25RPControlCenterModuleHQLR22CallRecordingViewModel_audioOnlyToggleHandler + 8);
  sub_CD3C(*(v0 + OBJC_IVAR____TtC25RPControlCenterModuleHQLR22CallRecordingViewModel_audioOnlyToggleHandler));
  v10 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR22CallRecordingViewModel__timerLabel;
  v11 = sub_BE90(&qword_37A60, &qword_25B58);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v12 = *(*v0 + 48);
  v13 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v12, v13);
}

uint64_t sub_1E530()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_1E568();
  return v3;
}

uint64_t sub_1E568()
{
  v1 = sub_BE90(&qword_37A60, &qword_25B58);
  v36 = *(v1 - 8);
  v37 = v1;
  v2 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v35 = &v30 - v3;
  v4 = sub_BE90(&qword_37208, &unk_25B00);
  v33 = *(v4 - 8);
  v34 = v4;
  v5 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v32 = &v30 - v6;
  v31 = sub_BE90(&qword_37A50, &qword_25AA8);
  v7 = *(v31 - 8);
  v8 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = &v30 - v9;
  v11 = sub_BE90(&qword_37A40, &qword_25A50);
  v12 = *(v11 - 8);
  v13 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v15 = &v30 - v14;
  v16 = sub_BE90(&qword_37A30, &qword_259F8);
  v17 = *(v16 - 8);
  v18 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v20 = &v30 - v19;
  v21 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR22CallRecordingViewModel__callRecordingState;
  v38 = 0;
  sub_2174C();
  (*(v17 + 32))(v0 + v21, v20, v16);
  v22 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR22CallRecordingViewModel__glyphState;
  LOBYTE(v38) = 0;
  sub_2174C();
  (*(v12 + 32))(v0 + v22, v15, v11);
  v23 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR22CallRecordingViewModel__countdownState;
  v38 = 0;
  sub_2174C();
  (*(v7 + 32))(v0 + v23, v10, v31);
  v24 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR22CallRecordingViewModel__audioOnly;
  LOBYTE(v38) = 0;
  v25 = v32;
  sub_2174C();
  (*(v33 + 32))(v0 + v24, v25, v34);
  v26 = (v0 + OBJC_IVAR____TtC25RPControlCenterModuleHQLR22CallRecordingViewModel_audioOnlyToggleHandler);
  *v26 = 0;
  v26[1] = 0;
  v27 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR22CallRecordingViewModel__timerLabel;
  v38 = 206967550000;
  v39 = 0xE500000000000000;
  v28 = v35;
  sub_2174C();
  (*(v36 + 32))(v0 + v27, v28, v37);
  return v0;
}

uint64_t sub_1E984@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CallRecordingViewModel();
  result = sub_2173C();
  *a1 = result;
  return result;
}

uint64_t sub_1E9FC()
{
  type metadata accessor for CallRecordingViewModel();
  sub_20854(&qword_37A70, type metadata accessor for CallRecordingViewModel);

  return sub_2181C();
}

uint64_t sub_1EAC0(uint64_t a1, void (*a2)(void), unint64_t *a3, void (*a4)(uint64_t))
{
  a2(0);
  sub_20854(a3, a4);

  return sub_2180C();
}

uint64_t sub_1EB40(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_1EB8C()
{
  type metadata accessor for VideoEffectsPreview();
  sub_20854(&qword_37540, type metadata accessor for VideoEffectsPreview);

  return sub_2181C();
}

uint64_t sub_1EC18()
{
  type metadata accessor for CallRecordingViewModel();
  sub_20854(&qword_37A70, type metadata accessor for CallRecordingViewModel);

  v0 = sub_2180C();
  type metadata accessor for VideoEffectsPreview();
  sub_20854(&qword_37540, type metadata accessor for VideoEffectsPreview);
  sub_2180C();

  return v0;
}

uint64_t sub_1ED1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *a4 = sub_218BC();
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  v8 = sub_BE90(&qword_37A78, &qword_25B68);
  sub_1EDC4(a1, a2, a3, (a4 + *(v8 + 44)));
  v9 = sub_21B1C();
  KeyPath = swift_getKeyPath();
  result = sub_BE90(&qword_37A80, &qword_25BA0);
  v12 = (a4 + *(result + 36));
  *v12 = KeyPath;
  v12[1] = v9;
  return result;
}

uint64_t sub_1EDC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v279 = a1;
  v293 = a4;
  v292 = sub_BE90(&qword_37CA8, &qword_25EF8);
  v6 = *(*(v292 - 8) + 64);
  __chkstk_darwin(v292);
  v282 = &v266 - v7;
  v280 = sub_BE90(&qword_37CB0, &qword_25F00);
  v8 = *(*(v280 - 8) + 64);
  v9 = __chkstk_darwin(v280);
  v281 = &v266 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v296 = (&v266 - v11);
  v287 = sub_BE90(&qword_37CB8, &qword_25F08);
  v12 = *(*(v287 - 8) + 64);
  __chkstk_darwin(v287);
  v288 = &v266 - v13;
  v266 = sub_BE90(&qword_37CC0, &qword_25F10);
  v14 = *(*(v266 - 8) + 64);
  __chkstk_darwin(v266);
  v268 = (&v266 - v15);
  v267 = sub_BE90(&qword_37CC8, &qword_25F18);
  v16 = *(*(v267 - 8) + 64);
  __chkstk_darwin(v267);
  v270 = &v266 - v17;
  v269 = sub_BE90(&qword_37CD0, &qword_25F20);
  v18 = *(*(v269 - 8) + 64);
  __chkstk_darwin(v269);
  v272 = &v266 - v19;
  v286 = sub_BE90(&qword_37CD8, &qword_25F28);
  v20 = *(*(v286 - 8) + 64);
  v21 = __chkstk_darwin(v286);
  v271 = &v266 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v273 = &v266 - v23;
  v24 = sub_BE90(&qword_37CE0, &qword_25F30);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v291 = &v266 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v289 = &v266 - v28;
  v290 = sub_218BC();
  v340 = 1;
  v29 = sub_F9C8();
  v30 = v29[1];
  *&v305 = *v29;
  *(&v305 + 1) = v30;
  v31 = sub_F864();

  v298 = v31;
  v32 = sub_21A9C();
  v34 = v33;
  v36 = v35;
  sub_21A3C();
  v294 = sub_21A6C();
  v295 = v37;
  v285 = v38;
  v40 = v39;
  sub_F8B8(v32, v34, v36 & 1);

  LODWORD(v297) = sub_219EC();
  v41 = *sub_FE80();
  sub_217BC();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v284 = v40 & 1;
  LOBYTE(v305) = v40 & 1;
  LOBYTE(v300) = 0;
  v50 = [objc_opt_self() sharedInstance];
  LODWORD(v34) = [v50 systemBannerEnabled];

  v299 = a2;
  v283 = a3;
  if (v34)
  {
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = -2;
  }

  else
  {
    v56 = *(*a2 + 128);
    if (v56() == 3)
    {
      *&v305 = (*(*a2 + 344))();
      *(&v305 + 1) = v57;
      v58 = sub_21A9C();
      v60 = v59;
      v62 = v61;
      sub_21A2C();
      v63 = sub_21A8C();
      v65 = v64;
      v67 = v66;

      sub_F8B8(v58, v60, v62 & 1);

      LODWORD(v305) = sub_219AC();
      v68 = sub_21A7C();
      v70 = v69;
      v72 = v71;
      v74 = v73;
      sub_F8B8(v63, v65, v67 & 1);

      *&v300 = v68;
      *(&v300 + 1) = v70;
      *&v301[0] = v72 & 1;
      *(&v301[0] + 1) = v74;
      LOBYTE(v301[1]) = 0;
    }

    else
    {
      if (v56() != 1)
      {
        v51 = 0;
        v52 = 0;
        v53 = 0;
        v54 = 0;
        v55 = -1;
        goto LABEL_9;
      }

      v75 = sub_10274();
      v77 = *v75;
      v76 = v75[1];
      *&v305 = v77;
      *(&v305 + 1) = v76;

      v78 = sub_21A9C();
      v80 = v79;
      v82 = v81;
      sub_21A2C();
      v83 = sub_21A8C();
      v85 = v84;
      v87 = v86;

      sub_F8B8(v78, v80, v82 & 1);

      LODWORD(v305) = sub_219AC();
      v88 = sub_21A7C();
      v90 = v89;
      v92 = v91;
      v94 = v93;
      sub_F8B8(v83, v85, v87 & 1);

      *&v300 = v88;
      *(&v300 + 1) = v90;
      *&v301[0] = v92 & 1;
      *(&v301[0] + 1) = v94;
      LOBYTE(v301[1]) = 1;
    }

    sub_2199C();
    v52 = *(&v305 + 1);
    v51 = v305;
    v54 = *(&v306[0] + 1);
    v53 = *&v306[0];
    v55 = v306[1];
    sub_21290(v305, *(&v305 + 1), v306[0]);
  }

LABEL_9:
  v96 = v294;
  v95 = v295;
  *&v322 = v294;
  v97 = v285;
  *(&v322 + 1) = v285;
  v98 = v284;
  LOBYTE(v323) = v284;
  *(&v323 + 1) = v310;
  DWORD1(v323) = *(&v310 + 3);
  *(&v323 + 1) = v295;
  LOBYTE(v324) = v297;
  *(&v324 + 1) = v356[0];
  DWORD1(v324) = *(v356 + 3);
  *(&v324 + 1) = v43;
  *&v325[0] = v45;
  *(&v325[0] + 1) = v47;
  *&v325[1] = v49;
  BYTE8(v325[1]) = 0;
  *(&v301[2] + 9) = *(v325 + 9);
  v301[1] = v324;
  v301[2] = v325[0];
  v300 = v322;
  v301[0] = v323;
  sub_211FC(&v322, &v305, &unk_37D70, &unk_25FC0);
  sub_21264(v51, v52, v53, v54, v55);
  sub_212CC(v51, v52, v53, v54, v55);
  sub_212CC(v51, v52, v53, v54, v55);
  *&v305 = v96;
  *(&v305 + 1) = v97;
  LOBYTE(v306[0]) = v98;
  *(v306 + 1) = v310;
  DWORD1(v306[0]) = *(&v310 + 3);
  *(&v306[0] + 1) = v95;
  LOBYTE(v306[1]) = v297;
  *(&v306[1] + 1) = v356[0];
  DWORD1(v306[1]) = *(v356 + 3);
  *(&v306[1] + 1) = v43;
  *&v306[2] = v45;
  *(&v306[2] + 1) = v47;
  *&v306[3] = v49;
  BYTE8(v306[3]) = 0;
  sub_1BF9C(&v305, &unk_37D70, &unk_25FC0);
  v350 = v301[1];
  v351 = v301[2];
  v352 = v301[3];
  v349 = v301[0];
  v348 = v300;
  v356[4] = v301[3];
  *&v353 = v51;
  *(&v353 + 1) = v52;
  *&v354 = v53;
  *(&v354 + 1) = v54;
  v355 = v55;
  v356[3] = v301[2];
  v356[2] = v301[1];
  v356[0] = v300;
  v356[1] = v301[0];
  v357 = v51;
  v358 = v52;
  v359 = v53;
  v360 = v54;
  v361 = v55;
  sub_211FC(&v348, &v305, &qword_37CE8, &qword_25F38);
  sub_1BF9C(v356, &qword_37CE8, &qword_25F38);
  *&v339[71] = v352;
  *&v339[87] = v353;
  *&v339[103] = v354;
  *&v339[7] = v348;
  *&v339[23] = v349;
  *&v339[39] = v350;
  v339[119] = v355;
  *&v339[55] = v351;
  v99 = v340;
  v100 = sub_219FC();
  v101 = v299;
  v102 = *(*v299 + 128);
  v103 = *v299 + 128;
  v104 = v102();
  v294 = v103;
  v295 = v102;
  if (v104 == 3 || v102() == 1)
  {
    v105 = sub_FEB0();
  }

  else
  {
    v105 = sub_FE9C();
  }

  v106 = v283;
  v107 = *v105;
  sub_217BC();
  v109 = v108;
  v111 = v110;
  v113 = v112;
  v115 = v114;
  v341 = 0;
  v297 = objc_opt_self();
  v116 = [v297 sharedInstance];
  v117 = [v116 systemBannerEnabled];

  v118 = 0.0;
  if ((v117 & 1) == 0)
  {
    v119 = (*(*v106 + 200))();
    if (v119)
    {

      if (((*(*v101 + 272))() & 1) == 0 && (v295() == 3 || v295() == 2))
      {
        v118 = -*sub_100B8();
      }
    }
  }

  v120 = [v297 sharedInstance];
  v121 = [v120 systemBannerEnabled];

  v284 = v99;
  LODWORD(v285) = v100;
  if ((v121 & 1) == 0)
  {
    v123 = *(*v106 + 200);

    v125 = v123(v124);
    if (!v125)
    {
      goto LABEL_22;
    }

    if ((*(*v101 + 272))())
    {
      goto LABEL_22;
    }

    if ((*(*v101 + 176))())
    {
    }

    else
    {
      v239 = sub_21DAC();

      if ((v239 & 1) == 0 && (v295)(v240) != 3 && v295() != 1)
      {
LABEL_22:

        goto LABEL_23;
      }
    }

    v241 = sub_1160C(v106);
    v243 = v242;
    v244 = *sub_FFE8();
    v245 = v268;
    v246 = v268 + *(v266 + 36);
    v247 = *(sub_2183C() + 20);
    v248 = enum case for RoundedCornerStyle.continuous(_:);
    v249 = sub_218AC();
    (*(*(v249 - 8) + 104))(&v246[v247], v248, v249);
    *v246 = v244;
    *(v246 + 1) = v244;
    *&v246[*(sub_BE90(&qword_37308, &qword_25FA0) + 36)] = 256;
    *v245 = v241;
    v245[1] = v243;
    v250 = *sub_10080();
    v251 = *sub_1009C();
    sub_21BFC();
    sub_2184C();
    v252 = v270;
    sub_21194(v245, v270, &qword_37CC0, &qword_25F10);
    v253 = (v252 + *(v267 + 36));
    v254 = v326;
    v253[4] = v325[1];
    v253[5] = v254;
    v253[6] = v327;
    v255 = v323;
    *v253 = v322;
    v253[1] = v255;
    v256 = v325[0];
    v253[2] = v324;
    v253[3] = v256;
    LOBYTE(v241) = sub_219DC();
    v257 = v252;
    v258 = v272;
    sub_21194(v257, v272, &qword_37CC8, &qword_25F18);
    v259 = v258 + *(v269 + 36);
    *v259 = v241;
    *(v259 + 8) = 0u;
    *(v259 + 24) = 0u;
    *(v259 + 40) = 1;
    v260 = sub_21C0C();
    v261 = (*(*v106 + 344))();
    v262 = v258;
    v263 = v271;
    sub_21194(v262, v271, &qword_37CD0, &qword_25F20);
    v264 = (v263 + *(v286 + 36));
    *v264 = v260;
    *(v264 + 1) = v261;
    v265 = v273;
    sub_21194(v263, v273, &qword_37CD8, &qword_25F28);
    sub_211FC(v265, v288, &qword_37CD8, &qword_25F28);
    swift_storeEnumTagMultiPayload();
    sub_20EB8();
    sub_F530(&qword_37D58, &qword_37CA8, &qword_25EF8);
    v223 = v289;
    sub_2199C();
    sub_1BF9C(v265, &qword_37CD8, &qword_25F28);
LABEL_35:
    v224 = v291;
    sub_211FC(v223, v291, &qword_37CE0, &qword_25F30);
    v225 = v290;
    v300 = v290;
    v226 = v284;
    LOBYTE(v301[0]) = v284;
    *(&v301[4] + 1) = *&v339[64];
    *(&v301[5] + 1) = *&v339[80];
    *(&v301[6] + 1) = *&v339[96];
    *(&v301[7] + 1) = *&v339[112];
    *(v301 + 1) = *v339;
    *(&v301[1] + 1) = *&v339[16];
    *(&v301[2] + 1) = *&v339[32];
    *(&v301[3] + 1) = *&v339[48];
    HIDWORD(v301[7]) = *&v343[3];
    *(&v301[7] + 9) = *v343;
    v227 = v285;
    LOBYTE(v302) = v285;
    DWORD1(v302) = *&v342[3];
    *(&v302 + 1) = *v342;
    *(&v302 + 1) = v109;
    *&v303 = v111;
    *(&v303 + 1) = v113;
    *&v304[0] = v115;
    BYTE8(v304[0]) = 0;
    HIDWORD(v304[0]) = *&v344[3];
    *(v304 + 9) = *v344;
    *&v304[1] = 0;
    *(&v304[1] + 1) = v118;
    v228 = v301[6];
    v229 = v293;
    v293[6] = v301[5];
    v229[7] = v228;
    v230 = v301[2];
    v229[2] = v301[1];
    v229[3] = v230;
    v231 = v301[4];
    v229[4] = v301[3];
    v229[5] = v231;
    v232 = v301[0];
    *v229 = v300;
    v229[1] = v232;
    v233 = v301[7];
    v234 = v302;
    v235 = v304[1];
    v229[11] = v304[0];
    v229[12] = v235;
    v236 = v303;
    v229[9] = v234;
    v229[10] = v236;
    v229[8] = v233;
    v237 = sub_BE90(&qword_37D60, &qword_25FB0);
    sub_211FC(v224, v229 + *(v237 + 48), &qword_37CE0, &qword_25F30);
    sub_211FC(&v300, &v305, &qword_37D68, &qword_25FB8);
    sub_1BF9C(v223, &qword_37CE0, &qword_25F30);
    sub_1BF9C(v224, &qword_37CE0, &qword_25F30);
    v305 = v225;
    LOBYTE(v306[0]) = v226;
    *(&v306[4] + 1) = *&v339[64];
    *(&v306[5] + 1) = *&v339[80];
    *(&v306[6] + 1) = *&v339[96];
    *(&v306[7] + 1) = *&v339[112];
    *(v306 + 1) = *v339;
    *(&v306[1] + 1) = *&v339[16];
    *(&v306[2] + 1) = *&v339[32];
    *(&v306[3] + 1) = *&v339[48];
    HIDWORD(v306[7]) = *&v343[3];
    *(&v306[7] + 9) = *v343;
    LOBYTE(v307) = v227;
    DWORD1(v307) = *&v342[3];
    *(&v307 + 1) = *v342;
    *(&v307 + 1) = v109;
    *&v308 = v111;
    *(&v308 + 1) = v113;
    *&v309[0] = v115;
    BYTE8(v309[0]) = 0;
    *(v309 + 9) = *v344;
    HIDWORD(v309[0]) = *&v344[3];
    *&v309[1] = 0;
    *(&v309[1] + 1) = v118;
    return sub_1BF9C(&v305, &qword_37D68, &qword_25FB8);
  }

LABEL_23:
  v126 = (v295)(v122);
  if (v126 > 1)
  {
    if (v126 != 2 && v126 != 3)
    {
      goto LABEL_42;
    }

LABEL_29:
    v127 = sub_FE08();
LABEL_30:
    v129 = *v127;
    v128 = v127[1];

    *&v305 = v129;
    *(&v305 + 1) = v130;
    v131 = sub_21A9C();
    v133 = v132;
    v135 = v134;
    sub_21A4C();
    v136 = sub_21A6C();
    v138 = v137;
    v140 = v139;
    sub_F8B8(v131, v133, v135 & 1);

    sub_21A5C();
    v283 = sub_21A8C();
    v273 = v141;
    v143 = v142;
    v145 = v144;

    sub_F8B8(v136, v138, v140 & 1);

    KeyPath = swift_getKeyPath();
    v147 = sub_21B1C();
    v148 = swift_getKeyPath();
    v149 = v143 & 1;
    v333 = v143 & 1;
    v150 = sub_219EC();
    v151 = [v297 sharedInstance];
    v152 = [v151 systemBannerEnabled];

    v277 = v111;
    v278 = v109;
    v275 = v115;
    v276 = v113;
    v274 = v118;
    if (v152)
    {
      v153 = v295;
      if (v295() == 3 || v153() == 1)
      {
        v154 = *sub_FEC4();
      }
    }

    sub_217BC();
    v156 = v155;
    v158 = v157;
    v160 = v159;
    v162 = v161;
    v334 = 0;
    v163 = sub_219FC();
    v164 = *sub_FED8();
    sub_217BC();
    v166 = v165;
    v168 = v167;
    v170 = v169;
    v172 = v171;
    v335 = 0;
    v173 = sub_219CC();
    v174 = sub_1005C();
    v175 = *v174;
    sub_217BC();
    v336 = 0;
    *&v322 = v283;
    *(&v322 + 1) = v273;
    LOBYTE(v323) = v149;
    *(&v323 + 1) = v145;
    *&v324 = KeyPath;
    BYTE8(v324) = 1;
    *&v325[0] = v148;
    *(&v325[0] + 1) = v147;
    LOBYTE(v325[1]) = v150;
    *(&v325[1] + 1) = v156;
    *&v326 = v158;
    *(&v326 + 1) = v160;
    *&v327 = v162;
    BYTE8(v327) = 0;
    LOBYTE(v328) = v163;
    *(&v328 + 1) = v166;
    *&v329 = v168;
    *(&v329 + 1) = v170;
    *&v330 = v172;
    BYTE8(v330) = 0;
    HIDWORD(v330) = *&v338[3];
    *(&v330 + 9) = *v338;
    LOBYTE(v331) = v173;
    DWORD1(v331) = *&v337[3];
    *(&v331 + 1) = *v337;
    *(&v331 + 1) = v176;
    *&v332[0] = v177;
    *(&v332[0] + 1) = v178;
    *&v332[1] = v179;
    BYTE8(v332[1]) = 0;
    v180 = sub_218BC();
    v181 = v296;
    *v296 = v180;
    v181[1] = 0;
    *(v181 + 16) = 1;
    v182 = v181;
    v183 = v181 + *(sub_BE90(&qword_37CF0, &qword_25F70) + 44);
    v184 = v182;
    v185 = sub_10164();
    v186 = v185[1];
    *&v300 = *v185;
    *(&v300 + 1) = v186;
    type metadata accessor for CallRecordingViewModel();
    sub_20854(&qword_37A70, type metadata accessor for CallRecordingViewModel);

    sub_2181C();
    swift_getKeyPath();
    sub_2182C();

    sub_21B5C();
    v187 = sub_21B1C();
    v188 = swift_getKeyPath();
    v189 = &v183[*(sub_BE90(&qword_37CF8, &qword_25F78) + 36)];
    *v189 = v188;
    v189[1] = v187;
    sub_21BFC();
    sub_217FC();
    v190 = &v183[*(sub_BE90(&qword_37D00, &qword_25F80) + 36)];
    v191 = v346;
    *v190 = v345;
    *(v190 + 1) = v191;
    *(v190 + 2) = v347;
    LOBYTE(v183) = sub_219FC();
    v192 = *sub_10068();
    sub_217BC();
    v194 = v193;
    v196 = v195;
    v198 = v197;
    v200 = v199;
    v201 = v184 + *(sub_BE90(&qword_37D08, &qword_25F88) + 36);
    *v201 = v183;
    *(v201 + 8) = v194;
    *(v201 + 16) = v196;
    *(v201 + 24) = v198;
    *(v201 + 32) = v200;
    *(v201 + 40) = 0;
    LOBYTE(v183) = sub_219CC();
    v202 = *v174;
    sub_217BC();
    v203 = v184 + *(v280 + 36);
    *v203 = v183;
    *(v203 + 8) = v204;
    *(v203 + 16) = v205;
    *(v203 + 24) = v206;
    *(v203 + 32) = v207;
    *(v203 + 40) = 0;
    v320 = v331;
    v321[0] = v332[0];
    *(v321 + 9) = *(v332 + 9);
    v316 = v327;
    v317 = v328;
    v318 = v329;
    v319 = v330;
    v312 = v324;
    v313 = v325[0];
    v314 = v325[1];
    v315 = v326;
    v310 = v322;
    v311 = v323;
    v208 = v281;
    sub_211FC(v184, v281, &qword_37CB0, &qword_25F00);
    v209 = v321[0];
    v303 = v320;
    v304[0] = v321[0];
    *(v304 + 9) = *(v321 + 9);
    v210 = v316;
    v211 = v317;
    v301[5] = v316;
    v301[6] = v317;
    v213 = v318;
    v212 = v319;
    v301[7] = v318;
    v302 = v319;
    v214 = v312;
    v215 = v313;
    v301[1] = v312;
    v301[2] = v313;
    v217 = v314;
    v216 = v315;
    v301[3] = v314;
    v301[4] = v315;
    v219 = v310;
    v218 = v311;
    v300 = v310;
    v301[0] = v311;
    v220 = v282;
    *(v282 + 10) = v320;
    *(v220 + 176) = v209;
    *(v220 + 185) = *(v321 + 9);
    *(v220 + 96) = v210;
    *(v220 + 112) = v211;
    *(v220 + 128) = v213;
    *(v220 + 144) = v212;
    *(v220 + 32) = v214;
    *(v220 + 48) = v215;
    *(v220 + 64) = v217;
    *(v220 + 80) = v216;
    *v220 = v219;
    *(v220 + 16) = v218;
    *(v220 + 208) = 0;
    *(v220 + 216) = 1;
    v221 = sub_BE90(&qword_37D10, &qword_25F90);
    sub_211FC(v208, v220 + *(v221 + 64), &qword_37CB0, &qword_25F00);
    sub_211FC(&v322, &v305, &qword_37D18, &qword_25F98);
    sub_211FC(&v300, &v305, &qword_37D18, &qword_25F98);
    sub_1BF9C(v208, &qword_37CB0, &qword_25F00);
    v308 = v320;
    v309[0] = v321[0];
    *(v309 + 9) = *(v321 + 9);
    v306[5] = v316;
    v306[6] = v317;
    v306[7] = v318;
    v307 = v319;
    v306[1] = v312;
    v306[2] = v313;
    v306[3] = v314;
    v306[4] = v315;
    v305 = v310;
    v306[0] = v311;
    sub_1BF9C(&v305, &qword_37D18, &qword_25F98);
    sub_211FC(v220, v288, &qword_37CA8, &qword_25EF8);
    swift_storeEnumTagMultiPayload();
    sub_20EB8();
    sub_F530(&qword_37D58, &qword_37CA8, &qword_25EF8);
    v222 = v289;
    sub_2199C();
    sub_1BF9C(&v322, &qword_37D18, &qword_25F98);
    sub_1BF9C(v220, &qword_37CA8, &qword_25EF8);
    v223 = v222;
    sub_1BF9C(v296, &qword_37CB0, &qword_25F00);
    v111 = v277;
    v109 = v278;
    v115 = v275;
    v113 = v276;
    v118 = v274;
    goto LABEL_35;
  }

  if (!v126)
  {
    goto LABEL_29;
  }

  if (v126 == 1)
  {
    v127 = sub_FCF8();
    goto LABEL_30;
  }

LABEL_42:
  *&v305 = v126;
  result = sub_21DBC();
  __break(1u);
  return result;
}

uint64_t sub_20700@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[3];
  *a1 = sub_218BC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v6 = sub_BE90(&qword_37A78, &qword_25B68);
  sub_1EDC4(v3, v4, v5, (a1 + *(v6 + 44)));
  v7 = sub_21B1C();
  KeyPath = swift_getKeyPath();
  result = sub_BE90(&qword_37A80, &qword_25BA0);
  v10 = (a1 + *(result + 36));
  *v10 = KeyPath;
  v10[1] = v7;
  return result;
}

uint64_t sub_207A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2187C();
  *a1 = result;
  return result;
}

unint64_t sub_207F8(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for CallRecordingViewModel()
{
  result = qword_38A60;
  if (!qword_38A60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20854(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_208A0()
{
  result = qword_37A88;
  if (!qword_37A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_37A88);
  }

  return result;
}

unint64_t sub_208F8()
{
  result = qword_37A90;
  if (!qword_37A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_37A90);
  }

  return result;
}

unint64_t sub_20950()
{
  result = qword_37A98;
  if (!qword_37A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_37A98);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GlyphState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GlyphState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_20B58()
{
  sub_EFE8(319, &qword_37AC8);
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    sub_EFE8(319, &qword_37AD0);
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      sub_EFE8(319, &qword_37AD8);
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        sub_EFE8(319, &qword_37340);
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          sub_EFE8(319, &unk_37AE0);
          if (v9 <= 0x3F)
          {
            v14 = *(v8 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

__n128 sub_20D2C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_20D38(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_20D80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_20DD4()
{
  result = qword_37C90;
  if (!qword_37C90)
  {
    sub_E098(&qword_37A80, &qword_25BA0);
    sub_F530(&qword_37C98, &qword_37CA0, "m");
    sub_F530(&qword_37288, &qword_37290, &qword_24E10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_37C90);
  }

  return result;
}

unint64_t sub_20EB8()
{
  result = qword_37D20;
  if (!qword_37D20)
  {
    sub_E098(&qword_37CD8, &qword_25F28);
    sub_20F70();
    sub_F530(&qword_37D48, &qword_37D50, &qword_25FA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_37D20);
  }

  return result;
}

unint64_t sub_20F70()
{
  result = qword_37D28;
  if (!qword_37D28)
  {
    sub_E098(&qword_37CD0, &qword_25F20);
    sub_20FFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_37D28);
  }

  return result;
}

unint64_t sub_20FFC()
{
  result = qword_37D30;
  if (!qword_37D30)
  {
    sub_E098(&qword_37CC8, &qword_25F18);
    sub_21088();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_37D30);
  }

  return result;
}

unint64_t sub_21088()
{
  result = qword_37D38;
  if (!qword_37D38)
  {
    sub_E098(&qword_37CC0, &qword_25F10);
    sub_21140();
    sub_F530(&qword_37300, &qword_37308, &qword_25FA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_37D38);
  }

  return result;
}

unint64_t sub_21140()
{
  result = qword_37D40;
  if (!qword_37D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_37D40);
  }

  return result;
}

uint64_t sub_21194(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_BE90(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_211FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_BE90(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_21264(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5 != 254)
  {
    return sub_21278(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t sub_21278(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_21290(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_21290(uint64_t a1, uint64_t a2, char a3)
{
  sub_F8C8(a1, a2, a3 & 1);
}

uint64_t sub_212CC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5 != 254)
  {
    return sub_212E0(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t sub_212E0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_212F8(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_212F8(uint64_t a1, uint64_t a2, char a3)
{
  sub_F8B8(a1, a2, a3 & 1);
}