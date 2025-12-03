@interface FRUserOnboardingOperation
- (BOOL)validateOperation;
- (id)_determineUserID;
- (id)_presubscribe;
- (id)_refreshAppConfig;
- (id)_refreshOnboardingVersion;
- (void)operationWillFinishWithError:(id)error;
- (void)performOperation;
@end

@implementation FRUserOnboardingOperation

- (BOOL)validateOperation
{
  cloudContext = [(FRUserOnboardingOperation *)self cloudContext];

  if (!cloudContext && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006DDA8();
  }

  analyticsController = [(FRUserOnboardingOperation *)self analyticsController];

  if (!analyticsController && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006DE60();
  }

  presubscribeService = [(FRUserOnboardingOperation *)self presubscribeService];

  if (!presubscribeService && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006DF18();
  }

  if (cloudContext)
  {
    v6 = analyticsController == 0;
  }

  else
  {
    v6 = 1;
  }

  return !v6 && presubscribeService != 0;
}

- (void)performOperation
{
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10002F9D8;
  v19[3] = &unk_1000C3880;
  v19[4] = self;
  v13 = [NFPromise firstly:v19];
  v3 = zalgo();
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10002F9E0;
  v18[3] = &unk_1000C38A8;
  v18[4] = self;
  v4 = [v13 thenOn:v3 then:v18];
  v5 = zalgo();
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10002F9E8;
  v17[3] = &unk_1000C38A8;
  v17[4] = self;
  v6 = [v4 thenOn:v5 then:v17];
  v7 = zalgo();
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10002F9F0;
  v16[3] = &unk_1000C38D0;
  v16[4] = self;
  v8 = [v6 thenOn:v7 then:v16];
  v9 = zalgo();
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10002FA30;
  v15[3] = &unk_1000C38A8;
  v15[4] = self;
  v10 = [v8 thenOn:v9 then:v15];
  v11 = zalgo();
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10002FA54;
  v14[3] = &unk_1000C38F8;
  v14[4] = self;
  v12 = [v10 errorOn:v11 error:v14];
}

- (void)operationWillFinishWithError:(id)error
{
  errorCopy = error;
  userOnboardingCompletionHandler = [(FRUserOnboardingOperation *)self userOnboardingCompletionHandler];

  if (userOnboardingCompletionHandler)
  {
    userOnboardingCompletionHandler2 = [(FRUserOnboardingOperation *)self userOnboardingCompletionHandler];
    onboardingVersion = [(FRUserOnboardingOperation *)self onboardingVersion];
    (userOnboardingCompletionHandler2)[2](userOnboardingCompletionHandler2, [onboardingVersion integerValue], errorCopy);
  }
}

- (id)_determineUserID
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002FB94;
  v4[3] = &unk_1000C3920;
  v4[4] = self;
  v2 = [[NFPromise alloc] initWithResolver:v4];

  return v2;
}

- (id)_refreshAppConfig
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002FD90;
  v4[3] = &unk_1000C3920;
  v4[4] = self;
  v2 = [[NFPromise alloc] initWithResolver:v4];

  return v2;
}

- (id)_refreshOnboardingVersion
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002FFE4;
  v4[3] = &unk_1000C3920;
  v4[4] = self;
  v2 = [[NFPromise alloc] initWithResolver:v4];

  return v2;
}

- (id)_presubscribe
{
  cloudContext = [(FRUserOnboardingOperation *)self cloudContext];
  userInfo = [cloudContext userInfo];
  onboardingVersionNumber = [userInfo onboardingVersionNumber];
  integerValue = [onboardingVersionNumber integerValue];

  if (integerValue)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000302D0;
    v10[3] = &unk_1000C3880;
    v10[4] = self;
    v7 = sub_1000302D0(v10);
  }

  else
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000303B8;
    v9[3] = &unk_1000C3920;
    v9[4] = self;
    v7 = [[NFPromise alloc] initWithResolver:v9];
  }

  return v7;
}

@end