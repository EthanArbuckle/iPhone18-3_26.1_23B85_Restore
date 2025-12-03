@interface AMSPushParsableRichNotification
+ (void)handleNotificationPayload:(id)payload config:(id)config bag:(id)bag;
@end

@implementation AMSPushParsableRichNotification

+ (void)handleNotificationPayload:(id)payload config:(id)config bag:(id)bag
{
  v42 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  configCopy = config;
  bagCopy = bag;
  clientIdentifier = [payloadCopy clientIdentifier];
  account = [payloadCopy account];
  if (account && ([payloadCopy isAccountTypeActive] & 1) == 0)
  {
    v13 = +[AMSLogConfig sharedPushNotificationConfig];
    if (!v13)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v13 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v30 = objc_opt_class();
      v31 = v30;
      logKey = [payloadCopy logKey];
      *buf = 138543874;
      selfCopy2 = v30;
      v38 = 2114;
      v39 = logKey;
      v40 = 2114;
      v41 = clientIdentifier;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Rejecting notification due to inactive account. %{public}@", buf, 0x20u);
    }

    v17 = configCopy;
  }

  else
  {
    v35 = 0;
    v34 = 0;
    v12 = [AMSUserNotification shouldDeleteNotificationForPayload:payloadCopy outIdentifier:&v34 scheduledOnly:&v35];
    v13 = v34;
    v14 = +[AMSLogConfig sharedPushNotificationConfig];
    v15 = v14;
    if (v12)
    {
      if (!v14)
      {
        v15 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [v15 OSLogObject];
      v17 = configCopy;
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        logKey2 = [payloadCopy logKey];
        *buf = 138543874;
        selfCopy2 = self;
        v38 = 2114;
        v39 = logKey2;
        v40 = 2114;
        v41 = clientIdentifier;
        _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Deleting notification with identifier: %{public}@", buf, 0x20u);
      }

      v19 = AMSLogKey();
      v20 = [AMSUserNotificationCenter removeNotificationWithIdentifier:v13 centerBundleId:clientIdentifier logKey:v19 scheduledOnly:v35];
    }

    else
    {
      if (!v14)
      {
        v15 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject3 = [v15 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
      {
        logKey3 = [payloadCopy logKey];
        *buf = 138543874;
        selfCopy2 = self;
        v38 = 2114;
        v39 = logKey3;
        v40 = 2114;
        v41 = clientIdentifier;
        _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Posting notification with identifier: %{public}@", buf, 0x20u);
      }

      v17 = configCopy;
      v19 = [AMSUserNotification notificationWithPayload:payloadCopy andConfig:configCopy];
      metricsEvent = [v19 metricsEvent];
      v24 = metricsEvent;
      if (metricsEvent)
      {
        v25 = metricsEvent;
      }

      else
      {
        v25 = MEMORY[0x1E695E0F8];
      }

      metricsOverlay = [payloadCopy metricsOverlay];
      v27 = [v25 ams_dictionaryByAddingEntriesFromDictionary:metricsOverlay];
      [v19 setMetricsEvent:v27];

      v28 = [AMSUserNotificationCenter postNotification:v19 bag:bagCopy centerBundleId:clientIdentifier];
    }
  }
}

@end