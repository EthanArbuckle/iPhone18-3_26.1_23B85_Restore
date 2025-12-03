@interface MobileTimerAssistantTimerSet
- (id)validateCommandArguments;
- (void)_performWithCompletion:(id)completion;
- (void)performWithCompletion:(id)completion;
@end

@implementation MobileTimerAssistantTimerSet

- (void)performWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_CA6C(v5);
  }

  [(MobileTimerAssistantTimerSet *)self _performWithCompletion:completionCopy];
  v6 = MTLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_CAF0(v6);
  }
}

- (void)_performWithCompletion:(id)completion
{
  completionCopy = completion;
  validateCommandArguments = [(MobileTimerAssistantTimerSet *)self validateCommandArguments];
  v6 = MTLogForCategory();
  v7 = v6;
  if (validateCommandArguments)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_CB74(self, validateCommandArguments, v7);
    }

    dictionary = [validateCommandArguments dictionary];
    completionCopy[2](completionCopy, dictionary);
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = self;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ fetching timer", &buf, 0xCu);
    }

    v9 = objc_opt_new();
    currentTimer = [v9 currentTimer];
    objc_initWeak(&location, self);
    v11 = dispatch_semaphore_create(0);
    *&buf = 0;
    *(&buf + 1) = &buf;
    v37 = 0x3032000000;
    v38 = sub_400C;
    v39 = sub_401C;
    v40 = 0;
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_4024;
    v30[3] = &unk_14590;
    objc_copyWeak(&v32, &location);
    dictionary = v9;
    v31 = dictionary;
    v12 = [currentTimer flatMap:v30];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_4290;
    v26[3] = &unk_145B8;
    objc_copyWeak(&v29, &location);
    p_buf = &buf;
    v13 = v11;
    v27 = v13;
    v14 = [v12 addSuccessBlock:v26];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_4378;
    v22[3] = &unk_14540;
    objc_copyWeak(&v25, &location);
    v24 = &buf;
    v15 = v13;
    v23 = v15;
    v16 = [v12 addFailureBlock:v22];
    dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
    v17 = MTLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      dictionary2 = [*(*(&buf + 1) + 40) dictionary];
      sub_CBFC(self, dictionary2, v35);
    }

    dictionary3 = [*(*(&buf + 1) + 40) dictionary];
    completionCopy[2](completionCopy, dictionary3);

    v20 = MTLogForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      dictionary4 = [*(*(&buf + 1) + 40) dictionary];
      sub_CC60(self, dictionary4, v34);
    }

    [MTAnalytics incrementEventCount:kMTCASiriTimerSets];
    objc_destroyWeak(&v25);

    objc_destroyWeak(&v29);
    objc_destroyWeak(&v32);
    _Block_object_dispose(&buf, 8);

    objc_destroyWeak(&location);
  }
}

- (id)validateCommandArguments
{
  timer = [(MobileTimerAssistantTimerSet *)self timer];
  state = [timer state];
  v5 = [state isEqualToString:SATimerStateUndefinedValue];

  if ((v5 & 1) == 0)
  {
    timer2 = [(MobileTimerAssistantTimerSet *)self timer];
    state2 = [timer2 state];
    NSLog(@"Unexpected timer state: %@", state2);
  }

  timer3 = [(MobileTimerAssistantTimerSet *)self timer];
  timerValue = [timer3 timerValue];

  if (!timerValue)
  {
    goto LABEL_7;
  }

  timer4 = [(MobileTimerAssistantTimerSet *)self timer];
  timerValue2 = [timer4 timerValue];
  integerValue = [timerValue2 integerValue];
  v13 = integerValue;

  if (integerValue < 86400)
  {
    if (integerValue <= 0)
    {
      [NSString stringWithFormat:@"SATimerSet.timer.timerValue: Duration must be greater than 0. Value = %f", *&v13, v18, v19, v20];
      goto LABEL_9;
    }

LABEL_7:
    v15 = 0;
    goto LABEL_10;
  }

  v14 = v13 - (v13 / 3600.0) * 3600.0;
  [NSString stringWithFormat:@"SATimerSet.timer.timerValue: Duration must be less than 24 hours. Value = %f (%ld:%02ld:%02ld)", *&v13, (v13 / 3600.0), (v14 / 60.0), (v14 - (v14 / 60.0) * 60.0)];
  v16 = LABEL_9:;
  v15 = [[SACommandFailed alloc] initWithReason:v16];

LABEL_10:

  return v15;
}

@end