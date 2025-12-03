@interface MobileTimerAssistantTimerGet
- (void)_performWithCompletion:(id)completion;
- (void)performWithCompletion:(id)completion;
@end

@implementation MobileTimerAssistantTimerGet

- (void)performWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_D2EC(v5);
  }

  [(MobileTimerAssistantTimerGet *)self _performWithCompletion:completionCopy];
  v6 = MTLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_D370(v6);
  }
}

- (void)_performWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = self;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ fetching timer", &buf, 0xCu);
  }

  v6 = objc_opt_new();
  currentTimer = [v6 currentTimer];
  objc_initWeak(&location, self);
  v8 = dispatch_semaphore_create(0);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v30 = 0x3032000000;
  v31 = sub_7C74;
  v32 = sub_7C84;
  v33 = 0;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_7C8C;
  v22[3] = &unk_147F0;
  objc_copyWeak(&v25, &location);
  p_buf = &buf;
  v9 = v8;
  v23 = v9;
  v10 = [currentTimer addSuccessBlock:v22];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_7DC0;
  v18[3] = &unk_14540;
  objc_copyWeak(&v21, &location);
  v20 = &buf;
  v11 = v9;
  v19 = v11;
  v12 = [currentTimer addFailureBlock:v18];
  dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
  v13 = MTLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    dictionary = [*(*(&buf + 1) + 40) dictionary];
    sub_D3F4(self, dictionary, v28);
  }

  dictionary2 = [*(*(&buf + 1) + 40) dictionary];
  completionCopy[2](completionCopy, dictionary2);

  v16 = MTLogForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    dictionary3 = [*(*(&buf + 1) + 40) dictionary];
    sub_D458(self, dictionary3, v27);
  }

  [MTAnalytics incrementEventCount:kMTCASiriTimerSearches];
  objc_destroyWeak(&v21);

  objc_destroyWeak(&v25);
  _Block_object_dispose(&buf, 8);

  objc_destroyWeak(&location);
}

@end