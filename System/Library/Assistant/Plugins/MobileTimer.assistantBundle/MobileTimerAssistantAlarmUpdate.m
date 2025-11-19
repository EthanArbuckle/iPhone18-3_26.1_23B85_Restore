@interface MobileTimerAssistantAlarmUpdate
- (id)updateAlarm:(id)a3 withModification:(id)a4;
- (id)updateAlarmsWithManager:(id)a3;
- (id)validateCommandArguments;
- (void)_performWithCompletion:(id)a3;
- (void)dealloc;
- (void)performWithCompletion:(id)a3;
@end

@implementation MobileTimerAssistantAlarmUpdate

- (void)dealloc
{
  v3 = MTLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v6 = self;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ deallocing...", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = MobileTimerAssistantAlarmUpdate;
  [(MobileTimerAssistantAlarmUpdate *)&v4 dealloc];
}

- (void)performWithCompletion:(id)a3
{
  v4 = a3;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_CCC4(v5);
  }

  [(MobileTimerAssistantAlarmUpdate *)self _performWithCompletion:v4];
  v6 = MTLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_CD48(v6);
  }
}

- (void)_performWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MobileTimerAssistantAlarmUpdate *)self validateCommandArguments];
  if (v5)
  {
    v6 = MTLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_CDCC();
    }

    v7 = [v5 dictionary];
    v4[2](v4, v7);
  }

  else
  {
    objc_initWeak(&location, self);
    v8 = objc_opt_new();
    v9 = dispatch_semaphore_create(0);
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = sub_4B6C;
    v32 = sub_4B7C;
    v33 = 0;
    v10 = [(MobileTimerAssistantAlarmUpdate *)self updateAlarmsWithManager:v8];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_4B84;
    v24[3] = &unk_14620;
    objc_copyWeak(&v27, &location);
    v26 = &v28;
    v11 = v9;
    v25 = v11;
    v12 = [v10 addSuccessBlock:v24];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_4CC0;
    v20[3] = &unk_14540;
    objc_copyWeak(&v23, &location);
    v22 = &v28;
    v13 = v11;
    v21 = v13;
    v14 = [v10 addFailureBlock:v20];
    dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
    v15 = MTLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = [v29[5] dictionary];
      sub_CE34(self, v16, v36);
    }

    v17 = [v29[5] dictionary];
    v4[2](v4, v17);

    v18 = MTLogForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v19 = [v29[5] dictionary];
      sub_CE98(self, v19, v35);
    }

    objc_destroyWeak(&v23);
    objc_destroyWeak(&v27);

    _Block_object_dispose(&v28, 8);
    objc_destroyWeak(&location);
  }
}

- (id)validateCommandArguments
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 1;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_4B6C;
  v13 = sub_4B7C;
  v14 = 0;
  v2 = [(MobileTimerAssistantAlarmUpdate *)self modifications];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_4F78;
  v8[3] = &unk_14670;
  v8[4] = &v15;
  v8[5] = &v9;
  [v2 enumerateObjectsUsingBlock:v8];

  if (v16[3])
  {
    v3 = 0;
  }

  else
  {
    v4 = [SACommandFailed alloc];
    v5 = [v10[5] userInfo];
    v6 = [v5 objectForKeyedSubscript:NSLocalizedDescriptionKey];
    v3 = [v4 initWithReason:v6];

    [v3 setErrorCode:{objc_msgSend(v10[5], "code")}];
  }

  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);

  return v3;
}

- (id)updateAlarmsWithManager:(id)a3
{
  v4 = a3;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v14 = "[MobileTimerAssistantAlarmUpdate updateAlarmsWithManager:]";
    v15 = 2114;
    v16 = self;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%s %{public}@ fetching alarms", buf, 0x16u);
  }

  v6 = [v4 alarms];
  objc_initWeak(buf, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_55FC;
  v10[3] = &unk_14710;
  objc_copyWeak(&v12, buf);
  v7 = v4;
  v11 = v7;
  v8 = [v6 flatMap:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);

  return v8;
}

- (id)updateAlarm:(id)a3 withModification:(id)a4
{
  v5 = a4;
  v6 = [a3 mutableCopy];
  v7 = [v5 hour];
  v8 = v7 != 0;

  if (v7)
  {
    v9 = [v5 hour];
    [v6 setHour:{objc_msgSend(v9, "unsignedIntegerValue")}];
  }

  v10 = [v5 minute];

  if (v10)
  {
    v11 = [v5 minute];
    [v6 setMinute:{objc_msgSend(v11, "unsignedIntegerValue")}];

    v8 = 1;
  }

  v12 = [v5 addedFrequency];

  if (v12)
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v13 = [v5 addedFrequency];
    v14 = [v13 countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = 0;
      v17 = *v46;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v46 != v17)
          {
            objc_enumerationMutation(v13);
          }

          v19 = *(*(&v45 + 1) + 8 * i);
          v20 = SAAlarmDayOfWeekForString();
          v16 |= MTAlarmRepeatDayFromSAAlarmDayOfWeek(v20);
        }

        v15 = [v13 countByEnumeratingWithState:&v45 objects:v50 count:16];
      }

      while (v15);
    }

    else
    {
      v16 = 0;
    }

    [v6 setRepeatSchedule:{objc_msgSend(v6, "repeatSchedule") | v16}];
    v8 = 1;
  }

  v21 = [v5 removedFrequency];

  if (v21)
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v22 = [v5 removedFrequency];
    v23 = [v22 countByEnumeratingWithState:&v41 objects:v49 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v42;
      do
      {
        for (j = 0; j != v24; j = j + 1)
        {
          if (*v42 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v41 + 1) + 8 * j);
          v28 = SAAlarmDayOfWeekForString();
          v29 = MTAlarmRepeatDayFromSAAlarmDayOfWeek(v28);
        }

        v30 = v29;
        v24 = [v22 countByEnumeratingWithState:&v41 objects:v49 count:16];
      }

      while (v24);
      v31 = ~v30;
    }

    else
    {
      v31 = -1;
    }

    [v6 setRepeatSchedule:{objc_msgSend(v6, "repeatSchedule") & v31}];
    v8 = 1;
  }

  v32 = [v5 label];

  if (v32)
  {
    v33 = [v5 label];
    [v6 setTitle:v33];

LABEL_30:
    v34 = [v5 enabled];
    if (v34)
    {
      v35 = [v5 enabled];
      [v6 setEnabled:{objc_msgSend(v35, "BOOLValue")}];
    }

    else
    {
      [v6 setEnabled:1];
    }

    goto LABEL_34;
  }

  if (v8)
  {
    goto LABEL_30;
  }

  v37 = [v5 enabled];

  if (v37)
  {
    v38 = [v5 enabled];
    v39 = [v38 BOOLValue];

    [v6 setEnabled:v39];
    v40 = &kMTCASiriAlarmDeactivations;
    if (v39)
    {
      v40 = &kMTCASiriAlarmActivations;
    }

    [MTAnalytics incrementEventCount:*v40];
  }

LABEL_34:

  return v6;
}

@end