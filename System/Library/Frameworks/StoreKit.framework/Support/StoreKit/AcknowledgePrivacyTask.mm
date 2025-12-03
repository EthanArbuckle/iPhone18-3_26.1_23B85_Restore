@interface AcknowledgePrivacyTask
- (AcknowledgePrivacyTask)initWithAccount:(id)account;
- (void)main;
- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error;
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
@end

@implementation AcknowledgePrivacyTask

- (AcknowledgePrivacyTask)initWithAccount:(id)account
{
  accountCopy = account;
  v9.receiver = self;
  v9.super_class = AcknowledgePrivacyTask;
  v6 = [(Task *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, account);
  }

  return v7;
}

- (void)main
{
  if (self->_account)
  {
    if (![AMSAcknowledgePrivacyTask acknowledgementNeededForPrivacyIdentifier:@"com.apple.onboarding.appstore" account:?])
    {
LABEL_34:
      [(Task *)self completeWithSuccess];
      return;
    }

    v3 = dispatch_semaphore_create(0);
    privacyPromptSemaphore = self->_privacyPromptSemaphore;
    self->_privacyPromptSemaphore = v3;

    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v33 = 0;
    v5 = [AMSBag bagForProfile:@"AppStore" profileVersion:@"1"];
    [v5 stringForKey:@"privacyAcknowledgementUrl"];
    v24 = v29 = 0;
    v6 = [v24 valueWithError:&v29];
    v7 = v29;
    if (!v6)
    {
      if (qword_1003D3B68 != -1)
      {
        sub_1002C78D4();
      }

      v26 = qword_1003D3B20;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v17 = objc_opt_class();
        sub_1002C7968(v17, v7, buf, v26);
      }

      v25 = 1;
LABEL_27:

      _Block_object_dispose(&v30, 8);
      if (v7)
      {
        v20 = 0;
      }

      else
      {
        v20 = v25;
      }

      if (v20)
      {
        v7 = ASDErrorWithDescription();
      }

      if (v7)
      {
        [(Task *)self completeWithError:v7];

        return;
      }

      goto LABEL_34;
    }

    v26 = [[SBSRemoteAlertDefinition alloc] initWithServiceName:@"com.apple.ios.StoreKitUIService" viewControllerClassName:@"ServicePrivacyPromptViewController"];
    v8 = objc_alloc_init(SBSRemoteAlertConfigurationContext);
    v23 = objc_alloc_init(BSMutableSettings);
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_10000D1CC;
    v28[3] = &unk_10037FC80;
    v28[4] = self;
    v28[5] = &v30;
    v22 = [BSActionResponder responderWithHandler:v28];
    v21 = [[BSAction alloc] initWithInfo:v23 responder:v22];
    v9 = [NSSet setWithObject:v21];
    [v8 setActions:v9];

    v34[0] = @"privacyIdentifier";
    v34[1] = @"privacyAcknowledgementUrlString";
    v35[0] = @"com.apple.onboarding.appstore";
    v35[1] = v6;
    v10 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:2];
    [v8 setUserInfo:v10];

    v11 = [SBSRemoteAlertHandle newHandleWithDefinition:v26 configurationContext:v8];
    v25 = v11 == 0;
    if (v11)
    {
      if (qword_1003D3B68 != -1)
      {
        sub_1002C78D4();
      }

      v12 = qword_1003D3B20;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = objc_opt_class();
        *buf = 138543362;
        v37 = v13;
        v14 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Remote handle created for privacy prompt operation", buf, 0xCu);
      }

      [v11 registerObserver:self];
      [v11 activateWithContext:0];
      dispatch_semaphore_wait(self->_privacyPromptSemaphore, 0xFFFFFFFFFFFFFFFFLL);
      if (*(v31 + 24) != 1)
      {
        v25 = 1;
        goto LABEL_26;
      }

      v15 = [[AMSAcknowledgePrivacyTask alloc] initWithPrivacyIdentifier:@"com.apple.onboarding.appstore" account:self->_account];
      acknowledgePrivacy = [v15 acknowledgePrivacy];
    }

    else
    {
      if (qword_1003D3B68 != -1)
      {
        sub_1002C78D4();
      }

      v18 = qword_1003D3B20;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = objc_opt_class();
        sub_1002C78FC(v19, buf, v18);
      }

      ASDErrorWithDescription();
      v7 = v15 = v7;
    }

LABEL_26:
    goto LABEL_27;
  }

  v27 = ASDErrorWithDescription();
  [(Task *)self completeWithError:v27];
}

- (void)remoteAlertHandleDidDeactivate:(id)deactivate
{
  deactivateCopy = deactivate;
  if (qword_1003D3B68 != -1)
  {
    sub_1002C79E0();
  }

  v5 = qword_1003D3B20;
  if (os_log_type_enabled(qword_1003D3B20, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v8 = 138543362;
    v9 = objc_opt_class();
    v7 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Remote privacy handle did deactivate", &v8, 0xCu);
  }

  dispatch_semaphore_signal(self->_privacyPromptSemaphore);
}

- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error
{
  handleCopy = handle;
  errorCopy = error;
  if (qword_1003D3B68 != -1)
  {
    sub_1002C79E0();
  }

  v8 = qword_1003D3B20;
  if (os_log_type_enabled(qword_1003D3B20, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v11 = 138543618;
    v12 = objc_opt_class();
    v13 = 2114;
    v14 = errorCopy;
    v10 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Remote privacy handle did invalidate with error: %{public}@", &v11, 0x16u);
  }

  dispatch_semaphore_signal(self->_privacyPromptSemaphore);
}

@end