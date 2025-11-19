SAAlarmObject *__cdecl sub_11C8(id a1, SAAlarmObject *a2)
{
  v2 = a2;
  v3 = [SAAlarmObject alloc];
  v4 = [(SAAlarmObject *)v2 dictionary];

  v5 = [v3 initWithDictionary:v4];

  return v5;
}

void sub_1B94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id location, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  objc_destroyWeak((v45 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose((v46 - 224), 8);
  _Block_object_dispose((v46 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1C0C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C24(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = MTLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543874;
    v16 = WeakRetained;
    v17 = 2114;
    v18 = v5;
    v19 = 2114;
    v20 = v6;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ sleep alarm fetch returned: %{public}@, error: %{public}@", &v15, 0x20u);
  }

  v9 = MTNilify();
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v6;
  v14 = v6;

  dispatch_group_leave(*(a1 + 32));
}

void sub_1D60(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = MTLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543874;
    v16 = WeakRetained;
    v17 = 2114;
    v18 = v5;
    v19 = 2114;
    v20 = v6;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ alarm fetch returned alarms: %{public}@, error: %{public}@", &v15, 0x20u);
  }

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
  v11 = v5;

  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v6;
  v14 = v6;

  dispatch_group_leave(*(a1 + 32));
}

intptr_t sub_1E98(uint64_t a1)
{
  v2 = MTLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v11 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ alarm search completed", buf, 0xCu);
  }

  if (!*(*(*(a1 + 56) + 8) + 40) && !*(*(*(a1 + 64) + 8) + 40))
  {
    if (MTShouldHandleForEucalyptus())
    {
      v4 = *(a1 + 72);
      if (*(*(v4 + 8) + 40))
      {
        v5 = *(a1 + 40);
        v9[0] = _NSConcreteStackBlock;
        v9[1] = 3221225472;
        v9[2] = sub_2030;
        v9[3] = &unk_104D8;
        v9[4] = v4;
        v6 = [v5 na_firstObjectPassingTest:v9];

        if (v6)
        {
          [*(a1 + 32) setSleepAlarm:*(*(*(a1 + 72) + 8) + 40)];
        }
      }
    }

    v7 = [*(a1 + 32) snippetAlarmsFromSourceAlarms:*(*(*(a1 + 80) + 8) + 40) assistantAlarms:*(a1 + 40)];
    [*(a1 + 32) setAlarms:v7];

    [*(a1 + 32) setupSections];
  }

  return dispatch_semaphore_signal(*(a1 + 48));
}

id sub_2030(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(*(*(a1 + 32) + 8) + 40) alarmURL];
  v5 = [v3 isEqual:v4];

  return v5;
}

id sub_214C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_2200;
  v8[3] = &unk_10528;
  v9 = v3;
  v5 = v3;
  v6 = [v4 na_firstObjectPassingTest:v8];

  return v6;
}

id sub_2200(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 identifier];
  v5 = [v3 alarmURL];

  v6 = [v4 isEqual:v5];
  return v6;
}

id sub_25AC(uint64_t a1, void *a2)
{
  v3 = [a2 alarmID];
  v4 = [*(a1 + 32) alarmID];
  v5 = [v3 isEqual:v4];

  return v5;
}

void sub_2BE0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) delegate];
  v5 = *(a1 + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_2CA0;
  v7[3] = &unk_10578;
  v7[4] = v5;
  v8 = v3;
  v6 = v3;
  [v4 siriViewController:v5 openURL:v6 completion:v7];
}

void sub_2CA0(uint64_t a1, char a2)
{
  v4 = MTLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_6E08(a1, a2, v4);
  }
}

void sub_3A14(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (!a3)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_3AD0;
    block[3] = &unk_105D0;
    v7 = v5;
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11 = v7;
    v12 = v8;
    v13 = v9;
    dispatch_async(&_dispatch_main_q, block);
  }
}

char *sub_3AD0(uint64_t a1)
{
  if ([*(a1 + 32) state] == &dword_0 + 1)
  {
    v2 = *(a1 + 40);

    return [v2 handleMarkStaleNotification:0];
  }

  else
  {
    result = [*(a1 + 32) state];
    if (result == &dword_0 + 2)
    {
      v4 = *(a1 + 48);

      return [v4 handleTimerStateChanged];
    }
  }

  return result;
}

void sub_3D44(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) delegate];
  v5 = *(a1 + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_3E04;
  v7[3] = &unk_10578;
  v7[4] = v5;
  v8 = v3;
  v6 = v3;
  [v4 siriViewController:v5 openURL:v6 completion:v7];
}

void sub_3E04(uint64_t a1, char a2)
{
  v4 = MTLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_6E08(a1, a2, v4);
  }
}

void sub_4434(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 delegate];
  [v5 siriViewController:*(a1 + 32) openURL:v4 completion:&stru_10638];
}

uint64_t MTAlarmRepeatDayFromSAAlarmDayOfWeek(unsigned int a1)
{
  if (a1 > 8)
  {
    return 1;
  }

  else
  {
    return qword_9BA8[a1];
  }
}

id SAAlarmFrequencyFromRepeatSchedule(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = v2;
  if (a1)
  {
    v6 = v2;
    MTAlarmRepeatScheduleEnumerateDays();
  }

  else
  {
    v4 = stringForSAAlarmDayOfWeek();
    [v3 addObject:v4];
  }

  return v3;
}

void sub_4610(uint64_t a1, unint64_t a2)
{
  if (a2 <= 6)
  {
    v3 = *(a1 + 32);
    v4 = stringForSAAlarmDayOfWeek();
    [v3 addObject:v4];
  }
}

uint64_t MTValidateAlarmRelativeOffsetMinutes(unint64_t a1, void *a2)
{
  if (a1 < 0x2D1)
  {
    return 1;
  }

  v4 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
  v5 = +[NSTimeZone defaultTimeZone];
  [v4 setTimeZone:v5];

  v6 = +[NSDate date];
  v7 = objc_alloc_init(NSDateComponents);
  [v7 setDay:1];
  v8 = [v4 dateByAddingComponents:v7 toDate:v6 options:0];
  v9 = objc_alloc_init(NSDateComponents);
  [v9 setMinute:a1];
  v10 = [v4 dateByAddingComponents:v9 toDate:v6 options:0];
  v11 = [v8 laterDate:v10];

  v12 = v11 == v10;
  v13 = v11 != v10;
  if (v12)
  {
    [NSString stringWithFormat:@"Relative offset must not be more than one day. Offset: %lu", a1];
    v19 = v14 = a2;
    v20 = NSLocalizedDescriptionKey;
    v21 = v19;
    v15 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v16 = [NSError errorWithDomain:@"com.apple.mobiletimer.assistant" code:1 userInfo:v15];

    if (v14)
    {
      v17 = v16;
      *v14 = v16;
    }
  }

  return v13;
}

BOOL MTValidateAlarmHour(unint64_t a1, void *a2)
{
  if (a1 >= 0x18)
  {
    v4 = [NSString stringWithFormat:@"Hour must be between 0 and 23, inclusive. Hour = %lu", a1];
    v9 = NSLocalizedDescriptionKey;
    v10 = v4;
    v5 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v6 = [NSError errorWithDomain:@"com.apple.mobiletimer.assistant" code:2 userInfo:v5];

    if (a2)
    {
      v7 = v6;
      *a2 = v6;
    }
  }

  return a1 < 0x18;
}

BOOL MTValidateAlarmMinute(unint64_t a1, void *a2)
{
  if (a1 >= 0x3C)
  {
    v4 = [NSString stringWithFormat:@"Minute must be between 0 and 59, inclusive. Minute = %lu", a1];
    v9 = NSLocalizedDescriptionKey;
    v10 = v4;
    v5 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v6 = [NSError errorWithDomain:@"com.apple.mobiletimer.assistant" code:3 userInfo:v5];

    if (a2)
    {
      v7 = v6;
      *a2 = v6;
    }
  }

  return a1 < 0x3C;
}

uint64_t MTValidateAlarmFrequency(void *a1, void *a2)
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = a1;
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v21;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        if (SAAlarmDayOfWeekForString() == 1)
        {
          if ([v3 count] != &dword_0 + 1)
          {
            v14 = [NSString stringWithFormat:@"SAClockAlarmDayNever must be specified alone. Frequency: %@", v3];
            v28 = NSLocalizedDescriptionKey;
            v29 = v14;
            v15 = &v29;
            v16 = &v28;
LABEL_19:
            v17 = [NSDictionary dictionaryWithObjects:v15 forKeys:v16 count:1];
            v12 = [NSError errorWithDomain:@"com.apple.mobiletimer.assistant" code:4 userInfo:v17];

            v13 = 0;
            goto LABEL_20;
          }
        }

        else
        {
          if (SAAlarmDayOfWeekForString() < 2 || SAAlarmDayOfWeekForString() >= 9)
          {
            v14 = [NSString stringWithFormat:@"Frequency contains invalid day: %@. Frequency: %@", v9, v3, v20];
            v26 = NSLocalizedDescriptionKey;
            v27 = v14;
            v15 = &v27;
            v16 = &v26;
            goto LABEL_19;
          }

          v10 = SAAlarmDayOfWeekForString();
          v11 = MTAlarmRepeatDayFromSAAlarmDayOfWeek(v10);
          if ((v11 & v6) != 0)
          {
            v14 = [NSString stringWithFormat:@"Frequency contains %@ multiple times. Frequency: %@", v9, v3, v20];
            v24 = NSLocalizedDescriptionKey;
            v25 = v14;
            v15 = &v25;
            v16 = &v24;
            goto LABEL_19;
          }

          v6 |= v11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v20 objects:v30 count:16];
      v12 = 0;
      v13 = 1;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v12 = 0;
    v13 = 1;
  }

LABEL_20:

  if (a2)
  {
    v18 = v12;
    *a2 = v12;
  }

  return v13;
}

BOOL MTValidateAlarmLabel(void *a1, void *a2)
{
  v3 = [a1 length];
  if (!v3)
  {
    v4 = [NSString stringWithFormat:@"A zero-length label is not allowed"];
    v9 = NSLocalizedDescriptionKey;
    v10 = v4;
    v5 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v6 = [NSError errorWithDomain:@"com.apple.mobiletimer.assistant" code:5 userInfo:v5];

    if (a2)
    {
      v7 = v6;
      *a2 = v6;
    }
  }

  return v3 != 0;
}

void sub_631C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (!a3)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_63CC;
    v7[3] = &unk_106A0;
    v7[4] = *(a1 + 32);
    v8 = v5;
    dispatch_async(&_dispatch_main_q, v7);
  }
}

void sub_63CC(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 48), *(a1 + 40));
  v2 = [*(a1 + 40) state];
  if (v2 == &dword_0 + 3)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v8 = [*(a1 + 40) fireDate];
    [v8 timeIntervalSinceReferenceDate];
    v10 = v9;

    [*(*(a1 + 32) + 32) setFireTime:v10 withTime:Current];
    [*(*(a1 + 32) + 16) invalidate];
    v11 = [CADisplayLink displayLinkWithTarget:*(a1 + 32) selector:"updateDisplay"];
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    *(v12 + 16) = v11;

    [*(*(a1 + 32) + 16) setFrameInterval:15];
    v14 = *(*(a1 + 32) + 16);
    v15 = +[NSRunLoop mainRunLoop];
    [v14 addToRunLoop:v15 forMode:NSRunLoopCommonModes];
  }

  else
  {
    if (v2 == &dword_0 + 2)
    {
      v5 = *(a1 + 40);
      v3 = *(*(a1 + 32) + 32);
      [v5 remainingTime];
      v4 = round(v6);
      if (v4 < 1.0)
      {
        v4 = 1.0;
      }
    }

    else
    {
      if (v2 != &dword_0 + 1)
      {
        return;
      }

      v3 = *(*(a1 + 32) + 32);
      +[MTTimerManager defaultDuration];
    }

    [v3 setRemainingTime:v4];
  }
}

void sub_6D80(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "%{public}@ initializing with snippet: %{public}@", &v3, 0x16u);
}

void sub_6E08(uint64_t a1, char a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = 138543874;
  v6 = v3;
  v7 = 2114;
  v8 = v4;
  v9 = 1024;
  v10 = a2 & 1;
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "%{public}@ opened URL %{public}@ successfully: %d", &v5, 0x1Cu);
}

void sub_6EA4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "SAUISnippet class not handled: %@", &v2, 0xCu);
}