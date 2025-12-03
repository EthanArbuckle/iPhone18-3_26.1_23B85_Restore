@interface AMSUIWebAppOverlayAction
- (AMSUIWebAppOverlayAction)initWithJSObject:(id)object context:(id)context;
- (BOOL)_shouldUseStoreKit;
- (id)_determineScene;
- (id)_dismissOverlay;
- (id)_dismissStoreKitOverlay;
- (id)_presentOverlayWithAppIdentifier:(id)identifier;
- (id)_presentStoreKitOverlayWithAppIdentifier:(id)identifier;
- (id)runAction;
- (void)storeOverlay:(id)overlay didFailToLoadWithError:(id)error;
- (void)storeOverlay:(id)overlay didFinishDismissal:(id)dismissal;
- (void)storeOverlay:(id)overlay didFinishPresentation:(id)presentation;
@end

@implementation AMSUIWebAppOverlayAction

- (AMSUIWebAppOverlayAction)initWithJSObject:(id)object context:(id)context
{
  objectCopy = object;
  v26.receiver = self;
  v26.super_class = AMSUIWebAppOverlayAction;
  v7 = [(AMSUIWebAction *)&v26 initWithJSObject:objectCopy context:context];
  if (v7)
  {
    v8 = [objectCopy objectForKeyedSubscript:@"dismiss"];
    if (objc_opt_respondsToSelector())
    {
      v9 = [objectCopy objectForKeyedSubscript:@"dismiss"];
      v7->_dismiss = [v9 BOOLValue];
    }

    else
    {
      v7->_dismiss = 0;
    }

    v10 = [objectCopy objectForKeyedSubscript:@"appIdentifier"];
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

    v13 = [objectCopy objectForKeyedSubscript:@"campaignToken"];
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

    v16 = [objectCopy objectForKeyedSubscript:@"providerToken"];
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

    v19 = [objectCopy objectForKeyedSubscript:@"customProductPageIdentifier"];
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

    v22 = [objectCopy objectForKeyedSubscript:@"latestReleaseID"];
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
    appIdentifier = [(AMSUIWebAppOverlayAction *)self appIdentifier];
    if ([appIdentifier length])
    {
      if ([(AMSUIWebAppOverlayAction *)self _shouldUseStoreKit])
      {
        [(AMSUIWebAppOverlayAction *)self _presentStoreKitOverlayWithAppIdentifier:appIdentifier];
      }

      else
      {
        [(AMSUIWebAppOverlayAction *)self _presentOverlayWithAppIdentifier:appIdentifier];
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
  selfCopy = self;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __37__AMSUIWebAppOverlayAction_runAction__block_invoke;
  v9[3] = &unk_1E7F25A60;
  v9[4] = selfCopy;
  v9[5] = v10;
  [v4 addFinishBlock:v9];
  promiseAdapter = [v4 promiseAdapter];
  _Block_object_dispose(v10, 8);

  return promiseAdapter;
}

void __37__AMSUIWebAppOverlayAction_runAction__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setPresentationOverlay:0];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

- (void)storeOverlay:(id)overlay didFailToLoadWithError:(id)error
{
  errorCopy = error;
  storeKitOverlayPromise = [(AMSUIWebAppOverlayAction *)self storeKitOverlayPromise];
  [storeKitOverlayPromise finishWithError:errorCopy];
}

- (void)storeOverlay:(id)overlay didFinishPresentation:(id)presentation
{
  v4 = [(AMSUIWebAppOverlayAction *)self storeKitOverlayPromise:overlay];
  [v4 finishWithSuccess];
}

- (void)storeOverlay:(id)overlay didFinishDismissal:(id)dismissal
{
  v4 = [(AMSUIWebAppOverlayAction *)self storeKitOverlayPromise:overlay];
  [v4 finishWithSuccess];
}

- (id)_determineScene
{
  context = [(AMSUIWebAction *)self context];
  flowController = [context flowController];
  currentContainer = [flowController currentContainer];
  view = [currentContainer view];
  window = [view window];
  windowScene = [window windowScene];

  return windowScene;
}

- (id)_dismissOverlay
{
  v16 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = AMSLogKey();
    v12 = 138543618;
    v13 = v5;
    v14 = 2114;
    v15 = v6;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Dismissing app overlay", &v12, 0x16u);
  }

  context = [(AMSUIWebAction *)self context];
  webPage = [context webPage];
  dismissAppOverlay = [webPage dismissAppOverlay];

  v10 = *MEMORY[0x1E69E9840];

  return dismissAppOverlay;
}

- (id)_dismissStoreKitOverlay
{
  v16 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = AMSLogKey();
    v12 = 138543618;
    v13 = v5;
    v14 = 2114;
    v15 = v6;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Dismissing app overlay using StoreKit", &v12, 0x16u);
  }

  v7 = objc_opt_new();
  [(AMSUIWebAppOverlayAction *)self setStoreKitOverlayPromise:v7];
  v8 = getSKOverlayClass[0]();
  _determineScene = [(AMSUIWebAppOverlayAction *)self _determineScene];
  [(objc_class *)v8 dismissOverlayInScene:_determineScene];

  v10 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)_presentOverlayWithAppIdentifier:(id)identifier
{
  v20 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = AMSLogKey();
    v14 = 138543874;
    v15 = v7;
    v16 = 2114;
    v17 = v8;
    v18 = 2114;
    v19 = identifierCopy;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Presenting app overlay: %{public}@", &v14, 0x20u);
  }

  context = [(AMSUIWebAction *)self context];
  webPage = [context webPage];
  v11 = [webPage presentAppOverlayWithAdamID:identifierCopy];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)_presentStoreKitOverlayWithAppIdentifier:(id)identifier
{
  v25 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = AMSLogKey();
    v19 = 138543874;
    v20 = v7;
    v21 = 2114;
    v22 = v8;
    v23 = 2114;
    v24 = identifierCopy;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Presenting app overlay using StoreKit: %{public}@", &v19, 0x20u);
  }

  v9 = objc_opt_new();
  [(AMSUIWebAppOverlayAction *)self setStoreKitOverlayPromise:v9];
  v10 = [objc_alloc(getSKOverlayAppConfigurationClass()) initWithAppIdentifier:identifierCopy position:0];
  campaignToken = [(AMSUIWebAppOverlayAction *)self campaignToken];
  [v10 setCampaignToken:campaignToken];

  providerToken = [(AMSUIWebAppOverlayAction *)self providerToken];
  [v10 setProviderToken:providerToken];

  customProductPageIdentifier = [(AMSUIWebAppOverlayAction *)self customProductPageIdentifier];
  [v10 setCustomProductPageIdentifier:customProductPageIdentifier];

  latestReleaseID = [(AMSUIWebAppOverlayAction *)self latestReleaseID];
  [v10 setLatestReleaseID:latestReleaseID];

  [v10 setUserDismissible:1];
  v15 = [objc_alloc(getSKOverlayClass[0]()) initWithConfiguration:v10];
  [v15 setDelegate:self];
  _determineScene = [(AMSUIWebAppOverlayAction *)self _determineScene];
  [v15 presentInScene:_determineScene];

  [(AMSUIWebAppOverlayAction *)self setPresentationOverlay:v15];
  v17 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BOOL)_shouldUseStoreKit
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  connectedScenes = [mEMORY[0x1E69DC668] connectedScenes];
  v4 = [connectedScenes count] != 0;

  return v4;
}

@end