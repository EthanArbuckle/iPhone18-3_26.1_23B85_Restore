void nanoLifestylePreferencesDidChange(uint64_t a1, void *a2)
{
  v2 = a2;
  _HKInitializeLogging();
  v3 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Did receive NanoLifestylePreferencesChangedNotification; reloading specifiers", v4, 2u);
  }

  [v2 reloadSpecifiers];
}

void sub_2EEC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  if (!v6)
  {
    v7 = [a3 lastObject];
    _HKInitializeLogging();
    v8 = HKLogActivity;
    v9 = os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v9)
      {
        v15 = 138412290;
        v16 = v7;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "HPRFHealthAppsSettingsController - last move mode sample %@", &v15, 0xCu);
      }

      v10 = +[NSCalendar currentCalendar];
      v11 = [v7 _creationDate];
      v12 = [v10 isDateInToday:v11];

      if (v12)
      {
        *(*(a1 + 40) + 161) = 1;
      }

      v13 = [v7 value];
      if (v13 != &dword_0 + 1)
      {
        if (v13 != &dword_0 + 2)
        {
LABEL_17:
          dispatch_semaphore_signal(*(a1 + 32));

          goto LABEL_18;
        }

        v14 = 1;
LABEL_16:
        *(*(a1 + 40) + 168) = v14;
        goto LABEL_17;
      }
    }

    else if (v9)
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "HPRFHealthAppsSettingsController - no last move mode sample; defaulting Fitness Jr value to off", &v15, 2u);
    }

    v14 = 0;
    goto LABEL_16;
  }

  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
  {
    sub_4420();
  }

  dispatch_semaphore_signal(*(a1 + 32));
LABEL_18:
}

void sub_3208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_3224(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
    {
      sub_44CC();
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_3970(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  _HKInitializeLogging();
  v6 = HKLogActivity;
  if (a2)
  {
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 64);
      *buf = 134217984;
      v23 = v7;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "HPRFHealthAppsSettingsController saved new move mode: %ld", buf, 0xCu);
    }

    *(*(a1 + 32) + 168) = [*(a1 + 40) integerValue];
    *(*(a1 + 32) + 161) = 1;
    v8 = [*(a1 + 48) objectAtIndexedSubscript:0];
    v9 = *(a1 + 64);
    v10 = FIDefaultExerciseGoalQuantityForActivityMoveMode();
    v11 = *(a1 + 64);
    v12 = FIDefaultStandGoalQuantityForActivityMoveMode();
    v13 = *(a1 + 32);
    v14 = *(v13 + 144);
    v15 = *(a1 + 56);
    v16 = *(a1 + 64);
    v18[5] = _NSConcreteStackBlock;
    v18[6] = 3221225472;
    v18[7] = sub_3BC4;
    v18[8] = &unk_84C0;
    v20 = v13;
    v21 = v16;
    v19 = v8;
    v17 = v8;
    FISaveGoalsForNewActivityMoveMode();
  }

  else if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
  {
    sub_4534();
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_3CDC;
  v18[3] = &unk_84E8;
  v18[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v18);
}

void sub_3BC4(void *a1, char a2, void *a3)
{
  v5 = a3;
  _HKInitializeLogging();
  v6 = HKLogActivity;
  if (a2)
  {
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[4];
      v8 = a1[6];
      v12 = 138412546;
      v13 = v7;
      v14 = 2048;
      v15 = v8;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "HPRFHealthAppsSettingsController saved new move goal: %@ with move mode: %ld default exercise/stand goals.", &v12, 0x16u);
    }

    active = FIIsActivePairedDeviceSatellitePaired();
    v10 = a1[5];
    if (active)
    {
      [v10 _triggerCloudSync];
    }

    else
    {
      [v10 _triggerNanoSync];
    }

    v11 = a1[6];
    FIActivityMoveModeAnalyticsSendActivityMoveModeSwitchedInSettings();
  }

  else if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
  {
    sub_459C();
  }
}

void sub_3CFC(id a1, BOOL a2, NSError *a3)
{
  v4 = a3;
  _HKInitializeLogging();
  v5 = HKLogActivity;
  if (a2)
  {
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "HPRFHealthAppsSettingsController successfully forced cloud sync after saving activity move mode on phone", v6, 2u);
    }
  }

  else if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
  {
    sub_4604();
  }
}

void sub_3E10(id a1, BOOL a2, NSError *a3)
{
  v4 = a3;
  _HKInitializeLogging();
  v5 = HKLogActivity;
  if (a2)
  {
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "HPRFHealthAppsSettingsController successfully forced nano sync after saving activity move mode on phone", v6, 2u);
    }
  }

  else if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
  {
    sub_466C();
  }
}

void sub_42D0(id a1)
{
  qword_C7C8 = [NSSet setWithObjects:@"EnableStandReminders", @"ProgressUpdateFrequency", @"EnableGoalCompletions", @"EnableAchievements", @"EnableWeeklySummary", @"EnableProgressUpdates", @"ActivitySharingEnableNotifications", @"EnableRemoteAchievements", @"FirstDayOfFitnessWeek", 0];

  _objc_release_x1();
}

void sub_4374(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}