@interface FactoryApplicationRepair
+ (BOOL)shouldAttemptToRepairApplication:(id)application options:(id)options logKey:(id)key;
- (ApplicationRepairDelegate)delegate;
- (FactoryApplicationRepair)init;
- (NSArray)repairedBundleIDs;
- (_TtC9appstored6LogKey)logKey;
- (void)AMSURLSession:(id)session task:(id)task handleAuthenticateRequest:(id)request completion:(id)completion;
- (void)AMSURLSession:(id)session task:(id)task handleDialogRequest:(id)request completion:(id)completion;
- (void)AMSURLSession:(id)session task:(id)task handleEngagementRequest:(id)request completion:(id)completion;
- (void)authenticateTask:(id)task handleDialogRequest:(id)request completion:(id)completion;
- (void)repairApplication:(id)application completionHandler:(id)handler;
- (void)setDelegate:(id)delegate;
- (void)setLogKey:(id)key;
@end

@implementation FactoryApplicationRepair

- (FactoryApplicationRepair)init
{
  v6.receiver = self;
  v6.super_class = FactoryApplicationRepair;
  v2 = [(FactoryApplicationRepair *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(UnfairLock);
    lock = v2->_lock;
    v2->_lock = v3;

    *&v2->_establishesActiveAccount = 257;
  }

  return v2;
}

- (ApplicationRepairDelegate)delegate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1002620D0;
  v10 = sub_1002620E0;
  v11 = 0;
  lock = self->_lock;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1002620E8;
  v5[3] = &unk_10051B638;
  v5[4] = self;
  v5[5] = &v6;
  sub_100379C5C(lock, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  lock = self->_lock;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002621CC;
  v7[3] = &unk_10051B570;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  sub_100379C5C(lock, v7);
}

- (_TtC9appstored6LogKey)logKey
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1002620D0;
  v10 = sub_1002620E0;
  v11 = 0;
  lock = self->_lock;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1002622E8;
  v5[3] = &unk_10051B638;
  v5[4] = self;
  v5[5] = &v6;
  sub_100379C5C(lock, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setLogKey:(id)key
{
  keyCopy = key;
  lock = self->_lock;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100262394;
  v7[3] = &unk_10051B570;
  v7[4] = self;
  v8 = keyCopy;
  v6 = keyCopy;
  sub_100379C5C(lock, v7);
}

- (NSArray)repairedBundleIDs
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1002620D0;
  v10 = sub_1002620E0;
  v11 = 0;
  lock = self->_lock;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1002624EC;
  v5[3] = &unk_10051B638;
  v5[4] = self;
  v5[5] = &v6;
  sub_100379C5C(lock, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

+ (BOOL)shouldAttemptToRepairApplication:(id)application options:(id)options logKey:(id)key
{
  applicationCopy = application;
  keyCopy = key;
  v9 = sub_1003D0F60(applicationCopy);

  if (v9)
  {
    if (applicationCopy)
    {
      Property = objc_getProperty(applicationCopy, v10, 120, 1);
    }

    else
    {
      Property = 0;
    }

    v12 = Property;
    v13 = [keyCopy prependingCategory:@"Claim"];
    v14 = sub_1002626F8(self, v12, v13);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)repairApplication:(id)application completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = +[ACAccountStore ams_sharedAccountStore];
  ams_activeiTunesAccount = [v6 ams_activeiTunesAccount];

  if (!ams_activeiTunesAccount && self && (v17 = 0, v18 = &v17, v19 = 0x2020000000, v20 = 0, lock = self->_lock, *&buf = _NSConcreteStackBlock, *(&buf + 1) = 3221225472, v22 = sub_100261FA0, v23 = &unk_10051B638, v24 = self, v25 = &v17, sub_100379C5C(lock, &buf), v9 = *(v18 + 24), _Block_object_dispose(&v17, 8), v9 == 1))
  {
    v10 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      logKey = [(FactoryApplicationRepair *)self logKey];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = logKey;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%@] Prompting to request authentication to establish an active account", &buf, 0xCu);
    }

    v12 = objc_alloc_init(AMSAuthenticateOptions);
    [v12 setAuthenticationType:2];
    [v12 setDebugReason:@"Claim"];
    v13 = ASDLocalizedString();
    [v12 setReason:v13];

    v14 = [[AMSAuthenticateRequest alloc] initWithAccount:0 options:v12];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100262E54;
    v15[3] = &unk_10051E040;
    v15[4] = self;
    v16 = handlerCopy;
    sub_10026394C(self, v14, v15);
  }

  else
  {
    sub_100263020(self, ams_activeiTunesAccount, handlerCopy);
  }
}

- (void)AMSURLSession:(id)session task:(id)task handleDialogRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v10 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    logKey = [(FactoryApplicationRepair *)self logKey];
    *buf = 138412546;
    v20 = logKey;
    v21 = 2114;
    v22 = requestCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%@] Presenting dialog request: %{public}@", buf, 0x16u);
  }

  v12 = ASDErrorWithDescription();
  delegate = [(FactoryApplicationRepair *)self delegate];
  [delegate repair:self needsToReleaseBlockingCallerWithReason:v12];

  v14 = [[AMSSystemAlertDialogTask alloc] initWithRequest:requestCopy];
  present = [v14 present];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100265260;
  v17[3] = &unk_10051E068;
  v17[4] = self;
  v18 = completionCopy;
  v16 = completionCopy;
  [present resultWithCompletion:v17];
}

- (void)AMSURLSession:(id)session task:(id)task handleAuthenticateRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v10 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    logKey = [(FactoryApplicationRepair *)self logKey];
    *buf = 138412546;
    v16 = logKey;
    v17 = 2114;
    v18 = requestCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%@] Presenting authentication request: %{public}@", buf, 0x16u);
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1002654D0;
  v13[3] = &unk_10051E040;
  v13[4] = self;
  v14 = completionCopy;
  v12 = completionCopy;
  sub_10026394C(self, requestCopy, v13);
}

- (void)AMSURLSession:(id)session task:(id)task handleEngagementRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v10 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    logKey = [(FactoryApplicationRepair *)self logKey];
    *buf = 138412546;
    v18 = logKey;
    v19 = 2114;
    v20 = requestCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%@] Presenting engagement request: %{public}@", buf, 0x16u);
  }

  v12 = [[AMSSystemEngagementTask alloc] initWithRequest:requestCopy];
  [v12 setClientInfo:self->_clientInfo];
  present = [v12 present];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100265774;
  v15[3] = &unk_10051F1C8;
  v15[4] = self;
  v16 = completionCopy;
  v14 = completionCopy;
  [present resultWithCompletion:v15];
}

- (void)authenticateTask:(id)task handleDialogRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  v9 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Starting dialog task", buf, 0xCu);
  }

  v10 = [[AMSSystemAlertDialogTask alloc] initWithRequest:requestCopy];
  present = [v10 present];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1002659E8;
  v13[3] = &unk_10051E068;
  v13[4] = self;
  v14 = completionCopy;
  v12 = completionCopy;
  [present addFinishBlock:v13];
}

@end