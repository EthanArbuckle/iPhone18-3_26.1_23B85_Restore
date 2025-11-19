@interface AMSPushHandler
+ (id)accountIsEligibleForPushNotifications:(id)a3 accountStore:(id)a4;
- (AMSPushHandler)initWithConfiguration:(id)a3 bag:(id)a4;
- (AMSPushHandler)initWithConfiguration:(id)a3 bagContract:(id)a4;
- (AMSPushHandlerDelegate)delegate;
- (BOOL)_validatePayloadFlags:(id)a3;
- (BOOL)shouldHandleNotification:(id)a3;
- (NSDictionary)enabledParsables;
- (void)_handlePushNotification:(id)a3;
- (void)dealloc;
- (void)handleNotification:(id)a3;
- (void)registerForEngagementPushes;
- (void)setDelegate:(id)a3;
@end

@implementation AMSPushHandler

- (void)registerForEngagementPushes
{
  v21 = *MEMORY[0x1E69E9840];
  if (!+[AMSProcessInfo hasAMSEntitlement])
  {
    v9 = +[AMSLogConfig sharedPushNotificationConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_DEBUG, "Current process is attempting to register for engagement pushes but does not have the com.apple.private.applemediaservices entitlement; rejecting", &v17, 2u);
    }

    goto LABEL_21;
  }

  v3 = [(AMSPushHandler *)self configuration];
  v4 = [v3 enabledActionTypes];
  if (!v4)
  {

    goto LABEL_10;
  }

  v5 = v4;
  v6 = [(AMSPushHandler *)self configuration];
  v7 = [v6 enabledActionTypes];
  v8 = [v7 containsObject:@"35"];

  if (v8)
  {
LABEL_10:
    v11 = [(AMSPushHandler *)self configuration];
    v9 = [v11 engagementPushTopic];

    if ([v9 length])
    {
      v10 = [@"com.apple.AppleMediaServices.pushhandler." stringByAppendingString:v9];
      v12 = [MEMORY[0x1E696ABB0] defaultCenter];
      [v12 addObserver:self selector:sel__handlePushNotification_ name:v10 object:0 suspensionBehavior:4];
      v13 = +[AMSLogConfig sharedPushNotificationConfig];
      if (!v13)
      {
        v13 = +[AMSLogConfig sharedConfig];
      }

      v14 = [v13 OSLogObject];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138543618;
        v18 = objc_opt_class();
        v19 = 2114;
        v20 = v10;
        v15 = v18;
        _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: Registered for pushes with service name %{public}@", &v17, 0x16u);
      }
    }

    else
    {
      v10 = +[AMSLogConfig sharedPushNotificationConfig];
      if (!v10)
      {
        v10 = +[AMSLogConfig sharedConfig];
      }

      v12 = [v10 OSLogObject];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138543362;
        v18 = objc_opt_class();
        v16 = v18;
        _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: No engagment topic provided; will not register for engagement pushes.", &v17, 0xCu);
      }
    }

LABEL_21:
  }
}

- (AMSPushHandler)initWithConfiguration:(id)a3 bag:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = AMSPushHandler;
  v8 = [(AMSPushHandler *)&v12 init];
  if (v8)
  {
    if (v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = objc_alloc_init(AMSPushConfiguration);
    }

    configuration = v8->_configuration;
    v8->_configuration = v9;

    objc_storeStrong(&v8->_bag, a4);
    [(AMSPushHandler *)v8 registerForEngagementPushes];
  }

  return v8;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = AMSPushHandler;
  [(AMSPushHandler *)&v4 dealloc];
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v5 = [(AMSPushHandler *)self configuration];
  [v5 setDelegate:v4];
}

- (AMSPushHandlerDelegate)delegate
{
  v2 = [(AMSPushHandler *)self configuration];
  v3 = [v2 delegate];

  return v3;
}

- (void)handleNotification:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [[AMSPushPayload alloc] initWithPayload:v4];
    if (os_variant_has_internal_content() && [MEMORY[0x1E696ACB0] isValidJSONObject:v4])
    {
      v6 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v4 options:0 error:0];
      if (v6)
      {
        v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v6 encoding:4];
        v8 = +[AMSLogConfig sharedConfigOversize];
        if (!v8)
        {
          v8 = +[AMSLogConfig sharedConfig];
        }

        v9 = [v8 OSLogObject];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = objc_opt_class();
          v11 = v10;
          v12 = [(AMSPushPayload *)v5 logKey];
          *buf = 138543874;
          v38 = v10;
          v39 = 2114;
          v40 = v12;
          v41 = 2114;
          v42 = v7;
          _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Received payload: %{public}@", buf, 0x20u);
        }
      }
    }

    v13 = [(AMSPushHandler *)self delegate];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      v15 = [(AMSPushHandler *)self delegate];
      v16 = [(AMSPushPayload *)v5 actionType];
      v17 = [v15 pushPayload:v5 metricsOverlayForType:v16];

      [(AMSPushPayload *)v5 setMetricsOverlay:v17];
      v18 = +[AMSLogConfig sharedConfig];
      if (!v18)
      {
        v18 = +[AMSLogConfig sharedConfig];
      }

      v19 = [v18 OSLogObject];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = objc_opt_class();
        v21 = [(AMSPushPayload *)v5 logKey];
        v22 = [(AMSPushPayload *)v5 metricsOverlay];
        *buf = 138543874;
        v38 = v20;
        v39 = 2114;
        v40 = v21;
        v41 = 2112;
        v42 = v22;
        _os_log_impl(&dword_192869000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Added metrics overlay to payload: %@", buf, 0x20u);
      }
    }

    v23 = [(AMSPushHandler *)self enabledParsables];
    v24 = [(AMSPushPayload *)v5 actionType];
    v25 = [v23 objectForKeyedSubscript:v24];

    if (v25)
    {
      if ((objc_opt_respondsToSelector() & 1) != 0 && [v25 shouldSkipAccountCheck])
      {
        v26 = [AMSPromise promiseWithResult:MEMORY[0x1E695E118]];
      }

      else
      {
        v27 = objc_opt_class();
        v28 = [(AMSPushPayload *)v5 account];
        v26 = [v27 accountIsEligibleForPushNotifications:v28 accountStore:0];
      }

      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __37__AMSPushHandler_handleNotification___block_invoke;
      v34[3] = &unk_1E73BB930;
      v34[4] = self;
      v5 = v5;
      v35 = v5;
      v36 = v25;
      [v26 addFinishBlock:v34];
    }

    else
    {
      v26 = +[AMSLogConfig sharedPushNotificationConfig];
      if (!v26)
      {
        v26 = +[AMSLogConfig sharedConfig];
      }

      v29 = [v26 OSLogObject];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = objc_opt_class();
        v31 = v30;
        v32 = [(AMSPushPayload *)v5 logKey];
        v33 = [(AMSPushPayload *)v5 actionType];
        *buf = 138543874;
        v38 = v30;
        v39 = 2114;
        v40 = v32;
        v41 = 2048;
        v42 = v33;
        _os_log_impl(&dword_192869000, v29, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unable to handle notification with action type: %ld", buf, 0x20u);
      }
    }
  }

  else
  {
    v5 = +[AMSLogConfig sharedConfig];
    if (!v5)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    v26 = [(AMSPushPayload *)v5 OSLogObject];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v38 = objc_opt_class();
      _os_log_impl(&dword_192869000, v26, OS_LOG_TYPE_ERROR, "%{public}@: Received nil payload", buf, 0xCu);
    }
  }
}

void __37__AMSPushHandler_handleNotification___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v3 BOOLValue])
  {
    v4 = +[AMSLogConfig sharedPushNotificationConfig];
    if (!v4)
    {
      v4 = +[AMSLogConfig sharedConfig];
    }

    v5 = [v4 OSLogObject];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = *(a1 + 40);
      v8 = v6;
      v9 = [v7 logKey];
      v10 = [*(a1 + 40) actionType];
      v11 = *(a1 + 48);
      v21 = 138544130;
      v22 = v6;
      v23 = 2114;
      v24 = v9;
      v25 = 2114;
      v26 = v10;
      v27 = 2114;
      v28 = v11;
      _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Handling notification of type: %{public}@ class: %{public}@", &v21, 0x2Au);
    }

    v13 = *(a1 + 40);
    v12 = *(a1 + 48);
    v14 = [*(a1 + 32) configuration];
    v15 = [*(a1 + 32) bag];
    [v12 handleNotificationPayload:v13 config:v14 bag:v15];
  }

  else
  {
    v14 = +[AMSLogConfig sharedPushNotificationConfig];
    if (!v14)
    {
      v14 = +[AMSLogConfig sharedConfig];
    }

    v15 = [v14 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      v17 = *(a1 + 40);
      v18 = v16;
      v19 = [v17 logKey];
      v20 = [*(a1 + 40) account];
      v21 = 138543874;
      v22 = v16;
      v23 = 2114;
      v24 = v19;
      v25 = 2114;
      v26 = v20;
      _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Ignoring notification for inactive account: %{public}@", &v21, 0x20u);
    }
  }
}

- (BOOL)shouldHandleNotification:(id)a3
{
  v4 = a3;
  v5 = [[AMSPushPayload alloc] initWithPayload:v4];

  if ([(AMSPushHandler *)self _validatePayloadFlags:v5])
  {
    v6 = [(AMSPushHandler *)self enabledParsables];
    v7 = [(AMSPushPayload *)v5 actionType];
    v8 = [v6 objectForKeyedSubscript:v7] != 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_validatePayloadFlags:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 flags];
  v5 = [v4 count];

  if (v5 && ([v3 flags], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "objectForKeyedSubscript:", 0x1F0737118), v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    v8 = [v3 flags];
    v9 = [v8 objectForKeyedSubscript:0x1F0737118];
    v10 = [v9 BOOLValue];

    if (v10 && ([v3 iCloudAccount], v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
    {
      v16 = 0;
    }

    else
    {
      v12 = [v3 iCloudAccount];
      if ([v12 isActive] && !objc_msgSend(v12, "aa_needsToVerifyTerms"))
      {
        v16 = 1;
      }

      else
      {
        v13 = +[AMSLogConfig sharedPushNotificationConfig];
        if (!v13)
        {
          v13 = +[AMSLogConfig sharedConfig];
        }

        v14 = [v13 OSLogObject];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 138543362;
          v19 = objc_opt_class();
          v15 = v19;
          _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: Dropping notification. iCloud account state invalid for notification", &v18, 0xCu);
        }

        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

- (NSDictionary)enabledParsables
{
  v21[6] = *MEMORY[0x1E69E9840];
  v20[0] = @"1";
  v21[0] = objc_opt_class();
  v20[1] = @"35";
  v21[1] = objc_opt_class();
  v20[2] = @"25";
  v21[2] = objc_opt_class();
  v20[3] = @"4";
  v21[3] = objc_opt_class();
  v20[4] = @"22";
  v21[4] = objc_opt_class();
  v20[5] = @"40";
  v21[5] = objc_opt_class();
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:6];
  v4 = [(AMSPushHandler *)self configuration];
  v5 = [v4 enabledActionTypes];

  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          if ([v3 objectForKeyedSubscript:{v12, v15}])
          {
            [v6 setObject:objc_msgSend(v3 forKeyedSubscript:{"objectForKeyedSubscript:", v12), v12}];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v6 = [v3 mutableCopy];
  }

  v13 = [v6 copy];

  return v13;
}

+ (id)accountIsEligibleForPushNotifications:(id)a3 accountStore:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 isActive])
  {
    v7 = [AMSPromise promiseWithResult:MEMORY[0x1E695E118]];
  }

  else
  {
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
    }

    v9 = v8;
    v7 = [v8 ams_accountIsBackingAccountForActiveiCloudAccount:v5];
  }

  return v7;
}

- (void)_handlePushNotification:(id)a3
{
  v4 = [a3 userInfo];
  [(AMSPushHandler *)self handleNotification:v4];
}

- (AMSPushHandler)initWithConfiguration:(id)a3 bagContract:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = AMSPushHandler;
  v9 = [(AMSPushHandler *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_configuration, a3);
    objc_storeStrong(&v10->_bagContract, a4);
  }

  return v10;
}

@end