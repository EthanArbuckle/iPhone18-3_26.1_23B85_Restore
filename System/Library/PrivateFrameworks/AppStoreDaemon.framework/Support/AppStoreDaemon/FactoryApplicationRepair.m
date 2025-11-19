@interface FactoryApplicationRepair
+ (BOOL)shouldAttemptToRepairApplication:(id)a3 options:(id)a4 logKey:(id)a5;
- (ApplicationRepairDelegate)delegate;
- (FactoryApplicationRepair)init;
- (NSArray)repairedBundleIDs;
- (_TtC9appstored6LogKey)logKey;
- (void)AMSURLSession:(id)a3 task:(id)a4 handleAuthenticateRequest:(id)a5 completion:(id)a6;
- (void)AMSURLSession:(id)a3 task:(id)a4 handleDialogRequest:(id)a5 completion:(id)a6;
- (void)AMSURLSession:(id)a3 task:(id)a4 handleEngagementRequest:(id)a5 completion:(id)a6;
- (void)authenticateTask:(id)a3 handleDialogRequest:(id)a4 completion:(id)a5;
- (void)repairApplication:(id)a3 completionHandler:(id)a4;
- (void)setDelegate:(id)a3;
- (void)setLogKey:(id)a3;
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

- (void)setDelegate:(id)a3
{
  v4 = a3;
  lock = self->_lock;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002621CC;
  v7[3] = &unk_10051B570;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)setLogKey:(id)a3
{
  v4 = a3;
  lock = self->_lock;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100262394;
  v7[3] = &unk_10051B570;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

+ (BOOL)shouldAttemptToRepairApplication:(id)a3 options:(id)a4 logKey:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = sub_1003D0F60(v7);

  if (v9)
  {
    if (v7)
    {
      Property = objc_getProperty(v7, v10, 120, 1);
    }

    else
    {
      Property = 0;
    }

    v12 = Property;
    v13 = [v8 prependingCategory:@"Claim"];
    v14 = sub_1002626F8(a1, v12, v13);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)repairApplication:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = +[ACAccountStore ams_sharedAccountStore];
  v7 = [v6 ams_activeiTunesAccount];

  if (!v7 && self && (v17 = 0, v18 = &v17, v19 = 0x2020000000, v20 = 0, lock = self->_lock, *&buf = _NSConcreteStackBlock, *(&buf + 1) = 3221225472, v22 = sub_100261FA0, v23 = &unk_10051B638, v24 = self, v25 = &v17, sub_100379C5C(lock, &buf), v9 = *(v18 + 24), _Block_object_dispose(&v17, 8), v9 == 1))
  {
    v10 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(FactoryApplicationRepair *)self logKey];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v11;
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
    v16 = v5;
    sub_10026394C(self, v14, v15);
  }

  else
  {
    sub_100263020(self, v7, v5);
  }
}

- (void)AMSURLSession:(id)a3 task:(id)a4 handleDialogRequest:(id)a5 completion:(id)a6
{
  v8 = a5;
  v9 = a6;
  v10 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(FactoryApplicationRepair *)self logKey];
    *buf = 138412546;
    v20 = v11;
    v21 = 2114;
    v22 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%@] Presenting dialog request: %{public}@", buf, 0x16u);
  }

  v12 = ASDErrorWithDescription();
  v13 = [(FactoryApplicationRepair *)self delegate];
  [v13 repair:self needsToReleaseBlockingCallerWithReason:v12];

  v14 = [[AMSSystemAlertDialogTask alloc] initWithRequest:v8];
  v15 = [v14 present];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100265260;
  v17[3] = &unk_10051E068;
  v17[4] = self;
  v18 = v9;
  v16 = v9;
  [v15 resultWithCompletion:v17];
}

- (void)AMSURLSession:(id)a3 task:(id)a4 handleAuthenticateRequest:(id)a5 completion:(id)a6
{
  v8 = a5;
  v9 = a6;
  v10 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(FactoryApplicationRepair *)self logKey];
    *buf = 138412546;
    v16 = v11;
    v17 = 2114;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%@] Presenting authentication request: %{public}@", buf, 0x16u);
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1002654D0;
  v13[3] = &unk_10051E040;
  v13[4] = self;
  v14 = v9;
  v12 = v9;
  sub_10026394C(self, v8, v13);
}

- (void)AMSURLSession:(id)a3 task:(id)a4 handleEngagementRequest:(id)a5 completion:(id)a6
{
  v8 = a5;
  v9 = a6;
  v10 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(FactoryApplicationRepair *)self logKey];
    *buf = 138412546;
    v18 = v11;
    v19 = 2114;
    v20 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%@] Presenting engagement request: %{public}@", buf, 0x16u);
  }

  v12 = [[AMSSystemEngagementTask alloc] initWithRequest:v8];
  [v12 setClientInfo:self->_clientInfo];
  v13 = [v12 present];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100265774;
  v15[3] = &unk_10051F1C8;
  v15[4] = self;
  v16 = v9;
  v14 = v9;
  [v13 resultWithCompletion:v15];
}

- (void)authenticateTask:(id)a3 handleDialogRequest:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v16 = self;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Starting dialog task", buf, 0xCu);
  }

  v10 = [[AMSSystemAlertDialogTask alloc] initWithRequest:v8];
  v11 = [v10 present];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1002659E8;
  v13[3] = &unk_10051E068;
  v13[4] = self;
  v14 = v7;
  v12 = v7;
  [v11 addFinishBlock:v13];
}

@end