@interface AMSPushParsableBadging
+ (void)_performLegacyCallbackWithRequest:(id)a3 payload:(id)a4 config:(id)a5 bag:(id)a6 error:(id *)a7;
+ (void)handleNotificationPayload:(id)a3 config:(id)a4 bag:(id)a5;
@end

@implementation AMSPushParsableBadging

+ (void)handleNotificationPayload:(id)a3 config:(id)a4 bag:(id)a5
{
  v44 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v32 = a5;
  v9 = AMSSetLogKeyIfNeeded();
  v10 = [[AMSBadgeRequest alloc] initWithPushPayload:v7];
  v11 = +[AMSLogConfig sharedConfig];
  if (!v11)
  {
    v11 = +[AMSLogConfig sharedConfig];
  }

  v12 = [v11 OSLogObject];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v8;
    v14 = objc_opt_class();
    v15 = AMSLogKey();
    v16 = [(AMSBadgeRequest *)v10 bundleIdentifier];
    v17 = [(AMSBadgeRequest *)v10 badgeIdentifier];
    *buf = 138544386;
    v35 = v14;
    v8 = v13;
    v36 = 2114;
    v37 = v15;
    v38 = 2114;
    v39 = v16;
    v40 = 2114;
    v41 = v17;
    v42 = 1024;
    v43 = [(AMSBadgeRequest *)v10 enabled];
    _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Received badging push. Client: %{public}@ Id: %{public}@ enabled: %d", buf, 0x30u);
  }

  v18 = [v8 delegate];
  v19 = objc_opt_respondsToSelector();

  v20 = [v8 delegate];
  v21 = v20;
  if (v19)
  {
    [v20 pushPayload:v7 withBadgeRequest:v10];

LABEL_16:
    v24 = +[AMSLogConfig sharedConfig];
    if (!v24)
    {
      v24 = +[AMSLogConfig sharedConfig];
    }

    v25 = [v24 OSLogObject];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v29 = objc_opt_class();
      v30 = AMSLogKey();
      *buf = 138543618;
      v35 = v29;
      v36 = 2114;
      v37 = v30;
      _os_log_impl(&dword_192869000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Finished handling badge push.", buf, 0x16u);
    }

    goto LABEL_20;
  }

  v22 = objc_opt_respondsToSelector();

  if (v22)
  {
    v33 = 0;
    [a1 _performLegacyCallbackWithRequest:v10 payload:v7 config:v8 bag:v32 error:&v33];
    v23 = v33;
  }

  else
  {
    v23 = AMSError(11, @"Failed To Badge", @"No delegate registered to provide consent", 0);
  }

  v24 = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

  v25 = +[AMSLogConfig sharedConfig];
  if (!v25)
  {
    v25 = +[AMSLogConfig sharedConfig];
  }

  v26 = [v25 OSLogObject];
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v27 = objc_opt_class();
    v28 = AMSLogKey();
    *buf = 138543874;
    v35 = v27;
    v36 = 2114;
    v37 = v28;
    v38 = 2114;
    v39 = v24;
    _os_log_impl(&dword_192869000, v26, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to handle badge push. %{public}@", buf, 0x20u);
  }

LABEL_20:
}

+ (void)_performLegacyCallbackWithRequest:(id)a3 payload:(id)a4 config:(id)a5 bag:(id)a6 error:(id *)a7
{
  v33 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a6;
  v13 = a4;
  v14 = [a5 delegate];
  v15 = [v11 bundleIdentifier];
  v16 = [v11 badgeIdentifier];
  v17 = [v14 pushPaylod:v13 shouldUpdateBadgeForBundleIdentifier:v15 badgeIdentifier:v16 enabled:{objc_msgSend(v11, "enabled")}];

  if (v17)
  {
    v18 = [v11 bundleIdentifier];
    v19 = [v11 badgeIdentifier];
    +[AMSUserNotificationCenter badgeBundleId:badgeId:enabled:error:](AMSUserNotificationCenter, "badgeBundleId:badgeId:enabled:error:", v18, v19, [v11 enabled], a7);
  }

  else
  {
    v20 = +[AMSLogConfig sharedConfig];
    if (!v20)
    {
      v20 = +[AMSLogConfig sharedConfig];
    }

    v21 = [v20 OSLogObject];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = objc_opt_class();
      v23 = AMSLogKey();
      v29 = 138543618;
      v30 = v22;
      v31 = 2114;
      v32 = v23;
      _os_log_impl(&dword_192869000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Not allowed to badge.", &v29, 0x16u);
    }
  }

  v24 = [v11 metrics];

  if (v24)
  {
    v25 = [v11 metrics];
    v26 = [v11 bundleIdentifier];
    v27 = [AMSUserNotificationMetricsEvent eventForBadgingForMetricsDictionary:v25 bundleID:v26];

    v28 = [AMSMetrics internalInstanceUsingBag:v12];
    [v28 enqueueEvent:v27];
  }
}

@end