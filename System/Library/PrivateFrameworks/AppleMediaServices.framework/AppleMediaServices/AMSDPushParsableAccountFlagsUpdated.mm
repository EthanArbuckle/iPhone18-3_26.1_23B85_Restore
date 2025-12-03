@interface AMSDPushParsableAccountFlagsUpdated
+ (void)handleNotificationPayload:(id)payload config:(id)config bag:(id)bag;
@end

@implementation AMSDPushParsableAccountFlagsUpdated

+ (void)handleNotificationPayload:(id)payload config:(id)config bag:(id)bag
{
  v5 = [AMSLogConfig sharedPushNotificationConfig:payload];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v5 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 138543362;
    *&v12[4] = objc_opt_class();
    v7 = *&v12[4];
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Received a push notification to update an account's account flags.", v12, 0xCu);
  }

  v8 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v8)
  {
    v8 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject2 = [v8 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    *v12 = 138543362;
    *&v12[4] = v10;
    v11 = v10;
    _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: Skipping account flag update, since account data has replaced it.", v12, 0xCu);
  }
}

@end