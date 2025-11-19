@interface AMSDPushParsableMultiUserTokenInvalidated
+ (void)handleNotificationPayload:(id)a3 config:(id)a4 bag:(id)a5;
@end

@implementation AMSDPushParsableMultiUserTokenInvalidated

+ (void)handleNotificationPayload:(id)a3 config:(id)a4 bag:(id)a5
{
  v6 = a3;
  v7 = +[AMSLogConfig sharedAccountsMultiUserConfig];
  if (!v7)
  {
    v7 = +[AMSLogConfig sharedConfig];
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v20 = objc_opt_class();
    v9 = v20;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Received a push notification to update multi-user tokens.", buf, 0xCu);
  }

  v10 = [v6 accountIdentifier];
  v11 = [v6 account];

  if (v11)
  {
    v12 = +[AMSDMultiUserService sharedService];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10007FEC0;
    v18[3] = &unk_1002B1E10;
    v18[4] = a1;
    [v12 updateMultiUserTokenForAccount:v11 completion:v18];
  }

  else
  {
    v12 = +[AMSLogConfig sharedAccountsMultiUserConfig];
    if (!v12)
    {
      v12 = +[AMSLogConfig sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = v14;
      v16 = [v10 stringValue];
      v17 = AMSHashIfNeeded();
      *buf = 138543618;
      v20 = v14;
      v21 = 2114;
      v22 = v17;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}@: Unable to update multi-user tokens. No account exists with the specified DSID. dsid = %{public}@.", buf, 0x16u);
    }
  }
}

@end