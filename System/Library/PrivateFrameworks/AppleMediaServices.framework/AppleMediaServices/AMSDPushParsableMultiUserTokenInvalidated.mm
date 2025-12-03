@interface AMSDPushParsableMultiUserTokenInvalidated
+ (void)handleNotificationPayload:(id)payload config:(id)config bag:(id)bag;
@end

@implementation AMSDPushParsableMultiUserTokenInvalidated

+ (void)handleNotificationPayload:(id)payload config:(id)config bag:(id)bag
{
  payloadCopy = payload;
  v7 = +[AMSLogConfig sharedAccountsMultiUserConfig];
  if (!v7)
  {
    v7 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v7 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v20 = objc_opt_class();
    v9 = v20;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Received a push notification to update multi-user tokens.", buf, 0xCu);
  }

  accountIdentifier = [payloadCopy accountIdentifier];
  account = [payloadCopy account];

  if (account)
  {
    v12 = +[AMSDMultiUserService sharedService];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10007FEC0;
    v18[3] = &unk_1002B1E10;
    v18[4] = self;
    [v12 updateMultiUserTokenForAccount:account completion:v18];
  }

  else
  {
    v12 = +[AMSLogConfig sharedAccountsMultiUserConfig];
    if (!v12)
    {
      v12 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v12 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = v14;
      stringValue = [accountIdentifier stringValue];
      v17 = AMSHashIfNeeded();
      *buf = 138543618;
      v20 = v14;
      v21 = 2114;
      v22 = v17;
      _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: Unable to update multi-user tokens. No account exists with the specified DSID. dsid = %{public}@.", buf, 0x16u);
    }
  }
}

@end