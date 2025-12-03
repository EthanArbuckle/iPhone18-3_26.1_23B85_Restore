@interface AMSPushParsableEngagementEvent
+ (id)_eventForMapiPayload:(id)payload account:(id)account bag:(id)bag;
+ (id)_eventForStaticAssetPayload:(id)payload bag:(id)bag;
+ (void)_waitForPromises:(id)promises completion:(id)completion;
+ (void)handleNotificationPayload:(id)payload config:(id)config bag:(id)bag;
@end

@implementation AMSPushParsableEngagementEvent

+ (void)handleNotificationPayload:(id)payload config:(id)config bag:(id)bag
{
  v48 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  bagCopy = bag;
  logKey = [payloadCopy logKey];
  v10 = AMSSetLogKey(logKey);

  account = [payloadCopy account];
  if (account && ([payloadCopy isAccountTypeActive] & 1) == 0)
  {
    v18 = +[AMSLogConfig sharedConfig];
    if (!v18)
    {
      v18 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v18 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v33 = objc_opt_class();
      v34 = v33;
      logKey2 = [payloadCopy logKey];
      *buf = 138543618;
      v45 = v33;
      v46 = 2114;
      v47 = logKey2;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Rejecting engagement event due to inactive account.", buf, 0x16u);
    }
  }

  else
  {
    v12 = +[AMSLogConfig sharedConfig];
    if (!v12)
    {
      v12 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v12 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      logKey3 = [payloadCopy logKey];
      *buf = 138543618;
      v45 = v14;
      v46 = 2114;
      v47 = logKey3;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Enqueueing engagement event", buf, 0x16u);
    }

    v16 = [payloadCopy aps];
    v17 = [v16 objectForKeyedSubscript:@"mi"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = [self _eventForMapiPayload:v18 account:account bag:bagCopy];
    v20 = [payloadCopy aps];
    v21 = [v20 objectForKeyedSubscript:@"static"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      oSLogObject = v21;
    }

    else
    {
      oSLogObject = 0;
    }

    v36 = bagCopy;
    v23 = [self _eventForStaticAssetPayload:oSLogObject bag:bagCopy];
    v24 = [payloadCopy aps];
    v25 = [v24 objectForKeyedSubscript:@"event"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    if (v26)
    {
      v27 = v26;
    }

    else
    {
      v27 = MEMORY[0x1E695E0F8];
    }

    v28 = [AMSPromise promiseWithResult:v27];
    v43[0] = v19;
    v43[1] = v23;
    v43[2] = v28;
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:3];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __71__AMSPushParsableEngagementEvent_handleNotificationPayload_config_bag___block_invoke;
    v37[3] = &unk_1E73BB9A0;
    v38 = payloadCopy;
    v39 = v19;
    v40 = v28;
    v41 = v23;
    selfCopy = self;
    v30 = v23;
    v31 = v28;
    v32 = v19;
    [self _waitForPromises:v29 completion:v37];

    bagCopy = v36;
  }
}

void __71__AMSPushParsableEngagementEvent_handleNotificationPayload_config_bag___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logKey];
  v3 = AMSSetLogKey(v2);

  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v4 setObject:@"AMSPushHandler" forKeyedSubscript:@"source"];
  [v4 setObject:@"engagementPush" forKeyedSubscript:@"eventType"];
  v5 = [*(a1 + 40) resultWithError:0];
  v6 = v5;
  v7 = MEMORY[0x1E695E0F8];
  if (v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = MEMORY[0x1E695E0F8];
  }

  [v4 setObject:v8 forKeyedSubscript:@"mi"];

  v9 = [*(a1 + 48) resultWithError:0];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  [v4 setObject:v11 forKeyedSubscript:@"event"];

  v12 = [*(a1 + 56) resultWithError:0];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v7;
  }

  [v4 setObject:v14 forKeyedSubscript:@"static"];

  v15 = [v4 count];
  v16 = +[AMSLogConfig sharedConfig];
  v17 = v16;
  if (v15)
  {
    if (!v16)
    {
      v17 = +[AMSLogConfig sharedConfig];
    }

    v18 = [(AMSEngagement *)v17 OSLogObject];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = objc_opt_class();
      v20 = [*(a1 + 32) logKey];
      *buf = 138543874;
      v29 = v19;
      v30 = 2114;
      v31 = v20;
      v32 = 2112;
      v33 = v4;
      _os_log_impl(&dword_192869000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Enqueueing event: %@", buf, 0x20u);
    }

    v17 = objc_alloc_init(AMSEngagement);
    v21 = [(AMSEngagement *)v17 enqueueData:v4];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __71__AMSPushParsableEngagementEvent_handleNotificationPayload_config_bag___block_invoke_42;
    v25[3] = &unk_1E73BB978;
    v27 = *(a1 + 64);
    v26 = *(a1 + 32);
    [v21 addFinishBlock:v25];

    v22 = v26;
  }

  else
  {
    if (!v16)
    {
      v17 = +[AMSLogConfig sharedConfig];
    }

    v22 = [(AMSEngagement *)v17 OSLogObject];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = objc_opt_class();
      v24 = [*(a1 + 32) logKey];
      *buf = 138543618;
      v29 = v23;
      v30 = 2114;
      v31 = v24;
      _os_log_impl(&dword_192869000, v22, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Engagement event contains no fields", buf, 0x16u);
    }
  }
}

void __71__AMSPushParsableEngagementEvent_handleNotificationPayload_config_bag___block_invoke_42(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[AMSLogConfig sharedConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = [*(a1 + 32) logKey];
    v9 = 138543874;
    v10 = v7;
    v11 = 2114;
    v12 = v8;
    v13 = 2114;
    v14 = v4;
    _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Finished enqueueing event. %{public}@", &v9, 0x20u);
  }
}

+ (id)_eventForMapiPayload:(id)payload account:(id)account bag:(id)bag
{
  v40 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  accountCopy = account;
  bagCopy = bag;
  if (accountCopy)
  {
    v10 = [payloadCopy objectForKeyedSubscript:@"clientIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v14 = [payloadCopy objectForKeyedSubscript:@"clientVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = v14;
    }

    else
    {
      v35 = 0;
    }

    v15 = [payloadCopy objectForKeyedSubscript:@"serviceType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = v15;
    }

    else
    {
      v34 = 0;
    }

    v33 = accountCopy;

    v16 = [payloadCopy objectForKeyedSubscript:@"placement"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = v34;
    v19 = v35;

    v20 = [payloadCopy objectForKeyedSubscript:@"params"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v22 = bagCopy;

    if (v11 && v35 && v34 && v17)
    {
      v23 = +[AMSLogConfig sharedConfig];
      if (!v23)
      {
        v23 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v23 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v25 = objc_opt_class();
        AMSLogKey();
        v26 = v32 = v11;
        *buf = 138543618;
        v37 = v25;
        v38 = 2114;
        v39 = v26;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Found MAPI request", buf, 0x16u);

        v11 = v32;
      }

      bagCopy = v22;
      v18 = v34;
      v19 = v35;
      v27 = [[AMSMarketingItemTask alloc] initWithBag:v22 clientIdentifier:v11 clientVersion:v35 placement:v17 serviceType:v34];
      [(AMSMarketingItemTask *)v27 setAccount:v33];
      [(AMSMarketingItemTask *)v27 setContextInfo:v21];
      [(AMSMarketingItemTask *)v27 perform];
      v29 = v28 = v11;
      v13 = [v29 thenWithBlock:&__block_literal_global_120];

      v11 = v28;
    }

    else
    {
      v30 = AMSError(7, @"MAPI keys Not Found", 0, 0);
      v13 = [AMSPromise promiseWithError:v30];

      bagCopy = v22;
    }

    accountCopy = v33;
  }

  else
  {
    v12 = AMSError(11, @"Engagement Push MI Failure", @"Failed to locate account", 0);
    v13 = [AMSPromise promiseWithError:v12];
  }

  return v13;
}

id __67__AMSPushParsableEngagementEvent__eventForMapiPayload_account_bag___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 rawValues];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F8];
  }

  v5 = [AMSPromise promiseWithResult:v4];

  return v5;
}

+ (id)_eventForStaticAssetPayload:(id)payload bag:(id)bag
{
  v25 = *MEMORY[0x1E69E9840];
  bagCopy = bag;
  v6 = [payload objectForKeyedSubscript:@"url"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v7 = 0;
LABEL_10:
    v19 = AMSError(7, @"Static Key Not Found", 0, 0);
    v18 = [AMSPromise promiseWithError:v19];

    goto LABEL_11;
  }

  v7 = v6;

  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = [MEMORY[0x1E695DFF8] URLWithString:v7];
  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = v8;
  v10 = +[AMSLogConfig sharedConfig];
  if (!v10)
  {
    v10 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v10 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = AMSLogKey();
    v21 = 138543618;
    v22 = v12;
    v23 = 2114;
    v24 = v13;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Found static request", &v21, 0x16u);
  }

  v14 = [[AMSURLRequestEncoder alloc] initWithBag:bagCopy];
  v15 = [(AMSURLRequestEncoder *)v14 requestWithMethod:2 URL:v9 parameters:0];
  v16 = +[AMSURLSession defaultSession];
  v17 = [v16 dataTaskPromiseWithRequestPromise:v15];

  v18 = [v17 thenWithBlock:&__block_literal_global_65_0];

LABEL_11:

  return v18;
}

id __66__AMSPushParsableEngagementEvent__eventForStaticAssetPayload_bag___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 object];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F8];
  }

  v5 = [AMSPromise promiseWithResult:v4];

  return v5;
}

+ (void)_waitForPromises:(id)promises completion:(id)completion
{
  promisesCopy = promises;
  completionCopy = completion;
  if ([promisesCopy count])
  {
    v7 = [AMSPromise promiseWithAny:promisesCopy];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __62__AMSPushParsableEngagementEvent__waitForPromises_completion___block_invoke;
    v8[3] = &unk_1E73B53E0;
    v9 = completionCopy;
    [v7 addFinishBlock:v8];
  }

  else
  {
    completionCopy[2](completionCopy);
  }
}

@end