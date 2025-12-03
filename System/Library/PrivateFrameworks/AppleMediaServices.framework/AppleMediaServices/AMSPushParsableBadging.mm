@interface AMSPushParsableBadging
+ (void)_performLegacyCallbackWithRequest:(id)request payload:(id)payload config:(id)config bag:(id)bag error:(id *)error;
+ (void)handleNotificationPayload:(id)payload config:(id)config bag:(id)bag;
@end

@implementation AMSPushParsableBadging

+ (void)handleNotificationPayload:(id)payload config:(id)config bag:(id)bag
{
  v44 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  configCopy = config;
  bagCopy = bag;
  v9 = AMSSetLogKeyIfNeeded();
  v10 = [[AMSBadgeRequest alloc] initWithPushPayload:payloadCopy];
  v11 = +[AMSLogConfig sharedConfig];
  if (!v11)
  {
    v11 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v11 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v13 = configCopy;
    v14 = objc_opt_class();
    v15 = AMSLogKey();
    bundleIdentifier = [(AMSBadgeRequest *)v10 bundleIdentifier];
    badgeIdentifier = [(AMSBadgeRequest *)v10 badgeIdentifier];
    *buf = 138544386;
    v35 = v14;
    configCopy = v13;
    v36 = 2114;
    v37 = v15;
    v38 = 2114;
    v39 = bundleIdentifier;
    v40 = 2114;
    v41 = badgeIdentifier;
    v42 = 1024;
    enabled = [(AMSBadgeRequest *)v10 enabled];
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Received badging push. Client: %{public}@ Id: %{public}@ enabled: %d", buf, 0x30u);
  }

  delegate = [configCopy delegate];
  v19 = objc_opt_respondsToSelector();

  delegate2 = [configCopy delegate];
  v21 = delegate2;
  if (v19)
  {
    [delegate2 pushPayload:payloadCopy withBadgeRequest:v10];

LABEL_16:
    v24 = +[AMSLogConfig sharedConfig];
    if (!v24)
    {
      v24 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v24 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v29 = objc_opt_class();
      v30 = AMSLogKey();
      *buf = 138543618;
      v35 = v29;
      v36 = 2114;
      v37 = v30;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Finished handling badge push.", buf, 0x16u);
    }

    goto LABEL_20;
  }

  v22 = objc_opt_respondsToSelector();

  if (v22)
  {
    v33 = 0;
    [self _performLegacyCallbackWithRequest:v10 payload:payloadCopy config:configCopy bag:bagCopy error:&v33];
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

  oSLogObject2 = +[AMSLogConfig sharedConfig];
  if (!oSLogObject2)
  {
    oSLogObject2 = +[AMSLogConfig sharedConfig];
  }

  v25OSLogObject = [oSLogObject2 OSLogObject];
  if (os_log_type_enabled(v25OSLogObject, OS_LOG_TYPE_ERROR))
  {
    v27 = objc_opt_class();
    v28 = AMSLogKey();
    *buf = 138543874;
    v35 = v27;
    v36 = 2114;
    v37 = v28;
    v38 = 2114;
    v39 = v24;
    _os_log_impl(&dword_192869000, v25OSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to handle badge push. %{public}@", buf, 0x20u);
  }

LABEL_20:
}

+ (void)_performLegacyCallbackWithRequest:(id)request payload:(id)payload config:(id)config bag:(id)bag error:(id *)error
{
  v33 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  bagCopy = bag;
  payloadCopy = payload;
  delegate = [config delegate];
  bundleIdentifier = [requestCopy bundleIdentifier];
  badgeIdentifier = [requestCopy badgeIdentifier];
  v17 = [delegate pushPaylod:payloadCopy shouldUpdateBadgeForBundleIdentifier:bundleIdentifier badgeIdentifier:badgeIdentifier enabled:{objc_msgSend(requestCopy, "enabled")}];

  if (v17)
  {
    bundleIdentifier2 = [requestCopy bundleIdentifier];
    badgeIdentifier2 = [requestCopy badgeIdentifier];
    +[AMSUserNotificationCenter badgeBundleId:badgeId:enabled:error:](AMSUserNotificationCenter, "badgeBundleId:badgeId:enabled:error:", bundleIdentifier2, badgeIdentifier2, [requestCopy enabled], error);
  }

  else
  {
    v20 = +[AMSLogConfig sharedConfig];
    if (!v20)
    {
      v20 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v20 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v22 = objc_opt_class();
      v23 = AMSLogKey();
      v29 = 138543618;
      v30 = v22;
      v31 = 2114;
      v32 = v23;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Not allowed to badge.", &v29, 0x16u);
    }
  }

  metrics = [requestCopy metrics];

  if (metrics)
  {
    metrics2 = [requestCopy metrics];
    bundleIdentifier3 = [requestCopy bundleIdentifier];
    v27 = [AMSUserNotificationMetricsEvent eventForBadgingForMetricsDictionary:metrics2 bundleID:bundleIdentifier3];

    v28 = [AMSMetrics internalInstanceUsingBag:bagCopy];
    [v28 enqueueEvent:v27];
  }
}

@end