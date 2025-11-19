void sub_29C9DE384(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29C9DE3AC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _performanceTraceGlobalStateDidChange];
}

uint64_t sub_29C9DE48C(uint64_t a1)
{
  [*(a1 + 32) _stopRecording];
  v2 = *(a1 + 32);

  return [v2 _cleanupSessionAndUpdateState:0];
}

void sub_29C9DE740(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_29C9DE764(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = sub_29C9DE854();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&dword_29C9DD000, v3, OS_LOG_TYPE_DEFAULT, "User selected plan named %{public}@", &v7, 0xCu);
  }

  [MEMORY[0x29EDC6100] setUserSelectedTracePlanName:*(a1 + 32)];
  [WeakRetained setSelectedTracePlanName:*(a1 + 32)];
  [WeakRetained _recreateMenu];
  [*(a1 + 40) _updateGlyph];

  v5 = *MEMORY[0x29EDCA608];
  return 0;
}

id sub_29C9DE854()
{
  if (qword_2A179B9F0 != -1)
  {
    sub_29C9E0AF0();
  }

  v1 = qword_2A179B9E8;

  return v1;
}

void sub_29C9DECB4(uint64_t a1)
{
  [*(a1 + 32) _updateState:*(a1 + 40)];
  v2 = [*(a1 + 32) performanceTraceSession];

  if (v2)
  {
    v3 = [*(a1 + 32) performanceTraceSession];
    [v3 setDelegate:0];

    v4 = *(a1 + 32);

    MEMORY[0x2A1C70FE8](v4, sel_setPerformanceTraceSession_);
  }
}

void sub_29C9DF2D4(uint64_t a1)
{
  v2 = sub_29C9DE854();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_29C9DD000, v2, OS_LOG_TYPE_DEFAULT, "Displaying alert for completed trace", buf, 2u);
  }

  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = sub_29C9DF39C;
  block[3] = &unk_29F33DD28;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x29EDCA578], block);
}

void sub_29C9DFCF4(uint64_t a1)
{
  v2 = MEMORY[0x29EDC0C88];
  v3 = *MEMORY[0x29EDC0C88];
  if (os_log_type_enabled(*MEMORY[0x29EDC0C88], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_29C9DD000, v3, OS_LOG_TYPE_INFO, "Collecting power metrics passive trace", buf, 2u);
  }

  v4 = [*(a1 + 32) _passiveTraceConfig];
  v5 = v4;
  if (v4)
  {
    v16[0] = 0;
    v6 = [v4 collectThenClearCurrentSettingWithTraceNamePrefix:0 triggerUserNotification:1 errorOut:v16];
    v7 = v16[0];
    v8 = v7;
    if (v7)
    {
      v10 = MEMORY[0x29EDCA5F8];
      v11 = 3221225472;
      v12 = sub_29C9DFF60;
      v13 = &unk_29F33DDC8;
      v14 = *(a1 + 32);
      v15 = v7;
      BSDispatchMain();
    }

    v9 = *v2;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_29C9DD000, v9, OS_LOG_TYPE_DEFAULT, "Completed power metrics passive trace collection", buf, 2u);
    }

    [*(a1 + 32) _updateState:{0, v10, v11, v12, v13, v14}];
  }

  else
  {
    v16[1] = MEMORY[0x29EDCA5F8];
    v16[2] = 3221225472;
    v16[3] = sub_29C9DFEB8;
    v16[4] = &unk_29F33DD28;
    v16[5] = *(a1 + 32);
    BSDispatchMain();
  }
}

void sub_29C9DFEB8(uint64_t a1)
{
  v4 = [*(a1 + 32) _localizedString:@"CONTROL_CENTER_STATUS_PERFORMANCE_TRACE_STOP_ERROR"];
  v2 = [*(a1 + 32) contentModuleContext];
  v3 = [MEMORY[0x29EDC0CF0] statusUpdateWithMessage:v4 type:0];
  [v2 enqueueStatusUpdate:v3];

  [*(a1 + 32) _updateState:0];
}

void sub_29C9DFF60(uint64_t a1)
{
  v2 = *MEMORY[0x29EDC0C88];
  if (os_log_type_enabled(*MEMORY[0x29EDC0C88], OS_LOG_TYPE_ERROR))
  {
    sub_29C9E0E14(a1, v2);
  }

  v3 = [*(a1 + 32) _localizedString:@"CONTROL_CENTER_STATUS_PERFORMANCE_TRACE_PROCESSING_ERROR"];
  v4 = [*(a1 + 32) contentModuleContext];
  v5 = [MEMORY[0x29EDC0CF0] statusUpdateWithMessage:v3 type:0];
  [v4 enqueueStatusUpdate:v5];

  [*(a1 + 32) _updateState:0];
}

void sub_29C9E00FC(uint64_t a1)
{
  v2 = MEMORY[0x29EDC0C88];
  v3 = *MEMORY[0x29EDC0C88];
  if (os_log_type_enabled(*MEMORY[0x29EDC0C88], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_29C9DD000, v3, OS_LOG_TYPE_DEFAULT, "Collecting passive trace", buf, 2u);
  }

  v4 = [*(a1 + 32) _passiveTraceConfig];
  v5 = v4;
  if (v4)
  {
    v14 = 0;
    v6 = [v4 collectLookbackIntervalWithTraceNamePrefix:0 triggerUserNotification:1 errorOut:&v14];
    v7 = v14;
    v8 = v7;
    if (v7)
    {
      v12 = *(a1 + 32);
      v13 = v7;
      BSDispatchMain();
    }

    v9 = *v2;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_29C9DD000, v9, OS_LOG_TYPE_DEFAULT, "Completed passive trace collection", buf, 2u);
    }
  }

  else
  {
    v8 = [*(a1 + 32) _localizedString:@"CONTROL_CENTER_STATUS_PERFORMANCE_TRACE_START_ERROR"];
    v10 = [*(a1 + 32) contentModuleContext];
    v11 = [MEMORY[0x29EDC0CF0] statusUpdateWithMessage:v8 type:0];
    [v10 enqueueStatusUpdate:v11];
  }

  [*(a1 + 32) _updateState:0];
}

void sub_29C9E02CC(uint64_t a1)
{
  v2 = *MEMORY[0x29EDC0C88];
  if (os_log_type_enabled(*MEMORY[0x29EDC0C88], OS_LOG_TYPE_ERROR))
  {
    sub_29C9E0E14(a1, v2);
  }

  v3 = [*(a1 + 32) _localizedString:@"CONTROL_CENTER_STATUS_PERFORMANCE_TRACE_PROCESSING_ERROR"];
  v4 = [*(a1 + 32) contentModuleContext];
  v5 = [MEMORY[0x29EDC0CF0] statusUpdateWithMessage:v3 type:0];
  [v4 enqueueStatusUpdate:v5];

  [*(a1 + 32) _updateState:0];
}

void sub_29C9E04F0(uint64_t a1)
{
  v34 = *MEMORY[0x29EDCA608];
  if ([*(a1 + 32) state] != *(a1 + 40))
  {
    v2 = *MEMORY[0x29EDC0C88];
    if (os_log_type_enabled(*MEMORY[0x29EDC0C88], OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v4 = v2;
      v5 = [objc_opt_class() displayNameForState:{objc_msgSend(*(a1 + 32), "state")}];
      v6 = [*(a1 + 32) state];
      v7 = *(a1 + 32);
      v8 = [objc_opt_class() displayNameForState:*(a1 + 40)];
      v9 = *(a1 + 40);
      v26 = 138544130;
      v27 = v5;
      v28 = 2048;
      v29 = v6;
      v30 = 2114;
      v31 = v8;
      v32 = 2048;
      v33 = v9;
      _os_log_impl(&dword_29C9DD000, v4, OS_LOG_TYPE_DEFAULT, "State changed from %{public}@ (%lu) to %{public}@ (%lu)", &v26, 0x2Au);
    }

    [*(a1 + 32) setState:*(a1 + 40)];
    v10 = *(a1 + 40);
    if (v10 <= 1)
    {
      if (v10)
      {
        if (v10 != 1)
        {
          goto LABEL_18;
        }

        v11 = [*(a1 + 32) _localizedString:@"CONTROL_CENTER_SUBTITLE_PERFORMANCE_TRACE_STARTING"];
        [*(a1 + 32) _updateSubtitle:v11];
        [*(a1 + 32) setSelected:1];
        v18 = [*(a1 + 32) buttonView];
        v19 = v18;
        v20 = 0;
      }

      else
      {
        v23 = MEMORY[0x29EDC6100];
        v24 = [*(a1 + 32) selectedTracePlanName];
        v11 = [v23 displayNameForTracePlanName:v24];

        [*(a1 + 32) _updateSubtitle:v11];
        [*(a1 + 32) setSelected:0];
        v18 = [*(a1 + 32) buttonView];
        v19 = v18;
        v20 = 1;
      }

      [v18 setEnabled:v20];

      goto LABEL_17;
    }

    switch(v10)
    {
      case 2:
        v11 = [*(a1 + 32) _localizedString:@"CONTROL_CENTER_STATUS_PERFORMANCE_TRACE_STARTED"];
        v21 = [*(a1 + 32) contentModuleContext];
        v22 = [MEMORY[0x29EDC0CF0] statusUpdateWithMessage:v11 type:0];
        [v21 enqueueStatusUpdate:v22];

        v12 = [*(a1 + 32) _localizedString:@"CONTROL_CENTER_SUBTITLE_PERFORMANCE_TRACE_RUNNING"];
        [*(a1 + 32) _updateSubtitle:v12];
        [*(a1 + 32) setSelected:1];
        v15 = [*(a1 + 32) buttonView];
        v16 = v15;
        v17 = 1;
        goto LABEL_13;
      case 3:
        [*(a1 + 32) setSelected:1];
        v11 = [*(a1 + 32) buttonView];
        [v11 setEnabled:0];
        goto LABEL_17;
      case 4:
        v11 = [*(a1 + 32) _localizedString:@"CONTROL_CENTER_STATUS_PERFORMANCE_TRACE_PROCESSING"];
        v12 = [*(a1 + 32) _localizedString:@"CONTROL_CENTER_SUBTITLE_PERFORMANCE_TRACE_PROCESSING"];
        [*(a1 + 32) selectedTracePlanIsPassive];
        [*(a1 + 32) _updateSubtitle:v12];
        [*(a1 + 32) setSelected:1];
        v13 = [*(a1 + 32) contentModuleContext];
        v14 = [MEMORY[0x29EDC0CF0] statusUpdateWithMessage:v11 type:0];
        [v13 enqueueStatusUpdate:v14];

        v15 = [*(a1 + 32) buttonView];
        v16 = v15;
        v17 = 0;
LABEL_13:
        [v15 setEnabled:v17];

LABEL_17:
        break;
    }
  }

LABEL_18:
  v25 = *MEMORY[0x29EDCA608];
}

uint64_t sub_29C9E0A58()
{
  qword_2A179B9E8 = os_log_create("com.apple.ControlCenter", "PerformanceTraceModule");

  return MEMORY[0x2A1C71028]();
}

void sub_29C9E0AA8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_29C9E0AC8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_29C9E0B04()
{
  v8 = *MEMORY[0x29EDCA608];
  sub_29C9E0A9C();
  sub_29C9E0AC8(&dword_29C9DD000, v0, v1, "Error on Performance Trace didStart: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x29EDCA608];
}

void sub_29C9E0B6C()
{
  v8 = *MEMORY[0x29EDCA608];
  sub_29C9E0A9C();
  sub_29C9E0AC8(&dword_29C9DD000, v0, v1, "Error on Performance Trace didStop: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x29EDCA608];
}

void sub_29C9E0BD4()
{
  v8 = *MEMORY[0x29EDCA608];
  sub_29C9E0A9C();
  sub_29C9E0AC8(&dword_29C9DD000, v0, v1, "Error on Performance Trace didComplete: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x29EDCA608];
}

void sub_29C9E0C3C(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x29EDCA608];
  objc_opt_class();
  [v2 displayNameForState:{objc_msgSend(sub_29C9E0AE4(), "state")}];
  objc_claimAutoreleasedReturnValue();
  v5 = 138412546;
  v6 = v2;
  v7 = 2048;
  v8 = [sub_29C9E0AE4() state];
  _os_log_error_impl(&dword_29C9DD000, a2, OS_LOG_TYPE_ERROR, "Button tapped while state was not one of Running or Not Running: %@ (%lu)", &v5, 0x16u);

  v4 = *MEMORY[0x29EDCA608];
}

void sub_29C9E0D04()
{
  v8 = *MEMORY[0x29EDCA608];
  sub_29C9E0A9C();
  sub_29C9E0AC8(&dword_29C9DD000, v0, v1, "Failed to create passive trace config: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x29EDCA608];
}

void sub_29C9E0D6C(void *a1)
{
  v12 = *MEMORY[0x29EDCA608];
  v2 = a1;
  v3 = [sub_29C9E0AE4() selectedTracePlanName];
  sub_29C9E0A9C();
  sub_29C9E0AA8(&dword_29C9DD000, v4, v5, "Failed to start passive trace for %{public}@ config: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x29EDCA608];
}

void sub_29C9E0E14(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [sub_29C9E0AE4() selectedTracePlanName];
  v7 = *(a1 + 40);
  sub_29C9E0A9C();
  sub_29C9E0AA8(&dword_29C9DD000, v8, v9, "Failed to collect passive trace for %{public}@ config: %{public}@", v10, v11, v12, v13, v15);

  v14 = *MEMORY[0x29EDCA608];
}