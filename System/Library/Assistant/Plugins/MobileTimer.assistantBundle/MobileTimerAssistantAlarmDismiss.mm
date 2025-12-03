@interface MobileTimerAssistantAlarmDismiss
- (id)_alarmManager;
- (void)_performWithCompletion:(id)completion;
- (void)performWithCompletion:(id)completion;
@end

@implementation MobileTimerAssistantAlarmDismiss

- (id)_alarmManager
{
  v2 = objc_opt_new();

  return v2;
}

- (void)performWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_C144(v5);
  }

  [(MobileTimerAssistantAlarmDismiss *)self _performWithCompletion:completionCopy];
  v6 = MTLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_C1C8(v6);
  }
}

- (void)_performWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [(MobileTimerAssistantAlarmDismiss *)self description];
  alarmIds = [(MobileTimerAssistantAlarmDismiss *)self alarmIds];
  if ([alarmIds count])
  {
    _alarmManager = [(MobileTimerAssistantAlarmDismiss *)self _alarmManager];
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
      [_alarmManager alarmsIncludingSleepAlarm:1];
    }

    else
    {
      [_alarmManager alarms];
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
    v36 = alarmIds;
    v14 = _alarmManager;
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
    if (completionCopy)
    {
      v21 = MTLogForCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        dictionary = [*(*&buf[8] + 40) dictionary];
        sub_C24C(self, dictionary, v39);
      }

      dictionary2 = [*(*&buf[8] + 40) dictionary];
      completionCopy[2](completionCopy, dictionary2);

      v24 = MTLogForCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        dictionary3 = [*(*&buf[8] + 40) dictionary];
        sub_C2B0(self, dictionary3, v38);
      }
    }

    [MTAnalytics incrementEventCount:kMTCASiriAlarmDismisses];

    _Block_object_dispose(buf, 8);
  }

  else if (completionCopy)
  {
    v9 = [[SACommandFailed alloc] initWithReason:@"No alarm ID is provided."];
    [v9 setErrorCode:1];
    dictionary4 = [v9 dictionary];
    completionCopy[2](completionCopy, dictionary4);
  }
}

@end