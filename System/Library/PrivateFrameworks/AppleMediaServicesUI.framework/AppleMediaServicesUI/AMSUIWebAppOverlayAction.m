@interface AMSUIWebAppOverlayAction
- (AMSUIWebAppOverlayAction)initWithJSObject:(id)a3 context:(id)a4;
- (BOOL)_shouldUseStoreKit;
- (id)_determineScene;
- (id)_dismissOverlay;
- (id)_dismissStoreKitOverlay;
- (id)_presentOverlayWithAppIdentifier:(id)a3;
- (id)_presentStoreKitOverlayWithAppIdentifier:(id)a3;
- (id)runAction;
- (void)storeOverlay:(id)a3 didFailToLoadWithError:(id)a4;
- (void)storeOverlay:(id)a3 didFinishDismissal:(id)a4;
- (void)storeOverlay:(id)a3 didFinishPresentation:(id)a4;
@end

@implementation AMSUIWebAppOverlayAction

- (AMSUIWebAppOverlayAction)initWithJSObject:(id)a3 context:(id)a4
{
  v6 = a3;
  v26.receiver = self;
  v26.super_class = AMSUIWebAppOverlayAction;
  v7 = [(AMSUIWebAction *)&v26 initWithJSObject:v6 context:a4];
  if (v7)
  {
    v8 = [v6 objectForKeyedSubscript:@"dismiss"];
    if (objc_opt_respondsToSelector())
    {
      v9 = [v6 objectForKeyedSubscript:@"dismiss"];
      v7->_dismiss = [v9 BOOLValue];
    }

    else
    {
      v7->_dismiss = 0;
    }

    v10 = [v6 objectForKeyedSubscript:@"appIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    appIdentifier = v7->_appIdentifier;
    v7->_appIdentifier = v11;

    v13 = [v6 objectForKeyedSubscript:@"campaignToken"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    campaignToken = v7->_campaignToken;
    v7->_campaignToken = v14;

    v16 = [v6 objectForKeyedSubscript:@"providerToken"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    providerToken = v7->_providerToken;
    v7->_providerToken = v17;

    v19 = [v6 objectForKeyedSubscript:@"customProductPageIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    customProductPageIdentifier = v7->_customProductPageIdentifier;
    v7->_customProductPageIdentifier = v20;

    v22 = [v6 objectForKeyedSubscript:@"latestReleaseID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    latestReleaseID = v7->_latestReleaseID;
    v7->_latestReleaseID = v23;
  }

  return v7;
}

- (id)runAction
{
  if ([(AMSUIWebAppOverlayAction *)self dismiss])
  {
    if ([(AMSUIWebAppOverlayAction *)self _shouldUseStoreKit])
    {
      [(AMSUIWebAppOverlayAction *)self _dismissStoreKitOverlay];
    }

    else
    {
      [(AMSUIWebAppOverlayAction *)self _dismissOverlay];
    }
    v4 = ;
  }

  else
  {
    v3 = [(AMSUIWebAppOverlayAction *)self appIdentifier];
    if ([v3 length])
    {
      if ([(AMSUIWebAppOverlayAction *)self _shouldUseStoreKit])
      {
        [(AMSUIWebAppOverlayAction *)self _presentStoreKitOverlayWithAppIdentifier:v3];
      }

      else
      {
        [(AMSUIWebAppOverlayAction *)self _presentOverlayWithAppIdentifier:v3];
      }
      v4 = ;
    }

    else
    {
      v5 = MEMORY[0x1E698C7F0];
      v6 = AMSError();
      v4 = [v5 promiseWithError:v6];
    }
  }

  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = __Block_byref_object_copy__3;
  v10[4] = __Block_byref_object_dispose__3;
  v11 = self;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __37__AMSUIWebAppOverlayAction_runAction__block_invoke;
  v9[3] = &unk_1E7F25A60;
  v9[4] = v11;
  v9[5] = v10;
  [v4 addFinishBlock:v9];
  v7 = [v4 promiseAdapter];
  _Block_object_dispose(v10, 8);

  return v7;
}

void __37__AMSUIWebAppOverlayAction_runAction__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setPresentationOverlay:0];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

- (void)storeOverlay:(id)a3 didFailToLoadWithError:(id)a4
{
  v5 = a4;
  v6 = [(AMSUIWebAppOverlayAction *)self storeKitOverlayPromise];
  [v6 finishWithError:v5];
}

- (void)storeOverlay:(id)a3 didFinishPresentation:(id)a4
{
  v4 = [(AMSUIWebAppOverlayAction *)self storeKitOverlayPromise:a3];
  [v4 finishWithSuccess];
}

- (void)storeOverlay:(id)a3 didFinishDismissal:(id)a4
{
  v4 = [(AMSUIWebAppOverlayAction *)self storeKitOverlayPromise:a3];
  [v4 finishWithSuccess];
}

- (id)_determineScene
{
  v2 = [(AMSUIWebAction *)self context];
  v3 = [v2 flowController];
  v4 = [v3 currentContainer];
  v5 = [v4 view];
  v6 = [v5 window];
  v7 = [v6 windowScene];

  return v7;
}

- (id)_dismissOverlay
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v3)
  {
    v3 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = AMSLogKey();
    v12 = 138543618;
    v13 = v5;
    v14 = 2114;
    v15 = v6;
    _os_log_impl(&dword_1BB036000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Dismissing app overlay", &v12, 0x16u);
  }

  v7 = [(AMSUIWebAction *)self context];
  v8 = [v7 webPage];
  v9 = [v8 dismissAppOverlay];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)_dismissStoreKitOverlay
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v3)
  {
    v3 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = AMSLogKey();
    v12 = 138543618;
    v13 = v5;
    v14 = 2114;
    v15 = v6;
    _os_log_impl(&dword_1BB036000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Dismissing app overlay using StoreKit", &v12, 0x16u);
  }

  v7 = objc_opt_new();
  [(AMSUIWebAppOverlayAction *)self setStoreKitOverlayPromise:v7];
  v8 = getSKOverlayClass[0]();
  v9 = [(AMSUIWebAppOverlayAction *)self _determineScene];
  [(objc_class *)v8 dismissOverlayInScene:v9];

  v10 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)_presentOverlayWithAppIdentifier:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v5)
  {
    v5 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = AMSLogKey();
    v14 = 138543874;
    v15 = v7;
    v16 = 2114;
    v17 = v8;
    v18 = 2114;
    v19 = v4;
    _os_log_impl(&dword_1BB036000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Presenting app overlay: %{public}@", &v14, 0x20u);
  }

  v9 = [(AMSUIWebAction *)self context];
  v10 = [v9 webPage];
  v11 = [v10 presentAppOverlayWithAdamID:v4];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)_presentStoreKitOverlayWithAppIdentifier:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v5)
  {
    v5 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = AMSLogKey();
    v19 = 138543874;
    v20 = v7;
    v21 = 2114;
    v22 = v8;
    v23 = 2114;
    v24 = v4;
    _os_log_impl(&dword_1BB036000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Presenting app overlay using StoreKit: %{public}@", &v19, 0x20u);
  }

  v9 = objc_opt_new();
  [(AMSUIWebAppOverlayAction *)self setStoreKitOverlayPromise:v9];
  v10 = [objc_alloc(getSKOverlayAppConfigurationClass()) initWithAppIdentifier:v4 position:0];
  v11 = [(AMSUIWebAppOverlayAction *)self campaignToken];
  [v10 setCampaignToken:v11];

  v12 = [(AMSUIWebAppOverlayAction *)self providerToken];
  [v10 setProviderToken:v12];

  v13 = [(AMSUIWebAppOverlayAction *)self customProductPageIdentifier];
  [v10 setCustomProductPageIdentifier:v13];

  v14 = [(AMSUIWebAppOverlayAction *)self latestReleaseID];
  [v10 setLatestReleaseID:v14];

  [v10 setUserDismissible:1];
  v15 = [objc_alloc(getSKOverlayClass[0]()) initWithConfiguration:v10];
  [v15 setDelegate:self];
  v16 = [(AMSUIWebAppOverlayAction *)self _determineScene];
  [v15 presentInScene:v16];

  [(AMSUIWebAppOverlayAction *)self setPresentationOverlay:v15];
  v17 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BOOL)_shouldUseStoreKit
{
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  v3 = [v2 connectedScenes];
  v4 = [v3 count] != 0;

  return v4;
}

@end