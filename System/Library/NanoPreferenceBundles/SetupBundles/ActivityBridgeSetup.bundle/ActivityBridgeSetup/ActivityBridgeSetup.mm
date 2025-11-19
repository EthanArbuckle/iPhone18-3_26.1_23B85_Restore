void sub_25B4(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  _HKInitializeLogging();
  v6 = HKLogSync;
  if (v5 || (a2 & 1) == 0)
  {
    if (os_log_type_enabled(HKLogSync, OS_LOG_TYPE_FAULT))
    {
      sub_20F58(a1, v5, v6);
    }
  }

  else if (os_log_type_enabled(HKLogSync, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = 138543362;
    v9 = v7;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "[sharing-setup] %{public}@ Finished end to end Cloud sync", &v8, 0xCu);
  }
}

void sub_2868(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = FIUIHealthStoreForDevice();
  v5 = *(a1 + 40);
  v6 = v3;
  v4 = v3;
  FIUIUserHasExistingMoveGoal();
}

void sub_2904(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  [*(*(a1 + 32) + 16) invalidate];
  if (v5)
  {
    _HKInitializeLogging();
    v6 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
    {
      sub_20FE4(v5, v6);
    }

    a2 = 1;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2A00;
  block[3] = &unk_35438;
  v10 = a2;
  v7 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v9 = v7;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_2A00(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) delegate];
  v4 = *(a1 + 32);
  v6 = v3;
  if (v2 == 1)
  {
    [v3 buddyControllerReleaseHoldAndSkip:v4];

    v5 = *(a1 + 40);

    [CHASActivitySetupOnboardingViewController performEndToEndCloudSyncOnSkippingSetupForHealthStore:v5];
  }

  else
  {
    [v3 buddyControllerReleaseHold:v4];
  }
}

void *sub_2C14(uint64_t a1)
{
  v5[0] = 0;
  if (!qword_3CF88)
  {
    v5[1] = _NSConcreteStackBlock;
    v5[2] = 3221225472;
    v5[3] = sub_2D54;
    v5[4] = &unk_354E8;
    v5[5] = v5;
    v6 = off_354D0;
    v7 = 0;
    qword_3CF88 = _sl_dlopen();
    v3 = v5[0];
    v2 = qword_3CF88;
    if (qword_3CF88)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = qword_3CF88;
LABEL_5:
  result = dlsym(v2, "NRDevicePropertyIsAltAccount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_3CF80 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_2D54(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_3CF88 = result;
  return result;
}

void sub_3B8C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_3BA8(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    _HKInitializeLogging();
    v6 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
    {
      sub_2111C(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (a2)
    {
      v15 = *(a1 + 32);
      FIUIUserHasExistingExerciseAndStandGoals();
    }

    else
    {
      _HKInitializeLogging();
      v14 = HKLogActivity;
      if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v17 = 0;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "CHASActivitySetupMetricsCollectionViewController - hasExistingMoveGoal %d", buf, 8u);
      }

      WeakRetained[7] = 3;
    }
  }
}

void sub_3D2C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    _HKInitializeLogging();
    v6 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
    {
      sub_21188(v5, v6, v7, v8, v9, v10, v11, v12);
      if (a2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v14 = *(a1 + 40);
      v15 = *(a1 + 32);
      FIUIUserHasExistingPreKincaidMoveGoal();
      goto LABEL_9;
    }
  }

  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_4:
  _HKInitializeLogging();
  v13 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v17 = 1;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "CHASActivitySetupMetricsCollectionViewController - hasExistingExerciseAndStandGoals %d", buf, 8u);
  }

  *(*(a1 + 32) + 56) = 5;
LABEL_9:
}

void sub_3E94(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    _HKInitializeLogging();
    v6 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
    {
      sub_211F4(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  _HKInitializeLogging();
  v13 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
  {
    v15[0] = 67109120;
    v15[1] = a2;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "CHASActivitySetupMetricsCollectionViewController - hasExistingPreKincaidMoveGoal %d", v15, 8u);
  }

  v14 = 4;
  if (a2)
  {
    v14 = 5;
  }

  *(*(a1 + 32) + 56) = v14;
}

void sub_4144(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 buddyControllerReleaseHoldAndSkip:*(a1 + 32)];
}

void sub_4A38(id a1, UIAlertAction *a2)
{
  v2 = +[MCProfileConnection sharedConnection];
  [v2 setWheelchairDataSubmissionAllowed:1];
}

void sub_4A84(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(BPSAboutDetailViewController);
  v5 = *(a1 + 32);
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"FEEDBACK_WHEELCHAIR_MORE_INFO_TITLE" value:&stru_35FD0 table:@"ActivitySetup"];
  [v4 setTitleString:v7];

  v8 = *(a1 + 32);
  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"FEEDBACK_WHEELCHAIR_MORE_INFO_DESCRIPTION" value:&stru_35FD0 table:@"ActivitySetup"];
  [v4 setHeaderString:v10];

  objc_initWeak(&location, *(a1 + 32));
  v11 = *(a1 + 32);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_4C34;
  v12[3] = &unk_355C8;
  objc_copyWeak(&v13, &location);
  [v4 presentWithController:v11 onDismiss:v12];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void sub_4C18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_4C34(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _requestWheelchairDiagnosticsSubmissionIfNecessary];
}

void sub_4C74(id a1, UIAlertAction *a2)
{
  v2 = +[MCProfileConnection sharedConnection];
  [v2 setWheelchairDataSubmissionAllowed:0];
}

void sub_4E78(id a1, BOOL a2)
{
  _HKInitializeLogging();
  v2 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "CHASActivitySetupMetricsCollectionViewController opened url to Pregnancy setup in Health", v3, 2u);
  }
}

void sub_4F8C(uint64_t a1)
{
  v3 = [*(a1 + 32) tableView];
  v2 = +[NSIndexSet indexSetWithIndex:](NSIndexSet, "indexSetWithIndex:", [*(a1 + 40) section]);
  [v3 reloadSections:v2 withRowAnimation:5];
}

void sub_512C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_7134(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_71B8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _toggleAdvancedMode];
}

void sub_71F8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateAdvanceViewButton:v3];
}

void sub_7254(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_730C;
  v5[3] = &unk_35700;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);

  objc_destroyWeak(&v7);
}

void sub_730C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _setGoalSchedules:*(a1 + 32)];
    [v3 _showAdvancedViewIfNeeded];
    [v3 _setGoalQuantityForGoalView:v3[12]];
    WeakRetained = v3;
  }
}

void sub_7380(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (v3 && WeakRetained)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_745C;
    v6[3] = &unk_35778;
    objc_copyWeak(&v8, (a1 + 32));
    v7 = v3;
    [v5 _fetchActiveMoveGoalSampleWithCompletion:v6];

    objc_destroyWeak(&v8);
  }
}

void sub_745C(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_7528;
  block[3] = &unk_35750;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v8);
}

void sub_7528(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained && a1[4])
  {
    v3 = WeakRetained;
    [WeakRetained[10] setAlpha:0.0];
    objc_storeStrong(v3 + 17, a1[5]);
    objc_storeStrong(v3 + 18, a1[4]);
    [v3 _setGoalQuantityForGoalView:v3[12]];
    [v3 updateContinueButton];
    WeakRetained = v3;
  }
}

void sub_8578(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v6 = a4;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
    {
      sub_212C8(a1);
    }
  }
}

void sub_9330(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_934C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (v3 && WeakRetained)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_9428;
    v6[3] = &unk_35778;
    objc_copyWeak(&v8, (a1 + 32));
    v7 = v3;
    [v5 _fetchActiveExerciseGoalSampleWithCompletion:v6];

    objc_destroyWeak(&v8);
  }
}

void sub_9428(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_94F4;
  block[3] = &unk_35750;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v8);
}

void sub_94F4(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained && a1[4])
  {
    v3 = WeakRetained;
    objc_storeStrong(WeakRetained + 19, a1[5]);
    objc_storeStrong(v3 + 20, a1[4]);
    [v3 _setGoalQuantityForGoalView:v3[13]];
    [v3 _showAdvancedViewIfNeeded];
    [v3 updateHeaderViewContent];
    [v3 updateContinueButton];
    WeakRetained = v3;
  }
}

void sub_98A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_98C0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (v3 && WeakRetained)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_999C;
    v6[3] = &unk_35778;
    objc_copyWeak(&v8, (a1 + 32));
    v7 = v3;
    [v5 _fetchActiveStandGoalSampleWithCompletion:v6];

    objc_destroyWeak(&v8);
  }
}

void sub_999C(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_9A68;
  block[3] = &unk_35750;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v8);
}

void sub_9A68(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained && a1[4])
  {
    v3 = WeakRetained;
    objc_storeStrong(WeakRetained + 21, a1[5]);
    objc_storeStrong(v3 + 22, a1[4]);
    [v3 _setGoalQuantityForGoalView:v3[14]];
    [v3 _showAdvancedViewIfNeeded];
    [v3 updateHeaderViewContent];
    [v3 updateContinueButton];
    WeakRetained = v3;
  }
}

void sub_9CCC(id a1, BOOL a2, NSError *a3)
{
  v4 = a3;
  _HKInitializeLogging();
  v5 = HKLogSync;
  if (v4 || !a2)
  {
    if (os_log_type_enabled(HKLogSync, OS_LOG_TYPE_FAULT))
    {
      sub_21374();
    }
  }

  else if (os_log_type_enabled(HKLogSync, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[sharing-setup] Finished end to end Cloud sync", v6, 2u);
  }
}

void sub_9D7C(id a1, BOOL a2, NSError *a3)
{
  v4 = a3;
  _HKInitializeLogging();
  v5 = HKLogSync;
  if (a2)
  {
    if (os_log_type_enabled(HKLogSync, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[sharing-setup] Successfully forced nano sync after saving activity goals", v6, 2u);
    }
  }

  else if (os_log_type_enabled(HKLogSync, OS_LOG_TYPE_ERROR))
  {
    sub_213E8();
  }
}

void *sub_A238(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = result[11];
  if (v3 != result[12])
  {
    if (v3 != result[13])
    {
      if (v3 != result[14])
      {
        return result;
      }

      v15 = [result currentStandGoal];
      v16 = *(a1 + 32);
      v17 = *(v16 + 280);
      *(v16 + 280) = v15;

      v8 = *(a1 + 32);
      goto LABEL_16;
    }

    v11 = [result currentExerciseGoal];
    v12 = *(a1 + 32);
    v13 = *(v12 + 272);
    *(v12 + 272) = v11;

    v8 = *(a1 + 32);
    if (*(v8 + 120) != 1)
    {
      [v8 _removeAdvancedView];
      v14 = *(a1 + 32);

      return [v14 _displayStandGoalViewAnimated:1];
    }

LABEL_16:

    return [v8 _saveGoalsAndDismiss];
  }

  v4 = [result currentMoveGoal];
  v5 = *(a1 + 32);
  v6 = *(v5 + 56);
  *(v5 + 56) = v4;

  v8 = *(a1 + 32);
  if ((*(v8 + 288) & 1) == 0)
  {
    v9 = [v8 _isStandalonePhoneFitnessMode];
    v8 = *(a1 + 32);
    if (v9)
    {
      goto LABEL_16;
    }
  }

  if (!*(v8 + 120))
  {
    goto LABEL_16;
  }

  [v8 _removeAdvancedView];
  v10 = *(a1 + 32);

  return [v10 _displayExerciseGoalViewAnimated:1];
}

void sub_A3C4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[26];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_A4AC;
  v5[3] = &unk_35870;
  v6 = *(a1 + 40);
  v4 = [v3 hk_filter:v5];
  [v2 _setGoalSchedules:v4];

  [*(*(a1 + 32) + 8) deleteObject:*(a1 + 40) withCompletion:&stru_35890];
  (*(*(a1 + 48) + 16))();
}

void sub_A4D0(id a1, BOOL a2, NSError *a3)
{
  v4 = a3;
  if (!a2)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
    {
      sub_21450();
    }
  }
}

id sub_B320(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 _formattingManager];
  v6 = [v5 localizedStringWithMoveQuantity:v4 activityMoveMode:*(*(a1 + 32) + 32)];

  return v6;
}

id sub_B3A0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 _formattingManager];
  v6 = *(*(a1 + 32) + 32);
  [v4 _value];
  v8 = v7;

  v9 = [v5 localizedLongMoveUnitStringWithActivityMoveMode:v6 value:v8];

  v10 = *(a1 + 32);
  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"PER_DAY" value:&stru_35FD0 table:@"ActivitySetup"];

  v13 = [NSString stringWithFormat:@"%@%@", v9, v12];
  v14 = [v13 localizedUppercaseString];

  return v14;
}

id sub_B65C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 _formattingManager];
  v5 = [v4 localizedStringWithBriskMinutes:v3];

  return v5;
}

id sub_B6C8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 _formattingManager];
  [v4 _value];
  v7 = v6;

  v8 = [v5 localizedLongBriskMinutesUnitStringForValue:v7];

  v9 = *(a1 + 32);
  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"PER_DAY" value:&stru_35FD0 table:@"ActivitySetup"];

  v12 = [NSString stringWithFormat:@"%@%@", v8, v11];
  v13 = [v12 localizedUppercaseString];

  return v13;
}

id sub_B96C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 _formattingManager];
  v5 = [v4 localizedStringWithActiveHours:v3];

  return v5;
}

id sub_B9D8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 _formattingManager];
  [v4 _value];
  v7 = v6;

  v8 = [v5 localizedLongActiveHoursUnitStringForValue:v7];

  v9 = *(a1 + 32);
  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"PER_DAY" value:&stru_35FD0 table:@"ActivitySetup"];

  v12 = [NSString stringWithFormat:@"%@%@", v8, v11];
  v13 = [v12 localizedUppercaseString];

  return v13;
}

BOOL sub_BDC0(id a1, HKActivityGoalSchedule *a2)
{
  v2 = a2;
  if ([(HKActivityGoalSchedule *)v2 goalType])
  {
    v3 = [(HKActivityGoalSchedule *)v2 goalType]== &dword_0 + 1;
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

void sub_C2A8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
    {
      sub_214B8(a1);
    }
  }

  v8 = [v6 lastObject];
  v9 = [v8 quantity];

  (*(*(a1 + 40) + 16))();
}

void sub_C72C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
    {
      sub_21520(a1);
    }
  }

  v8 = [v6 lastObject];
  v9 = [v8 quantity];

  (*(*(a1 + 40) + 16))();
}

void sub_C970(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
    {
      sub_21588(a1);
    }
  }

  (*(*(a1 + 40) + 16))();
}

unint64_t sub_CAC0(uint64_t a1, void *a2)
{
  result = [a2 goalType];
  if (result <= 3)
  {
    *(*(a1 + 32) + *off_35A48[result]) = 1;
  }

  return result;
}

BOOL sub_CC94(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 goalType];
  v5 = [v3 goalType];

  return v4 == v5;
}

void sub_CCE8(id a1, BOOL a2, NSError *a3)
{
  v4 = a3;
  if (!a2)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
    {
      sub_215F0();
    }
  }
}

void sub_CD48(id a1, BOOL a2, NSError *a3)
{
  v4 = a3;
  if (!a2)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
    {
      sub_21658();
    }
  }
}

void *sub_D550(uint64_t a1)
{
  v5[0] = 0;
  if (!qword_3CF98)
  {
    v5[1] = _NSConcreteStackBlock;
    v5[2] = 3221225472;
    v5[3] = sub_D690;
    v5[4] = &unk_354E8;
    v5[5] = v5;
    v6 = off_35A30;
    v7 = 0;
    qword_3CF98 = _sl_dlopen();
    v3 = v5[0];
    v2 = qword_3CF98;
    if (qword_3CF98)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = qword_3CF98;
LABEL_5:
  result = dlsym(v2, "NRDevicePropertyIsAltAccount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_3CF90 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_D690(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_3CF98 = result;
  return result;
}

void sub_D71C(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t sub_D748@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 32);
  return result;
}

void sub_DCE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_DD04(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained buttonControllerDidUpdate];
}

void sub_E6E4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void *sub_E730@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_E760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21850();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_E830(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21850();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for ScheduleDayRowView()
{
  result = qword_3C5B8;
  if (!qword_3C5B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_E934()
{
  sub_21850();
  if (v0 <= 0x3F)
  {
    sub_1463C(319, &qword_3C5C8, FIUIFormattingManager_ptr);
    if (v1 <= 0x3F)
    {
      sub_E9E8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_E9E8()
{
  if (!qword_3C5D0)
  {
    type metadata accessor for GoalDaysModel();
    sub_14FC8(&unk_3C5D8, type metadata accessor for GoalDaysModel);
    v0 = sub_21B20();
    if (!v1)
    {
      atomic_store(v0, &qword_3C5D0);
    }
  }
}

id sub_EA98@<X0>(uint64_t a1@<X8>)
{
  v130 = a1;
  v2 = type metadata accessor for ScheduleDayRowView();
  v3 = *(v2 - 1);
  OpaqueTypeConformance2 = v3[8];
  __chkstk_darwin(v2);
  v5 = &v118 - ((OpaqueTypeConformance2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21700();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v128 = &v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21CB0();
  v142 = *(v9 - 8);
  v143 = v9;
  v10 = *(v142 + 64);
  __chkstk_darwin(v9);
  v138 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_140C4(&qword_3C610, &qword_26E48);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v118 - v14;
  v131 = sub_140C4(&qword_3C618, &qword_26E50);
  v16 = *(*(v131 - 8) + 64);
  __chkstk_darwin(v131);
  v133 = &v118 - v17;
  v132 = sub_140C4(&qword_3C620, &qword_26E58);
  v18 = *(*(v132 - 8) + 64);
  __chkstk_darwin(v132);
  v134 = &v118 - v19;
  v136 = sub_140C4(&qword_3C628, &qword_26E60);
  v20 = *(*(v136 - 8) + 64);
  __chkstk_darwin(v136);
  v135 = &v118 - v21;
  v141 = sub_140C4(&qword_3C630, &qword_26E68);
  v139 = *(v141 - 8);
  v22 = *(v139 + 64);
  __chkstk_darwin(v141);
  v137 = &v118 - v23;
  v24 = sub_140C4(&qword_3C638, &qword_26E70);
  v123 = *(v24 - 8);
  v124 = v24;
  v25 = *(v123 + 64);
  __chkstk_darwin(v24);
  v140 = &v118 - v26;
  v127 = sub_140C4(&qword_3C640, qword_26E78);
  v27 = *(*(v127 - 8) + 64);
  v28 = __chkstk_darwin(v127);
  v125 = &v118 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v126 = &v118 - v30;
  v31 = v2[6];
  v32 = *(v1 + v2[7] + 8);
  v145 = v1;
  v33 = *(v1 + v31);
  swift_getKeyPath();
  swift_getKeyPath();
  v144 = v32;
  sub_21A90();

  v129 = v3;
  if ((v156 & 0xC000000000000001) != 0)
  {
    v34 = sub_22110();
  }

  else
  {
    if ((v33 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v33 >= *(&dword_10 + (v156 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_36;
    }

    v34 = *(v156 + 8 * v33 + 32);
  }

  v35 = v34;

  v3 = *&v35[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goal];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21A90();

  v121 = OpaqueTypeConformance2;
  v122 = v33;
  if ((v156 & 0xC000000000000001) == 0)
  {
    if ((v33 & 0x8000000000000000) == 0)
    {
      if (v33 < *(&dword_10 + (v156 & 0xFFFFFFFFFFFFFF8)))
      {
        v36 = *(v156 + 8 * v33 + 32);
        goto LABEL_9;
      }

LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_34:
  v36 = sub_22110();
LABEL_9:
  v37 = v36;

  v38 = *&v37[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goalType];

  result = [*(v145 + v2[5]) unitManager];
  if (!result)
  {
    goto LABEL_44;
  }

  v40 = result;
  v41 = [result unitManager];

  if ((v38 - 1) < 2)
  {
    OpaqueTypeConformance2 = &selRef_minuteUnit;
    goto LABEL_14;
  }

  if (v38)
  {
    OpaqueTypeConformance2 = &selRef_countUnit;
LABEL_14:
    v42 = objc_opt_self();
    goto LABEL_16;
  }

  OpaqueTypeConformance2 = &selRef_userActiveEnergyBurnedUnit;
  v42 = v41;
LABEL_16:
  v43 = [v42 *OpaqueTypeConformance2];

  [v3 doubleValueForUnit:v43];
  v45 = v44;

  v46 = floor(v45);
  if ((*&v46 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v46 <= -9.22337204e18)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v46 >= 9.22337204e18)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    v93 = sub_22110();
    goto LABEL_31;
  }

  v119 = v5;
  v47 = v46;
  v48 = v145;
  v49 = sub_F8D4();
  *v15 = sub_21C40();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v50 = &v15[*(sub_140C4(&qword_3C648, &qword_26ED8) + 44)];
  v118 = v47;
  sub_FB9C(v48, v47, v49, v50);
  sub_140C4(&qword_3C650, &qword_26EE0);
  inited = swift_initStackObject();
  v120 = xmmword_26DA0;
  *(inited + 16) = xmmword_26DA0;
  v52 = sub_21D20();
  *(inited + 32) = v52;
  v53 = sub_21D40();
  *(inited + 33) = v53;
  v54 = sub_21D30();
  sub_21D30();
  if (sub_21D30() != v52)
  {
    v54 = sub_21D30();
  }

  sub_21D30();
  v55 = sub_21D30();
  v56 = v133;
  if (v55 != v53)
  {
    v54 = sub_21D30();
  }

  sub_21AC0();
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v64 = v63;
  sub_14804(v15, v56, &qword_3C610, &qword_26E48);
  v65 = v56 + *(v131 + 36);
  *v65 = v54;
  *(v65 + 8) = v58;
  *(v65 + 16) = v60;
  *(v65 + 24) = v62;
  *(v65 + 32) = v64;
  *(v65 + 40) = 0;
  v66 = swift_initStackObject();
  *(v66 + 16) = v120;
  v67 = sub_21D00();
  *(v66 + 32) = v67;
  v68 = sub_21D10();
  *(v66 + 33) = v68;
  v69 = sub_21D30();
  sub_21D30();
  if (sub_21D30() != v67)
  {
    v69 = sub_21D30();
  }

  sub_21D30();
  if (sub_21D30() != v68)
  {
    v69 = sub_21D30();
  }

  sub_21AC0();
  v71 = v70;
  v73 = v72;
  v75 = v74;
  v77 = v76;
  v78 = v56;
  v79 = v134;
  sub_14804(v78, v134, &qword_3C618, &qword_26E50);
  v80 = v79 + *(v132 + 36);
  *v80 = v69;
  *(v80 + 8) = v71;
  *(v80 + 16) = v73;
  *(v80 + 24) = v75;
  *(v80 + 32) = v77;
  *(v80 + 40) = 0;
  sub_21FE0();
  sub_21B80();
  v81 = v135;
  sub_14804(v79, v135, &qword_3C620, &qword_26E58);
  v82 = v136;
  v83 = (v81 + *(v136 + 36));
  v84 = v161;
  v83[4] = v160;
  v83[5] = v84;
  v83[6] = v162;
  v85 = v157;
  *v83 = v156;
  v83[1] = v85;
  v86 = v159;
  v83[2] = v158;
  v83[3] = v86;
  sub_21FD0();
  v87 = sub_140C4(&qword_3C658, &qword_26EE8);
  v88 = sub_140C4(&qword_3C660, &qword_26EF0);
  v89 = sub_14114();
  v90 = sub_1432C();
  v117 = sub_143E4();
  v91 = v137;
  sub_21EC0();
  sub_1486C(v81, &qword_3C628, &qword_26E60);
  v92 = v138;
  sub_21C90();
  v148 = v82;
  v149 = &type metadata for Solarium;
  v150 = v87;
  v151 = v88;
  v152 = v89;
  v153 = &protocol witness table for Solarium;
  v154 = v90;
  v155 = v117;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v15 = v140;
  v5 = v141;
  sub_21EB0();
  (*(v142 + 8))(v92, v143);
  (*(v139 + 8))(v91, v5);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21A90();

  if ((v148 & 0xC000000000000001) != 0)
  {
    goto LABEL_41;
  }

  if ((v122 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v122 < *(&dword_10 + (v148 & 0xFFFFFFFFFFFFFF8)))
  {
    v93 = *(v148 + 8 * v122 + 32);
LABEL_31:
    v94 = v93;

    v95 = v145;
    v96 = sub_192C4(v94);
    v98 = v97;

    v148 = v96;
    v149 = v98;
    v146 = v5;
    v147 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_1449C();
    v99 = v124;
    v100 = v125;
    sub_21E90();

    (*(v123 + 8))(v15, v99);
    sub_140C4(&qword_3C6C0, &qword_26F08);
    v101 = swift_allocObject();
    *(v101 + 16) = xmmword_26DB0;
    *(v101 + 56) = &type metadata for Int;
    *(v101 + 64) = &protocol witness table for Int;
    *(v101 + 32) = v118;
    v102 = sub_22040();
    v104 = v103;

    v148 = sub_128C4();
    v149 = v105;
    v106 = sub_220F0();
    v108 = v107;

    sub_12AC8(v102, v104, v106, v108, v128);

    v109 = sub_21DF0();
    v111 = v110;
    LOBYTE(v102) = v112;
    v113 = v126;
    sub_21B50();
    sub_144F0(v109, v111, v102 & 1);

    sub_1486C(v100, &qword_3C640, qword_26E78);
    v114 = v119;
    sub_14500(v95, v119);
    v115 = (*(v129 + 80) + 16) & ~*(v129 + 80);
    v116 = swift_allocObject();
    sub_1472C(v114, v116 + v115, type metadata accessor for ScheduleDayRowView);
    sub_21B60();

    return sub_1486C(v113, &qword_3C640, qword_26E78);
  }

  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

id sub_F8D4()
{
  v2 = type metadata accessor for ScheduleDayRowView();
  v3 = *(v0 + v2[7] + 8);
  v4 = *(v0 + v2[6]);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21A90();

  if ((v17 & 0xC000000000000001) == 0)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v4 < *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)))
    {
      v5 = *(v17 + 8 * v4 + 32);
      goto LABEL_5;
    }

    __break(1u);
LABEL_22:
    v15 = sub_22110();

    v14 = *(v15 + *v1);
    swift_unknownObjectRelease();
    if (v14 <= 1)
    {
      if (v14)
      {
LABEL_17:
        if (v14 == 1)
        {

          return &stru_3D8 + 16;
        }

LABEL_29:

        return &stru_20 + 58;
      }

      goto LABEL_24;
    }

LABEL_27:
    if (v14 == 3)
    {

      return &dword_10;
    }

    goto LABEL_29;
  }

  v5 = sub_22110();
LABEL_5:
  v6 = v5;

  v1 = &OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goalType;
  v7 = *&v6[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goalType];

  result = [*(v0 + v2[5]) unitManager];
  if (!result)
  {
LABEL_32:
    __break(1u);
    return result;
  }

  v9 = result;
  v10 = [result unitManager];

  if ((v7 - 1) < 2)
  {
    v11 = &selRef_minuteUnit;
    goto LABEL_10;
  }

  if (v7)
  {
    v11 = &selRef_countUnit;
LABEL_10:
    v12 = objc_opt_self();
    goto LABEL_12;
  }

  v11 = &selRef_userActiveEnergyBurnedUnit;
  v12 = v10;
LABEL_12:
  v2 = [v12 *v11];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21A90();

  if ((v17 & 0xC000000000000001) != 0)
  {
    goto LABEL_22;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v4 >= *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v13 = *(v17 + 8 * v4 + 32);

  v14 = *&v13[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goalType];

  if (v14 > 1)
  {
    goto LABEL_27;
  }

  if (v14)
  {
    goto LABEL_17;
  }

LABEL_24:
  IsCalorieUnit = FIUIHKUnitIsCalorieUnit();

  if (IsCalorieUnit)
  {
    return &loc_2704 + 2;
  }

  else
  {
    return &loc_9C28 + 4;
  }
}

uint64_t sub_FB9C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v110 = a3;
  v109 = a2;
  v116 = a4;
  v5 = sub_140C4(&qword_3C728, &qword_26F48);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v112 = &v96[-v7];
  v111 = sub_140C4(&qword_3C730, &unk_26F50);
  v8 = *(*(v111 - 8) + 64);
  v9 = __chkstk_darwin(v111);
  v11 = &v96[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __chkstk_darwin(v9);
  v14 = &v96[-v13];
  __chkstk_darwin(v12);
  v16 = &v96[-v15];
  v105 = sub_140C4(&qword_3C738, &unk_279F0);
  v17 = *(*(v105 - 8) + 64);
  v18 = __chkstk_darwin(v105);
  v104 = &v96[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v101 = &v96[-v20];
  v21 = sub_21B40();
  v119 = *(v21 - 8);
  v22 = *(v119 + 64);
  v23 = __chkstk_darwin(v21);
  v118 = &v96[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v23);
  v117 = &v96[-v25];
  v103 = sub_140C4(&qword_3C740, &qword_26F60);
  v26 = *(*(v103 - 8) + 64);
  __chkstk_darwin(v103);
  v102 = &v96[-v27];
  v28 = sub_140C4(&qword_3C748, &qword_26F68);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v31 = &v96[-v30];
  v108 = sub_140C4(&qword_3C750, &qword_26F70);
  v107 = *(v108 - 8);
  v32 = *(v107 + 64);
  v33 = __chkstk_darwin(v108);
  v106 = &v96[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v33);
  v120 = &v96[-v35];
  v36 = type metadata accessor for ScheduleDayRowView();
  v37 = *(a1 + *(v36 + 28) + 8);
  v38 = a1;
  v39 = *(a1 + *(v36 + 24));
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21A90();

  v115 = v11;
  v114 = v16;
  v113 = v14;
  if ((v121 & 0xC000000000000001) != 0)
  {
    v41 = sub_22110();
LABEL_5:
    v42 = v41;

    v100 = v38;
    v43 = sub_192C4(v42);
    v45 = v44;

    *&v121 = v43;
    *(&v121 + 1) = v45;
    sub_1449C();
    v46 = sub_21E00();
    v48 = v47;
    v50 = v49;
    v51 = enum case for Font.Design.rounded(_:);
    v52 = sub_21D70();
    v53 = *(v52 - 8);
    (*(v53 + 104))(v31, v51, v52);
    (*(v53 + 56))(v31, 0, 1, v52);
    v54 = sub_21DC0();
    v56 = v55;
    v58 = v57;
    sub_144F0(v46, v48, v50 & 1);

    sub_1486C(v31, &qword_3C748, &qword_26F68);
    sub_21D50();
    v59 = sub_21DE0();
    v61 = v60;
    LOBYTE(v48) = v62;
    v64 = v63;

    sub_144F0(v54, v56, v58 & 1);

    v99 = v59;
    *&v121 = v59;
    *(&v121 + 1) = v61;
    v98 = v61;
    v65 = v48 & 1;
    LOBYTE(v122) = v65;
    *(&v122 + 1) = v64;
    v66 = v119;
    v67 = *(v119 + 104);
    v68 = v117;
    v67(v117, enum case for DynamicTypeSize.xSmall(_:), v21);
    v69 = v118;
    v67(v118, enum case for DynamicTypeSize.xLarge(_:), v21);
    sub_14FC8(&qword_3C758, &type metadata accessor for DynamicTypeSize);
    result = sub_22010();
    if (result)
    {
      v70 = *(v66 + 32);
      v97 = v65;
      v71 = v101;
      v70(v101, v68, v21);
      v72 = v105;
      v70((v71 + *(v105 + 48)), v69, v21);
      v118 = v64;
      v73 = v104;
      sub_14794(v71, v104);
      v74 = *(v72 + 48);
      v75 = v102;
      v70(v102, v73, v21);
      v76 = *(v66 + 8);
      v76(&v73[v74], v21);
      sub_14804(v71, v73, &qword_3C738, &unk_279F0);
      v70((v75 + *(v103 + 36)), &v73[*(v72 + 48)], v21);
      v76(v73, v21);
      sub_14D6C(&qword_3C760, &qword_3C740, &qword_26F60);
      v77 = v120;
      sub_21E70();
      sub_1486C(v75, &qword_3C740, &qword_26F60);
      sub_144F0(v99, v98, v97);

      v78 = sub_21C40();
      v79 = v112;
      *v112 = v78;
      *(v79 + 8) = 0;
      *(v79 + 16) = 1;
      v80 = sub_140C4(&qword_3C768, &qword_26F78);
      sub_10634(v100, v109, v110, v79 + *(v80 + 44));
      sub_21FF0();
      sub_21B80();
      v81 = v113;
      sub_14804(v79, v113, &qword_3C728, &qword_26F48);
      v82 = (v81 + *(v111 + 36));
      v83 = v126;
      v82[4] = v125;
      v82[5] = v83;
      v82[6] = v127;
      v84 = v122;
      *v82 = v121;
      v82[1] = v84;
      v85 = v124;
      v82[2] = v123;
      v82[3] = v85;
      v86 = v114;
      sub_14804(v81, v114, &qword_3C730, &unk_26F50);
      v87 = v107;
      v88 = *(v107 + 16);
      v89 = v106;
      v90 = v108;
      v88(v106, v77, v108);
      v91 = v115;
      sub_14DB4(v86, v115, &qword_3C730, &unk_26F50);
      v92 = v116;
      v88(v116, v89, v90);
      v93 = sub_140C4(&qword_3C770, &qword_26F80);
      v94 = &v92[*(v93 + 48)];
      *v94 = 0;
      v94[8] = 1;
      sub_14DB4(v91, &v92[*(v93 + 64)], &qword_3C730, &unk_26F50);
      sub_1486C(v86, &qword_3C730, &unk_26F50);
      v95 = *(v87 + 8);
      v95(v120, v90);
      sub_1486C(v91, &qword_3C730, &unk_26F50);
      return (v95)(v89, v90);
    }

    goto LABEL_9;
  }

  if ((v39 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v39 < *(&dword_10 + (v121 & 0xFFFFFFFFFFFFFF8)))
  {
    v41 = *(v121 + 8 * v39 + 32);
    goto LABEL_5;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_10634@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v128 = a3;
  v134 = a2;
  v120 = a4;
  v5 = sub_140C4(&qword_3C778, &qword_26F88);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v121 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v133 = (&v112 - v9);
  v10 = type metadata accessor for ScheduleDayRowView();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = sub_140C4(&qword_3C780, &qword_26F90);
  v14 = *(*(v13 - 1) + 64);
  v15 = __chkstk_darwin(v13);
  v129 = (&v112 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v18 = (&v112 - v17);
  v19 = sub_140C4(&qword_3C788, &qword_26F98);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19);
  v115 = &v112 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v112 - v23;
  v131 = sub_140C4(&qword_3C790, &qword_26FA0);
  v25 = *(*(v131 - 8) + 64);
  v26 = __chkstk_darwin(v131);
  v116 = &v112 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v122 = &v112 - v28;
  v29 = sub_140C4(&qword_3C798, &qword_26FA8);
  v30 = *(*(v29 - 8) + 64);
  v31 = __chkstk_darwin(v29 - 8);
  v118 = &v112 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v119 = &v112 - v34;
  v35 = __chkstk_darwin(v33);
  v117 = &v112 - v36;
  __chkstk_darwin(v35);
  v132 = &v112 - v37;
  sub_14500(a1, &v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = *(v11 + 80);
  v39 = (v38 + 16) & ~v38;
  v126 = v12;
  v124 = v38;
  v40 = swift_allocObject();
  v125 = v39;
  v41 = v40 + v39;
  v42 = a1;
  v127 = &v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1472C(v127, v41, type metadata accessor for ScheduleDayRowView);
  v43 = v13[10];
  v135 = 0;
  v44 = sub_140C4(&qword_3C7A0, &qword_26FB0);
  sub_21F40();
  *(v18 + v43) = v136;
  v45 = v13[11];
  v135 = 1;
  sub_21F40();
  *(v18 + v45) = v136;
  *v18 = sub_148CC;
  v18[1] = v40;
  sub_115D8(v18 + v13[9]);
  v46 = sub_119D0();
  v130 = v19;
  v112 = v10;
  v123 = v44;
  if (v46 == v134)
  {
    v47 = sub_21EF0();
  }

  else
  {
    v48 = *(a1 + *(v10 + 28) + 8);
    v49 = *(a1 + *(v10 + 24));
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21A90();

    if ((v136 & 0xC000000000000001) != 0)
    {
      v51 = sub_22110();
    }

    else
    {
      if ((v49 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if (v49 >= *(&dword_10 + (v136 & 0xFFFFFFFFFFFFFF8)))
      {
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v51 = *(v136 + 8 * v49 + 32);
    }

    v52 = v51;

    v53 = *&v52[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goalType];

    v47 = sub_16C64(v53);
    v19 = v130;
  }

  KeyPath = swift_getKeyPath();
  *&v136 = v47;
  v55 = sub_21B00();
  sub_14804(v18, v24, &qword_3C780, &qword_26F90);
  v56 = &v24[*(v19 + 36)];
  *v56 = KeyPath;
  v56[1] = v55;
  v57 = sub_119D0();
  v58 = v134;
  v59 = v57 == v134;
  v60 = swift_getKeyPath();
  v61 = swift_allocObject();
  *(v61 + 16) = v59;
  v62 = v122;
  sub_14804(v24, v122, &qword_3C788, &qword_26F98);
  v63 = (v62 + *(v131 + 36));
  *v63 = v60;
  v63[1] = sub_14994;
  v63[2] = v61;
  sub_1463C(0, &qword_3C6E0, &off_34A50);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v113 = objc_opt_self();
  v114 = ObjCClassFromMetadata;
  v65 = [v113 bundleForClass:ObjCClassFromMetadata];
  v66 = sub_22030();
  v67 = sub_22030();
  v68 = [v65 localizedStringForKey:v66 value:0 table:v67];

  v69 = sub_22050();
  v71 = v70;

  *&v136 = v69;
  *(&v136 + 1) = v71;
  sub_149AC();
  sub_1449C();
  sub_21E90();

  sub_1486C(v62, &qword_3C790, &qword_26FA0);
  v72 = sub_21FE0();
  v73 = v133;
  *v133 = v72;
  *(v73 + 1) = v74;
  v75 = sub_140C4(&qword_3C7E0, &qword_27028);
  sub_11C98(v58, v128, &v73[*(v75 + 44)]);
  v76 = v127;
  sub_14500(v42, v127);
  v77 = v42;
  v78 = v125;
  v79 = swift_allocObject();
  sub_1472C(v76, v79 + v78, type metadata accessor for ScheduleDayRowView);
  v80 = v13[10];
  v135 = 0;
  sub_21F40();
  v81 = v129;
  *(v129 + v80) = v136;
  v82 = v13[11];
  v135 = 1;
  sub_21F40();
  *(v81 + v82) = v136;
  *v81 = sub_14C40;
  v81[1] = v79;
  sub_12094(v81 + v13[9]);
  if (sub_F8D4() == v58)
  {
    v83 = sub_21EF0();
    v84 = v130;
LABEL_16:
    v89 = swift_getKeyPath();
    *&v136 = v83;
    v90 = sub_21B00();
    v91 = v115;
    sub_14804(v81, v115, &qword_3C780, &qword_26F90);
    v92 = (v91 + *(v84 + 36));
    *v92 = v89;
    v92[1] = v90;
    LOBYTE(v89) = sub_F8D4() == v134;
    v93 = swift_getKeyPath();
    v94 = swift_allocObject();
    *(v94 + 16) = v89;
    v95 = v116;
    sub_14804(v91, v116, &qword_3C788, &qword_26F98);
    v96 = (v95 + *(v131 + 36));
    *v96 = v93;
    v96[1] = sub_1501C;
    v96[2] = v94;
    v97 = [v113 bundleForClass:v114];
    v98 = sub_22030();
    v99 = sub_22030();
    v100 = [v97 localizedStringForKey:v98 value:0 table:v99];

    v101 = sub_22050();
    v103 = v102;

    *&v136 = v101;
    *(&v136 + 1) = v103;
    v104 = v117;
    sub_21E90();

    sub_1486C(v95, &qword_3C790, &qword_26FA0);
    v105 = v132;
    v106 = v119;
    sub_14DB4(v132, v119, &qword_3C798, &qword_26FA8);
    v107 = v133;
    v108 = v121;
    sub_14DB4(v133, v121, &qword_3C778, &qword_26F88);
    v109 = v118;
    sub_14DB4(v104, v118, &qword_3C798, &qword_26FA8);
    v110 = v120;
    sub_14DB4(v106, v120, &qword_3C798, &qword_26FA8);
    v111 = sub_140C4(&qword_3C7E8, &qword_27030);
    sub_14DB4(v108, v110 + *(v111 + 48), &qword_3C778, &qword_26F88);
    sub_14DB4(v109, v110 + *(v111 + 64), &qword_3C798, &qword_26FA8);
    sub_1486C(v104, &qword_3C798, &qword_26FA8);
    sub_1486C(v107, &qword_3C778, &qword_26F88);
    sub_1486C(v105, &qword_3C798, &qword_26FA8);
    sub_1486C(v109, &qword_3C798, &qword_26FA8);
    sub_1486C(v108, &qword_3C778, &qword_26F88);
    return sub_1486C(v106, &qword_3C798, &qword_26FA8);
  }

  v85 = *(v77 + *(v112 + 28) + 8);
  v86 = *(v77 + *(v112 + 24));
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21A90();

  if ((v136 & 0xC000000000000001) != 0)
  {
    v87 = sub_22110();
    v84 = v130;
    goto LABEL_15;
  }

  v84 = v130;
  if ((v86 & 0x8000000000000000) != 0)
  {
    goto LABEL_20;
  }

  if (v86 < *(&dword_10 + (v136 & 0xFFFFFFFFFFFFFF8)))
  {
    v87 = *(v136 + 8 * v86 + 32);
LABEL_15:

    v88 = *&v87[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goalType];

    v83 = sub_16C64(v88);
    goto LABEL_16;
  }

LABEL_22:
  __break(1u);
  return result;
}

void sub_112D4(char a1)
{
  v3 = type metadata accessor for ScheduleDayRowView();
  v4 = *(v1 + v3[7] + 8);
  v5 = *(v1 + v3[6]);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21A90();

  v6 = v24;
  if ((v24 & 0xC000000000000001) != 0)
  {
    v7 = sub_22110();
  }

  else
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v5 >= *(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_32;
    }

    v7 = *(v24 + 8 * v5 + 32);
  }

  v8 = v7;

  v6 = *&v8[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goal];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21A90();

  if ((v24 & 0xC000000000000001) == 0)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      if (v5 < *(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8)))
      {
        v9 = *(v24 + 8 * v5 + 32);
        goto LABEL_9;
      }

LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_30:
  v9 = sub_22110();
LABEL_9:
  v10 = v9;

  v11 = *&v10[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goalType];

  v12 = [*(v1 + v3[5]) unitManager];
  if (!v12)
  {
LABEL_38:
    __break(1u);
    return;
  }

  v13 = v12;
  v14 = [v12 unitManager];

  if ((v11 - 1) < 2)
  {
    v15 = &selRef_minuteUnit;
    goto LABEL_14;
  }

  if (v11)
  {
    v15 = &selRef_countUnit;
LABEL_14:
    v16 = objc_opt_self();
    goto LABEL_16;
  }

  v15 = &selRef_userActiveEnergyBurnedUnit;
  v16 = v14;
LABEL_16:
  v17 = [v16 *v15];

  [v6 doubleValueForUnit:v17];
  v19 = v18;

  v20 = floor(v19);
  if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v20 <= -9.22337204e18)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v20 >= 9.22337204e18)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v21 = v20;
  v22 = sub_13990();
  if ((a1 & 1) == 0)
  {
    goto LABEL_23;
  }

  v23 = &v22[v21];
  if (__OFADD__(v21, v22))
  {
    __break(1u);
LABEL_23:
    v23 = (v21 - v22);
    if (!__OFSUB__(v21, v22))
    {
      goto LABEL_24;
    }

    goto LABEL_37;
  }

LABEL_24:
  if (v23 >= sub_119D0() && sub_F8D4() >= v23)
  {
    sub_13C54(v23);
  }
}

uint64_t sub_115D8@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v1 = sub_140C4(&qword_3C738, &unk_279F0);
  v2 = *(*(v1 - 8) + 64);
  v3 = (__chkstk_darwin)();
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v27 - v6;
  v8 = sub_21B40();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = __chkstk_darwin(v8);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v27 - v14;
  v28 = sub_140C4(&qword_3C740, &qword_26F60);
  v16 = (*(*(v28 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v28);
  v18 = v27 - v17;
  v19 = sub_21F30();
  v20 = sub_21D90();
  KeyPath = swift_getKeyPath();
  v27[1] = v20;
  v27[2] = v19;
  v30 = v19;
  v31 = KeyPath;
  v27[0] = KeyPath;
  v32 = v20;
  v22 = v9[13];
  v22(v15, enum case for DynamicTypeSize.xSmall(_:), v8);
  v22(v13, enum case for DynamicTypeSize.xLarge(_:), v8);
  sub_14FC8(&qword_3C758, &type metadata accessor for DynamicTypeSize);
  result = sub_22010();
  if (result)
  {
    v24 = v9[4];
    v24(v7, v15, v8);
    v24(&v7[*(v1 + 48)], v13, v8);
    sub_14794(v7, v5);
    v25 = *(v1 + 48);
    v24(v18, v5, v8);
    v26 = v9[1];
    v26(&v5[v25], v8);
    sub_14804(v7, v5, &qword_3C738, &unk_279F0);
    v24(&v18[*(v28 + 36)], &v5[*(v1 + 48)], v8);
    v26(v5, v8);
    sub_140C4(&qword_3C7F0, &qword_27068);
    sub_14CB4();
    sub_14D6C(&qword_3C760, &qword_3C740, &qword_26F60);
    sub_21E70();
    sub_1486C(v18, &qword_3C740, &qword_26F60);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_119D0()
{
  v2 = type metadata accessor for ScheduleDayRowView();
  v3 = *(v0 + v2[7] + 8);
  v4 = *(v0 + v2[6]);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21A90();

  if ((v17 & 0xC000000000000001) == 0)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v4 < *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)))
    {
      v5 = *(v17 + 8 * v4 + 32);
      goto LABEL_5;
    }

    __break(1u);
LABEL_22:
    v15 = sub_22110();

    v14 = *(v15 + *v1);
    swift_unknownObjectRelease();
    if (v14 <= 1)
    {
      if (v14)
      {
LABEL_17:
        if (v14 == 1)
        {

          return &dword_8 + 2;
        }

LABEL_29:

        return &dword_4 + 1;
      }

      goto LABEL_24;
    }

LABEL_27:
    if (v14 == 3)
    {

      return &dword_4 + 2;
    }

    goto LABEL_29;
  }

  v5 = sub_22110();
LABEL_5:
  v6 = v5;

  v1 = &OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goalType;
  v7 = *&v6[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goalType];

  result = [*(v0 + v2[5]) unitManager];
  if (!result)
  {
LABEL_32:
    __break(1u);
    return result;
  }

  v9 = result;
  v10 = [result unitManager];

  if ((v7 - 1) < 2)
  {
    v11 = &selRef_minuteUnit;
    goto LABEL_10;
  }

  if (v7)
  {
    v11 = &selRef_countUnit;
LABEL_10:
    v12 = objc_opt_self();
    goto LABEL_12;
  }

  v11 = &selRef_userActiveEnergyBurnedUnit;
  v12 = v10;
LABEL_12:
  v2 = [v12 *v11];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21A90();

  if ((v17 & 0xC000000000000001) != 0)
  {
    goto LABEL_22;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v4 >= *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v13 = *(v17 + 8 * v4 + 32);

  v14 = *&v13[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goalType];

  if (v14 > 1)
  {
    goto LABEL_27;
  }

  if (v14)
  {
    goto LABEL_17;
  }

LABEL_24:
  IsCalorieUnit = FIUIHKUnitIsCalorieUnit();

  if (IsCalorieUnit)
  {
    return &dword_8 + 2;
  }

  else
  {
    return &dword_14;
  }
}

uint64_t sub_11C98@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v41 = a2;
  v42 = a3;
  v38 = a1;
  v3 = sub_140C4(&qword_3C810, &qword_27078);
  v4 = *(v3 - 8);
  v39 = v3 - 8;
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3 - 8);
  v40 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v33 - v8;
  v37 = sub_21CB0();
  v10 = *(v37 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v37);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_140C4(&qword_3C818, &qword_27080);
  v14 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35);
  v16 = &v33 - v15;
  v36 = sub_140C4(&qword_3C820, &qword_27088);
  v17 = *(v36 - 8);
  v18 = v17[8];
  v19 = __chkstk_darwin(v36);
  v34 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v33 - v21;
  *v16 = sub_21C30();
  *(v16 + 1) = 0;
  v16[16] = 0;
  v23 = sub_140C4(&qword_3C828, &qword_27090);
  sub_13168(v38, &v16[*(v23 + 44)]);
  sub_21CA0();
  sub_14D6C(&qword_3C830, &qword_3C818, &qword_27080);
  v33 = v22;
  sub_21EB0();
  (*(v10 + 8))(v13, v37);
  sub_1486C(v16, &qword_3C818, &qword_27080);
  *v9 = sub_21C30();
  *(v9 + 1) = 0;
  v9[16] = 0;
  sub_13168(v41, &v9[*(v23 + 44)]);
  *&v9[*(v39 + 44)] = 0;
  v24 = v17[2];
  v25 = v34;
  v26 = v22;
  v27 = v36;
  v24(v34, v26, v36);
  v28 = v40;
  sub_14DB4(v9, v40, &qword_3C810, &qword_27078);
  v29 = v42;
  v24(v42, v25, v27);
  v30 = sub_140C4(&qword_3C838, qword_27098);
  sub_14DB4(v28, &v29[*(v30 + 48)], &qword_3C810, &qword_27078);
  sub_1486C(v9, &qword_3C810, &qword_27078);
  v31 = v17[1];
  v31(v33, v27);
  sub_1486C(v28, &qword_3C810, &qword_27078);
  return (v31)(v25, v27);
}

uint64_t sub_12094@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v1 = sub_140C4(&qword_3C738, &unk_279F0);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v27 - v6;
  v8 = sub_21B40();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = __chkstk_darwin(v8);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v27 - v14;
  v28 = sub_140C4(&qword_3C740, &qword_26F60);
  v16 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28);
  v18 = v27 - v17;
  v19 = sub_21F30();
  v20 = sub_21D90();
  KeyPath = swift_getKeyPath();
  v27[1] = v20;
  v27[2] = v19;
  v30 = v19;
  v31 = KeyPath;
  v27[0] = KeyPath;
  v32 = v20;
  v22 = v9[13];
  v22(v15, enum case for DynamicTypeSize.xSmall(_:), v8);
  v22(v13, enum case for DynamicTypeSize.xLarge(_:), v8);
  sub_14FC8(&qword_3C758, &type metadata accessor for DynamicTypeSize);
  result = sub_22010();
  if (result)
  {
    v24 = v9[4];
    v24(v7, v15, v8);
    v24(&v7[*(v1 + 48)], v13, v8);
    sub_14794(v7, v5);
    v25 = *(v1 + 48);
    v24(v18, v5, v8);
    v26 = v9[1];
    v26(&v5[v25], v8);
    sub_14804(v7, v5, &qword_3C738, &unk_279F0);
    v24(&v18[*(v28 + 36)], &v5[*(v1 + 48)], v8);
    v26(v5, v8);
    sub_140C4(&qword_3C7F0, &qword_27068);
    sub_14CB4();
    sub_14D6C(&qword_3C760, &qword_3C740, &qword_26F60);
    sub_21E70();
    sub_1486C(v18, &qword_3C740, &qword_26F60);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1248C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21FE0();
  v6 = v5;
  v7 = a2 + *(sub_140C4(&qword_3C658, &qword_26EE8) + 36);
  v8 = enum case for RoundedCornerStyle.continuous(_:);
  v9 = sub_21C60();
  (*(*(v9 - 8) + 104))(v7, v8, v9);
  v10 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  v11 = sub_21ED0();
  v12 = sub_140C4(&qword_3C718, &qword_26F38);
  *(v7 + *(v12 + 52)) = v11;
  *(v7 + *(v12 + 56)) = 256;
  LOBYTE(v11) = sub_21CE0();
  sub_21AC0();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = v7 + *(sub_140C4(&qword_3C720, &qword_26F40) + 36);
  *v21 = v11;
  *(v21 + 8) = v14;
  *(v21 + 16) = v16;
  *(v21 + 24) = v18;
  *(v21 + 32) = v20;
  *(v21 + 40) = 0;
  v22 = (v7 + *(sub_140C4(&qword_3C698, &qword_26EF8) + 36));
  *v22 = v4;
  v22[1] = v6;
  return sub_14DB4(a1, a2, &qword_3C628, &qword_26E60);
}

uint64_t sub_12618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21FE0();
  v6 = v5;
  v7 = a2 + *(sub_140C4(&qword_3C660, &qword_26EF0) + 36);
  sub_126B8(v7);
  v8 = (v7 + *(sub_140C4(&qword_3C6B0, &qword_26F00) + 36));
  *v8 = v4;
  v8[1] = v6;
  return sub_14DB4(a1, a2, &qword_3C628, &qword_26E60);
}

uint64_t sub_126B8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21B70();
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v6 = (&v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_140C4(&qword_3C708, &qword_26F28);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v11 = &v29 - v10;
  if (sub_21FC0())
  {
    v12 = 16.0;
  }

  else
  {
    v12 = 14.0;
  }

  v13 = *(v3 + 28);
  v14 = enum case for RoundedCornerStyle.continuous(_:);
  v15 = sub_21C60();
  (*(*(v15 - 8) + 104))(v6 + v13, v14, v15);
  *v6 = v12;
  v6[1] = v12;
  v16 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  v17 = sub_21ED0();
  sub_1472C(v6, v11, &type metadata accessor for RoundedRectangle);
  *&v11[*(v8 + 60)] = v17;
  *&v11[*(v8 + 64)] = 256;
  v18 = sub_21CE0();
  sub_21AC0();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_14804(v11, a1, &qword_3C708, &qword_26F28);
  result = sub_140C4(&qword_3C710, &qword_26F30);
  v28 = a1 + *(result + 36);
  *v28 = v18;
  *(v28 + 8) = v20;
  *(v28 + 16) = v22;
  *(v28 + 24) = v24;
  *(v28 + 32) = v26;
  *(v28 + 40) = 0;
  return result;
}

id sub_128C4()
{
  v1 = type metadata accessor for ScheduleDayRowView();
  v2 = *(v0 + v1[7] + 8);
  v3 = *(v0 + v1[6]);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21A90();

  if ((v10 & 0xC000000000000001) != 0)
  {
    goto LABEL_9;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v3 >= *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v5 = *(v10 + 8 * v3 + 32);

  v6 = *&v5[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goalType];

  v7 = 0;
  if (v6 <= 1)
  {
    if (v6)
    {
      while (v6 == 1)
      {
        result = [*(v0 + v1[5]) localizedShortBriskMinutesUnitString];
        if (result)
        {
          goto LABEL_18;
        }

        __break(1u);
LABEL_9:
        v8 = sub_22110();

        v6 = *(v8 + OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goalType);
        swift_unknownObjectRelease();
        v7 = 0;
        if (v6 > 1)
        {
          goto LABEL_13;
        }

        if (!v6)
        {
          goto LABEL_11;
        }
      }

      return v7;
    }

LABEL_11:
    result = [*(v0 + v1[5]) localizedShortActiveEnergyUnitString];
    if (result)
    {
      goto LABEL_18;
    }

    __break(1u);
  }

LABEL_13:
  if (v6 != 2)
  {
    if (v6 != 3)
    {
      return v7;
    }

    result = [*(v0 + v1[5]) localizedShortActiveHoursUnitString];
    if (result)
    {
LABEL_18:
      v9 = result;
      v7 = sub_22050();

      return v7;
    }

    __break(1u);
  }

  result = [*(v0 + v1[5]) localizedShortBriskMinutesUnitString];
  if (result)
  {
    goto LABEL_18;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_12AC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v37 = a1;
  v38 = a3;
  v39 = a5;
  v7 = sub_140C4(&qword_3C6C8, &qword_26F10);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v36 - v9;
  v11 = sub_140C4(&qword_3C6D0, &qword_26F18);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v36 - v13;
  v15 = sub_140C4(&qword_3C6D8, &qword_26F20);
  v40 = *(v15 - 8);
  v16 = *(v40 + 64);
  __chkstk_darwin(v15);
  v36 = &v36 - v17;
  v18 = sub_21750();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  sub_1463C(0, &qword_3C6E0, &off_34A50);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v22 = sub_22030();
  v23 = sub_22030();
  v24 = [v21 localizedStringForKey:v22 value:0 table:v23];

  sub_22050();
  sub_140C4(&qword_3C6C0, &qword_26F08);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_26DA0;
  *(v25 + 56) = &type metadata for String;
  v26 = sub_14684();
  *(v25 + 32) = v37;
  *(v25 + 40) = a2;
  *(v25 + 96) = &type metadata for String;
  *(v25 + 104) = v26;
  v27 = v38;
  *(v25 + 64) = v26;
  *(v25 + 72) = v27;
  *(v25 + 80) = a4;

  sub_22060();

  sub_21740();
  sub_21710();
  v42[0] = sub_21D60();
  sub_146D8();
  sub_21720();
  v42[0] = v27;
  v42[1] = a4;
  v28 = sub_217E0();
  (*(*(v28 - 8) + 56))(v10, 1, 1, v28);
  sub_21700();
  sub_14FC8(&qword_3C6F8, &type metadata accessor for AttributedString);
  sub_1449C();
  sub_21770();
  sub_1486C(v10, &qword_3C6C8, &qword_26F10);
  if ((*(v40 + 48))(v14, 1, v15) == 1)
  {
    v29 = &qword_3C6D0;
    v30 = &qword_26F18;
    v31 = v14;
  }

  else
  {
    v32 = v36;
    sub_14804(v14, v36, &qword_3C6D8, &qword_26F20);
    sub_21D90();
    v33 = sub_21DB0();

    sub_14D6C(&qword_3C700, &qword_3C6D8, &qword_26F20);
    v34 = sub_21730();
    v41 = v33;
    sub_21760();
    v34(v42, 0);
    v31 = v32;
    v29 = &qword_3C6D8;
    v30 = &qword_26F20;
  }

  return sub_1486C(v31, v29, v30);
}

void sub_12FFC(uint64_t a1)
{
  v2 = sub_21CC0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for AccessibilityAdjustmentDirection.increment(_:) || v7 == enum case for AccessibilityAdjustmentDirection.decrement(_:))
  {
    sub_112D4(v7 == enum case for AccessibilityAdjustmentDirection.increment(_:));
  }

  else
  {
    sub_22130();
    __break(1u);
  }
}

uint64_t sub_13168@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v82 = sub_140C4(&qword_3C738, &unk_279F0);
  v3 = *(*(v82 - 8) + 64);
  v4 = __chkstk_darwin(v82);
  v81 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v77 = &v73 - v6;
  v7 = sub_21B40();
  v88 = *(v7 - 8);
  v8 = *(v88 + 64);
  v9 = __chkstk_darwin(v7);
  v87 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v86 = &v73 - v11;
  v83 = sub_140C4(&qword_3C740, &qword_26F60);
  v12 = *(*(v83 - 8) + 64);
  __chkstk_darwin(v83);
  v78 = &v73 - v13;
  v14 = sub_140C4(&qword_3C748, &qword_26F68);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v85 = &v73 - v16;
  v17 = sub_140C4(&qword_3C750, &qword_26F70);
  v79 = *(v17 - 8);
  v80 = v17;
  v18 = *(v79 + 64);
  __chkstk_darwin(v17);
  v75 = &v73 - v19;
  v20 = sub_21700();
  v89 = *(v20 - 8);
  v21 = *(v89 + 64);
  v22 = __chkstk_darwin(v20);
  v24 = &v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v73 - v25;
  sub_140C4(&qword_3C6C0, &qword_26F08);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_26DB0;
  *(v27 + 56) = &type metadata for Int;
  *(v27 + 64) = &protocol witness table for Int;
  *(v27 + 32) = a1;
  v28 = sub_22040();
  v30 = v29;

  v90 = sub_128C4();
  v91 = v31;
  sub_1449C();
  v32 = sub_220F0();
  v34 = v33;

  sub_12AC8(v28, v30, v32, v34, v26);

  v35 = *(v89 + 16);
  v74 = v26;
  v76 = v20;
  v35(v24, v26, v20);
  v36 = sub_21DF0();
  v38 = v37;
  LOBYTE(v28) = v39;
  v40 = enum case for Font.Design.rounded(_:);
  v41 = sub_21D70();
  v42 = *(v41 - 8);
  v43 = v85;
  (*(v42 + 104))(v85, v40, v41);
  (*(v42 + 56))(v43, 0, 1, v41);
  v44 = sub_21DC0();
  v46 = v45;
  LOBYTE(v26) = v47;
  sub_144F0(v36, v38, v28 & 1);

  v48 = v43;
  v49 = v86;
  sub_1486C(v48, &qword_3C748, &qword_26F68);
  sub_21D80();
  v50 = sub_21DD0();
  v52 = v51;
  v54 = v53;
  v56 = v55;
  sub_144F0(v44, v46, v26 & 1);
  v57 = v87;

  v85 = v50;
  v90 = v50;
  v91 = v52;
  v73 = v52;
  LOBYTE(v92) = v54 & 1;
  v93 = v56;
  v58 = v88;
  v59 = *(v88 + 104);
  v59(v49, enum case for DynamicTypeSize.xSmall(_:), v7);
  v59(v57, enum case for DynamicTypeSize.xLarge(_:), v7);
  sub_14FC8(&qword_3C758, &type metadata accessor for DynamicTypeSize);
  result = sub_22010();
  if (result)
  {
    v61 = *(v58 + 32);
    v62 = v77;
    v61(v77, v49, v7);
    v63 = v82;
    v61((v62 + *(v82 + 48)), v57, v7);
    v64 = v81;
    sub_14794(v62, v81);
    v65 = *(v63 + 48);
    v87 = v56;
    v66 = v78;
    v61(v78, v64, v7);
    LODWORD(v86) = v54 & 1;
    v67 = *(v58 + 8);
    v67(v64 + v65, v7);
    sub_14804(v62, v64, &qword_3C738, &unk_279F0);
    v68 = *(v63 + 48);
    v69 = v83;
    v61((v66 + *(v83 + 36)), (v64 + v68), v7);
    v67(v64, v7);
    v70 = sub_14D6C(&qword_3C760, &qword_3C740, &qword_26F60);
    v71 = v75;
    sub_21E70();
    sub_1486C(v66, &qword_3C740, &qword_26F60);
    sub_144F0(v85, v73, v86);

    v90 = &type metadata for Text;
    v91 = v69;
    v92 = &protocol witness table for Text;
    v93 = v70;
    swift_getOpaqueTypeConformance2();
    v72 = v80;
    sub_21E80();
    (*(v79 + 8))(v71, v72);
    return (*(v89 + 8))(v74, v76);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_13990()
{
  v2 = type metadata accessor for ScheduleDayRowView();
  v3 = *(v0 + v2[7] + 8);
  v4 = *(v0 + v2[6]);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21A90();

  if ((v17 & 0xC000000000000001) == 0)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v4 < *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)))
    {
      v5 = *(v17 + 8 * v4 + 32);
      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_22;
  }

  v5 = sub_22110();
LABEL_5:
  v6 = v5;

  v1 = &OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goalType;
  v7 = *&v6[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goalType];

  result = [*(v0 + v2[5]) unitManager];
  if (!result)
  {
    goto LABEL_33;
  }

  v9 = result;
  v10 = [result unitManager];

  if ((v7 - 1) < 2)
  {
    v11 = &selRef_minuteUnit;
    goto LABEL_10;
  }

  if (v7)
  {
    v11 = &selRef_countUnit;
LABEL_10:
    v12 = objc_opt_self();
    goto LABEL_12;
  }

  v11 = &selRef_userActiveEnergyBurnedUnit;
  v12 = v10;
LABEL_12:
  v2 = [v12 *v11];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21A90();

  if ((v17 & 0xC000000000000001) == 0)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v4 < *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)))
    {
      v13 = *(v17 + 8 * v4 + 32);

      v14 = *&v13[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goalType];

      if (v14 <= 1)
      {
        if (v14)
        {
          goto LABEL_17;
        }

LABEL_24:
        IsCalorieUnit = FIUIHKUnitIsCalorieUnit();

        if (IsCalorieUnit)
        {
          return &dword_8 + 2;
        }

        else
        {
          return &dword_14;
        }
      }

      goto LABEL_27;
    }

    __break(1u);
LABEL_33:
    __break(1u);
    return result;
  }

LABEL_22:
  v15 = sub_22110();

  v14 = *(v15 + *v1);
  swift_unknownObjectRelease();
  if (v14 <= 1)
  {
    if (v14)
    {
LABEL_17:
      if (v14 == 1)
      {

        return &dword_8 + 2;
      }

      goto LABEL_28;
    }

    goto LABEL_24;
  }

LABEL_27:
  if (v14 != 2)
  {
LABEL_28:

    return &dword_0 + 1;
  }

  return &dword_4 + 1;
}

id sub_13C54(id a1)
{
  v3 = type metadata accessor for ScheduleDayRowView();
  v4 = *(v1 + v3[7] + 8);
  v5 = *(v1 + v3[6]);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21A90();

  v6 = v30;
  if ((v30 & 0xC000000000000001) == 0)
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v5 < *(&dword_10 + (v30 & 0xFFFFFFFFFFFFFF8)))
    {
      v7 = v30[v5 + 4];
      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_30;
  }

  v7 = sub_22110();
LABEL_5:
  v8 = v7;

  v6 = &OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goalType;
  v9 = *(v8 + OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goalType);

  result = [*(v1 + v3[5]) unitManager];
  if (result)
  {
    v11 = result;
    v12 = [result unitManager];

    if ((v9 - 1) < 2)
    {
      v13 = &selRef_minuteUnit;
    }

    else
    {
      if (!v9)
      {
        v13 = &selRef_userActiveEnergyBurnedUnit;
        v14 = v12;
LABEL_12:
        v15 = [v14 *v13];

        a1 = [objc_opt_self() quantityWithUnit:v15 doubleValue:a1];
        swift_getKeyPath();
        swift_getKeyPath();
        sub_21A90();

        if ((v30 & 0xC000000000000001) == 0)
        {
          if ((v5 & 0x8000000000000000) != 0)
          {
            __break(1u);
            goto LABEL_32;
          }

          if (v5 >= *(&dword_10 + (v30 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            goto LABEL_34;
          }

          v16 = v30[v5 + 4];
LABEL_16:
          v17 = v16;

          v8 = &OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_day;
          LOBYTE(v9) = v17[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_day];

          swift_getKeyPath();
          swift_getKeyPath();
          a1 = a1;
          sub_21A90();

          if ((v30 & 0xC000000000000001) == 0)
          {
            if ((v5 & 0x8000000000000000) == 0)
            {
              if (v5 >= *(&dword_10 + (v30 & 0xFFFFFFFFFFFFFF8)))
              {
LABEL_36:
                __break(1u);
LABEL_37:
                __break(1u);
                goto LABEL_38;
              }

              v18 = v30[v5 + 4];
              goto LABEL_20;
            }

LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
            goto LABEL_36;
          }

LABEL_32:
          v18 = sub_22110();
LABEL_20:
          v19 = v18;

          v20 = *&v19[*v6];

          v21 = type metadata accessor for GoalDay();
          v22 = objc_allocWithZone(v21);
          v22[*v8] = v9;
          *&v22[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goal] = a1;
          *&v22[*v6] = v20;
          v31.receiver = v22;
          v31.super_class = v21;
          v23 = objc_msgSendSuper2(&v31, "init");
          swift_getKeyPath();
          swift_getKeyPath();
          v24 = v23;
          v25 = sub_21A80();
          v27 = v26;
          v28 = *v26;
          result = swift_isUniquelyReferenced_nonNull_bridgeObject();
          *v27 = v28;
          if (!result || (v28 & 0x8000000000000000) != 0 || (v28 & 0x4000000000000000) != 0)
          {
            result = sub_145D8(v28);
            v28 = result;
            *v27 = result;
          }

          if ((v5 & 0x8000000000000000) == 0)
          {
            if (v5 < *(&dword_10 + (v28 & 0xFFFFFFFFFFFFFF8)))
            {
              v29 = *(&stru_20.cmd + 8 * v5 + (v28 & 0xFFFFFFFFFFFFFF8));
              *(&stru_20.cmd + 8 * v5 + (v28 & 0xFFFFFFFFFFFFFF8)) = v24;

              v25(&v30, 0);
            }

            goto LABEL_37;
          }

          goto LABEL_35;
        }

LABEL_30:
        v16 = sub_22110();
        goto LABEL_16;
      }

      v13 = &selRef_countUnit;
    }

    v14 = objc_opt_self();
    goto LABEL_12;
  }

LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_140C4(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_14114()
{
  result = qword_3C668;
  if (!qword_3C668)
  {
    sub_141A0(&qword_3C628, &qword_26E60);
    sub_141E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C668);
  }

  return result;
}

uint64_t sub_141A0(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_141E8()
{
  result = qword_3C670;
  if (!qword_3C670)
  {
    sub_141A0(&qword_3C620, &qword_26E58);
    sub_14274();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C670);
  }

  return result;
}

unint64_t sub_14274()
{
  result = qword_3C678;
  if (!qword_3C678)
  {
    sub_141A0(&qword_3C618, &qword_26E50);
    sub_14D6C(&qword_3C680, &qword_3C610, &qword_26E48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C678);
  }

  return result;
}

unint64_t sub_1432C()
{
  result = qword_3C688;
  if (!qword_3C688)
  {
    sub_141A0(&qword_3C658, &qword_26EE8);
    sub_14114();
    sub_14D6C(&qword_3C690, &qword_3C698, &qword_26EF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C688);
  }

  return result;
}

unint64_t sub_143E4()
{
  result = qword_3C6A0;
  if (!qword_3C6A0)
  {
    sub_141A0(&qword_3C660, &qword_26EF0);
    sub_14114();
    sub_14D6C(&qword_3C6A8, &qword_3C6B0, &qword_26F00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6A0);
  }

  return result;
}

unint64_t sub_1449C()
{
  result = qword_3C6B8;
  if (!qword_3C6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6B8);
  }

  return result;
}

uint64_t sub_144F0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_14500(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScheduleDayRowView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_14568(uint64_t a1)
{
  v2 = *(*(type metadata accessor for ScheduleDayRowView() - 8) + 80);

  sub_12FFC(a1);
}

uint64_t sub_145D8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_22140();
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0, a1);
}

uint64_t sub_1463C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_14684()
{
  result = qword_3C6E8;
  if (!qword_3C6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6E8);
  }

  return result;
}

unint64_t sub_146D8()
{
  result = qword_3C6F0;
  if (!qword_3C6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6F0);
  }

  return result;
}

uint64_t sub_1472C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_14794(uint64_t a1, uint64_t a2)
{
  v4 = sub_140C4(&qword_3C738, &unk_279F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_14804(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_140C4(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1486C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_140C4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_148D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21BB0();
  *a1 = result;
  return result;
}

uint64_t sub_14900(uint64_t *a1)
{
  v1 = *a1;

  return sub_21BC0();
}

uint64_t sub_1492C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21BF0();
  *a1 = result & 1;
  return result;
}

unint64_t sub_149AC()
{
  result = qword_3C7A8;
  if (!qword_3C7A8)
  {
    sub_141A0(&qword_3C790, &qword_26FA0);
    sub_14A64();
    sub_14D6C(&qword_3C7D0, &qword_3C7D8, &qword_27020);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7A8);
  }

  return result;
}

unint64_t sub_14A64()
{
  result = qword_3C7B0;
  if (!qword_3C7B0)
  {
    sub_141A0(&qword_3C788, &qword_26F98);
    sub_14D6C(&qword_3C7B8, &qword_3C780, &qword_26F90);
    sub_14D6C(&qword_3C7C0, &qword_3C7C8, &qword_27018);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7B0);
  }

  return result;
}

uint64_t sub_14B48()
{
  v1 = (type metadata accessor for ScheduleDayRowView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_21850();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_14C48(char a1)
{
  v3 = *(type metadata accessor for ScheduleDayRowView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  sub_112D4(a1);
}

unint64_t sub_14CB4()
{
  result = qword_3C7F8;
  if (!qword_3C7F8)
  {
    sub_141A0(&qword_3C7F0, &qword_27068);
    sub_14D6C(&qword_3C800, &qword_3C808, &qword_27070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7F8);
  }

  return result;
}

uint64_t sub_14D6C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_141A0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_14DB4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_140C4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_14E20()
{
  result = qword_3C840;
  if (!qword_3C840)
  {
    sub_141A0(&qword_3C640, qword_26E78);
    sub_141A0(&qword_3C630, &qword_26E68);
    sub_141A0(&qword_3C628, &qword_26E60);
    sub_141A0(&qword_3C658, &qword_26EE8);
    sub_141A0(&qword_3C660, &qword_26EF0);
    sub_14114();
    sub_1432C();
    sub_143E4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_14FC8(&qword_3C848, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C840);
  }

  return result;
}

uint64_t sub_14FC8(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_15020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC19ActivityBridgeSetup19ActivityGoalDayCell_dayLabel;
  *&v3[v6] = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v3[OBJC_IVAR____TtC19ActivityBridgeSetup19ActivityGoalDayCell_goalView] = 0;
  *&v3[OBJC_IVAR____TtC19ActivityBridgeSetup19ActivityGoalDayCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  if (a3)
  {
    v7 = sub_22030();
  }

  else
  {
    v7 = 0;
  }

  v30.receiver = v3;
  v30.super_class = type metadata accessor for ActivityGoalDayCell();
  v8 = objc_msgSendSuper2(&v30, "initWithStyle:reuseIdentifier:", a1, v7);

  v9 = OBJC_IVAR____TtC19ActivityBridgeSetup19ActivityGoalDayCell_dayLabel;
  v10 = *&v8[OBJC_IVAR____TtC19ActivityBridgeSetup19ActivityGoalDayCell_dayLabel];
  v11 = v8;
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = [v11 contentView];
  [v12 addSubview:*&v8[v9]];

  v13 = [*&v8[v9] topAnchor];
  v14 = [v11 contentView];
  v15 = [v14 topAnchor];

  v16 = [v13 constraintEqualToAnchor:v15];
  [v16 setActive:1];

  v17 = [*&v8[v9] leadingAnchor];
  v18 = [v11 contentView];
  v19 = [v18 leadingAnchor];

  v20 = [v17 constraintEqualToAnchor:v19];
  [v20 setActive:1];

  v21 = [*&v8[v9] bottomAnchor];
  v22 = [v11 contentView];

  v23 = [v22 bottomAnchor];
  v24 = [v21 constraintEqualToAnchor:v23];

  [v24 setActive:1];
  v25 = *&v8[v9];
  v26 = objc_opt_self();
  v27 = v25;
  v28 = [v26 preferredFontForTextStyle:UIFontTextStyleBody];
  [v27 setFont:v28];

  return v11;
}

id sub_1547C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityGoalDayCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_15704()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AdvancedGoalViewFactory();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1575C(uint64_t a1)
{
  v2 = sub_21850();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_21BE0();
}

uint64_t sub_15824(void *a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v29 = a5;
  v30 = a4;
  v27 = a3;
  v26 = a2;
  v25 = a1;
  v5 = type metadata accessor for AdvancedChangeGoalView();
  v6 = *(*(v5 - 1) + 64);
  __chkstk_darwin(v5);
  v8 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = sub_140C4(&qword_3C918, &qword_27138);
  v9 = *(v28 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v28);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v25 - v14;
  *v8 = swift_getKeyPath();
  sub_140C4(&qword_3C920, &qword_27170);
  swift_storeEnumTagMultiPayload();
  v16 = v8 + v5[5];
  sub_15B7C();
  sub_15BC8(&qword_3C928, sub_15B7C);
  *v16 = sub_21AE0();
  v16[8] = v17 & 1;
  v18 = (v8 + v5[6]);
  type metadata accessor for GoalDaysModel();
  sub_15BC8(&unk_3C5D8, type metadata accessor for GoalDaysModel);
  v19 = v25;
  *v18 = sub_21B10();
  v18[1] = v20;
  *(v8 + v5[7]) = v26;
  *(v8 + v5[8]) = v27;
  *(v8 + v5[9]) = v29;
  sub_15BC8(&qword_3C930, type metadata accessor for AdvancedChangeGoalView);
  sub_21E50();
  sub_15C10(v8);
  v21 = v28;
  (*(v9 + 16))(v13, v15, v28);
  v22 = objc_allocWithZone(sub_140C4(&qword_3C938, &qword_27178));
  v23 = sub_21B30();
  (*(v9 + 8))(v15, v21);
  return v23;
}

unint64_t sub_15B7C()
{
  result = qword_3C5C8;
  if (!qword_3C5C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_3C5C8);
  }

  return result;
}

uint64_t sub_15BC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_15C10(uint64_t a1)
{
  v2 = type metadata accessor for AdvancedChangeGoalView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_15C6C(char a1)
{
  v2 = [v1 *off_35CA0[a1]];

  return v2;
}

uint64_t sub_15CB0()
{
  sub_140C4(&qword_3C940, &qword_27190);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_27180;
  v2 = [v0 mondayGoal];
  v3 = [v0 goalType];
  v4 = type metadata accessor for GoalDay();
  v5 = objc_allocWithZone(v4);
  v5[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_day] = 0;
  *&v5[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goal] = v2;
  *&v5[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goalType] = v3;
  v31.receiver = v5;
  v31.super_class = v4;
  *(v1 + 32) = objc_msgSendSuper2(&v31, "init");
  v6 = [v0 tuesdayGoal];
  v7 = [v0 goalType];
  v8 = objc_allocWithZone(v4);
  v8[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_day] = 1;
  *&v8[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goal] = v6;
  *&v8[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goalType] = v7;
  v30.receiver = v8;
  v30.super_class = v4;
  *(v1 + 40) = objc_msgSendSuper2(&v30, "init");
  v9 = [v0 wednesdayGoal];
  v10 = [v0 goalType];
  v11 = objc_allocWithZone(v4);
  v11[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_day] = 2;
  *&v11[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goal] = v9;
  *&v11[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goalType] = v10;
  v29.receiver = v11;
  v29.super_class = v4;
  *(v1 + 48) = objc_msgSendSuper2(&v29, "init");
  v12 = [v0 thursdayGoal];
  v13 = [v0 goalType];
  v14 = objc_allocWithZone(v4);
  v14[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_day] = 3;
  *&v14[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goal] = v12;
  *&v14[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goalType] = v13;
  v28.receiver = v14;
  v28.super_class = v4;
  *(v1 + 56) = objc_msgSendSuper2(&v28, "init");
  v15 = [v0 fridayGoal];
  v16 = [v0 goalType];
  v17 = objc_allocWithZone(v4);
  v17[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_day] = 4;
  *&v17[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goal] = v15;
  *&v17[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goalType] = v16;
  v27.receiver = v17;
  v27.super_class = v4;
  *(v1 + 64) = objc_msgSendSuper2(&v27, "init");
  v18 = [v0 saturdayGoal];
  v19 = [v0 goalType];
  v20 = objc_allocWithZone(v4);
  v20[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_day] = 5;
  *&v20[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goal] = v18;
  *&v20[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goalType] = v19;
  v26.receiver = v20;
  v26.super_class = v4;
  *(v1 + 72) = objc_msgSendSuper2(&v26, "init");
  v21 = [v0 sundayGoal];
  v22 = [v0 goalType];
  v23 = objc_allocWithZone(v4);
  v23[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_day] = 6;
  *&v23[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goal] = v21;
  *&v23[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goalType] = v22;
  v25.receiver = v23;
  v25.super_class = v4;
  *(v1 + 80) = objc_msgSendSuper2(&v25, "init");
  return v1;
}

id sub_1606C()
{
  v21 = sub_217D0();
  v0 = *(v21 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v21);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_21850();
  v4 = *(v20 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v20);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_216F0();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21830();
  sub_140C4(&qword_3C948, &qword_27198);
  v12 = sub_21840();
  v13 = *(v12 - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_26DB0;
  (*(v13 + 104))(v16 + v15, enum case for Calendar.Component.weekday(_:), v12);
  sub_16928(v16);
  swift_setDeallocating();
  (*(v13 + 8))(v16 + v15, v12);
  swift_deallocClassInstance();
  sub_217C0();
  sub_217F0();

  (*(v0 + 8))(v3, v21);
  (*(v4 + 8))(v7, v20);
  v17 = sub_19968(v11);
  result = 0;
  if (v17 != 7)
  {
    return sub_15C6C(v17);
  }

  return result;
}

void sub_163A4(unint64_t a1, char *a2)
{
  v4 = sub_217D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  j = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_80;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); i; v7 = v37)
  {
    v45 = a2;
    v46 = j;
    v47 = v5;
    v48 = v7;
    j = 0;
    v5 = a1 & 0xC000000000000001;
    while (1)
    {
      if (v5)
      {
        v7 = sub_22110();
      }

      else
      {
        if (j >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_75;
        }

        v7 = *(a1 + 8 * j + 32);
      }

      a2 = v7;
      v11 = (j + 1);
      if (__OFADD__(j, 1))
      {
        __break(1u);
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

      if (!v7[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_day])
      {
        break;
      }

      ++j;
      if (v11 == i)
      {
        return;
      }
    }

    for (j = 0; ; ++j)
    {
      if (v5)
      {
        v7 = sub_22110();
      }

      else
      {
        if (j >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_78;
        }

        v7 = *(a1 + 8 * j + 32);
      }

      v12 = v7;
      v13 = (j + 1);
      if (__OFADD__(j, 1))
      {
        break;
      }

      if (v7[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_day] == 1)
      {
        for (j = 0; ; ++j)
        {
          if (v5)
          {
            v7 = sub_22110();
          }

          else
          {
            if (j >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
            {
              __break(1u);
LABEL_83:
              __break(1u);
LABEL_84:
              __break(1u);
LABEL_85:
              __break(1u);
LABEL_86:
              __break(1u);
LABEL_87:
              __break(1u);
LABEL_88:
              __break(1u);
LABEL_89:
              __break(1u);
              return;
            }

            v7 = *(a1 + 8 * j + 32);
          }

          v14 = v7;
          v15 = (j + 1);
          if (__OFADD__(j, 1))
          {
            goto LABEL_77;
          }

          if (v7[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_day] == 2)
          {
            break;
          }

          if (v15 == i)
          {

            return;
          }
        }

        for (j = 0; ; ++j)
        {
          if (v5)
          {
            v7 = sub_22110();
            v16 = (j + 1);
            if (__OFADD__(j, 1))
            {
              goto LABEL_79;
            }
          }

          else
          {
            if (j >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_84;
            }

            v7 = *(a1 + 8 * j + 32);
            v16 = (j + 1);
            if (__OFADD__(j, 1))
            {
              goto LABEL_79;
            }
          }

          if (v7[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_day] == 3)
          {
            break;
          }

          if (v16 == i)
          {

            return;
          }
        }

        v17 = 0;
        v49 = v7;
        while (1)
        {
          if (v5)
          {
            v18 = sub_22110();
            v19 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
              goto LABEL_83;
            }
          }

          else
          {
            if (v17 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_86;
            }

            v18 = *(a1 + 8 * v17 + 32);
            v19 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
              goto LABEL_83;
            }
          }

          if (v18[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_day] == 4)
          {
            break;
          }

          ++v17;
          if (v19 == i)
          {
            v20 = v49;

LABEL_71:
            return;
          }
        }

        v21 = 0;
        v44 = v18;
        while (1)
        {
          if (v5)
          {
            v22 = sub_22110();
            v23 = v21 + 1;
            if (__OFADD__(v21, 1))
            {
              goto LABEL_85;
            }
          }

          else
          {
            if (v21 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_88;
            }

            v22 = *(a1 + 8 * v21 + 32);
            v23 = v21 + 1;
            if (__OFADD__(v21, 1))
            {
              goto LABEL_85;
            }
          }

          if (v22[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_day] == 5)
          {
            break;
          }

          ++v21;
          if (v23 == i)
          {
            v20 = v44;

            v24 = v49;
LABEL_70:

            goto LABEL_71;
          }
        }

        v25 = 0;
        v43 = v22;
        while (1)
        {
          if (v5)
          {
            v26 = sub_22110();
            v27 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              goto LABEL_87;
            }
          }

          else
          {
            if (v25 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_89;
            }

            v26 = *(a1 + 8 * v25 + 32);
            v27 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              goto LABEL_87;
            }
          }

          if (v26[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_day] == 6)
          {
            break;
          }

          ++v25;
          if (v27 == i)
          {
            v20 = v43;

            v24 = v44;
            goto LABEL_70;
          }
        }

        v28 = v46;
        v29 = v26;
        v42 = v26;
        sub_217C0();
        v30 = *&a2[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goal];
        v40 = *&v12[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goal];
        v41 = v30;
        v31 = *&v14[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goal];
        v39 = *&v49[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goal];
        v32 = *&v44[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goal];
        v33 = *&v43[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goal];
        v34 = *&v29[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goal];
        v35 = [objc_opt_self() localDevice];
        isa = sub_217B0().super.isa;
        [objc_opt_self() activityGoalScheduleWithDate:isa goalType:v45 mondayGoal:v41 tuesdayGoal:v40 wednesdayGoal:v31 thursdayGoal:v39 fridayGoal:v32 saturdayGoal:v33 sundayGoal:v34 device:v35 metadata:0];

        (*(v47 + 8))(v28, v48);
        return;
      }

      if (v13 == i)
      {

        return;
      }
    }

LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    v37 = v7;
    i = sub_22140();
  }
}

void *sub_16928(uint64_t a1)
{
  v2 = sub_21840();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_140C4(&qword_3C950, qword_271A0);
    v10 = sub_22100();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_16C20(&qword_3C958);
      v18 = sub_22000();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_16C20(&unk_3C960);
          v25 = sub_22020();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_16C20(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_21840();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_16C64(unint64_t a1)
{
  if (a1 >= 2)
  {
    if (a1 != 2)
    {
      if (a1 != 3)
      {

        return static Color.red.getter();
      }

      v1 = [objc_opt_self() sedentaryColors];
      if (v1)
      {
        v2 = v1;
        v3 = [v1 nonGradientTextColor];

        if (v3)
        {

          return Color.init(_:)(v3);
        }

        goto LABEL_23;
      }

      goto LABEL_21;
    }

    goto LABEL_12;
  }

  v4 = [objc_opt_self() energyColors];
  if (!v4)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v5 = v4;
  v6 = [v4 nonGradientTextColor];

  if (!v6)
  {
    __break(1u);
LABEL_12:
    v7 = [objc_opt_self() briskColors];
    if (!v7)
    {
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v8 = v7;
    v9 = [v7 nonGradientTextColor];

    if (!v9)
    {
LABEL_24:
      __break(1u);
      return static Color.red.getter();
    }
  }

  return sub_21ED0();
}

id sub_16DD4(uint64_t a1)
{
  *&v1[OBJC_IVAR___CHASActivitySetupThreeRingsOnboardingViewController_videoView] = 0;
  *&v1[OBJC_IVAR___CHASActivitySetupThreeRingsOnboardingViewController_observers] = &_swiftEmptyArrayStorage;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___CHASActivitySetupThreeRingsOnboardingViewController_presentationContext] = a1;
  sub_1463C(0, &qword_3C6E0, &off_34A50);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = objc_opt_self();
  v5 = [v4 bundleForClass:ObjCClassFromMetadata];
  v6 = sub_22030();
  v7 = sub_22030();
  v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

  if (!v8)
  {
    sub_22050();
    v8 = sub_22030();
  }

  v9 = [v4 bundleForClass:ObjCClassFromMetadata];
  v10 = sub_22030();
  v11 = sub_22030();
  v12 = [v9 localizedStringForKey:v10 value:0 table:v11];

  if (!v12)
  {
    sub_22050();
    v12 = sub_22030();
  }

  v15.receiver = v1;
  v15.super_class = type metadata accessor for ActivitySetupThreeRingsOnboardingViewController();
  v13 = objc_msgSendSuper2(&v15, "initWithTitle:detailText:icon:contentLayout:", v8, v12, 0, 3);

  return v13;
}

void sub_1705C()
{
  v1 = v0;
  v2 = sub_140C4(&qword_3C9D0, &qword_272D8);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v28 - v7;
  v9 = type metadata accessor for ActivitySetupThreeRingsOnboardingViewController();
  v31.receiver = v0;
  v31.super_class = v9;
  objc_msgSendSuper2(&v31, "viewDidLoad");
  v10 = [objc_opt_self() boldButton];
  [v10 addTarget:v1 action:"didTapAcceptButton" forControlEvents:64];
  sub_1463C(0, &qword_3C6E0, &off_34A50);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = objc_opt_self();
  v13 = v10;
  v29 = ObjCClassFromMetadata;
  v14 = [v12 bundleForClass:ObjCClassFromMetadata];
  v15 = sub_22030();
  v16 = sub_22030();
  v17 = [v14 localizedStringForKey:v15 value:0 table:v16];

  if (!v17)
  {
    sub_22050();
    v17 = sub_22030();
  }

  [v13 setTitle:v17 forState:0];
  sub_220D0();
  v18 = sub_220C0();
  if ((*(*(v18 - 8) + 48))(v8, 1, v18))
  {
    sub_18270(v8, v6);
    sub_220E0();

    sub_182E0(v8);
  }

  else
  {
    v19 = BPSPillSelectedColor();
    v20 = sub_220B0();
    sub_21870();
    v20(v30, 0);
    sub_220E0();
  }

  v21 = [v1 buttonTray];
  [v21 addButton:v13];

  if (*&v1[OBJC_IVAR___CHASActivitySetupThreeRingsOnboardingViewController_presentationContext] == 4)
  {
    v22 = [objc_opt_self() linkButton];
    [v22 addTarget:v1 action:"didTapSkipButton" forControlEvents:64];
    v23 = [v12 bundleForClass:v29];
    v24 = sub_22030();
    v25 = sub_22030();
    v26 = [v23 localizedStringForKey:v24 value:0 table:v25];

    if (!v26)
    {
      sub_22050();
      v26 = sub_22030();
    }

    [v22 setTitle:v26 forState:0];
    v27 = [v1 buttonTray];
    [v27 addButton:v22];
  }

  sub_17818();
}

void sub_17530(char a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for ActivitySetupThreeRingsOnboardingViewController();
  objc_msgSendSuper2(&v7, "viewDidAppear:", a1 & 1);
  sub_17D10();
  v3 = *&v1[OBJC_IVAR___CHASActivitySetupThreeRingsOnboardingViewController_videoView];
  if (v3)
  {
    v4 = *&v3[OBJC_IVAR____TtC19ActivityBridgeSetup42ActivitySetupThreeRingsOnboardingVideoView_playerLayer];
    v5 = v3;
    v6 = [v4 player];
    [v6 play];
  }
}

void sub_17688()
{
  v3 = [objc_allocWithZone(CHASActivitySetupViewController) initWithPresentationContext:*&v0[OBJC_IVAR___CHASActivitySetupThreeRingsOnboardingViewController_presentationContext]];
  [v3 setDelegate:{objc_msgSend(v0, "delegate")}];
  swift_unknownObjectRelease();
  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
    [v1 pushViewController:v3 animated:1];
  }
}

uint64_t sub_17818()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  v3 = objc_opt_self();
  v4 = [v3 mainQueue];
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = sub_18248;
  v21 = v5;
  v16 = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_17BC8;
  v19 = &unk_35D00;
  v6 = _Block_copy(&v16);

  v7 = [v2 addObserverForName:UIApplicationWillEnterForegroundNotification object:0 queue:v4 usingBlock:v6];
  _Block_release(v6);

  v8 = [v1 defaultCenter];
  v9 = [v3 mainQueue];
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = sub_18268;
  v21 = v10;
  v16 = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_17BC8;
  v19 = &unk_35D28;
  v11 = _Block_copy(&v16);

  v12 = [v8 addObserverForName:UIApplicationDidEnterBackgroundNotification object:0 queue:v9 usingBlock:v11];
  _Block_release(v11);

  sub_140C4(&qword_3C9C8, &qword_272D0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_26DA0;
  *(v13 + 56) = swift_getObjectType();
  *(v13 + 32) = v7;
  *(v13 + 88) = swift_getObjectType();
  *(v13 + 64) = v12;
  v14 = *(v0 + OBJC_IVAR___CHASActivitySetupThreeRingsOnboardingViewController_observers);
  *(v0 + OBJC_IVAR___CHASActivitySetupThreeRingsOnboardingViewController_observers) = v13;
}

void sub_17AF0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_17D10();
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR___CHASActivitySetupThreeRingsOnboardingViewController_videoView);
    v4 = v2;
    v5 = v3;

    if (v3)
    {
      v6 = [*&v5[OBJC_IVAR____TtC19ActivityBridgeSetup42ActivitySetupThreeRingsOnboardingVideoView_playerLayer] player];
      [v6 play];
    }
  }
}

uint64_t sub_17BC8(uint64_t a1)
{
  v2 = sub_216D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_216C0();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

void sub_17CBC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_18038();
  }
}

void sub_17D10()
{
  v1 = [objc_allocWithZone(type metadata accessor for ActivitySetupThreeRingsOnboardingVideoView()) init];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = [v0 contentView];
  [v2 addSubview:v1];

  v3 = objc_opt_self();
  sub_140C4(&qword_3C940, &qword_27190);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_27260;
  v5 = [v1 leadingAnchor];
  v6 = [v0 contentView];
  v7 = [v6 leadingAnchor];

  v8 = [v5 constraintEqualToAnchor:v7];
  *(v4 + 32) = v8;
  v9 = [v1 trailingAnchor];
  v10 = [v0 contentView];
  v11 = [v10 trailingAnchor];

  v12 = [v9 constraintEqualToAnchor:v11];
  *(v4 + 40) = v12;
  v13 = [v1 topAnchor];
  v14 = [v0 contentView];
  v15 = [v14 topAnchor];

  v16 = [v13 constraintEqualToAnchor:v15 constant:30.0];
  *(v4 + 48) = v16;
  v17 = [v1 bottomAnchor];

  v18 = [v0 contentView];
  v19 = [v18 bottomAnchor];

  v20 = [v17 constraintEqualToAnchor:v19];
  *(v4 + 56) = v20;
  sub_1463C(0, &qword_3C9C0, NSLayoutConstraint_ptr);
  isa = sub_22070().super.isa;

  [v3 activateConstraints:isa];

  v22 = *&v0[OBJC_IVAR___CHASActivitySetupThreeRingsOnboardingViewController_videoView];
  *&v0[OBJC_IVAR___CHASActivitySetupThreeRingsOnboardingViewController_videoView] = v1;
}

void sub_18038()
{
  v1 = v0;
  v2 = OBJC_IVAR___CHASActivitySetupThreeRingsOnboardingViewController_videoView;
  v3 = *(v0 + OBJC_IVAR___CHASActivitySetupThreeRingsOnboardingViewController_videoView);
  if (v3)
  {
    v4 = v3;
    sub_18D3C();

    v5 = *(v1 + v2);
    if (v5)
    {
      [v5 removeFromSuperview];
      v5 = *(v1 + v2);
    }
  }

  else
  {
    v5 = 0;
  }

  *(v1 + v2) = 0;
}

id sub_18114()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivitySetupThreeRingsOnboardingViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_18210()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_18250(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_18270(uint64_t a1, uint64_t a2)
{
  v4 = sub_140C4(&qword_3C9D0, &qword_272D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_182E0(uint64_t a1)
{
  v2 = sub_140C4(&qword_3C9D0, &qword_272D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18404()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21A90();

  return v1;
}

uint64_t sub_18500@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21A90();

  *a2 = v5;
  return result;
}

uint64_t sub_18580(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v3;
  return sub_21AA0();
}

id sub_18718()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GoalDaysModel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for GoalDaysModel()
{
  result = qword_3CA08;
  if (!qword_3CA08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1881C()
{
  sub_188B8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_188B8()
{
  if (!qword_3CA18)
  {
    sub_141A0(&qword_3CA20, &qword_27318);
    v0 = sub_21AB0();
    if (!v1)
    {
      atomic_store(v0, &qword_3CA18);
    }
  }
}

uint64_t sub_18928@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for GoalDaysModel();
  result = sub_21A60();
  *a1 = result;
  return result;
}

void sub_189F0()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_217A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v33 - v9;
  v11 = OBJC_IVAR____TtC19ActivityBridgeSetup42ActivitySetupThreeRingsOnboardingVideoView_player;
  if (!*&v1[OBJC_IVAR____TtC19ActivityBridgeSetup42ActivitySetupThreeRingsOnboardingVideoView_player])
  {
    v12 = OBJC_IVAR____TtC19ActivityBridgeSetup42ActivitySetupThreeRingsOnboardingVideoView_playerLayer;
    if (!*&v1[OBJC_IVAR____TtC19ActivityBridgeSetup42ActivitySetupThreeRingsOnboardingVideoView_playerLayer])
    {
      v34 = v8;
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v14 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      v15 = sub_22030();
      v16 = sub_22030();
      v17 = [v14 URLForResource:v15 withExtension:v16];

      v18 = v12;
      v19 = v34;
      if (v17)
      {
        sub_21790();

        (*(v3 + 32))(v10, v7, v19);
        sub_21780(v20);
        v22 = v21;
        v23 = [objc_opt_self() assetWithURL:v21];

        v24 = [objc_allocWithZone(AVPlayerItem) initWithAsset:v23];
        v25 = [objc_allocWithZone(AVPlayer) init];
        [v25 _setParticipatesInAudioSession:0];
        [v25 setPreventsDisplaySleepDuringVideoPlayback:0];
        [v25 setAllowsExternalPlayback:0];
        [v25 replaceCurrentItemWithPlayerItem:v24];
        v26 = objc_opt_self();
        v27 = v25;
        v28 = [v26 playerLayerWithPlayer:v27];
        v29 = *&v1[v11];
        *&v1[v11] = v25;

        v30 = *&v1[v18];
        *&v1[v18] = v28;
        v31 = v28;

        v32 = [v1 layer];
        [v32 addSublayer:v31];

        (*(v3 + 8))(v10, v34);
      }
    }
  }
}

void sub_18D3C()
{
  v1 = OBJC_IVAR____TtC19ActivityBridgeSetup42ActivitySetupThreeRingsOnboardingVideoView_player;
  v2 = *(v0 + OBJC_IVAR____TtC19ActivityBridgeSetup42ActivitySetupThreeRingsOnboardingVideoView_player);
  if (v2)
  {
    [v2 replaceCurrentItemWithPlayerItem:0];
  }

  v3 = OBJC_IVAR____TtC19ActivityBridgeSetup42ActivitySetupThreeRingsOnboardingVideoView_playerLayer;
  v4 = *(v0 + OBJC_IVAR____TtC19ActivityBridgeSetup42ActivitySetupThreeRingsOnboardingVideoView_playerLayer);
  if (v4)
  {
    [v4 setPlayer:0];
    v5 = *(v0 + v3);
    if (v5)
    {
      [v5 removeFromSuperlayer];
    }
  }

  v6 = *(v0 + v1);
  *(v0 + v1) = 0;

  v7 = *(v0 + v3);
  *(v0 + v3) = 0;
}

id sub_18FF0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivitySetupThreeRingsOnboardingVideoView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_19094()
{
  v1 = OBJC_IVAR____TtC19ActivityBridgeSetup31DailyGoalChartPointDataProvider__dailyGoals;
  v2 = sub_140C4(&qword_3CB60, qword_27480);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DailyGoalChartPointDataProvider()
{
  result = qword_3CA98;
  if (!qword_3CA98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_19190()
{
  sub_19220();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_19220()
{
  if (!qword_3CAA8)
  {
    sub_141A0(&unk_3CAB0, qword_27440);
    v0 = sub_21AB0();
    if (!v1)
    {
      atomic_store(v0, &qword_3CAA8);
    }
  }
}

uint64_t sub_19284@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DailyGoalChartPointDataProvider();
  result = sub_21A60();
  *a1 = result;
  return result;
}

uint64_t sub_192C4(uint64_t a1)
{
  result = sub_21800();
  v3 = *(a1 + OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_day);
  v4 = *(result + 16);
  if (v3 <= 2)
  {
    if (*(a1 + OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_day))
    {
      if (v3 != 1)
      {
        if (v4 >= 4)
        {
          v5 = 88;
          v6 = 80;
          goto LABEL_21;
        }

        goto LABEL_24;
      }

      if (v4 >= 3)
      {
        v5 = 72;
        v6 = 64;
        goto LABEL_21;
      }
    }

    else
    {
      if (v4 >= 2)
      {
        v5 = 56;
        v6 = 48;
        goto LABEL_21;
      }

      __break(1u);
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (*(a1 + OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_day) <= 4u)
  {
    if (v3 != 3)
    {
      if (v4 >= 6)
      {
        v5 = 120;
        v6 = 112;
        goto LABEL_21;
      }

      goto LABEL_27;
    }

    if (v4 >= 5)
    {
      v5 = 104;
      v6 = 96;
LABEL_21:
      v7 = *(result + v6);
      v8 = *(result + v5);

      return v7;
    }

    goto LABEL_25;
  }

  if (v3 == 5)
  {
    if (v4 >= 7)
    {
      v5 = 136;
      v6 = 128;
      goto LABEL_21;
    }

    goto LABEL_26;
  }

  if (v4)
  {
    v5 = 40;
    v6 = 32;
    goto LABEL_21;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_193F4(unsigned __int8 a1)
{
  result = sub_21810();
  v3 = *(result + 16);
  if (a1 <= 2u)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        if (v3 >= 4)
        {
          v4 = 88;
          v5 = 80;
          goto LABEL_21;
        }

        goto LABEL_24;
      }

      if (v3 >= 3)
      {
        v4 = 72;
        v5 = 64;
        goto LABEL_21;
      }
    }

    else
    {
      if (v3 >= 2)
      {
        v4 = 56;
        v5 = 48;
        goto LABEL_21;
      }

      __break(1u);
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (a1 <= 4u)
  {
    if (a1 != 3)
    {
      if (v3 >= 6)
      {
        v4 = 120;
        v5 = 112;
        goto LABEL_21;
      }

      goto LABEL_27;
    }

    if (v3 >= 5)
    {
      v4 = 104;
      v5 = 96;
LABEL_21:
      v6 = *(result + v5);
      v7 = *(result + v4);

      return v6;
    }

    goto LABEL_25;
  }

  if (a1 == 5)
  {
    if (v3 >= 7)
    {
      v4 = 136;
      v5 = 128;
      goto LABEL_21;
    }

    goto LABEL_26;
  }

  if (v3)
  {
    v4 = 40;
    v5 = 32;
    goto LABEL_21;
  }

LABEL_28:
  __break(1u);
  return result;
}

Swift::Int sub_1952C()
{
  v1 = *v0;
  sub_22160();
  sub_22170(v1);
  return sub_22180();
}

Swift::Int sub_195A0()
{
  v1 = *v0;
  sub_22160();
  sub_22170(v1);
  return sub_22180();
}

unint64_t sub_195E4@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_19A04(*a1);
  *a2 = result;
  return result;
}

id sub_1965C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GoalDay();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t getEnumTagSinglePayload for GoalDay.Day(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for GoalDay.Day(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1983C()
{
  result = qword_3CBA8;
  if (!qword_3CBA8)
  {
    sub_141A0(&qword_3CBB0, qword_274B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CBA8);
  }

  return result;
}

unint64_t sub_198A4()
{
  result = qword_3CBB8;
  if (!qword_3CBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CBB8);
  }

  return result;
}

unint64_t sub_198FC()
{
  result = qword_3CBC0;
  if (!qword_3CBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CBC0);
  }

  return result;
}

uint64_t sub_19968(uint64_t a1)
{
  v2 = sub_216E0();
  v4 = v3;
  v5 = sub_216F0();
  (*(*(v5 - 8) + 8))(a1, v5);
  if (v2 <= 7)
  {
    v6 = 0x504030201000607uLL >> (8 * v2);
  }

  else
  {
    v6 = 7;
  }

  if (v4)
  {
    return 7;
  }

  else
  {
    return v6;
  }
}

unint64_t sub_19A04(unint64_t result)
{
  if (result >= 7)
  {
    return 7;
  }

  return result;
}

uint64_t sub_19A28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_140C4(&qword_3CBC8, qword_275F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_19B08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_140C4(&qword_3CBC8, qword_275F0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for AdvancedChangeGoalView()
{
  result = qword_3CC28;
  if (!qword_3CC28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_19C1C()
{
  sub_19CD8();
  if (v0 <= 0x3F)
  {
    sub_19D30();
    if (v1 <= 0x3F)
    {
      sub_E9E8();
      if (v2 <= 0x3F)
      {
        type metadata accessor for HKActivityGoalType(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_19CD8()
{
  if (!qword_3CC38)
  {
    sub_21850();
    v0 = sub_21AD0();
    if (!v1)
    {
      atomic_store(v0, &qword_3CC38);
    }
  }
}

void sub_19D30()
{
  if (!qword_3CC40)
  {
    sub_1463C(255, &qword_3C5C8, FIUIFormattingManager_ptr);
    v0 = sub_21AD0();
    if (!v1)
    {
      atomic_store(v0, &qword_3CC40);
    }
  }
}

uint64_t sub_19DB4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_21C20();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_140C4(&qword_3C920, &qword_27170);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_14DB4(v2, &v17 - v11, &qword_3C920, &qword_27170);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_21850();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_220A0();
    v16 = sub_21CD0();
    sub_21860();

    sub_21C10();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_19FB4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_140C4(&qword_3CC80, &qword_27688);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v37 - v6;
  v8 = sub_140C4(&qword_3CC88, &qword_27690);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v37 - v10;
  *v7 = sub_21C70();
  *(v7 + 1) = 0x4014000000000000;
  v7[16] = 0;
  v12 = sub_140C4(&qword_3CC90, &unk_27698);
  sub_1A234(v2, &v7[*(v12 + 44)]);
  sub_140C4(&qword_3C650, &qword_26EE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26DA0;
  v14 = sub_21D20();
  *(inited + 32) = v14;
  v15 = sub_21D40();
  *(inited + 33) = v15;
  v16 = sub_21D30();
  sub_21D30();
  if (sub_21D30() != v14)
  {
    v16 = sub_21D30();
  }

  sub_21D30();
  if (sub_21D30() != v15)
  {
    v16 = sub_21D30();
  }

  sub_21AC0();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_14804(v7, v11, &qword_3CC80, &qword_27688);
  v25 = &v11[*(v8 + 36)];
  *v25 = v16;
  *(v25 + 1) = v18;
  *(v25 + 2) = v20;
  *(v25 + 3) = v22;
  *(v25 + 4) = v24;
  v25[40] = 0;
  v26 = sub_21D10();
  sub_21AC0();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  sub_14804(v11, a1, &qword_3CC88, &qword_27690);
  result = sub_140C4(&qword_3CC98, &qword_276A8);
  v36 = a1 + *(result + 36);
  *v36 = v26;
  *(v36 + 8) = v28;
  *(v36 + 16) = v30;
  *(v36 + 24) = v32;
  *(v36 + 32) = v34;
  *(v36 + 40) = 0;
  return result;
}

uint64_t sub_1A234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v3 = type metadata accessor for AdvancedChangeGoalView();
  v78 = *(v3 - 1);
  v4 = *(v78 + 64);
  __chkstk_darwin(v3);
  v79 = v5;
  KeyPath = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_140C4(&qword_3CCA0, &qword_276B0);
  v82 = *(v83 - 8);
  v6 = *(v82 + 64);
  v7 = __chkstk_darwin(v83);
  v81 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v87 = &v72 - v9;
  v10 = sub_21C20();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_140C4(&qword_3CCA8, qword_276B8);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15);
  v86 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = (&v72 - v19);
  v85 = sub_16C64(*(a1 + v3[8]));
  v21 = type metadata accessor for ActivityDailyGoalChartView();
  v22 = v21[5];
  v88 = v20;
  sub_19DB4(v20 + v22);
  v23 = a1 + v3[5];
  v24 = *v23;
  if (*(v23 + 8) == 1)
  {
    v25 = v24;
  }

  else
  {

    sub_220A0();
    v26 = sub_21CD0();
    sub_21860();

    sub_21C10();
    swift_getAtKeyPath();
    sub_1B48C(v24, 0);
    (*(v11 + 8))(v14, v10);
    v25 = v94;
  }

  v27 = v3;
  v28 = *(a1 + v3[6] + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21A90();

  sub_1AC34(v94);
  v30 = v29;

  v31 = v88;
  *v88 = v85;
  *(v31 + v21[6]) = v25;
  *(v31 + v21[7]) = v30;
  v32 = sub_21CF0();
  v33 = v31 + *(v15 + 36);
  *v33 = v32;
  *(v33 + 8) = xmmword_275D0;
  *(v33 + 24) = xmmword_275E0;
  v33[40] = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21A90();

  if (v94 >> 62)
  {
    v34 = sub_22140();

    if (v34 < 0)
    {
      __break(1u);
      return result;
    }
  }

  else
  {
    v34 = *(&dword_10 + (v94 & 0xFFFFFFFFFFFFFF8));
  }

  v94 = 0;
  v95 = v34;
  swift_getKeyPath();
  v35 = KeyPath;
  sub_1B4A0(a1, KeyPath);
  v36 = (*(v78 + 80) + 16) & ~*(v78 + 80);
  v37 = swift_allocObject();
  sub_1B63C(v35, v37 + v36);
  sub_140C4(&qword_3CCB0, &qword_27740);
  type metadata accessor for ScheduleDayRowView();
  sub_1B720();
  sub_1B800(&qword_3CCC8, type metadata accessor for ScheduleDayRowView);
  sub_21FB0();
  if (*(a1 + v27[9]) == 1)
  {
    sub_1463C(0, &qword_3C6E0, &off_34A50);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v39 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v40 = sub_22030();
    v41 = sub_22030();
    v42 = [v39 localizedStringForKey:v40 value:0 table:v41];

    v43 = sub_22050();
    v45 = v44;

    v94 = v43;
    v95 = v45;
    sub_1449C();
    v79 = sub_21E00();
    v78 = v46;
    LOBYTE(v39) = v47;
    v77 = v48;
    LOBYTE(v45) = sub_21CF0();
    LOBYTE(v94) = v39 & 1;
    LOBYTE(v89) = 1;
    v85 = v39 & 1;
    v49 = 1;
    v50 = sub_21C80();
    v76 = sub_21DA0();
    KeyPath = swift_getKeyPath();
    v74 = v45;
    v51 = v50 << 32;
    v75 = 256;
  }

  else
  {
    v79 = 0;
    v78 = 0;
    v77 = 0;
    KeyPath = 0;
    v76 = 0;
    v75 = 0;
    v49 = 0;
    v51 = 0;
    v74 = 0;
    v85 = 0;
  }

  v52 = v86;
  sub_14DB4(v88, v86, &qword_3CCA8, qword_276B8);
  v53 = v82;
  v54 = *(v82 + 16);
  v55 = v81;
  v56 = v83;
  v54(v81, v87, v83);
  v57 = v51 | v49;
  v73 = v57;
  v58 = v52;
  v59 = v80;
  sub_14DB4(v58, v80, &qword_3CCA8, qword_276B8);
  v60 = sub_140C4(&qword_3CCD0, &qword_27748);
  v54((v59 + *(v60 + 48)), v55, v56);
  v61 = v59 + *(v60 + 64);
  v62 = v79;
  *&v89 = v79;
  v63 = v78;
  *(&v89 + 1) = v78;
  *&v90 = v85;
  v64 = v77;
  *(&v90 + 1) = v77;
  v65 = v74;
  *v91 = v74;
  memset(&v91[8], 0, 32);
  *&v91[40] = v57;
  *&v92 = KeyPath;
  v66 = v76;
  *(&v92 + 1) = v76;
  LOWORD(v57) = v75;
  v93 = v75;
  *(v61 + 96) = v75;
  v67 = v90;
  *v61 = v89;
  *(v61 + 16) = v67;
  v68 = *&v91[16];
  *(v61 + 32) = *v91;
  *(v61 + 48) = v68;
  v69 = v92;
  *(v61 + 64) = *&v91[32];
  *(v61 + 80) = v69;
  sub_14DB4(&v89, &v94, &qword_3CCD8, &qword_27750);
  v70 = *(v53 + 8);
  v70(v87, v56);
  sub_1486C(v88, &qword_3CCA8, qword_276B8);
  v94 = v62;
  v95 = v63;
  v96 = v85;
  v97 = v64;
  v99 = 0u;
  v100 = 0u;
  v98 = v65;
  v101 = v73;
  v102 = KeyPath;
  v103 = v66;
  v104 = v57;
  sub_1486C(&v94, &qword_3CCD8, &qword_27750);
  v70(v55, v56);
  return sub_1486C(v86, &qword_3CCA8, qword_276B8);
}

void sub_1AC34(unint64_t a1)
{
  v59 = sub_140C4(&qword_3C920, &qword_27170);
  v2 = *(*(v59 - 8) + 64);
  __chkstk_darwin(v59);
  v4 = (&v50 - v3);
  v5 = sub_21850();
  v6 = *(v5 - 8);
  v7 = v6[8];
  __chkstk_darwin(v5);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_21C20();
  v10 = *(v61 - 8);
  v11 = v10[8];
  __chkstk_darwin(v61);
  v60 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
LABEL_36:
    v13 = sub_22140();
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (v13)
    {
LABEL_3:
      v54 = v5;
      v14 = type metadata accessor for AdvancedChangeGoalView();
      v15 = a1;
      v16 = 0;
      v17 = v62 + *(v14 + 20);
      v57 = *v17;
      v58 = a1 & 0xC000000000000001;
      v18 = (v10 + 1);
      v50 = a1 & 0xFFFFFFFFFFFFFF8;
      v51 = (v6 + 4);
      a1 = (v6 + 1);
      v56 = *(v17 + 8);
      v10 = &selRef_saveObject_withCompletion_;
      v55 = v15;
      v63 = v4;
      v52 = v13;
      v53 = v9;
      v19 = &_swiftEmptyArrayStorage;
      while (1)
      {
        if (v58)
        {
          v20 = sub_22110();
          v21 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            goto LABEL_31;
          }
        }

        else
        {
          if (v16 >= *(v50 + 16))
          {
            goto LABEL_35;
          }

          v20 = *(v15 + 8 * v16 + 32);
          v21 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
LABEL_33:
            __break(1u);
LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
            goto LABEL_36;
          }
        }

        v64 = v21;
        v6 = *&v20[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goal];
        v65 = v20;
        v22 = *&v20[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goalType];
        if (v56)
        {
          v23 = v57;
          v66 = v57;
          v24 = v6;
          sub_1B8F8(v23, 1);
        }

        else
        {
          v25 = v6;
          v26 = v19;
          v27 = v10;
          v28 = a1;
          v29 = v18;
          v30 = v57;
          sub_1B8F8(v57, 0);
          sub_220A0();
          v31 = sub_21CD0();
          sub_21860();

          v32 = v60;
          sub_21C10();
          swift_getAtKeyPath();
          v33 = v30;
          v18 = v29;
          a1 = v28;
          v10 = v27;
          v19 = v26;
          v4 = v63;
          sub_1B48C(v33, 0);
          (*v18)(v32, v61);
        }

        v34 = v66;
        v35 = [v66 v10[113]];

        if (!v35)
        {
          __break(1u);
          return;
        }

        v36 = [v35 v10[113]];

        v37 = &selRef_minuteUnit;
        if ((v22 - 1) < 2)
        {
          goto LABEL_17;
        }

        if (v22)
        {
          break;
        }

        v37 = &selRef_userActiveEnergyBurnedUnit;
        v38 = v36;
LABEL_19:
        v9 = [v38 *v37];

        [v6 doubleValueForUnit:v9];
        v40 = v39;
        v5 = *&v39;

        if ((v5 & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_32;
        }

        if (v40 <= -9.22337204e18)
        {
          goto LABEL_33;
        }

        if (v40 >= 9.22337204e18)
        {
          goto LABEL_34;
        }

        sub_14DB4(v62, v4, &qword_3C920, &qword_27170);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v42 = v53;
          v41 = v54;
          (*v51)(v53, v4, v54);
        }

        else
        {
          v43 = *v4;
          sub_220A0();
          v44 = sub_21CD0();
          sub_21860();

          v45 = v60;
          sub_21C10();
          v42 = v53;
          swift_getAtKeyPath();

          (*v18)(v45, v61);
          v41 = v54;
        }

        v6 = sub_193F4(v65[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_day]);
        v47 = v46;
        (*a1)(v42, v41);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_1B904(0, *(v19 + 2) + 1, 1, v19);
        }

        v5 = *(v19 + 2);
        v48 = *(v19 + 3);
        v9 = (v5 + 1);
        if (v5 >= v48 >> 1)
        {
          v19 = sub_1B904((v48 > 1), v5 + 1, 1, v19);
        }

        *(v19 + 2) = v9;
        v49 = &v19[40 * v5];
        *(v49 + 4) = v6;
        *(v49 + 5) = v47;
        *(v49 + 6) = v40;
        *(v49 + 7) = v40;
        v49[64] = 0;
        ++v16;
        v4 = v63;
        v15 = v55;
        if (v64 == v52)
        {
          return;
        }
      }

      v37 = &selRef_countUnit;
LABEL_17:
      v38 = objc_opt_self();
      goto LABEL_19;
    }
  }
}

uint64_t sub_1B278@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_21C20();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  sub_19DB4(a3);
  v12 = type metadata accessor for AdvancedChangeGoalView();
  v13 = a2 + *(v12 + 20);
  v14 = *v13;
  if (*(v13 + 8) == 1)
  {
    v15 = v14;
  }

  else
  {

    sub_220A0();
    v16 = sub_21CD0();
    sub_21860();

    sub_21C10();
    swift_getAtKeyPath();
    sub_1B48C(v14, 0);
    (*(v7 + 8))(v10, v6);
    v15 = v23[1];
  }

  v17 = *(a2 + *(v12 + 24) + 8);
  v18 = type metadata accessor for ScheduleDayRowView();
  *(a3 + v18[5]) = v15;
  *(a3 + v18[6]) = v11;
  v19 = (a3 + v18[7]);
  type metadata accessor for GoalDaysModel();
  sub_1B800(&unk_3C5D8, type metadata accessor for GoalDaysModel);
  v20 = v17;
  result = sub_21B10();
  *v19 = result;
  v19[1] = v22;
  return result;
}

void sub_1B48C(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1B4A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdvancedChangeGoalView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B504()
{
  v1 = type metadata accessor for AdvancedChangeGoalView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  sub_140C4(&qword_3C920, &qword_27170);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_21850();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  sub_1B48C(*(v5 + *(v1 + 20)), *(v5 + *(v1 + 20) + 8));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B63C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdvancedChangeGoalView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B6A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AdvancedChangeGoalView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1B278(a1, v6, a2);
}

unint64_t sub_1B720()
{
  result = qword_3CCB8;
  if (!qword_3CCB8)
  {
    sub_141A0(&qword_3CCB0, &qword_27740);
    sub_1B7AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CCB8);
  }

  return result;
}

unint64_t sub_1B7AC()
{
  result = qword_3CCC0;
  if (!qword_3CCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CCC0);
  }

  return result;
}

uint64_t sub_1B800(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B848@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21B90();
  *a1 = result;
  return result;
}

uint64_t sub_1B874@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21B90();
  *a1 = result;
  return result;
}

uint64_t sub_1B8A0(uint64_t *a1)
{
  v1 = *a1;

  return sub_21BA0();
}

uint64_t sub_1B8CC(uint64_t *a1)
{
  v1 = *a1;

  return sub_21BA0();
}

id sub_1B8F8(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

char *sub_1B904(char *result, int64_t a2, char a3, char *a4)
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
    sub_140C4(&qword_3CCE0, &qword_27788);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1BA98(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_141A0(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BB1C()
{
  result = qword_3CCF8[0];
  if (!qword_3CCF8[0])
  {
    sub_141A0(&qword_3CC80, &qword_27688);
    result = swift_getWitnessTable();
    atomic_store(result, qword_3CCF8);
  }

  return result;
}

void sub_1BB88(uint64_t a1)
{
  sub_1BF80();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      sub_1BFD0();
      if (v5 <= 0x3F)
      {
        sub_1C034();
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1BC40(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
    }

    v17 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void *sub_1BD90(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v18 = *(v5 + 56);
        v19 = (result + v8 + 16) & ~v8;

        return v18(v19);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *result = a2 & 0x7FFFFFFF;
        result[1] = 0;
      }

      else
      {
        *result = a2 - 1;
      }

      return result;
    }
  }

  if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

unint64_t sub_1BF80()
{
  result = qword_3CD80;
  if (!qword_3CD80)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_3CD80);
  }

  return result;
}

void sub_1BFD0()
{
  if (!qword_3CD88)
  {
    sub_141A0(&qword_3C7A0, &qword_26FB0);
    v0 = sub_21F70();
    if (!v1)
    {
      atomic_store(v0, &qword_3CD88);
    }
  }
}

void sub_1C034()
{
  if (!qword_3CD90)
  {
    v0 = sub_21F70();
    if (!v1)
    {
      atomic_store(v0, &qword_3CD90);
    }
  }
}

uint64_t sub_1C0C8(uint64_t a1)
{
  v4 = *(v1 + *(a1 + 40));
  sub_140C4(&qword_3CDA0, &qword_27848);
  sub_21F50();
  return v3;
}

uint64_t sub_1C11C(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + *(a2 + 40));
  sub_140C4(&qword_3CDA0, &qword_27848);
  return sub_21F60();
}

uint64_t sub_1C174(uint64_t a1)
{
  v4 = *(v1 + *(a1 + 44));
  sub_140C4(&qword_3CD98, &qword_27840);
  sub_21F50();
  return v3;
}

uint64_t sub_1C1C8(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + *(a2 + 44));
  sub_140C4(&qword_3CD98, &qword_27840);
  return sub_21F60();
}

uint64_t sub_1C220@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v49 = a2;
  v3 = *(a1 - 8);
  v39 = *(v3 + 64);
  v4 = __chkstk_darwin(a1);
  v46 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = &v34 - v7;
  v9 = *(v6 + 24);
  v10 = v6;
  v11 = *(v6 + 16);
  v12 = sub_21F90();
  v44 = v12;
  v48 = *(v12 - 8);
  v13 = *(v48 + 64);
  __chkstk_darwin(v12);
  v40 = &v34 - v14;
  WitnessTable = swift_getWitnessTable();
  v53 = v12;
  v54 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v43 = *(OpaqueTypeMetadata2 - 8);
  v15 = *(v43 + 64);
  v16 = __chkstk_darwin(OpaqueTypeMetadata2);
  v41 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v42 = &v34 - v18;
  v50 = v11;
  v51 = v9;
  v38 = v2;
  v52 = v2;
  v36 = v11;
  v35 = v9;
  sub_21F80();
  v37 = *(v3 + 16);
  v37(v8, v2, v10);
  v19 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v11;
  *(v20 + 24) = v9;
  v21 = *(v3 + 32);
  v21(v20 + v19, v8, v10);
  v22 = v46;
  v37(v46, v38, v10);
  v23 = swift_allocObject();
  v24 = v35;
  *(v23 + 16) = v36;
  *(v23 + 24) = v24;
  v21(v23 + v19, v22, v10);
  v25 = v40;
  v26 = v41;
  v27 = v44;
  sub_21EA0();

  (*(v48 + 8))(v25, v27);
  v29 = v42;
  v28 = v43;
  v30 = *(v43 + 16);
  v31 = OpaqueTypeMetadata2;
  v30(v42, v26, OpaqueTypeMetadata2);
  v32 = *(v28 + 8);
  v32(v26, v31);
  v30(v49, v29, v31);
  return (v32)(v29, v31);
}

uint64_t sub_1C680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ScheduleDayRowButton();
  v11 = *(v6 + 16);
  v11(v9, a1 + *(v10 + 36), a2);
  v11(a3, v9, a2);
  return (*(v6 + 8))(v9, a2);
}

void sub_1C78C()
{
  v0 = type metadata accessor for ScheduleDayRowButton();
  v1 = sub_1C0C8(v0);
  [v1 invalidate];
}

uint64_t sub_1C7E4(char a1)
{
  v2 = type metadata accessor for ScheduleDayRowButton();
  if (a1)
  {
    return sub_1C854(v2);
  }

  v4 = v2;
  v5 = sub_1C0C8(v2);
  [v5 invalidate];

  return sub_1C1C8(1, v4);
}

uint64_t sub_1C854(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1);
  v6 = &aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (v1 + *(v7 + 52));
  v10 = *v8;
  v9 = v8[1];
  aBlock = *v8;
  v21 = v9;

  sub_140C4(&qword_3CD98, &qword_27840);
  result = sub_21F50();
  if (__OFADD__(v29, 1))
  {
    __break(1u);
  }

  else
  {
    v27 = v10;
    v28 = v9;
    v26 = v29 + 1;
    sub_21F60();

    v13 = *(v1 + 8);
    (*v2)(v12);
    v14 = fmax(0.5 / sub_1C174(a1), 0.01);
    v15 = objc_opt_self();
    (*(v4 + 16))(&aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
    v16 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = *(a1 + 16);
    (*(v4 + 32))(v17 + v16, v6, a1);
    v24 = sub_1CD78;
    v25 = v17;
    aBlock = _NSConcreteStackBlock;
    v21 = 1107296256;
    v22 = sub_1CAD4;
    v23 = &unk_35ED8;
    v18 = _Block_copy(&aBlock);

    v19 = [v15 scheduledTimerWithTimeInterval:0 repeats:v18 block:v14];
    _Block_release(v18);
    return sub_1C11C(v19, a1);
  }

  return result;
}

void sub_1CAD4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_1CB50()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(*(type metadata accessor for ScheduleDayRowButton() - 8) + 80);

  sub_1C78C();
}

uint64_t sub_1CBD4(char a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(*(type metadata accessor for ScheduleDayRowButton() - 8) + 80);

  return sub_1C7E4(a1);
}

uint64_t sub_1CC60()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = (type metadata accessor for ScheduleDayRowButton() - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(*v3 + 64);
  v7 = *(v0 + v5 + 8);

  (*(*(v2 - 8) + 8))(v0 + v5 + v3[11], v2);
  v8 = v0 + v5 + v3[12];

  v9 = *(v8 + 8);

  v10 = *(v0 + v5 + v3[13] + 8);

  return _swift_deallocObject(v0, v5 + v6, v4 | 7);
}

uint64_t sub_1CD78()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(*(type metadata accessor for ScheduleDayRowButton() - 8) + 80);
  return sub_1C854();
}

uint64_t sub_1CDD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1CE20(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_21F90();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

__n128 sub_1CE9C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1CEB0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1CEF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1CF58@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1CF78(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21850();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1D038(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_21850();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ActivityDailyGoalChartView()
{
  result = qword_3CE00;
  if (!qword_3CE00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D128()
{
  sub_21850();
  if (v0 <= 0x3F)
  {
    sub_15B7C();
    if (v1 <= 0x3F)
    {
      sub_1D1D4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D1D4()
{
  if (!qword_3CE10)
  {
    v0 = sub_22090();
    if (!v1)
    {
      atomic_store(v0, &qword_3CE10);
    }
  }
}

uint64_t sub_1D240(uint64_t a1)
{
  v2 = type metadata accessor for ActivityDailyGoalChartView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v8[1] = *(a1 + *(__chkstk_darwin(v2 - 8) + 36));
  sub_208C4(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_20A30(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);

  sub_140C4(&unk_3CAB0, qword_27440);
  sub_140C4(&qword_3CE70, &qword_27988);
  sub_14D6C(&qword_3CF38, &unk_3CAB0, qword_27440);
  sub_202A8();
  sub_20B14();
  return sub_21FA0();
}

uint64_t sub_1D3F0@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v108 = a3;
  v107 = sub_140C4(&qword_3CF48, &qword_27A18);
  v5 = *(*(v107 - 8) + 64);
  __chkstk_darwin(v107);
  v106 = &v89 - v6;
  v7 = sub_140C4(&qword_3CF50, &qword_27A20);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v96 = &v89 - v9;
  v10 = sub_140C4(&qword_3CF58, &qword_27A28);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v112 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v111 = &v89 - v14;
  v98 = sub_21A20();
  v95 = *(v98 - 8);
  v15 = *(v95 + 64);
  __chkstk_darwin(v98);
  v94 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_140C4(&qword_3CEA8, &qword_279A8);
  v99 = *(v101 - 8);
  v17 = *(v99 + 64);
  __chkstk_darwin(v101);
  v97 = &v89 - v18;
  v105 = sub_140C4(&qword_3CF60, &qword_27A30);
  v104 = *(v105 - 8);
  v19 = *(v104 + 64);
  v20 = __chkstk_darwin(v105);
  v102 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v100 = &v89 - v22;
  v23 = sub_21B70();
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v26 = &v89 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_140C4(&qword_3CE88, &qword_27998);
  v91 = *(v92 - 8);
  v27 = *(v91 + 64);
  __chkstk_darwin(v92);
  v29 = &v89 - v28;
  v30 = sub_140C4(&qword_3CF68, &qword_27A38);
  v109 = *(v30 - 8);
  v110 = v30;
  v31 = *(v109 + 64);
  __chkstk_darwin(v30);
  v90 = &v89 - v32;
  v33 = sub_140C4(&unk_3CF70, &qword_27A40);
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33 - 8);
  v36 = &v89 - v35;
  v37 = sub_219C0();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  __chkstk_darwin(v37);
  v41 = &v89 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_140C4(&qword_3CE80, &qword_27990);
  v43 = *(*(v42 - 8) + 64);
  v44 = __chkstk_darwin(v42 - 8);
  v93 = &v89 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v47 = &v89 - v46;
  v48 = a1[1];
  v121 = *a1;
  v122 = v48;
  v123 = *(a1 + 32);
  sub_1E038(&v121, v36);
  v49 = (*(v38 + 48))(v36, 1, v37);
  v103 = a2;
  v113 = v47;
  if (v49 == 1)
  {
    sub_1486C(v36, &unk_3CF70, &qword_27A40);
    v50 = 1;
    v52 = v109;
    v51 = v110;
  }

  else
  {
    v53 = *(v38 + 32);
    v89 = v41;
    v53(v41, v36, v37);
    v54 = *(v23 + 20);
    v55 = enum case for RoundedCornerStyle.continuous(_:);
    v56 = sub_21C60();
    (*(*(v56 - 8) + 104))(&v26[v54], v55, v56);
    __asm { FMOV            V0.2D, #5.0 }

    *v26 = _Q0;
    v62 = sub_207A8(&qword_3CE98, &type metadata accessor for RoundedRectangle);
    sub_218B0();
    sub_20D58(v26);
    v63 = v122;
    v64 = *a2;
    v65 = sub_21F10();
    v66 = 1.0;
    if (v63 < *(&v63 + 1))
    {
      v66 = 0.5;
    }

    v114 = v65;
    *&v115 = v66;
    sub_140C4(&qword_3CE90, &qword_279A0);
    *&v118 = v37;
    *(&v118 + 1) = v23;
    v119 = &protocol witness table for BarMark;
    v120 = v62;
    swift_getOpaqueTypeConformance2();
    v47 = v113;
    sub_14D6C(&qword_3CEA0, &qword_3CE90, &qword_279A0);
    v67 = v90;
    v68 = v92;
    sub_218A0();

    (*(v91 + 8))(v29, v68);
    (*(v38 + 8))(v89, v37);
    v70 = v109;
    v69 = v110;
    (*(v109 + 32))(v47, v67, v110);
    v50 = 0;
    v51 = v69;
    v52 = v70;
  }

  (*(v52 + 56))(v47, v50, 1, v51);
  sub_21C50();
  v71 = v121;
  v118 = v121;
  swift_bridgeObjectRetain_n();
  sub_21930();

  sub_20B68(&v121);
  sub_21C50();
  v118 = v71;
  sub_21930();

  sub_20B68(&v121);
  result = sub_21C50();
  if (__OFADD__(*(&v122 + 1), 1))
  {
    __break(1u);
  }

  else
  {
    *&v118 = *(&v122 + 1) + 1;
    sub_21930();

    v73 = v94;
    sub_21A10();
    v74 = *v103;
    *&v118 = sub_21F00();
    v75 = v97;
    v76 = v98;
    sub_218A0();

    (*(v95 + 8))(v73, v76);
    sub_21AF0();
    v114 = v76;
    v115 = &type metadata for Color;
    v116 = &protocol witness table for RuleMark;
    v117 = &protocol witness table for Color;
    swift_getOpaqueTypeConformance2();
    v77 = v100;
    v78 = v101;
    sub_218C0();
    sub_20BBC(&v118);
    (*(v99 + 8))(v75, v78);
    v79 = v93;
    sub_20C10(v113, v93);
    v80 = v104;
    v81 = *(v104 + 16);
    v82 = v102;
    v83 = v105;
    v81(v102, v77, v105);
    sub_203BC();
    v84 = v106;
    sub_20C10(v79, v106);
    v85 = v107;
    v86 = *(v107 + 48);
    v81((v84 + v86), v82, v83);
    v87 = v108;
    sub_20C80(v84, v108);
    (*(v80 + 32))(v87 + *(v85 + 48), v84 + v86, v83);
    v88 = *(v80 + 8);
    v88(v77, v83);
    sub_20CF0(v113);
    v88(v82, v83);
    return sub_20CF0(v79);
  }

  return result;
}

uint64_t sub_1E038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a1;
  v40 = a2;
  v2 = sub_140C4(&qword_3CF50, &qword_27A20);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v34[1] = v34 - v4;
  v5 = sub_140C4(&qword_3CF58, &qword_27A28);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v34[0] = v34 - v7;
  v8 = sub_217D0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_216F0();
  v38 = *(v13 - 8);
  v39 = v13;
  v14 = *(v38 + 64);
  __chkstk_darwin(v13);
  v16 = v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_21850();
  v36 = *(v17 - 8);
  v37 = v17;
  v18 = *(v36 + 64);
  __chkstk_darwin(v17);
  v20 = v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [objc_opt_self() hk_gregorianCalendar];
  sub_21820();

  sub_140C4(&qword_3C948, &qword_27198);
  v22 = sub_21840();
  v23 = *(v22 - 8);
  v24 = *(v23 + 72);
  v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_26DB0;
  (*(v23 + 104))(v26 + v25, enum case for Calendar.Component.weekday(_:), v22);
  sub_16928(v26);
  swift_setDeallocating();
  (*(v23 + 8))(v26 + v25, v22);
  v27 = v35;
  swift_deallocClassInstance();
  sub_217C0();
  sub_217F0();

  (*(v9 + 8))(v12, v8);
  v28 = *(v27 + 16);
  if (v28 < 1 || (*(v27 + 32) & 1) != 0)
  {
    v29 = 1;
    v30 = v40;
  }

  else
  {
    sub_21C50();
    v31 = *(v27 + 8);
    v41 = *v27;
    v42 = v31;

    sub_21930();

    sub_20B68(v27);
    sub_21C50();
    v41 = v28;
    sub_21930();

    v30 = v40;
    sub_219B0();
    v29 = 0;
  }

  (*(v38 + 8))(v16, v39);
  (*(v36 + 8))(v20, v37);
  v32 = sub_219C0();
  return (*(*(v32 - 8) + 56))(v30, v29, 1, v32);
}

uint64_t sub_1E594()
{
  v0 = sub_21910();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_21950();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_218E0();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  sub_218D0();
  sub_21940();
  sub_21900();
  sub_140C4(&qword_3CF20, &qword_27A00);
  sub_207F0();
  return sub_21A30();
}

uint64_t sub_1E6FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = sub_219E0();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_21A00();
  v53 = *(v5 - 8);
  v54 = v5;
  v6 = *(v53 + 64);
  v7 = __chkstk_darwin(v5);
  v50 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v44 - v9;
  v11 = sub_21890();
  v51 = *(v11 - 8);
  v52 = v11;
  v12 = *(v51 + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v49 = &v44 - v16;
  v17 = sub_21970();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v19 = sub_21990();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v21 = sub_140C4(&qword_3CEF0, &qword_279C8);
  v22 = *(v21 - 8);
  v23 = v22;
  v46 = v21;
  v47 = v22;
  v24 = *(v22 + 64);
  v25 = __chkstk_darwin(v21);
  v27 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v44 - v28;
  v56 = a1;
  sub_21980();
  sub_21960();
  sub_140C4(&qword_3CF10, &unk_279E0);
  sub_206A0();
  sub_21920();
  v60 = 0;
  v58 = 0u;
  v59 = 0u;
  v30 = v49;
  sub_21880();
  sub_219D0();
  sub_219F0();
  v31 = *(v23 + 16);
  v48 = v27;
  v31(v27, v29, v21);
  v57[0] = v27;
  v32 = v51;
  v33 = *(v51 + 16);
  v45 = v15;
  v34 = v52;
  v33(v15, v30, v52);
  v57[1] = v15;
  v36 = v53;
  v35 = v54;
  v37 = v50;
  (*(v53 + 16))(v50, v10, v54);
  v57[2] = v37;
  sub_1F0F0(v57, v55);
  v38 = *(v36 + 8);
  v38(v10, v35);
  v39 = *(v32 + 8);
  v39(v30, v34);
  v40 = *(v47 + 8);
  v41 = v29;
  v42 = v46;
  v40(v41, v46);
  v38(v37, v35);
  v39(v45, v34);
  return (v40)(v48, v42);
}

uint64_t sub_1EBE8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_140C4(&qword_3C738, &unk_279F0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v44 = &v35 - v7;
  v8 = sub_21B40();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = __chkstk_darwin(v8);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v35 - v14;
  v46 = sub_140C4(&qword_3C740, &qword_26F60);
  v16 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46);
  v45 = &v35 - v17;
  v18 = sub_140C4(&qword_3C750, &qword_26F70);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v43 = &v35 - v21;
  sub_21A40();
  if (!v48)
  {
    v34 = 1;
    return (*(v19 + 56))(a1, v34, 1, v18);
  }

  v42 = v19;
  sub_1449C();
  v22 = sub_21E00();
  v39 = v23;
  v40 = v22;
  v47 = v22;
  v48 = v23;
  v38 = v24 & 1;
  v49 = v24 & 1;
  v41 = v25;
  v50 = v25;
  v26 = v9[13];
  v26(v15, enum case for DynamicTypeSize.xSmall(_:), v8);
  v26(v13, enum case for DynamicTypeSize.xxxLarge(_:), v8);
  sub_207A8(&qword_3C758, &type metadata accessor for DynamicTypeSize);
  result = sub_22010();
  if (result)
  {
    v37 = a1;
    v28 = v9[4];
    v29 = v44;
    v28(v44, v15, v8);
    v28((v29 + *(v2 + 48)), v13, v8);
    sub_14DB4(v29, v6, &qword_3C738, &unk_279F0);
    v30 = *(v2 + 48);
    v31 = v45;
    v28(v45, v6, v8);
    v36 = v18;
    v32 = v9[1];
    v32(&v6[v30], v8);
    sub_14804(v29, v6, &qword_3C738, &unk_279F0);
    v28((v31 + *(v46 + 36)), &v6[*(v2 + 48)], v8);
    a1 = v37;
    v32(v6, v8);
    v18 = v36;
    sub_14D6C(&qword_3C760, &qword_3C740, &qword_26F60);
    v33 = v43;
    sub_21E70();
    sub_1486C(v31, &qword_3C740, &qword_26F60);
    sub_144F0(v40, v39, v38);

    v19 = v42;
    (*(v42 + 32))(a1, v33, v18);
    v34 = 0;
    return (*(v19 + 56))(a1, v34, 1, v18);
  }

  __break(1u);
  return result;
}

uint64_t sub_1F0F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_140C4(&qword_3CF30, &unk_27A08);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = &v19 - v7;
  v9 = sub_140C4(&qword_3CEF0, &qword_279C8);
  sub_14D6C(&qword_3CEE8, &qword_3CEF0, &qword_279C8);
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, *a1, v9);
  v11 = sub_21890();
  v12 = *(v5 + 56);
  v20 = v12;
  v13 = *(v11 - 8);
  (*(v13 + 16))(&v8[v12], a1[1], v11);
  v14 = sub_21A00();
  v15 = *(v5 + 72);
  v16 = a1[2];
  v17 = *(v14 - 8);
  (*(v17 + 16))(&v8[v15], v16, v14);
  (*(v10 + 32))(a2, v8, v9);
  (*(v13 + 32))(a2 + *(v5 + 56), &v8[v20], v11);
  return (*(v17 + 32))(a2 + *(v5 + 72), &v8[v15], v14);
}

uint64_t sub_1F330()
{
  v0 = sub_21950();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_218E0();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_21910();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  sub_218F0();
  sub_218D0();
  sub_21940();
  sub_140C4(&qword_3CED8, &qword_279C0);
  sub_2055C();
  return sub_21A30();
}

uint64_t sub_1F4A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v49 = sub_140C4(&qword_3CF08, &qword_279D8);
  v3 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49);
  v5 = &v43 - v4;
  v6 = sub_21890();
  v46 = *(v6 - 8);
  v7 = *(v46 + 64);
  __chkstk_darwin(v6);
  v44 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_140C4(&qword_3CF00, &qword_279D0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v43 - v14;
  v16 = sub_21970();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v18 = sub_21990();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v20 = sub_140C4(&qword_3CEF0, &qword_279C8);
  v47 = *(v20 - 8);
  v48 = v20;
  v21 = *(v47 + 64);
  v22 = __chkstk_darwin(v20);
  v24 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v43 - v25;
  v51 = a1;
  sub_21980();
  sub_21960();
  sub_140C4(&qword_3CF10, &unk_279E0);
  sub_206A0();
  v27 = 1;
  sub_21920();
  v28 = sub_21A50();
  v29 = v46;
  if (!v28)
  {
    sub_21AF0();
    v55 = v52;
    v56 = v53;
    v57 = v54;
    v30 = v26;
    v31 = v44;
    sub_21880();
    v32 = v31;
    v26 = v30;
    (*(v29 + 32))(v15, v32, v6);
    v27 = 0;
  }

  v45 = v26;
  (*(v29 + 56))(v15, v27, 1, v6);
  v33 = v47;
  v34 = v48;
  v35 = *(v47 + 16);
  v35(v24, v26, v48);
  sub_14DB4(v15, v13, &qword_3CF00, &qword_279D0);
  sub_14D6C(&qword_3CEE8, &qword_3CEF0, &qword_279C8);
  v35(v5, v24, v34);
  sub_2061C();
  v36 = v15;
  v37 = v13;
  v38 = v49;
  v39 = *(v49 + 48);
  sub_14DB4(v37, &v5[v39], &qword_3CF00, &qword_279D0);
  v40 = v50;
  (*(v33 + 32))(v50, v5, v34);
  sub_14804(&v5[v39], v40 + *(v38 + 48), &qword_3CF00, &qword_279D0);
  sub_1486C(v36, &qword_3CF00, &qword_279D0);
  v41 = *(v33 + 8);
  v41(v45, v34);
  sub_1486C(v37, &qword_3CF00, &qword_279D0);
  return (v41)(v24, v34);
}

uint64_t sub_1F9E8@<X0>(uint64_t a1@<X8>)
{
  v46 = sub_140C4(&qword_3C738, &unk_279F0);
  v2 = *(*(v46 - 8) + 64);
  v3 = __chkstk_darwin(v46);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v37 - v6;
  v8 = sub_21B40();
  v47 = *(v8 - 8);
  v9 = v47[8];
  v10 = __chkstk_darwin(v8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v37 - v13;
  v15 = sub_140C4(&qword_3C740, &qword_26F60);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = &v37 - v17;
  v48 = sub_140C4(&qword_3C750, &qword_26F70);
  v19 = *(v48 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v48);
  v45 = &v37 - v21;
  sub_21A40();
  if (v50 == 1)
  {
    v22 = 1;
    v23 = v48;
    return (*(v19 + 56))(a1, v22, 1, v23);
  }

  v44 = a1;
  v49 = sub_22150();
  v50 = v24;
  sub_1449C();
  v25 = sub_21E00();
  v41 = v26;
  v42 = v25;
  v49 = v25;
  v50 = v26;
  v40 = v27 & 1;
  v51 = v27 & 1;
  v43 = v28;
  v52 = v28;
  v29 = v47[13];
  v29(v14, enum case for DynamicTypeSize.xSmall(_:), v8);
  v29(v12, enum case for DynamicTypeSize.xxxLarge(_:), v8);
  sub_207A8(&qword_3C758, &type metadata accessor for DynamicTypeSize);
  result = sub_22010();
  if (result)
  {
    v39 = v19;
    v31 = v47;
    v32 = v47[4];
    v32(v7, v14, v8);
    v38 = v15;
    v33 = v46;
    v32(&v7[*(v46 + 48)], v12, v8);
    sub_14DB4(v7, v5, &qword_3C738, &unk_279F0);
    v34 = *(v33 + 48);
    v32(v18, v5, v8);
    v35 = v31[1];
    v35(&v5[v34], v8);
    sub_14804(v7, v5, &qword_3C738, &unk_279F0);
    v32(&v18[*(v38 + 36)], &v5[*(v33 + 48)], v8);
    v35(v5, v8);
    v19 = v39;
    sub_14D6C(&qword_3C760, &qword_3C740, &qword_26F60);
    v36 = v45;
    sub_21E70();
    sub_1486C(v18, &qword_3C740, &qword_26F60);
    sub_144F0(v42, v41, v40);

    a1 = v44;
    v23 = v48;
    (*(v19 + 32))(v44, v36, v48);
    v22 = 0;
    return (*(v19 + 56))(a1, v22, 1, v23);
  }

  __break(1u);
  return result;
}

uint64_t sub_1FF0C@<X0>(uint64_t a1@<X8>)
{
  v16[1] = a1;
  v2 = sub_140C4(&qword_3CE48, &qword_27970);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v16 - v5;
  v16[0] = sub_140C4(&qword_3CE50, &qword_27978);
  v7 = *(v16[0] - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v16[0]);
  v10 = v16 - v9;
  v17 = v1;
  sub_140C4(&qword_3CE58, &qword_27980);
  sub_20224();
  sub_219A0();
  v11 = sub_140C4(&qword_3CEB0, &qword_279B0);
  v12 = sub_14D6C(&qword_3CEB8, &qword_3CE48, &qword_27970);
  v13 = sub_14D6C(&qword_3CEC0, &qword_3CEB0, &qword_279B0);
  sub_21E10();
  (*(v3 + 8))(v6, v2);
  sub_140C4(&qword_3CEC8, &qword_279B8);
  v18 = v2;
  v19 = v11;
  v20 = v12;
  v21 = v13;
  swift_getOpaqueTypeConformance2();
  sub_14D6C(&qword_3CED0, &qword_3CEC8, &qword_279B8);
  v14 = v16[0];
  sub_21E20();
  return (*(v7 + 8))(v10, v14);
}

unint64_t sub_20224()
{
  result = qword_3CE60;
  if (!qword_3CE60)
  {
    sub_141A0(&qword_3CE58, &qword_27980);
    sub_202A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CE60);
  }

  return result;
}

unint64_t sub_202A8()
{
  result = qword_3CE68;
  if (!qword_3CE68)
  {
    sub_141A0(&qword_3CE70, &qword_27988);
    sub_203BC();
    sub_141A0(&qword_3CEA8, &qword_279A8);
    sub_21A20();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CE68);
  }

  return result;
}

unint64_t sub_203BC()
{
  result = qword_3CE78;
  if (!qword_3CE78)
  {
    sub_141A0(&qword_3CE80, &qword_27990);
    sub_141A0(&qword_3CE88, &qword_27998);
    sub_141A0(&qword_3CE90, &qword_279A0);
    sub_219C0();
    sub_21B70();
    sub_207A8(&qword_3CE98, &type metadata accessor for RoundedRectangle);
    swift_getOpaqueTypeConformance2();
    sub_14D6C(&qword_3CEA0, &qword_3CE90, &qword_279A0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CE78);
  }

  return result;
}

unint64_t sub_2055C()
{
  result = qword_3CEE0;
  if (!qword_3CEE0)
  {
    sub_141A0(&qword_3CED8, &qword_279C0);
    sub_14D6C(&qword_3CEE8, &qword_3CEF0, &qword_279C8);
    sub_2061C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CEE0);
  }

  return result;
}

unint64_t sub_2061C()
{
  result = qword_3CEF8;
  if (!qword_3CEF8)
  {
    sub_141A0(&qword_3CF00, &qword_279D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CEF8);
  }

  return result;
}

unint64_t sub_206A0()
{
  result = qword_3CF18;
  if (!qword_3CF18)
  {
    sub_141A0(&qword_3CF10, &unk_279E0);
    sub_141A0(&qword_3C740, &qword_26F60);
    sub_14D6C(&qword_3C760, &qword_3C740, &qword_26F60);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CF18);
  }

  return result;
}

uint64_t sub_207A8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_207F0()
{
  result = qword_3CF28;
  if (!qword_3CF28)
  {
    sub_141A0(&qword_3CF20, &qword_27A00);
    sub_14D6C(&qword_3CEE8, &qword_3CEF0, &qword_279C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CF28);
  }

  return result;
}

uint64_t sub_208C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityDailyGoalChartView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20928()
{
  v1 = (type metadata accessor for ActivityDailyGoalChartView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  v6 = v1[7];
  v7 = sub_21850();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  v8 = *(v0 + v3 + v1[9]);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_20A30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityDailyGoalChartView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20A94@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ActivityDailyGoalChartView() - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_1D3F0(a1, v6, a2);
}

unint64_t sub_20B14()
{
  result = qword_3CF40;
  if (!qword_3CF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CF40);
  }

  return result;
}

uint64_t sub_20C10(uint64_t a1, uint64_t a2)
{
  v4 = sub_140C4(&qword_3CE80, &qword_27990);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C80(uint64_t a1, uint64_t a2)
{
  v4 = sub_140C4(&qword_3CE80, &qword_27990);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CF0(uint64_t a1)
{
  v2 = sub_140C4(&qword_3CE80, &qword_27990);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20D58(uint64_t a1)
{
  v2 = sub_21B70();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20DB4()
{
  sub_141A0(&qword_3CE50, &qword_27978);
  sub_141A0(&qword_3CEC8, &qword_279B8);
  sub_141A0(&qword_3CE48, &qword_27970);
  sub_141A0(&qword_3CEB0, &qword_279B0);
  sub_14D6C(&qword_3CEB8, &qword_3CE48, &qword_27970);
  sub_14D6C(&qword_3CEC0, &qword_3CEB0, &qword_279B0);
  swift_getOpaqueTypeConformance2();
  sub_14D6C(&qword_3CED0, &qword_3CEC8, &qword_279B8);
  return swift_getOpaqueTypeConformance2();
}

void sub_20F34()
{
  dlerror();
  v0 = abort_report_np();
  sub_20F58(v0, v1, v2);
}

void sub_20F58(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_fault_impl(&dword_0, log, OS_LOG_TYPE_FAULT, "[sharing-setup] %{public}@ Failed to complete end to end Cloud sync with error: %{public}@", &v4, 0x16u);
}

void sub_20FE4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Existing move goal lookup failed with error %@", &v2, 0xCu);
}

void sub_210A0(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 134217984;
  v4 = v2;
  _os_log_fault_impl(&dword_0, a2, OS_LOG_TYPE_FAULT, "CHASActivitySetupMetricsCollectionViewController found unexpected presentation context %ld", &v3, 0xCu);
}

void sub_212C8(uint64_t a1)
{
  sub_D748(a1, __stack_chk_guard);
  sub_D704();
  sub_D71C(&dword_0, v1, v2, "Error deleting future goals of type %@: %@");
}

void sub_214B8(uint64_t a1)
{
  sub_D748(a1, __stack_chk_guard);
  sub_D704();
  sub_D71C(&dword_0, v1, v2, "Failed to fetch active sample for type %@ error %@");
}

void sub_21520(uint64_t a1)
{
  sub_D748(a1, __stack_chk_guard);
  sub_D704();
  sub_D71C(&dword_0, v1, v2, "Failed to fetch most recent sample for type %@ error %@");
}

void sub_21588(uint64_t a1)
{
  sub_D748(a1, __stack_chk_guard);
  sub_D704();
  sub_D71C(&dword_0, v1, v2, "Failed to fetch most recent samples for type %@ error %@");
}