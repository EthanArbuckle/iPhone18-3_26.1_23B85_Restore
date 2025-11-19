@interface AMSPushParsableRichNotification
+ (void)handleNotificationPayload:(id)a3 config:(id)a4 bag:(id)a5;
@end

@implementation AMSPushParsableRichNotification

+ (void)handleNotificationPayload:(id)a3 config:(id)a4 bag:(id)a5
{
  v42 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v33 = a4;
  v9 = a5;
  v10 = [v8 clientIdentifier];
  v11 = [v8 account];
  if (v11 && ([v8 isAccountTypeActive] & 1) == 0)
  {
    v13 = +[AMSLogConfig sharedPushNotificationConfig];
    if (!v13)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    v29 = [v13 OSLogObject];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = objc_opt_class();
      v31 = v30;
      v32 = [v8 logKey];
      *buf = 138543874;
      v37 = v30;
      v38 = 2114;
      v39 = v32;
      v40 = 2114;
      v41 = v10;
      _os_log_impl(&dword_192869000, v29, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Rejecting notification due to inactive account. %{public}@", buf, 0x20u);
    }

    v17 = v33;
  }

  else
  {
    v35 = 0;
    v34 = 0;
    v12 = [AMSUserNotification shouldDeleteNotificationForPayload:v8 outIdentifier:&v34 scheduledOnly:&v35];
    v13 = v34;
    v14 = +[AMSLogConfig sharedPushNotificationConfig];
    v15 = v14;
    if (v12)
    {
      if (!v14)
      {
        v15 = +[AMSLogConfig sharedConfig];
      }

      v16 = [v15 OSLogObject];
      v17 = v33;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v8 logKey];
        *buf = 138543874;
        v37 = a1;
        v38 = 2114;
        v39 = v18;
        v40 = 2114;
        v41 = v10;
        _os_log_impl(&dword_192869000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Deleting notification with identifier: %{public}@", buf, 0x20u);
      }

      v19 = AMSLogKey();
      v20 = [AMSUserNotificationCenter removeNotificationWithIdentifier:v13 centerBundleId:v10 logKey:v19 scheduledOnly:v35];
    }

    else
    {
      if (!v14)
      {
        v15 = +[AMSLogConfig sharedConfig];
      }

      v21 = [v15 OSLogObject];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [v8 logKey];
        *buf = 138543874;
        v37 = a1;
        v38 = 2114;
        v39 = v22;
        v40 = 2114;
        v41 = v10;
        _os_log_impl(&dword_192869000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Posting notification with identifier: %{public}@", buf, 0x20u);
      }

      v17 = v33;
      v19 = [AMSUserNotification notificationWithPayload:v8 andConfig:v33];
      v23 = [v19 metricsEvent];
      v24 = v23;
      if (v23)
      {
        v25 = v23;
      }

      else
      {
        v25 = MEMORY[0x1E695E0F8];
      }

      v26 = [v8 metricsOverlay];
      v27 = [v25 ams_dictionaryByAddingEntriesFromDictionary:v26];
      [v19 setMetricsEvent:v27];

      v28 = [AMSUserNotificationCenter postNotification:v19 bag:v9 centerBundleId:v10];
    }
  }
}

@end