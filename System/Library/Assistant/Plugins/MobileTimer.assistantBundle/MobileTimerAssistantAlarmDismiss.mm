@interface MobileTimerAssistantAlarmDismiss
- (id)_alarmManager;
- (void)_performWithCompletion:(id)a3;
- (void)performWithCompletion:(id)a3;
@end

@implementation MobileTimerAssistantAlarmDismiss

- (id)_alarmManager
{
  v2 = objc_opt_new();

  return v2;
}

- (void)performWithCompletion:(id)a3
{
  v4 = a3;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_C144(v5);
  }

  [(MobileTimerAssistantAlarmDismiss *)self _performWithCompletion:v4];
  v6 = MTLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_C1C8(v6);
  }
}

- (void)_performWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MobileTimerAssistantAlarmDismiss *)self description];
  v6 = [(MobileTimerAssistantAlarmDismiss *)self alarmIds];
  if ([v6 count])
  {
    v7 = [(MobileTimerAssistantAlarmDismiss *)self _alarmManager];
    v8 = MTLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "[MobileTimerAssistantAlarmDismiss _performWithCompletion:]";
      *&buf[12] = 2114;
      *&buf[14] = v5;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%s %{public}@ fetching alarms", buf, 0x16u);
    }

    if (MTShouldHandleForEucalyptus())
    {
      [v7 alarmsIncludingSleepAlarm:1];
    }

    else
    {
      [v7 alarms];
    }
    v11 = ;
    v12 = dispatch_semaphore_create(0);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v41 = sub_14F0;
    v42 = sub_1500;
    v43 = 0;
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_1508;
    v34[3] = &unk_14440;
    v13 = v5;
    v35 = v13;
    v36 = v6;
    v14 = v7;
    v37 = v14;
    v15 = [v11 flatMap:v34];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1BA8;
    v30[3] = &unk_144A8;
    v16 = v13;
    v31 = v16;
    v33 = buf;
    v17 = v12;
    v32 = v17;
    v18 = [v15 addSuccessBlock:v30];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1D88;
    v26[3] = &unk_144D0;
    v27 = v16;
    v29 = buf;
    v19 = v17;
    v28 = v19;
    v20 = [v15 addFailureBlock:v26];
    dispatch_semaphore_wait(v19, 0xFFFFFFFFFFFFFFFFLL);
    if (v4)
    {
      v21 = MTLogForCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        v22 = [*(*&buf[8] + 40) dictionary];
        sub_C24C(self, v22, v39);
      }

      v23 = [*(*&buf[8] + 40) dictionary];
      v4[2](v4, v23);

      v24 = MTLogForCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        v25 = [*(*&buf[8] + 40) dictionary];
        sub_C2B0(self, v25, v38);
      }
    }

    [MTAnalytics incrementEventCount:kMTCASiriAlarmDismisses];

    _Block_object_dispose(buf, 8);
  }

  else if (v4)
  {
    v9 = [[SACommandFailed alloc] initWithReason:@"No alarm ID is provided."];
    [v9 setErrorCode:1];
    v10 = [v9 dictionary];
    v4[2](v4, v10);
  }
}

@end