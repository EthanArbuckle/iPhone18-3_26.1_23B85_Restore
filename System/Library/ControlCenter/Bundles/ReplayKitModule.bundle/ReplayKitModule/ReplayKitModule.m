int64_t sub_2938(id a1, id a2, id a3)
{
  v4 = a3;
  v5 = [a2 objectForKey:@"displayName"];
  v6 = [v4 objectForKey:@"displayName"];

  v7 = [v5 compare:v6];
  return v7;
}

void sub_3080(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_309C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  SBSGetScreenLockStatus();
  [WeakRetained setIsDeviceLocked:0];
  if (!__RPLogLevel && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2 = WeakRetained[89];
    *buf = 136446722;
    v4 = "[RPControlCenterMenuModuleViewController setupLockScreenNotifications]_block_invoke";
    v5 = 1024;
    v6 = 306;
    v7 = 1024;
    v8 = v2;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [DEBUG] %{public}s:%d _isDeviceLocked=%d", buf, 0x18u);
  }
}

void sub_3618(uint64_t a1, char a2)
{
  if (a2)
  {
    if (__RPLogLevel || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    *buf = 136446466;
    v7 = "[RPControlCenterMenuModuleViewController acquireProcessAssertionWithHandler:]_block_invoke";
    v8 = 1024;
    v9 = 341;
    v3 = " [DEBUG] %{public}s:%d  assertion acquired";
  }

  else
  {
    if (__RPLogLevel || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    *buf = 136446466;
    v7 = "[RPControlCenterMenuModuleViewController acquireProcessAssertionWithHandler:]_block_invoke";
    v8 = 1024;
    v9 = 339;
    v3 = " [DEBUG] %{public}s:%d  assertion failed";
  }

  _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, v3, buf, 0x12u);
LABEL_9:
  if (*(a1 + 32))
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_37B0;
    block[3] = &unk_14470;
    v5 = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_3984(uint64_t a1)
{
  v1 = *(a1 + 32);
  SBSRequestPasscodeUnlockAlertUI();
}

uint64_t sub_3A00(uint64_t a1, uint64_t a2)
{
  NSLog(@"%s completed authentication unlocked %i", "[RPControlCenterMenuModuleViewController authenticateWithCompletionHandler:]_block_invoke_2", a2);
  v3 = *(*(a1 + 32) + 16);

  return v3();
}

id sub_3BD8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  WeakRetained = objc_loadWeakRetained((v2 + 48));
  [WeakRetained setExtensionBundleID:v3];

  if ([*(a1 + 32) currentSelectedExtensionIsSystemRecording])
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  v6 = objc_loadWeakRetained((*(a1 + 32) + 48));
  [v6 notifyClientDelegatesStart:1 withRecordingType:v5];

  v7 = *(a1 + 32);

  return [v7 startSystemRecordingOrBroadcastWithDelay:3.0];
}

void sub_3F28(uint64_t a1)
{
  v2 = [*(a1 + 32) isExpanded];
  v3 = *(a1 + 32);
  if (v2)
  {

    [v3 updateStateAndUI];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(v3 + 6);
    [*(a1 + 32) setSelected:{objc_msgSend(WeakRetained, "recordingOn")}];
  }
}

id sub_4124(uint64_t a1)
{
  [*(a1 + 32) updateStateAndUI];
  v2 = *(a1 + 32);

  return [v2 invalidateProcessAssertion];
}

id sub_42C4(uint64_t a1)
{
  [*(a1 + 32) updateStateAndUI];
  v2 = *(a1 + 32);

  return [v2 invalidateProcessAssertion];
}

void sub_4944(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = *(a1 + 32);
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:*(a1 + 40) value:&stru_14AF0 table:0];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_4A60;
  v5[3] = &unk_14550;
  objc_copyWeak(&v6, &location);
  [v2 setFooterButtonTitle:v4 handler:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void sub_4A3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_4A60(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained recordButtonTapped];

  return 0;
}

uint64_t sub_4F64(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_loadWeakRetained(WeakRetained + 6);
  if ([v3 recordingOn])
  {
    goto LABEL_4;
  }

  v4 = objc_loadWeakRetained(WeakRetained + 6);
  if ([v4 isCountingDown])
  {

LABEL_4:
    goto LABEL_5;
  }

  v6 = objc_loadWeakRetained(WeakRetained + 6);
  v7 = [v6 lockUIControls];

  if ((v7 & 1) == 0)
  {
    objc_storeStrong(WeakRetained + 3, *(a1 + 32));
    [WeakRetained updateRecordButtonLabel];
    [WeakRetained updateRPCCModuleMenuItems];
  }

LABEL_5:

  return 0;
}

void sub_53AC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v5 = "[RPControlCenterMenuModuleViewController recordButtonTapped]_block_invoke";
      v6 = 1024;
      v7 = 587;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d succesfully authenticated", buf, 0x12u);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_54D8;
    block[3] = &unk_14420;
    block[4] = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, block);
  }
}

id sub_54D8(uint64_t a1)
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
    v3 = [WeakRetained isCountingDown];
    v4 = objc_loadWeakRetained((*(a1 + 32) + 48));
    v5 = [v4 lockUIControls];
    v6 = objc_loadWeakRetained((*(a1 + 32) + 48));
    *buf = 136447234;
    v14 = "[RPControlCenterMenuModuleViewController recordButtonTapped]_block_invoke";
    v15 = 1024;
    v16 = 591;
    v17 = 1024;
    v18 = v3;
    v19 = 1024;
    v20 = v5;
    v21 = 1024;
    v22 = [v6 recordingOn];
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d isCountingDown:%i lockUIControls:%i, recordingOn:%i", buf, 0x24u);
  }

  v7 = objc_loadWeakRetained((*(a1 + 32) + 48));
  if ([v7 highQualityLocalRecordingOn])
  {

LABEL_7:
    v10 = *(a1 + 32);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_56D4;
    v12[3] = &unk_14420;
    v12[4] = v10;
    return [v10 presentRecordingAlertWithHandler:v12];
  }

  v8 = objc_loadWeakRetained((*(a1 + 32) + 48));
  v9 = [v8 highQualityLocalRecordingReady];

  if (v9)
  {
    goto LABEL_7;
  }

  return [*(a1 + 32) performButtonAction];
}

void sub_56D4(uint64_t a1)
{
  v2 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_5768;
  block[3] = &unk_14420;
  block[4] = *(a1 + 32);
  dispatch_after(v2, &_dispatch_main_q, block);
}

void sub_5770(id a1)
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136446466;
    v2 = "[RPControlCenterMenuModuleViewController recordButtonTapped]_block_invoke";
    v3 = 1024;
    v4 = 609;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Recording not available alert presented", &v1, 0x12u);
  }
}

void sub_5A10(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_5A88;
  block[3] = &unk_14420;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_5C54(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  [WeakRetained terminateAngelRecordingSession];

  v3 = objc_loadWeakRetained((*(a1 + 32) + 48));
  v4 = [v3 highQualityLocalRecordingOn];

  v5 = objc_loadWeakRetained((*(a1 + 32) + 48));
  v6 = v5;
  if (v4)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_5DA4;
    v12[3] = &unk_14670;
    v7 = *(a1 + 40);
    v12[4] = *(a1 + 32);
    v13 = v7;
    [v6 stopCurrentSession:v12];
  }

  else
  {
    v8 = [v5 highQualityLocalRecordingReady];

    if (v8)
    {
      v9 = objc_loadWeakRetained((*(a1 + 32) + 48));
      [v9 endReadyToRecord];

      v10 = *(a1 + 40);
      if (v10)
      {
        v11 = *(v10 + 16);

        v11();
      }
    }
  }
}

uint64_t sub_5DA4(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_5E3C;
  block[3] = &unk_14420;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_622C(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 80);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_62B0;
    block[3] = &unk_14420;
    block[4] = v2;
    dispatch_async(v3, block);
  }
}

id sub_62B0(uint64_t a1)
{
  [*(a1 + 32) setIsDeviceLocked:0];
  v2 = *(*(a1 + 32) + 64);

  return [v2 requestExpandModule];
}

void sub_6C18(id a1)
{
  qword_1A8E0 = objc_alloc_init(RPFeatureFlagUtility);

  _objc_release_x1();
}

void sub_9C1C(uint64_t a1)
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

void sub_9E58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_9E70(uint64_t a1)
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

void sub_A230(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Block_object_dispose((v22 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_A260(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = *(*(a1 + 32) + 8);
  v2 = [*(a1 + 40) copy];
  [*(a1 + 32) setCurrentTimerString:v2];
}

void sub_A2C8(uint64_t a1, void *a2, void *a3)
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

void sub_A934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  objc_destroyWeak((v29 + 48));
  objc_destroyWeak((v30 - 128));
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_A984(uint64_t a1, void *a2, void *a3)
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

void sub_AB38(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 6);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_AE34;
    block[3] = &unk_14578;
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
          v6[2] = sub_AE3C;
          v6[3] = &unk_147A8;
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
      sub_B32C();
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

void sub_AE3C(uint64_t a1, void *a2)
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

void sub_AFFC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}