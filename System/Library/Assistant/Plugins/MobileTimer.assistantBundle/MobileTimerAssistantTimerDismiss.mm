@interface MobileTimerAssistantTimerDismiss
- (id)_timerManager;
- (void)_performWithCompletion:(id)completion;
- (void)performWithCompletion:(id)completion;
@end

@implementation MobileTimerAssistantTimerDismiss

- (id)_timerManager
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
    sub_DAE4(v5);
  }

  [(MobileTimerAssistantTimerDismiss *)self _performWithCompletion:completionCopy];
  v6 = MTLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_DB68(v6);
  }
}

- (void)_performWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [(MobileTimerAssistantTimerDismiss *)self description];
  timerIds = [(MobileTimerAssistantTimerDismiss *)self timerIds];
  if ([timerIds count])
  {
    v7 = MTLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = self;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ fetching timers", &buf, 0xCu);
    }

    _timerManager = [(MobileTimerAssistantTimerDismiss *)self _timerManager];
    timers = [_timerManager timers];
    v10 = dispatch_semaphore_create(0);
    *&buf = 0;
    *(&buf + 1) = &buf;
    v44 = 0x3032000000;
    v45 = sub_A380;
    v46 = sub_A390;
    v47 = 0;
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_A398;
    v37[3] = &unk_14890;
    v37[4] = self;
    v38 = timerIds;
    v11 = v5;
    v39 = v11;
    v12 = _timerManager;
    v40 = v12;
    v13 = [timers flatMap:v37];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_AA4C;
    v33[3] = &unk_144A8;
    v14 = v11;
    v34 = v14;
    p_buf = &buf;
    v15 = v10;
    v35 = v15;
    v16 = [v13 addSuccessBlock:v33];
    v26 = _NSConcreteStackBlock;
    v27 = 3221225472;
    v28 = sub_AC2C;
    v29 = &unk_144D0;
    v30 = v14;
    v32 = &buf;
    v17 = v15;
    v31 = v17;
    v18 = [v13 addFailureBlock:&v26];
    dispatch_semaphore_wait(v17, 0xFFFFFFFFFFFFFFFFLL);
    v19 = MTLogForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      dictionary = [*(*(&buf + 1) + 40) dictionary];
      sub_DBEC(self, dictionary, v42);
    }

    dictionary2 = [*(*(&buf + 1) + 40) dictionary];
    completionCopy[2](completionCopy, dictionary2);

    v22 = MTLogForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      dictionary3 = [*(*(&buf + 1) + 40) dictionary];
      sub_DC50(self, dictionary3, v41);
    }

    [MTAnalytics incrementEventCount:kMTCASiriTimerDismisses];
    _Block_object_dispose(&buf, 8);
  }

  else if (completionCopy)
  {
    v24 = [[SACommandFailed alloc] initWithReason:@"No timer ID is provided."];
    [v24 setErrorCode:1];
    dictionary4 = [v24 dictionary];
    completionCopy[2](completionCopy, dictionary4);
  }
}

@end