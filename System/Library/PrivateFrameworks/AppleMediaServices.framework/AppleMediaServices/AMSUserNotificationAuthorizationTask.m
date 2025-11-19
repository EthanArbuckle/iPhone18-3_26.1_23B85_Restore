@interface AMSUserNotificationAuthorizationTask
+ (id)_findEngagementRequestInResponse:(id)a3;
+ (id)engagementRequestForFullSheet;
+ (id)recordEngagementEventWithBundleIdentifier:(id)a3 options:(id)a4;
- (AMSUserNotificationAuthorizationDelegate)delegate;
- (AMSUserNotificationAuthorizationTask)initWithBundleIdentifier:(id)a3 options:(id)a4;
- (id)_presentDialogForUserInitiatedWithCompletion;
- (id)_startEngagementAuthorizationWithResult:(id)a3;
- (id)requestAuthorization;
@end

@implementation AMSUserNotificationAuthorizationTask

- (AMSUserNotificationAuthorizationTask)initWithBundleIdentifier:(id)a3 options:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = AMSUserNotificationAuthorizationTask;
  v9 = [(AMSTask *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_bundleIdentifier, a3);
    objc_storeStrong(&v10->_options, a4);
    v11 = [objc_alloc(MEMORY[0x1E6983308]) initWithBundleIdentifier:v7];
    notificationCenter = v10->_notificationCenter;
    v10->_notificationCenter = v11;
  }

  return v10;
}

+ (id)engagementRequestForFullSheet
{
  v3 = objc_alloc_init(AMSMutablePromise);
  v4 = objc_alloc(MEMORY[0x1E6983308]);
  v5 = [MEMORY[0x1E696AAE8] mainBundle];
  v6 = [v5 bundleIdentifier];
  v7 = [v4 initWithBundleIdentifier:v6];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __69__AMSUserNotificationAuthorizationTask_engagementRequestForFullSheet__block_invoke;
  v12[3] = &unk_1E73BDEB8;
  v8 = v3;
  v13 = v8;
  v14 = a1;
  [v7 getNotificationSettingsWithCompletionHandler:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69__AMSUserNotificationAuthorizationTask_engagementRequestForFullSheet__block_invoke_33;
  v11[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v11[4] = a1;
  [(AMSPromise *)v8 addErrorBlock:v11];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69__AMSUserNotificationAuthorizationTask_engagementRequestForFullSheet__block_invoke_34;
  v10[3] = &__block_descriptor_40_e48_v16__0__AMSUserNotificationAuthorizationResult_8l;
  v10[4] = a1;
  [(AMSPromise *)v8 addSuccessBlock:v10];

  return v8;
}

void __69__AMSUserNotificationAuthorizationTask_engagementRequestForFullSheet__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 authorizationStatus] == 1 || objc_msgSend(v3, "authorizationStatus") == 2)
  {
    v4 = AMSError(11, @"User has already accepted or denied notification authorization.", 0, 0);
    [*(a1 + 32) finishWithError:v4];
  }

  else
  {
    v4 = objc_alloc_init(AMSUserNotificationAuthorizationOptions);
    v5 = *(a1 + 40);
    v6 = [MEMORY[0x1E696AAE8] mainBundle];
    v7 = [v6 bundleIdentifier];
    v8 = [v5 recordEngagementEventWithBundleIdentifier:v7 options:v4];

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __69__AMSUserNotificationAuthorizationTask_engagementRequestForFullSheet__block_invoke_2;
    v13[3] = &unk_1E73B34B8;
    v14 = *(a1 + 32);
    [v8 addErrorBlock:v13];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __69__AMSUserNotificationAuthorizationTask_engagementRequestForFullSheet__block_invoke_3;
    v11[3] = &unk_1E73BDE90;
    v10 = *(a1 + 32);
    v9 = v10;
    v12 = v10;
    [v8 addSuccessBlock:v11];
  }
}

void __69__AMSUserNotificationAuthorizationTask_engagementRequestForFullSheet__block_invoke_3(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[AMSLogConfig sharedConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = AMSLogKey();
    v16 = 138543618;
    v17 = v6;
    v18 = 2114;
    v19 = v8;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Successfully obtained response", &v16, 0x16u);
  }

  v9 = [*(a1 + 40) _findEngagementRequestInResponse:v3];

  if (v9)
  {
    v10 = +[AMSLogConfig sharedConfig];
    if (!v10)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = v12;
      v14 = AMSLogKey();
      v16 = 138543618;
      v17 = v12;
      v18 = 2114;
      v19 = v14;
      _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Successfully obtained engagement request", &v16, 0x16u);
    }

    [v9 setSilentlyCheckURL:1];
    v15 = objc_alloc_init(AMSUserNotificationAuthorizationResult);
    [(AMSUserNotificationAuthorizationResult *)v15 setRequest:v9];
    [*(a1 + 32) finishWithResult:v15];
  }

  else
  {
    v15 = AMSError(12, @"No engagement request returned.", 0, 0);
    [*(a1 + 32) finishWithError:v15];
  }
}

void __69__AMSUserNotificationAuthorizationTask_engagementRequestForFullSheet__block_invoke_33(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[AMSLogConfig sharedConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = AMSLogKey();
    v8 = 138543874;
    v9 = v6;
    v10 = 2114;
    v11 = v7;
    v12 = 2114;
    v13 = v3;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Explicit notification authorization for full sheet failed: %{public}@", &v8, 0x20u);
  }
}

void __69__AMSUserNotificationAuthorizationTask_engagementRequestForFullSheet__block_invoke_34(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = +[AMSLogConfig sharedConfig];
  if (!v2)
  {
    v2 = +[AMSLogConfig sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = AMSLogKey();
    v6 = 138543618;
    v7 = v4;
    v8 = 2114;
    v9 = v5;
    _os_log_impl(&dword_192869000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Explicit notification authorization for full sheet completed successfully.", &v6, 0x16u);
  }
}

+ (id)_findEngagementRequestInResponse:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [a3 messageActions];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v11 + 1) + 8 * i) engagementRequest];
        if (v8)
        {
          v9 = v8;
          [v8 setSilentlyCheckURL:1];
          [v9 setFailOnDismiss:1];
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

+ (id)recordEngagementEventWithBundleIdentifier:(id)a3 options:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = +[AMSLogConfig sharedConfig];
  if (!v7)
  {
    v7 = +[AMSLogConfig sharedConfig];
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = AMSLogKey();
    *buf = 138543618;
    v27 = v9;
    v28 = 2114;
    v29 = v10;
    _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Recording engagement event.", buf, 0x16u);
  }

  v11 = objc_alloc_init(AMSEngagement);
  v25[0] = v5;
  v24[0] = @"bundleIdentifier";
  v24[1] = @"userInitiated";
  v12 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v6, "userInitiated")}];
  v25[1] = v12;
  v24[2] = @"authorizationOptions";
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v6, "authorizationOptions")}];
  v25[2] = v13;
  v24[3] = @"metricsOverlay";
  v14 = [v6 metricsOverlay];

  v15 = MEMORY[0x1E695E0F8];
  if (v14)
  {
    v15 = v14;
  }

  v25[3] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:4];

  v17 = [[AMSEngagementPlacementInfo alloc] initWithPlacement:@"notificationAuthorization" context:v16];
  v18 = [AMSEngagementMessageEvent alloc];
  v23 = v17;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
  v20 = [(AMSEngagementMessageEvent *)v18 initWithServiceType:@"com.apple.notificationAuthorization" placementInfo:v19];

  v21 = [(AMSEngagement *)v11 enqueueMessageEvent:v20];

  return v21;
}

- (id)requestAuthorization
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = +[AMSLogConfig sharedConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = v5;
    v7 = AMSLogKey();
    *buf = 138543618;
    v22 = v5;
    v23 = 2114;
    v24 = v7;
    _os_log_impl(&dword_192869000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Starting notification authorization task", buf, 0x16u);
  }

  v8 = objc_alloc_init(AMSUserNotificationAuthorizationResult);
  v9 = objc_alloc_init(AMSMutablePromise);
  objc_initWeak(buf, self);
  v10 = [(AMSUserNotificationAuthorizationTask *)self notificationCenter];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __60__AMSUserNotificationAuthorizationTask_requestAuthorization__block_invoke;
  v17[3] = &unk_1E73BDF28;
  objc_copyWeak(&v20, buf);
  v11 = v9;
  v18 = v11;
  v12 = v8;
  v19 = v12;
  [v10 getNotificationSettingsWithCompletionHandler:v17];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __60__AMSUserNotificationAuthorizationTask_requestAuthorization__block_invoke_5;
  v16[3] = &unk_1E73B34B8;
  v16[4] = self;
  [(AMSPromise *)v11 addErrorBlock:v16];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __60__AMSUserNotificationAuthorizationTask_requestAuthorization__block_invoke_44;
  v15[3] = &unk_1E73BDF50;
  v15[4] = self;
  [(AMSPromise *)v11 addSuccessBlock:v15];
  v13 = v11;

  objc_destroyWeak(&v20);
  objc_destroyWeak(buf);

  return v13;
}

void __60__AMSUserNotificationAuthorizationTask_requestAuthorization__block_invoke(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if ([v3 authorizationStatus] == 1 || objc_msgSend(v3, "authorizationStatus") == 2)
  {
    v5 = AMSError(11, @"User has already accepted or denied notification authorization.", 0, 0);
    [a1[4] finishWithError:v5];
  }

  else
  {
    v5 = [WeakRetained _startEngagementAuthorizationWithResult:a1[5]];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __60__AMSUserNotificationAuthorizationTask_requestAuthorization__block_invoke_2;
    v9[3] = &unk_1E73B34B8;
    v10 = a1[4];
    [v5 addErrorBlock:v9];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __60__AMSUserNotificationAuthorizationTask_requestAuthorization__block_invoke_3;
    v6[3] = &unk_1E73B71B0;
    v6[4] = WeakRetained;
    v7 = a1[5];
    v8 = a1[4];
    [v5 addSuccessBlock:v6];
  }
}

void __60__AMSUserNotificationAuthorizationTask_requestAuthorization__block_invoke_3(id *a1)
{
  v2 = [a1[4] notificationCenter];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __60__AMSUserNotificationAuthorizationTask_requestAuthorization__block_invoke_4;
  v3[3] = &unk_1E73BDF00;
  v4 = a1[5];
  v5 = a1[6];
  [v2 getNotificationSettingsWithCompletionHandler:v3];
}

uint64_t __60__AMSUserNotificationAuthorizationTask_requestAuthorization__block_invoke_4(uint64_t a1, void *a2)
{
  [*(a1 + 32) setAuthorizationStatus:{objc_msgSend(a2, "authorizationStatus")}];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v3 finishWithResult:v4];
}

void __60__AMSUserNotificationAuthorizationTask_requestAuthorization__block_invoke_5(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = +[AMSLogConfig sharedConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = objc_opt_class();
    v6 = AMSLogKey();
    v7 = 138543874;
    v8 = v5;
    v9 = 2114;
    v10 = v6;
    v11 = 2114;
    v12 = v2;
    _os_log_impl(&dword_192869000, v4, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Notification authorization completed with error: %{public}@", &v7, 0x20u);
  }
}

void __60__AMSUserNotificationAuthorizationTask_requestAuthorization__block_invoke_44()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = +[AMSLogConfig sharedConfig];
  if (!v0)
  {
    v0 = +[AMSLogConfig sharedConfig];
  }

  v1 = [v0 OSLogObject];
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = objc_opt_class();
    v3 = v2;
    v4 = AMSLogKey();
    v5 = 138543618;
    v6 = v2;
    v7 = 2114;
    v8 = v4;
    _os_log_impl(&dword_192869000, v1, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Notification authorization completed successfully", &v5, 0x16u);
  }
}

- (id)_presentDialogForUserInitiatedWithCompletion
{
  v3 = objc_alloc_init(AMSMutableBinaryPromise);
  v4 = [(AMSUserNotificationAuthorizationTask *)self notificationCenter];
  v5 = [(AMSUserNotificationAuthorizationTask *)self options];
  v6 = [v5 authorizationOptions];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __84__AMSUserNotificationAuthorizationTask__presentDialogForUserInitiatedWithCompletion__block_invoke;
  v11[3] = &unk_1E73B5368;
  v11[4] = self;
  v7 = v3;
  v12 = v7;
  [v4 requestAuthorizationWithOptions:v6 completionHandler:v11];

  v8 = v12;
  v9 = v7;

  return v7;
}

void __84__AMSUserNotificationAuthorizationTask__presentDialogForUserInitiatedWithCompletion__block_invoke(uint64_t a1, int a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = +[AMSLogConfig sharedConfig];
  v7 = v6;
  if (a2)
  {
    if (!v6)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = AMSLogKey();
      v14 = 138543618;
      v15 = v9;
      v16 = 2114;
      v17 = v10;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Authorization granted.", &v14, 0x16u);
    }

    [*(a1 + 40) finishWithSuccess];
  }

  else
  {
    if (!v6)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v7 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v13 = AMSLogKey();
      v14 = 138543874;
      v15 = v12;
      v16 = 2114;
      v17 = v13;
      v18 = 2114;
      v19 = v5;
      _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to acquire authorization. Error: %{public}@", &v14, 0x20u);
    }

    [*(a1 + 40) finishWithError:v5];
  }
}

- (id)_startEngagementAuthorizationWithResult:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(AMSMutableBinaryPromise);
  v6 = objc_opt_class();
  v7 = [(AMSUserNotificationAuthorizationTask *)self bundleIdentifier];
  v8 = [(AMSUserNotificationAuthorizationTask *)self options];
  v9 = [v6 recordEngagementEventWithBundleIdentifier:v7 options:v8];

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __80__AMSUserNotificationAuthorizationTask__startEngagementAuthorizationWithResult___block_invoke;
  v19[3] = &unk_1E73B34B8;
  v10 = v5;
  v20 = v10;
  [v9 addErrorBlock:v19];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __80__AMSUserNotificationAuthorizationTask__startEngagementAuthorizationWithResult___block_invoke_2;
  v16[3] = &unk_1E73BDFA0;
  v16[4] = self;
  v11 = v10;
  v17 = v11;
  v18 = v4;
  v12 = v4;
  [v9 addSuccessBlock:v16];
  v13 = v18;
  v14 = v11;

  return v11;
}

void __80__AMSUserNotificationAuthorizationTask__startEngagementAuthorizationWithResult___block_invoke_2(id *a1, void *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[AMSLogConfig sharedConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = AMSLogKey();
    *buf = 138543618;
    v35 = v6;
    v36 = 2114;
    v37 = v7;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Successfully obtained response", buf, 0x16u);
  }

  v8 = [objc_opt_class() _findEngagementRequestInResponse:v3];
  if (v8)
  {
    v9 = +[AMSLogConfig sharedConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = AMSLogKey();
      *buf = 138543618;
      v35 = v11;
      v36 = 2114;
      v37 = v12;
      _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Handling engagement request", buf, 0x16u);
    }

    [v8 setSilentlyCheckURL:1];
    v13 = [a1[4] delegate];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __80__AMSUserNotificationAuthorizationTask__startEngagementAuthorizationWithResult___block_invoke_52;
    v29[3] = &unk_1E73BDF78;
    v30 = a1[6];
    v14 = v8;
    v15 = a1[4];
    v16 = a1[5];
    v31 = v14;
    v32 = v15;
    v33 = v16;
    [v13 handleEngagementRequest:v14 completion:v29];

    v17 = v30;
    goto LABEL_23;
  }

  v18 = [a1[4] options];
  if (![v18 userInitiated])
  {
    v24 = [v3 data];
    v25 = [v24 objectForKeyedSubscript:@"forceTCC"];
    if (objc_opt_respondsToSelector())
    {
      v26 = [v3 data];
      v27 = [v26 objectForKeyedSubscript:@"forceTCC"];
      v28 = [v27 BOOLValue];

      if (v28)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }

    v17 = AMSError(12, @"No engagement request obtained.", 0, 0);
    [a1[5] finishWithError:v17];
    goto LABEL_23;
  }

LABEL_13:
  v19 = +[AMSLogConfig sharedConfig];
  if (!v19)
  {
    v19 = +[AMSLogConfig sharedConfig];
  }

  v20 = [v19 OSLogObject];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = objc_opt_class();
    v22 = AMSLogKey();
    *buf = 138543618;
    v35 = v21;
    v36 = 2114;
    v37 = v22;
    _os_log_impl(&dword_192869000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No engagement request obtained, attempting to present TCC dialog instead.", buf, 0x16u);
  }

  v23 = a1[5];
  v17 = [a1[4] _presentDialogForUserInitiatedWithCompletion];
  [v23 finishWithPromise:v17];
LABEL_23:
}

void __80__AMSUserNotificationAuthorizationTask__startEngagementAuthorizationWithResult___block_invoke_52(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [*(a1 + 32) setRequest:*(a1 + 40)];
  v5 = +[AMSLogConfig sharedConfig];
  v6 = v5;
  if (v4)
  {
    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = AMSLogKey();
      v13 = 138543874;
      v14 = v8;
      v15 = 2114;
      v16 = v9;
      v17 = 2114;
      v18 = v4;
      _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error while presenting engagement: %{public}@", &v13, 0x20u);
    }

    [*(a1 + 56) finishWithError:v4];
  }

  else
  {
    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v10 = [v6 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = AMSLogKey();
      v13 = 138543618;
      v14 = v11;
      v15 = 2114;
      v16 = v12;
      _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Engagement completed successfully", &v13, 0x16u);
    }

    [*(a1 + 56) finishWithSuccess];
  }
}

- (AMSUserNotificationAuthorizationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end