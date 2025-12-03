@interface AMSPushHandler
+ (id)accountIsEligibleForPushNotifications:(id)notifications accountStore:(id)store;
- (AMSPushHandler)initWithConfiguration:(id)configuration bag:(id)bag;
- (AMSPushHandler)initWithConfiguration:(id)configuration bagContract:(id)contract;
- (AMSPushHandlerDelegate)delegate;
- (BOOL)_validatePayloadFlags:(id)flags;
- (BOOL)shouldHandleNotification:(id)notification;
- (NSDictionary)enabledParsables;
- (void)_handlePushNotification:(id)notification;
- (void)dealloc;
- (void)handleNotification:(id)notification;
- (void)registerForEngagementPushes;
- (void)setDelegate:(id)delegate;
@end

@implementation AMSPushHandler

- (void)registerForEngagementPushes
{
  v21 = *MEMORY[0x1E69E9840];
  if (!+[AMSProcessInfo hasAMSEntitlement])
  {
    engagementPushTopic = +[AMSLogConfig sharedPushNotificationConfig];
    if (!engagementPushTopic)
    {
      engagementPushTopic = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [engagementPushTopic OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEBUG, "Current process is attempting to register for engagement pushes but does not have the com.apple.private.applemediaservices entitlement; rejecting", &v17, 2u);
    }

    goto LABEL_21;
  }

  configuration = [(AMSPushHandler *)self configuration];
  enabledActionTypes = [configuration enabledActionTypes];
  if (!enabledActionTypes)
  {

    goto LABEL_10;
  }

  v5 = enabledActionTypes;
  configuration2 = [(AMSPushHandler *)self configuration];
  enabledActionTypes2 = [configuration2 enabledActionTypes];
  v8 = [enabledActionTypes2 containsObject:@"35"];

  if (v8)
  {
LABEL_10:
    configuration3 = [(AMSPushHandler *)self configuration];
    engagementPushTopic = [configuration3 engagementPushTopic];

    if ([engagementPushTopic length])
    {
      oSLogObject = [@"com.apple.AppleMediaServices.pushhandler." stringByAppendingString:engagementPushTopic];
      defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
      [defaultCenter addObserver:self selector:sel__handlePushNotification_ name:oSLogObject object:0 suspensionBehavior:4];
      v13 = +[AMSLogConfig sharedPushNotificationConfig];
      if (!v13)
      {
        v13 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [v13 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138543618;
        v18 = objc_opt_class();
        v19 = 2114;
        v20 = oSLogObject;
        v15 = v18;
        _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: Registered for pushes with service name %{public}@", &v17, 0x16u);
      }
    }

    else
    {
      oSLogObject = +[AMSLogConfig sharedPushNotificationConfig];
      if (!oSLogObject)
      {
        oSLogObject = +[AMSLogConfig sharedConfig];
      }

      defaultCenter = [oSLogObject OSLogObject];
      if (os_log_type_enabled(defaultCenter, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138543362;
        v18 = objc_opt_class();
        v16 = v18;
        _os_log_impl(&dword_192869000, defaultCenter, OS_LOG_TYPE_DEFAULT, "%{public}@: No engagment topic provided; will not register for engagement pushes.", &v17, 0xCu);
      }
    }

LABEL_21:
  }
}

- (AMSPushHandler)initWithConfiguration:(id)configuration bag:(id)bag
{
  configurationCopy = configuration;
  bagCopy = bag;
  v12.receiver = self;
  v12.super_class = AMSPushHandler;
  v8 = [(AMSPushHandler *)&v12 init];
  if (v8)
  {
    if (configurationCopy)
    {
      v9 = configurationCopy;
    }

    else
    {
      v9 = objc_alloc_init(AMSPushConfiguration);
    }

    configuration = v8->_configuration;
    v8->_configuration = v9;

    objc_storeStrong(&v8->_bag, bag);
    [(AMSPushHandler *)v8 registerForEngagementPushes];
  }

  return v8;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = AMSPushHandler;
  [(AMSPushHandler *)&v4 dealloc];
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  configuration = [(AMSPushHandler *)self configuration];
  [configuration setDelegate:delegateCopy];
}

- (AMSPushHandlerDelegate)delegate
{
  configuration = [(AMSPushHandler *)self configuration];
  delegate = [configuration delegate];

  return delegate;
}

- (void)handleNotification:(id)notification
{
  v43 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  if (notificationCopy)
  {
    v5 = [[AMSPushPayload alloc] initWithPayload:notificationCopy];
    if (os_variant_has_internal_content() && [MEMORY[0x1E696ACB0] isValidJSONObject:notificationCopy])
    {
      v6 = [MEMORY[0x1E696ACB0] dataWithJSONObject:notificationCopy options:0 error:0];
      if (v6)
      {
        v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v6 encoding:4];
        v8 = +[AMSLogConfig sharedConfigOversize];
        if (!v8)
        {
          v8 = +[AMSLogConfig sharedConfig];
        }

        oSLogObject = [v8 OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
        {
          v10 = objc_opt_class();
          v11 = v10;
          logKey = [(AMSPushPayload *)v5 logKey];
          *buf = 138543874;
          v38 = v10;
          v39 = 2114;
          v40 = logKey;
          v41 = 2114;
          v42 = v7;
          _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Received payload: %{public}@", buf, 0x20u);
        }
      }
    }

    delegate = [(AMSPushHandler *)self delegate];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      delegate2 = [(AMSPushHandler *)self delegate];
      actionType = [(AMSPushPayload *)v5 actionType];
      v17 = [delegate2 pushPayload:v5 metricsOverlayForType:actionType];

      [(AMSPushPayload *)v5 setMetricsOverlay:v17];
      v18 = +[AMSLogConfig sharedConfig];
      if (!v18)
      {
        v18 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [v18 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        v20 = objc_opt_class();
        logKey2 = [(AMSPushPayload *)v5 logKey];
        metricsOverlay = [(AMSPushPayload *)v5 metricsOverlay];
        *buf = 138543874;
        v38 = v20;
        v39 = 2114;
        v40 = logKey2;
        v41 = 2112;
        v42 = metricsOverlay;
        _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Added metrics overlay to payload: %@", buf, 0x20u);
      }
    }

    enabledParsables = [(AMSPushHandler *)self enabledParsables];
    actionType2 = [(AMSPushPayload *)v5 actionType];
    v25 = [enabledParsables objectForKeyedSubscript:actionType2];

    if (v25)
    {
      if ((objc_opt_respondsToSelector() & 1) != 0 && [v25 shouldSkipAccountCheck])
      {
        oSLogObject4 = [AMSPromise promiseWithResult:MEMORY[0x1E695E118]];
      }

      else
      {
        v27 = objc_opt_class();
        account = [(AMSPushPayload *)v5 account];
        oSLogObject4 = [v27 accountIsEligibleForPushNotifications:account accountStore:0];
      }

      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __37__AMSPushHandler_handleNotification___block_invoke;
      v34[3] = &unk_1E73BB930;
      v34[4] = self;
      v5 = v5;
      v35 = v5;
      v36 = v25;
      [oSLogObject4 addFinishBlock:v34];
    }

    else
    {
      oSLogObject4 = +[AMSLogConfig sharedPushNotificationConfig];
      if (!oSLogObject4)
      {
        oSLogObject4 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject3 = [oSLogObject4 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
      {
        v30 = objc_opt_class();
        v31 = v30;
        logKey3 = [(AMSPushPayload *)v5 logKey];
        actionType3 = [(AMSPushPayload *)v5 actionType];
        *buf = 138543874;
        v38 = v30;
        v39 = 2114;
        v40 = logKey3;
        v41 = 2048;
        v42 = actionType3;
        _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unable to handle notification with action type: %ld", buf, 0x20u);
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

    oSLogObject4 = [(AMSPushPayload *)v5 OSLogObject];
    if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v38 = objc_opt_class();
      _os_log_impl(&dword_192869000, oSLogObject4, OS_LOG_TYPE_ERROR, "%{public}@: Received nil payload", buf, 0xCu);
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

- (BOOL)shouldHandleNotification:(id)notification
{
  notificationCopy = notification;
  v5 = [[AMSPushPayload alloc] initWithPayload:notificationCopy];

  if ([(AMSPushHandler *)self _validatePayloadFlags:v5])
  {
    enabledParsables = [(AMSPushHandler *)self enabledParsables];
    actionType = [(AMSPushPayload *)v5 actionType];
    v8 = [enabledParsables objectForKeyedSubscript:actionType] != 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_validatePayloadFlags:(id)flags
{
  v20 = *MEMORY[0x1E69E9840];
  flagsCopy = flags;
  flags = [flagsCopy flags];
  v5 = [flags count];

  if (v5 && ([flagsCopy flags], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "objectForKeyedSubscript:", 0x1F0737118), v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    flags2 = [flagsCopy flags];
    v9 = [flags2 objectForKeyedSubscript:0x1F0737118];
    bOOLValue = [v9 BOOLValue];

    if (bOOLValue && ([flagsCopy iCloudAccount], v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
    {
      v16 = 0;
    }

    else
    {
      iCloudAccount = [flagsCopy iCloudAccount];
      if ([iCloudAccount isActive] && !objc_msgSend(iCloudAccount, "aa_needsToVerifyTerms"))
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

        oSLogObject = [v13 OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 138543362;
          v19 = objc_opt_class();
          v15 = v19;
          _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Dropping notification. iCloud account state invalid for notification", &v18, 0xCu);
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
  configuration = [(AMSPushHandler *)self configuration];
  enabledActionTypes = [configuration enabledActionTypes];

  if (enabledActionTypes)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = enabledActionTypes;
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

+ (id)accountIsEligibleForPushNotifications:(id)notifications accountStore:(id)store
{
  notificationsCopy = notifications;
  storeCopy = store;
  if ([notificationsCopy isActive])
  {
    v7 = [AMSPromise promiseWithResult:MEMORY[0x1E695E118]];
  }

  else
  {
    if (storeCopy)
    {
      ams_sharedAccountStore = storeCopy;
    }

    else
    {
      ams_sharedAccountStore = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
    }

    v9 = ams_sharedAccountStore;
    v7 = [ams_sharedAccountStore ams_accountIsBackingAccountForActiveiCloudAccount:notificationsCopy];
  }

  return v7;
}

- (void)_handlePushNotification:(id)notification
{
  userInfo = [notification userInfo];
  [(AMSPushHandler *)self handleNotification:userInfo];
}

- (AMSPushHandler)initWithConfiguration:(id)configuration bagContract:(id)contract
{
  configurationCopy = configuration;
  contractCopy = contract;
  v12.receiver = self;
  v12.super_class = AMSPushHandler;
  v9 = [(AMSPushHandler *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_configuration, configuration);
    objc_storeStrong(&v10->_bagContract, contract);
  }

  return v10;
}

@end