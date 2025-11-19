@interface MobileTimerAssistantAlarmCreate
- (id)validateCommandArguments;
- (void)_performWithCompletion:(id)a3;
- (void)performWithCompletion:(id)a3;
@end

@implementation MobileTimerAssistantAlarmCreate

- (void)performWithCompletion:(id)a3
{
  v4 = a3;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_C7CC(v5);
  }

  [(MobileTimerAssistantAlarmCreate *)self _performWithCompletion:v4];
  v6 = MTLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_C850(v6);
  }
}

- (void)_performWithCompletion:(id)a3
{
  v4 = a3;
  v53 = [(MobileTimerAssistantAlarmCreate *)self validateCommandArguments];
  if (v53)
  {
    v5 = MTLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_C8D4();
    }

    v6 = [v53 dictionary];
    v4[2](v4, v6);
    goto LABEL_34;
  }

  v6 = [(MobileTimerAssistantAlarmCreate *)self alarmToCreate];
  v7 = objc_opt_new();
  v8 = [v6 relativeOffsetMinutes];

  if (v8)
  {
    v9 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    v10 = +[NSTimeZone defaultTimeZone];
    [v9 setTimeZone:v10];

    v11 = objc_alloc_init(NSDateComponents);
    v12 = [v6 relativeOffsetMinutes];
    [v11 setMinute:{objc_msgSend(v12, "unsignedIntValue")}];

    if ([v11 minute] <= 4)
    {
      [v11 setSecond:40];
    }

    v13 = +[NSDate date];
    v14 = [v9 dateByAddingComponents:v11 toDate:v13 options:0];

    v15 = [v9 components:96 fromDate:v14];
    [v7 setHour:{objc_msgSend(v15, "hour")}];
    [v7 setMinute:{objc_msgSend(v15, "minute")}];
  }

  else
  {
    v16 = [v6 hour];

    if (v16)
    {
      v17 = [v6 hour];
      [v7 setHour:{objc_msgSend(v17, "unsignedIntValue")}];
    }

    v18 = [v6 minute];

    if (!v18)
    {
      goto LABEL_14;
    }

    v9 = [v6 minute];
    [v7 setMinute:{objc_msgSend(v9, "unsignedIntValue")}];
  }

LABEL_14:
  v19 = [v6 frequency];

  if (v19)
  {
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v20 = [v6 frequency];
    v21 = 0;
    v22 = [v20 countByEnumeratingWithState:&v64 objects:v74 count:16];
    if (v22)
    {
      v23 = *v65;
      do
      {
        for (i = 0; i != v22; i = i + 1)
        {
          if (*v65 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v64 + 1) + 8 * i);
          v26 = SAAlarmDayOfWeekForString();
          v21 |= MTAlarmRepeatDayFromSAAlarmDayOfWeek(v26);
        }

        v22 = [v20 countByEnumeratingWithState:&v64 objects:v74 count:16];
      }

      while (v22);
    }

    [v7 setRepeatSchedule:v21];
  }

  v27 = [v6 label];
  v28 = v27 == 0;

  if (!v28)
  {
    v29 = [v6 label];
    [v7 setTitle:v29];
  }

  v30 = [v7 sound];
  v31 = [v30 isSilent];

  if (v31)
  {
    v32 = +[TLToneManager sharedToneManager];
    v33 = [v32 defaultToneIdentifierForAlertType:13];

    v34 = [v7 sound];
    v35 = [v34 vibrationIdentifier];
    v36 = [v7 sound];
    v37 = [v36 soundVolume];
    v38 = [MTSound toneSoundWithIdentifier:v33 vibrationIdentifer:v35 volume:v37];

    [v7 setSound:v38];
  }

  v52 = objc_opt_new();
  v39 = MTLogForCategory();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = v7;
    _os_log_impl(&dword_0, v39, OS_LOG_TYPE_DEFAULT, "%{public}@ adding alarm: %{public}@", buf, 0x16u);
  }

  v40 = [v52 addAlarm:v7];
  objc_initWeak(&location, self);
  v41 = dispatch_semaphore_create(0);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v71 = sub_3638;
  v72 = sub_3648;
  v73 = 0;
  v58[0] = _NSConcreteStackBlock;
  v58[1] = 3221225472;
  v58[2] = sub_3650;
  v58[3] = &unk_14518;
  objc_copyWeak(&v62, &location);
  v42 = v7;
  v59 = v42;
  v61 = buf;
  v43 = v41;
  v60 = v43;
  v44 = [v40 addSuccessBlock:v58];
  v54[0] = _NSConcreteStackBlock;
  v54[1] = 3221225472;
  v54[2] = sub_3780;
  v54[3] = &unk_14540;
  objc_copyWeak(&v57, &location);
  v56 = buf;
  v45 = v43;
  v55 = v45;
  v46 = [v40 addFailureBlock:v54];
  dispatch_semaphore_wait(v45, 0xFFFFFFFFFFFFFFFFLL);
  v47 = MTLogForCategory();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
  {
    v48 = [*(*&buf[8] + 40) dictionary];
    sub_C93C(self, v48, v69);
  }

  v49 = [*(*&buf[8] + 40) dictionary];
  v4[2](v4, v49);

  v50 = MTLogForCategory();
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
  {
    v51 = [*(*&buf[8] + 40) dictionary];
    sub_C9A0(self, v51, v68);
  }

  objc_destroyWeak(&v57);
  objc_destroyWeak(&v62);
  _Block_object_dispose(buf, 8);

  objc_destroyWeak(&location);
LABEL_34:
}

- (id)validateCommandArguments
{
  v2 = [(MobileTimerAssistantAlarmCreate *)self alarmToCreate];
  v3 = [v2 relativeOffsetMinutes];

  if (v3)
  {
    v4 = [v2 relativeOffsetMinutes];
    v28 = 0;
    v5 = MTValidateAlarmRelativeOffsetMinutes([v4 unsignedIntegerValue], &v28);
    v3 = v28;

    v6 = v3;
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  v7 = [v2 hour];

  if (v7)
  {
    v8 = [v2 hour];
    v27 = v3;
    v9 = MTValidateAlarmHour([v8 unsignedIntegerValue], &v27);
    v6 = v27;

    v3 = v6;
    if (!v9)
    {
      goto LABEL_12;
    }
  }

  v10 = [v2 minute];

  if (v10)
  {
    v11 = [v2 minute];
    v26 = v3;
    v12 = MTValidateAlarmMinute([v11 unsignedIntegerValue], &v26);
    v6 = v26;

    v3 = v6;
    if (!v12)
    {
      goto LABEL_12;
    }
  }

  v13 = [v2 frequency];

  if (v13)
  {
    v14 = [v2 frequency];
    v25 = v3;
    v15 = MTValidateAlarmFrequency(v14, &v25);
    v6 = v25;

    v3 = v6;
    if (!v15)
    {
      goto LABEL_12;
    }
  }

  v16 = [v2 label];

  if (v16)
  {
    v17 = [v2 label];
    v24 = v3;
    v18 = MTValidateAlarmLabel(v17, &v24);
    v6 = v24;

    if (v18)
    {
      v19 = 0;
LABEL_13:
      v3 = v6;
      goto LABEL_14;
    }

LABEL_12:
    v20 = [SACommandFailed alloc];
    v21 = [v6 userInfo];
    v22 = [v21 objectForKeyedSubscript:NSLocalizedDescriptionKey];
    v19 = [v20 initWithReason:v22];

    [v19 setErrorCode:{objc_msgSend(v6, "code")}];
    goto LABEL_13;
  }

  v19 = 0;
LABEL_14:

  return v19;
}

@end