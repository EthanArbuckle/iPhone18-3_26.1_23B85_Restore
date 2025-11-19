@interface SKProductRemoteViewTask
+ (id)_unavailableErrorWithUserInfo:(id)a3;
+ (id)_unknownErrorWithUserInfo:(id)a3;
- (BOOL)_isProductUnavailableError:(id)a3;
- (BOOL)_isViewControllerDescendant:(id)a3 ofViewController:(id)a4;
- (SKProductRemoteViewTask)initWithStoreController:(id)a3;
- (id)_hostApplicationIdentifier;
- (id)_keyProfileForProductLookup;
- (id)_productIDFromParameters:(id)a3;
- (int64_t)extensionControllerState;
- (void)_addChildController:(id)a3 toController:(id)a4;
- (void)_addConfigurationAction:(id)a3 needsEntitlement:(BOOL)a4;
- (void)_didReceiveExtensionRemoteViewController:(id)a3;
- (void)_dismissProductViewControllerWithResult:(int64_t)a3;
- (void)_displayItemIfNeeded;
- (void)_executeConfigurationActionsForExtension:(id)a3;
- (void)_executeConfigurationActionsForUIService:(id)a3;
- (void)_finishWithResult:(int64_t)a3;
- (void)_killExtensionIfNecessary;
- (void)_loadUIServiceIfNecessaryWithCompletion:(id)a3;
- (void)_showErrorController;
- (void)_showExtensionFromUIService;
- (void)_showExtensionWithID:(id)a3;
- (void)cardControllerDidDismiss;
- (void)dealloc;
- (void)loadProductWithPageDictionary:(id)a3 completionBlock:(id)a4;
- (void)loadProductWithRequest:(id)a3 completionBlock:(id)a4;
- (void)loadProductWithURL:(id)a3 completionBlock:(id)a4;
- (void)lookupProductWithParameters:(id)a3 completion:(id)a4;
- (void)overridePresentationStyle:(id)a3;
- (void)performLookupWithIdentifier:(NSString *)a3 parameters:(NSDictionary *)a4 logKey:(NSString *)a5 keyProfile:(NSString *)a6 completionHandler:(id)a7;
- (void)performLookupWithURL:(NSURL *)a3 logKey:(NSString *)a4 keyProfile:(NSString *)a5 completionHandler:(id)a6;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)productPageRemoteViewController:(id)a3 didTerminateWithError:(id)a4;
- (void)productPageRemoteViewController:(id)a3 finishWithResult:(unint64_t)a4 completion:(id)a5;
- (void)productPageRemoteViewController:(id)a3 userDidInteractWithProduct:(unint64_t)a4;
- (void)productPageRemoteViewControllerLoadDidFinish:(id)a3;
- (void)setAdditionalBuyParameters:(id)a3;
- (void)setAffiliateIdentifier:(id)a3;
- (void)setAskToBuy:(BOOL)a3;
- (void)setCancelButtonTitle:(id)a3;
- (void)setClientIdentifier:(id)a3;
- (void)setPresentationStyle:(id)a3;
- (void)setPreview:(id)a3;
- (void)setProductPageStyle:(id)a3;
- (void)setPromptString:(id)a3;
- (void)setRightBarButtonTitle:(id)a3;
- (void)setScriptContextDictionary:(id)a3;
- (void)setShowsRightBarButton:(BOOL)a3;
- (void)setShowsStoreButton:(id)a3;
- (void)setUsageContext:(id)a3;
- (void)setVisibleInClientWindow:(id)a3;
- (void)storeProductViewControllerWillDisappear;
- (void)storeProductViewControllerWillDismiss;
@end

@implementation SKProductRemoteViewTask

- (SKProductRemoteViewTask)initWithStoreController:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v25.receiver = self;
  v25.super_class = SKProductRemoteViewTask;
  v5 = [(SKProductRemoteViewTask *)&v25 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_storeController, v4);
    v6->_isAskToBuy = 0;
    extensionID = v6->_extensionID;
    v6->_extensionID = 0;

    v8 = [MEMORY[0x1E696AFB0] UUID];
    v9 = [v8 UUIDString];
    v10 = [v9 componentsSeparatedByString:@"-"];
    v11 = [v10 firstObject];
    logKey = v6->_logKey;
    v6->_logKey = v11;

    cachedParameters = v6->_cachedParameters;
    v6->_cachedParameters = 0;

    lookupResult = v6->_lookupResult;
    v6->_lookupResult = 0;

    lookupError = v6->_lookupError;
    v6->_lookupError = 0;

    v6->_isFetchingExtension = 0;
    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    entitledConfigurationActions = v6->_entitledConfigurationActions;
    v6->_entitledConfigurationActions = v16;

    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    configurationActions = v6->_configurationActions;
    v6->_configurationActions = v18;

    hostApplicationOverride = v6->_hostApplicationOverride;
    v6->_hostApplicationOverride = 0;

    *&v6->_isPreview = 0;
    v6->_visibleInClientWindow = 0;
    v6->_modalPresentationStyle = -2;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v21 = objc_opt_class();
      v22 = v6->_logKey;
      *buf = 138543618;
      v27 = v21;
      v28 = 2114;
      v29 = v22;
      v23 = v21;
      _os_log_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@]: Start.", buf, 0x16u);
    }
  }

  return v6;
}

- (void)dealloc
{
  v12 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    logKey = self->_logKey;
    *buf = 138543618;
    v9 = v3;
    v10 = 2114;
    v11 = logKey;
    v5 = v3;
    _os_log_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@]: Dealloc", buf, 0x16u);
  }

  extensionRemoteCardContainerViewController = self->_extensionRemoteCardContainerViewController;
  self->_extensionRemoteCardContainerViewController = 0;

  [(SKProductRemoteViewTask *)self _killExtensionIfNecessary];
  v7.receiver = self;
  v7.super_class = SKProductRemoteViewTask;
  [(SKProductRemoteViewTask *)&v7 dealloc];
}

- (void)_dismissProductViewControllerWithResult:(int64_t)a3
{
  v12 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    logKey = self->_logKey;
    *buf = 138543618;
    v9 = self;
    v10 = 2114;
    v11 = logKey;
    _os_log_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@]: Finishing controller.", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_storeController);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__SKProductRemoteViewTask__dismissProductViewControllerWithResult___block_invoke;
  v7[3] = &unk_1E7B28AF0;
  v7[4] = self;
  v7[5] = a3;
  [WeakRetained dismissViewControllerAnimated:1 completion:v7];
}

void __67__SKProductRemoteViewTask__dismissProductViewControllerWithResult___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  WeakRetained = objc_loadWeakRetained((v2 + 144));
  v5 = WeakRetained;
  if (v3 == 1)
  {
    [WeakRetained _didFinishWithResult:*(a1 + 40)];
  }

  else
  {
    [WeakRetained _didFinish];
  }
}

- (void)lookupProductWithParameters:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_storeController);
  v9 = [WeakRetained _isInvalidSubclass];

  if (!v9)
  {
    v10 = [(SKProductRemoteViewTask *)self _productIDFromParameters:v6];
    if (v10)
    {
      self->_didLoad = 0;
      objc_initWeak(&location, self);
      v11 = [(NSString *)self->_logKey copy];
      v12 = [(SKProductRemoteViewTask *)self _keyProfileForProductLookup];
      v13 = [v6 copy];
      cachedParameters = self->_cachedParameters;
      self->_cachedParameters = v13;

      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __66__SKProductRemoteViewTask_lookupProductWithParameters_completion___block_invoke;
      v16[3] = &unk_1E7B28B18;
      objc_copyWeak(&v18, &location);
      v17 = v7;
      [(SKProductRemoteViewTask *)self performLookupWithIdentifier:v10 parameters:v6 logKey:v11 keyProfile:v12 completionHandler:v16];

      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
    }

    else
    {
      v15 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"SKErrorDomain" code:5 userInfo:0];
      if (v7)
      {
        (*(v7 + 2))(v7, 0, v15);
      }
    }

    goto LABEL_9;
  }

  if (v7)
  {
    v10 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"SKErrorDomain" code:0 userInfo:0];
    (*(v7 + 2))(v7, 0, v10);
LABEL_9:
  }
}

void __66__SKProductRemoteViewTask_lookupProductWithParameters_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = objc_loadWeakRetained(WeakRetained + 18);
    v10 = [v9 _isInvalidSubclass];

    if (!v10)
    {
      if (!v5 || v6)
      {
        objc_storeStrong(v8 + 8, a3);
        v27 = *(a1 + 32);
        if (v27)
        {
          v25 = *(v27 + 16);
          goto LABEL_15;
        }
      }

      else
      {
        v11 = [v5 deepLinkURL];
        if (v11)
        {
          v12 = v11;
          v13 = [MEMORY[0x1E69DC668] sharedApplication];
          v14 = [v5 deepLinkURL];
          v15 = [v13 canOpenURL:v14];

          if ((v15 & 1) == 0)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              __66__SKProductRemoteViewTask_lookupProductWithParameters_completion___block_invoke_cold_1();
            }

            v28 = [SKProductRemoteViewTask _unknownErrorWithUserInfo:0];
            objc_storeStrong(v8 + 8, v28);
            v29 = *(a1 + 32);
            if (v29)
            {
              (*(v29 + 16))(v29, 0, v28);
            }

            goto LABEL_21;
          }
        }

        v16 = [v5 deepLinkURL];
        v17 = v8[9];
        v8[9] = v16;

        v18 = [v5 resultDictionary];
        v19 = v8[7];
        v8[7] = v18;

        *(v8 + 8) = [v5 isEntitled];
        v20 = [v5 extensionBundleID];
        v21 = v8[2];
        v8[2] = v20;

        v22 = [v5 parameters];
        v23 = v8[6];
        v8[6] = v22;

        *(v8 + 160) = [v5 hasPresentationEntitlement];
        v24 = *(a1 + 32);
        if (v24)
        {
          v25 = *(v24 + 16);
LABEL_15:
          v25();
        }
      }

LABEL_21:
      [v8 _displayItemIfNeeded];
      goto LABEL_22;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __66__SKProductRemoteViewTask_lookupProductWithParameters_completion___block_invoke_cold_2();
  }

  if (*(a1 + 32))
  {
    v26 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"SKErrorDomain" code:0 userInfo:0];
    (*(*(a1 + 32) + 16))();
  }

LABEL_22:
}

- (int64_t)extensionControllerState
{
  result = self->_extensionRemoteCardContainerViewController;
  if (result)
  {
    return [result didDisappear];
  }

  return result;
}

- (void)storeProductViewControllerWillDisappear
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AAE8] mainBundle];
  v4 = [v3 bundleIdentifier];
  v5 = [@"com.apple.Spotlight" isEqualToString:v4];

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      logKey = self->_logKey;
      *v9 = 138543618;
      *&v9[4] = v6;
      *&v9[12] = 2114;
      *&v9[14] = logKey;
      v8 = v6;
      _os_log_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@]: Disappearing.", v9, 0x16u);
    }

    [(SKProductRemoteViewTask *)self finishImmediately:*v9];
  }
}

- (void)storeProductViewControllerWillDismiss
{
  v10 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    logKey = self->_logKey;
    *v9 = 138543618;
    *&v9[4] = v3;
    *&v9[12] = 2114;
    *&v9[14] = logKey;
    v5 = v3;
    _os_log_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@]: Will dismiss.", v9, 0x16u);
  }

  v6 = [MEMORY[0x1E696AAE8] mainBundle];
  v7 = [v6 bundleIdentifier];
  v8 = [@"com.apple.Spotlight" isEqualToString:v7];

  if (v8)
  {
    [(ServiceCardContainerViewController *)self->_extensionRemoteCardContainerViewController dismissViewControllerAnimated:1 completion:&__block_literal_global_12];
  }
}

void __64__SKProductRemoteViewTask_storeProductViewControllerWillDismiss__block_invoke()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *v0 = 0;
    _os_log_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Did dismiss.", v0, 2u);
  }
}

- (void)overridePresentationStyle:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    logKey = self->_logKey;
    v7 = v5;
    v8 = 138543874;
    v9 = v5;
    v10 = 2114;
    v11 = logKey;
    v12 = 2048;
    v13 = [v4 integerValue];
    _os_log_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@]: Received override presentation style: %ld", &v8, 0x20u);
  }

  self->_modalPresentationStyle = [v4 integerValue];
}

- (void)setPresentationStyle:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    logKey = self->_logKey;
    v7 = v5;
    *buf = 138543874;
    v12 = v5;
    v13 = 2114;
    v14 = logKey;
    v15 = 2048;
    v16 = [v4 integerValue];
    _os_log_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@]: Received presentation style: %ld", buf, 0x20u);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__SKProductRemoteViewTask_setPresentationStyle___block_invoke;
  v9[3] = &unk_1E7B28B40;
  v10 = v4;
  v8 = v4;
  [(SKProductRemoteViewTask *)self _addConfigurationAction:v9 needsEntitlement:0];
}

uint64_t __48__SKProductRemoteViewTask_setPresentationStyle___block_invoke(uint64_t result, uint64_t a2, void *a3)
{
  if (a3)
  {
    return [a3 setPresentationStyle:*(result + 32)];
  }

  return result;
}

- (void)setPreview:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(NSString *)self->_logKey copy];
  self->_isPreview = [v4 BOOLValue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __38__SKProductRemoteViewTask_setPreview___block_invoke;
  v8[3] = &unk_1E7B28B68;
  objc_copyWeak(&v11, &location);
  v6 = v5;
  v9 = v6;
  v7 = v4;
  v10 = v7;
  [(SKProductRemoteViewTask *)self _addConfigurationAction:v8 needsEntitlement:0];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __38__SKProductRemoteViewTask_setPreview___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      __38__SKProductRemoteViewTask_setPreview___block_invoke_cold_1();
    }

    v8 = *(a1 + 40);
    v9 = v5;
    goto LABEL_7;
  }

  if (v6)
  {
    v8 = *(a1 + 40);
    v9 = v6;
LABEL_7:
    [v9 setPreview:v8];
  }
}

- (void)setVisibleInClientWindow:(id)a3
{
  v4 = a3;
  self->_visibleInClientWindow = [v4 BOOLValue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__SKProductRemoteViewTask_setVisibleInClientWindow___block_invoke;
  v6[3] = &unk_1E7B28B40;
  v7 = v4;
  v5 = v4;
  [(SKProductRemoteViewTask *)self _addConfigurationAction:v6 needsEntitlement:0];
}

void __52__SKProductRemoteViewTask_setVisibleInClientWindow___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = v7;
  if (v7 || (v6 = v5) != 0)
  {
    [v6 setVisibleInClientWindow:*(a1 + 32)];
  }
}

- (void)_addConfigurationAction:(id)a3 needsEntitlement:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  extensionRemoteViewController = self->_extensionRemoteViewController;
  if (extensionRemoteViewController)
  {
    if (v4 && !self->_isClientEntitled)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [SKProductRemoteViewTask _addConfigurationAction:needsEntitlement:];
      }

      v7[2](v7, 0, 0);
    }

    else
    {
      (*(v6 + 2))(v6, extensionRemoteViewController, 0);
    }

    goto LABEL_16;
  }

  if (self->_uiServiceRemoteViewController)
  {
    v9 = [(NSString *)self->_logKey copy];
    objc_initWeak(&location, self);
    uiServiceRemoteViewController = self->_uiServiceRemoteViewController;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __68__SKProductRemoteViewTask__addConfigurationAction_needsEntitlement___block_invoke;
    v15[3] = &unk_1E7B28B90;
    objc_copyWeak(&v17, &location);
    v11 = v9;
    v16 = v11;
    v12 = [(_UIRemoteViewController *)uiServiceRemoteViewController serviceViewControllerProxyWithErrorHandler:v15];
    (v7)[2](v7, 0, v12);

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
LABEL_15:

    goto LABEL_16;
  }

  configurationActions = self->_configurationActions;
  if (configurationActions && !v4 || (configurationActions = self->_entitledConfigurationActions) != 0 && v4)
  {
    v11 = [v6 copy];
    v14 = _Block_copy(v11);
    [(NSMutableArray *)configurationActions addObject:v14];

    goto LABEL_15;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SKProductRemoteViewTask _addConfigurationAction:needsEntitlement:];
  }

LABEL_16:
}

void __68__SKProductRemoteViewTask__addConfigurationAction_needsEntitlement___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __68__SKProductRemoteViewTask__addConfigurationAction_needsEntitlement___block_invoke_cold_1();
  }
}

- (void)_executeConfigurationActionsForUIService:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self->_entitledConfigurationActions;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  entitledConfigurationActions = self->_entitledConfigurationActions;
  self->_entitledConfigurationActions = v6;

  v8 = self->_configurationActions;
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  configurationActions = self->_configurationActions;
  self->_configurationActions = v9;

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = v5;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    do
    {
      v15 = 0;
      do
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v11);
        }

        (*(*(*(&v25 + 1) + 8 * v15++) + 16))();
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v13);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v16 = v8;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v22;
    do
    {
      v20 = 0;
      do
      {
        if (*v22 != v19)
        {
          objc_enumerationMutation(v16);
        }

        (*(*(*(&v21 + 1) + 8 * v20) + 16))(*(*(&v21 + 1) + 8 * v20));
        ++v20;
      }

      while (v18 != v20);
      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v18);
  }
}

- (void)_executeConfigurationActionsForExtension:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self->_entitledConfigurationActions;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  entitledConfigurationActions = self->_entitledConfigurationActions;
  self->_entitledConfigurationActions = v6;

  v8 = self->_configurationActions;
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  configurationActions = self->_configurationActions;
  self->_configurationActions = v9;

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = v5;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v11);
        }

        (*(*(*(&v25 + 1) + 8 * i) + 16))();
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v13);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v16 = v8;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v22;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v22 != v19)
        {
          objc_enumerationMutation(v16);
        }

        (*(*(*(&v21 + 1) + 8 * j) + 16))(*(*(&v21 + 1) + 8 * j));
      }

      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v18);
  }
}

- (void)_displayItemIfNeeded
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__SKProductRemoteViewTask__displayItemIfNeeded__block_invoke;
  block[3] = &unk_1E7B27980;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __47__SKProductRemoteViewTask__displayItemIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 144));
  v3 = [WeakRetained presentingViewController];

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 144));
    v5 = [v4 presentedViewController];

    if (!v5)
    {
      v6 = *(a1 + 32);
      if ((*(v6 + 24) & 1) == 0)
      {
        v7 = objc_loadWeakRetained((v6 + 144));
        v8 = [v7 _isInvalidSubclass];

        v9 = *(a1 + 32);
        if (v8)
        {

          [v9 _dismissProductViewControllerWithResult:0];
        }

        else if (*(v9 + 72))
        {
          v10 = [*(v9 + 72) copy];
          objc_initWeak(&location, *(a1 + 32));
          v11 = objc_loadWeakRetained((*(a1 + 32) + 144));
          v14[0] = MEMORY[0x1E69E9820];
          v14[1] = 3221225472;
          v14[2] = __47__SKProductRemoteViewTask__displayItemIfNeeded__block_invoke_2;
          v14[3] = &unk_1E7B28BB8;
          v12 = v10;
          v15 = v12;
          objc_copyWeak(&v16, &location);
          [v11 dismissViewControllerAnimated:1 completion:v14];

          objc_destroyWeak(&v16);
          objc_destroyWeak(&location);
        }

        else if (*(v9 + 16))
        {

          [v9 _showExtensionWithID:?];
        }

        else if (*(v9 + 64) && (v13 = [v9 _isProductUnavailableError:?], v9 = *(a1 + 32), !v13))
        {

          [v9 _showErrorController];
        }

        else
        {

          [v9 _showExtensionFromUIService];
        }
      }
    }
  }
}

void __47__SKProductRemoteViewTask__displayItemIfNeeded__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  [v2 openURL:*(a1 + 32) options:MEMORY[0x1E695E0F8] completionHandler:&__block_literal_global_32];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _finishWithResult:3];
}

- (BOOL)_isViewControllerDescendant:(id)a3 ofViewController:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v5;
  v8 = v7;
  v9 = v7;
  if (v7)
  {
    v9 = v7;
    if (v7 != v6)
    {
      v9 = v7;
      do
      {
        v10 = v9;
        v9 = [v9 parentViewController];
      }

      while (v9 && v9 != v6);
    }
  }

  return v9 == v6;
}

- (BOOL)_isProductUnavailableError:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 domain];
    if ([v5 isEqualToString:@"ASDErrorDomain"])
    {
      v6 = [v4 code] == 512;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_showErrorController
{
  self->_isFetchingExtension = 1;
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __47__SKProductRemoteViewTask__showErrorController__block_invoke;
  v3[3] = &unk_1E7B28C08;
  objc_copyWeak(&v4, &location);
  [(SKProductRemoteViewTask *)self _loadUIServiceIfNecessaryWithCompletion:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __47__SKProductRemoteViewTask__showErrorController__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (v3)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __47__SKProductRemoteViewTask__showErrorController__block_invoke_2;
    v6[3] = &unk_1E7B28BE0;
    objc_copyWeak(&v7, (a1 + 32));
    [v3 showErrorPageWithCompletion:v6];
    objc_destroyWeak(&v7);
  }

  else if (WeakRetained)
  {
    *(WeakRetained + 24) = 0;
  }
}

void __47__SKProductRemoteViewTask__showErrorController__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[24] = 0;
  }
}

- (void)_loadUIServiceIfNecessaryWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(NSString *)self->_logKey copy];
  uiServiceRemoteViewController = self->_uiServiceRemoteViewController;
  if (uiServiceRemoteViewController)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __67__SKProductRemoteViewTask__loadUIServiceIfNecessaryWithCompletion___block_invoke_40;
    v11[3] = &unk_1E7B28B90;
    v7 = &v13;
    objc_copyWeak(&v13, &location);
    v12 = v5;
    v8 = [(_UIRemoteViewController *)uiServiceRemoteViewController serviceViewControllerProxyWithErrorHandler:v11];
    v4[2](v4, v8);
    v9 = &v12;
  }

  else
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __67__SKProductRemoteViewTask__loadUIServiceIfNecessaryWithCompletion___block_invoke;
    v14[3] = &unk_1E7B28C30;
    v7 = &v18;
    objc_copyWeak(&v18, &location);
    v17 = v4;
    v15 = v5;
    v16 = self;
    v10 = [SKRemoteProductViewController requestViewController:@"ServiceProductPageViewController" fromServiceWithBundleIdentifier:@"com.apple.ios.StoreKitUIService" connectionHandler:v14];
    v9 = &v17;
    v8 = v15;
  }

  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

void __67__SKProductRemoteViewTask__loadUIServiceIfNecessaryWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v9 = WeakRetained;
  if (!WeakRetained)
  {
LABEL_9:
    (*(*(a1 + 48) + 16))();
    goto LABEL_10;
  }

  if (!v6 || v7)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __67__SKProductRemoteViewTask__loadUIServiceIfNecessaryWithCompletion___block_invoke_cold_1();
    }

    goto LABEL_9;
  }

  objc_storeStrong(WeakRetained + 17, a2);
  v10 = v9[17];
  v11 = objc_loadWeakRetained((*(a1 + 40) + 144));
  [v10 setProductViewController:v11];

  v12 = v9[17];
  v13 = objc_loadWeakRetained(v9 + 18);
  [v9 _addChildController:v12 toController:v13];

  v14 = *(*(a1 + 40) + 136);
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __67__SKProductRemoteViewTask__loadUIServiceIfNecessaryWithCompletion___block_invoke_38;
  v20 = &unk_1E7B28B90;
  objc_copyWeak(&v22, (a1 + 56));
  v21 = *(a1 + 32);
  v15 = [v14 serviceViewControllerProxyWithErrorHandler:&v17];
  v16 = v15;
  if (*(*(a1 + 40) + 40))
  {
    [v15 setHostBundleIdentifier:{v17, v18, v19, v20}];
  }

  [v9 _executeConfigurationActionsForUIService:{v16, v17, v18, v19, v20}];
  (*(*(a1 + 48) + 16))();

  objc_destroyWeak(&v22);
LABEL_10:
}

void __67__SKProductRemoteViewTask__loadUIServiceIfNecessaryWithCompletion___block_invoke_38(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __68__SKProductRemoteViewTask__addConfigurationAction_needsEntitlement___block_invoke_cold_1();
  }
}

void __67__SKProductRemoteViewTask__loadUIServiceIfNecessaryWithCompletion___block_invoke_40(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __68__SKProductRemoteViewTask__addConfigurationAction_needsEntitlement___block_invoke_cold_1();
  }
}

- (void)_addChildController:(id)a3 toController:(id)a4
{
  v5 = a4;
  v6 = a3;
  [v5 addChildViewController:v6];
  v7 = [v5 view];
  v8 = [v6 view];
  [v7 addSubview:v8];

  v9 = [v6 view];
  v10 = [v5 view];

  [v10 bounds];
  [v9 setFrame:?];

  v11 = [v6 view];

  [v11 setAutoresizingMask:18];
}

- (void)_showExtensionWithID:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    if (self->_didLoad)
    {
      if (!self->_isPreview)
      {
        if (self->_hasPresentationEntitlement)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            logKey = self->_logKey;
            modalPresentationStyle = self->_modalPresentationStyle;
            *buf = 138543874;
            v22 = self;
            v23 = 2114;
            v24 = logKey;
            v25 = 2048;
            v26 = modalPresentationStyle;
            _os_log_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@]: Setting modal presentation style: %ld.", buf, 0x20u);
          }

          [(ServiceCardContainerViewController *)self->_extensionRemoteCardContainerViewController setModalPresentationStyle:self->_modalPresentationStyle];
        }

        WeakRetained = objc_loadWeakRetained(&self->_storeController);
        [WeakRetained presentViewController:self->_extensionRemoteCardContainerViewController animated:1 completion:&__block_literal_global_42];
      }
    }

    else
    {
      self->_isFetchingExtension = 1;
      if (self->_extensionRemoteContainerViewController)
      {
        [(SKProductRemoteViewTask *)self _killExtensionIfNecessary];
        v8 = [(_UIRemoteViewController *)self->_extensionRemoteViewController disconnect];
        extensionRemoteViewController = self->_extensionRemoteViewController;
        self->_extensionRemoteViewController = 0;

        [(_UIResilientRemoteViewContainerViewController *)self->_extensionRemoteContainerViewController invalidate];
        extensionRemoteContainerViewController = self->_extensionRemoteContainerViewController;
        self->_extensionRemoteContainerViewController = 0;

        v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_visibleInClientWindow];
        [(SKProductRemoteViewTask *)self setVisibleInClientWindow:v11];
      }

      v20 = 0;
      v12 = [MEMORY[0x1E696ABD0] extensionWithIdentifier:v4 error:&v20];
      v13 = v20;
      if (v12)
      {
        objc_storeStrong(&self->_productPageExtension, v12);
        objc_initWeak(buf, self);
        v14 = [(NSString *)self->_logKey copy];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __48__SKProductRemoteViewTask__showExtensionWithID___block_invoke_45;
        block[3] = &unk_1E7B28C80;
        block[4] = self;
        v17 = v12;
        objc_copyWeak(&v19, buf);
        v18 = v14;
        v15 = v14;
        dispatch_async(MEMORY[0x1E69E96A0], block);

        objc_destroyWeak(&v19);
        objc_destroyWeak(buf);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [SKProductRemoteViewTask _showExtensionWithID:];
        }

        [(SKProductRemoteViewTask *)self _showErrorController];
        self->_isFetchingExtension = 0;
      }
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SKProductRemoteViewTask _showExtensionWithID:];
  }
}

void __48__SKProductRemoteViewTask__showExtensionWithID___block_invoke_45(uint64_t a1)
{
  v2 = MEMORY[0x1E69DD678];
  v3 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__SKProductRemoteViewTask__showExtensionWithID___block_invoke_2;
  v7[3] = &unk_1E7B28C58;
  objc_copyWeak(&v9, (a1 + 56));
  v8 = *(a1 + 48);
  v4 = [v2 instantiateWithExtension:v3 completion:v7];
  v5 = *(a1 + 32);
  v6 = *(v5 + 112);
  *(v5 + 112) = v4;

  objc_destroyWeak(&v9);
}

void __48__SKProductRemoteViewTask__showExtensionWithID___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a3;
  v10 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v12 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 11, a2);
    if (v10)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        __48__SKProductRemoteViewTask__showExtensionWithID___block_invoke_2_cold_1();
      }
    }

    else if (v9)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 32);
        v14 = 138543618;
        v15 = v12;
        v16 = 2114;
        v17 = v13;
        _os_log_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@]: Completed loading extension.", &v14, 0x16u);
      }

      [v12 _didReceiveExtensionRemoteViewController:v9];
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __48__SKProductRemoteViewTask__showExtensionWithID___block_invoke_2_cold_2();
    }

    v12[24] = 0;
    v12[26] = 1;
  }
}

- (void)_didReceiveExtensionRemoteViewController:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_storeStrong(&self->_extensionRemoteViewController, a3);
  v6 = objc_alloc_init(ServiceCardContainerViewController);
  extensionRemoteCardContainerViewController = self->_extensionRemoteCardContainerViewController;
  self->_extensionRemoteCardContainerViewController = v6;

  [(ServiceCardContainerViewController *)self->_extensionRemoteCardContainerViewController setDismissalDelegate:self];
  v8 = [MEMORY[0x1E69DC888] systemBlueColor];
  v9 = [(ServiceCardContainerViewController *)self->_extensionRemoteCardContainerViewController view];
  [v9 setTintColor:v8];

  [(ServiceCardContainerViewController *)self->_extensionRemoteCardContainerViewController setRemoteViewController:v5];
  [(ServiceCardContainerViewController *)self->_extensionRemoteCardContainerViewController setChildViewController:self->_extensionRemoteContainerViewController];
  if (self->_hasPresentationEntitlement)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      logKey = self->_logKey;
      modalPresentationStyle = self->_modalPresentationStyle;
      *buf = 138543874;
      v28 = self;
      v29 = 2114;
      v30 = logKey;
      v31 = 2048;
      v32 = modalPresentationStyle;
      _os_log_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@]: Setting modal presentation style: %ld.", buf, 0x20u);
    }

    [(ServiceCardContainerViewController *)self->_extensionRemoteCardContainerViewController setModalPresentationStyle:self->_modalPresentationStyle];
  }

  v12 = [(ServiceCardContainerViewController *)self->_extensionRemoteCardContainerViewController presentationController];
  [v12 setDelegate:self];

  if (self->_isPreview)
  {
    v13 = self->_extensionRemoteCardContainerViewController;
    WeakRetained = objc_loadWeakRetained(&self->_storeController);
    [(SKProductRemoteViewTask *)self _addChildController:v13 toController:WeakRetained];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_storeController);
    [WeakRetained presentViewController:self->_extensionRemoteCardContainerViewController animated:1 completion:&__block_literal_global_51];
  }

  [v5 setDelegate:self];
  [(SKProductRemoteViewTask *)self _executeConfigurationActionsForExtension:self->_extensionRemoteViewController];
  v15 = [(NSString *)self->_logKey copy];
  objc_initWeak(buf, self);
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __68__SKProductRemoteViewTask__didReceiveExtensionRemoteViewController___block_invoke_2;
  v24 = &unk_1E7B28B90;
  objc_copyWeak(&v26, buf);
  v16 = v15;
  v25 = v16;
  v17 = [v5 serviceViewControllerProxyWithErrorHandler:&v21];
  if (v17 && self->_lookupResult && self->_cachedParameters)
  {
    v18 = [(SKProductRemoteViewTask *)self _hostApplicationIdentifier:v21];
    if (v18)
    {
      [(SKProductPageRemoteViewController *)self->_extensionRemoteViewController setupWithClientBundleID:v18 bagType:0];
    }

    v19 = [objc_alloc(MEMORY[0x1E698C978]) initWithLookupDictionary:self->_lookupResult];
    v20 = [(NSDictionary *)self->_cachedParameters mutableCopy];
    [v20 removeObjectForKey:@"id"];
    [v17 clientLookupItemDidLoad:v19 parameters:v20];
  }

  objc_destroyWeak(&v26);
  objc_destroyWeak(buf);
}

void __68__SKProductRemoteViewTask__didReceiveExtensionRemoteViewController___block_invoke_2(uint64_t a1, void *a2)
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __68__SKProductRemoteViewTask__didReceiveExtensionRemoteViewController___block_invoke_2_cold_1(a1, a2);
  }
}

- (void)_showExtensionFromUIService
{
  if (self->_cachedParameters && self->_lookupResult)
  {
    v3 = [(SKProductRemoteViewTask *)self _productIDFromParameters:?];
    if (v3)
    {
      self->_isFetchingExtension = 1;
      v4 = [(NSDictionary *)self->_cachedParameters copy];
      v5 = [(NSDictionary *)self->_lookupResult copy];
      v6 = [(NSString *)self->_logKey copy];
      objc_initWeak(&location, self);
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __54__SKProductRemoteViewTask__showExtensionFromUIService__block_invoke;
      v10[3] = &unk_1E7B28CA8;
      objc_copyWeak(&v15, &location);
      v7 = v5;
      v11 = v7;
      v12 = v3;
      v8 = v4;
      v13 = v8;
      v9 = v6;
      v14 = v9;
      [(SKProductRemoteViewTask *)self _loadUIServiceIfNecessaryWithCompletion:v10];

      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }

    else
    {
      [(SKProductRemoteViewTask *)self _dismissProductViewControllerWithResult:0];
    }
  }
}

void __54__SKProductRemoteViewTask__showExtensionFromUIService__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v5 = WeakRetained;
  if (v3)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __54__SKProductRemoteViewTask__showExtensionFromUIService__block_invoke_2;
    v10[3] = &unk_1E7B28BE0;
    objc_copyWeak(&v11, (a1 + 64));
    [v3 showPageForLookupResult:v6 productID:v7 parameters:v8 logKey:v9 completion:v10];
    objc_destroyWeak(&v11);
  }

  else if (WeakRetained)
  {
    *(WeakRetained + 24) = 0;
  }
}

void __54__SKProductRemoteViewTask__showExtensionFromUIService__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[24] = 0;
  }
}

- (void)_killExtensionIfNecessary
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->_productPageExtension)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      logKey = self->_logKey;
      v4 = 138543618;
      v5 = self;
      v6 = 2114;
      v7 = logKey;
      _os_log_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@]: Killing extension.", &v4, 0x16u);
    }

    if (self->_extensionRequest)
    {
      [(NSExtension *)self->_productPageExtension cancelExtensionRequestWithIdentifier:?];
    }

    [(NSExtension *)self->_productPageExtension _kill:9];
  }
}

- (id)_keyProfileForProductLookup
{
  if (self->_isAskToBuy)
  {
    return @"product-dv";
  }

  else
  {
    return @"lockup-dv";
  }
}

- (id)_productIDFromParameters:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"id"];
  if (!v3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ![v3 length] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && !objc_msgSend(v3, "integerValue"))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [SKProductRemoteViewTask _productIDFromParameters:];
    }

    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([v3 stringValue], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [SKProductRemoteViewTask _productIDFromParameters:];
    }

LABEL_10:
    v4 = 0;
  }

LABEL_11:

  return v4;
}

- (void)_finishWithResult:(int64_t)a3
{
  v13 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    logKey = self->_logKey;
    *buf = 138543618;
    v10 = self;
    v11 = 2114;
    v12 = logKey;
    _os_log_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@]: Finishing.", buf, 0x16u);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    [SKProductRemoteViewTask _finishWithResult:];
  }

  objc_initWeak(buf, self);
  extensionRemoteCardContainerViewController = self->_extensionRemoteCardContainerViewController;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__SKProductRemoteViewTask__finishWithResult___block_invoke;
  v7[3] = &unk_1E7B28CD0;
  objc_copyWeak(v8, buf);
  v8[1] = a3;
  [(ServiceCardContainerViewController *)extensionRemoteCardContainerViewController dismissViewControllerAnimated:1 completion:v7];
  objc_destroyWeak(v8);
  objc_destroyWeak(buf);
}

void __45__SKProductRemoteViewTask__finishWithResult___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Remote controller dismissed.", v6, 2u);
  }

  if (WeakRetained)
  {
    v3 = *(WeakRetained + 8);
    v4 = objc_loadWeakRetained(WeakRetained + 18);
    v5 = v4;
    if (v3 == 1)
    {
      [v4 _didFinishWithResult:*(a1 + 40)];
    }

    else
    {
      [v4 _didFinish];
    }
  }
}

- (void)productPageRemoteViewController:(id)a3 finishWithResult:(unint64_t)a4 completion:(id)a5
{
  v16 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    logKey = self->_logKey;
    v12 = 138543618;
    v13 = self;
    v14 = 2114;
    v15 = logKey;
    _os_log_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@]: Product page finished.", &v12, 0x16u);
  }

  if (a4 > 4)
  {
    v11 = 1;
  }

  else
  {
    v11 = qword_1B2576EB8[a4];
  }

  [(SKProductRemoteViewTask *)self _finishWithResult:v11];
}

- (void)productPageRemoteViewControllerLoadDidFinish:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    logKey = self->_logKey;
    v7 = 138543618;
    v8 = self;
    v9 = 2114;
    v10 = logKey;
    _os_log_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[%{public}@][%{public}@]: Product page finished loading.", &v7, 0x16u);
  }

  v6 = [(_UIResilientRemoteViewContainerViewController *)self->_extensionRemoteContainerViewController remoteViewController];
  [(ServiceCardContainerViewController *)self->_extensionRemoteCardContainerViewController setRemoteViewController:v6];

  if (![(SKProductRemoteViewTask *)self _isViewControllerDescendant:self->_extensionRemoteContainerViewController ofViewController:self->_extensionRemoteCardContainerViewController])
  {
    [(ServiceCardContainerViewController *)self->_extensionRemoteCardContainerViewController setChildViewController:self->_extensionRemoteContainerViewController];
  }
}

- (void)productPageRemoteViewController:(id)a3 userDidInteractWithProduct:(unint64_t)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    logKey = self->_logKey;
    v9 = 138543618;
    v10 = self;
    v11 = 2114;
    v12 = logKey;
    _os_log_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@]: Product page user did interact with product.", &v9, 0x16u);
  }

  if (a4 >= 3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [SKProductRemoteViewTask productPageRemoteViewController:userDidInteractWithProduct:];
    }
  }

  else if (self->_isClientEntitled)
  {
    WeakRetained = objc_loadWeakRetained(&self->_storeController);
    [WeakRetained _userDidInteractWithProduct:a4];
  }
}

- (void)productPageRemoteViewController:(id)a3 didTerminateWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SKProductRemoteViewTask productPageRemoteViewController:didTerminateWithError:];
  }

  v8 = [(_UIResilientRemoteViewContainerViewController *)self->_extensionRemoteContainerViewController remoteViewController];

  if (v8 == v6)
  {
    [(SKProductRemoteViewTask *)self _finishWithResult:1];
  }
}

- (void)cardControllerDidDismiss
{
  v9 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    logKey = self->_logKey;
    v5 = 138543618;
    v6 = self;
    v7 = 2114;
    v8 = logKey;
    _os_log_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@]: Card dismissed.", &v5, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_storeController);
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    logKey = self->_logKey;
    v5 = 138543618;
    v6 = self;
    v7 = 2114;
    v8 = logKey;
    _os_log_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@]: Presentation controller dismissed.", &v5, 0x16u);
  }

  [(SKProductRemoteViewTask *)self _finishWithResult:1];
}

- (void)loadProductWithPageDictionary:(id)a3 completionBlock:(id)a4
{
  v4 = a4;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    [SKProductRemoteViewTask loadProductWithPageDictionary:completionBlock:];
  }

  v5 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"SKErrorDomain" code:0 userInfo:0];
  v4[2](v4, 0, v5);
}

- (void)loadProductWithRequest:(id)a3 completionBlock:(id)a4
{
  v4 = a4;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    [SKProductRemoteViewTask loadProductWithRequest:completionBlock:];
  }

  v5 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"SKErrorDomain" code:0 userInfo:0];
  v4[2](v4, 0, v5);
}

- (void)loadProductWithURL:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    objc_initWeak(&location, self);
    v8 = [(SKProductRemoteViewTask *)self _keyProfileForProductLookup];
    logKey = self->_logKey;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __62__SKProductRemoteViewTask_loadProductWithURL_completionBlock___block_invoke;
    v11[3] = &unk_1E7B28B18;
    objc_copyWeak(&v13, &location);
    v12 = v7;
    [(SKProductRemoteViewTask *)self performLookupWithURL:v6 logKey:logKey keyProfile:v8 completionHandler:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [SKProductRemoteViewTask loadProductWithURL:completionBlock:];
    }

    v10 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"SKErrorDomain" code:5 userInfo:0];
    if (v7)
    {
      (*(v7 + 2))(v7, 0, v10);
    }
  }
}

void __62__SKProductRemoteViewTask_loadProductWithURL_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (!v5 || v6)
    {
      objc_storeStrong(WeakRetained + 8, a3);
      v25 = *(a1 + 32);
      if (v25)
      {
        v23 = *(v25 + 16);
        goto LABEL_14;
      }
    }

    else
    {
      v9 = [v5 deepLinkURL];
      if (v9)
      {
        v10 = v9;
        v11 = [MEMORY[0x1E69DC668] sharedApplication];
        v12 = [v5 deepLinkURL];
        v13 = [v11 canOpenURL:v12];

        if ((v13 & 1) == 0)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            __66__SKProductRemoteViewTask_lookupProductWithParameters_completion___block_invoke_cold_1();
          }

          v26 = [SKProductRemoteViewTask _unknownErrorWithUserInfo:0];
          objc_storeStrong(v8 + 8, v26);
          v27 = *(a1 + 32);
          if (v27)
          {
            (*(v27 + 16))(v27, 0, v26);
          }

          goto LABEL_20;
        }
      }

      v14 = [v5 deepLinkURL];
      v15 = v8[9];
      v8[9] = v14;

      v16 = [v5 resultDictionary];
      v17 = v8[7];
      v8[7] = v16;

      *(v8 + 8) = [v5 isEntitled];
      v18 = [v5 extensionBundleID];
      v19 = v8[2];
      v8[2] = v18;

      v20 = [v5 parameters];
      v21 = v8[6];
      v8[6] = v20;

      *(v8 + 160) = [v5 hasPresentationEntitlement];
      v22 = *(a1 + 32);
      if (v22)
      {
        v23 = *(v22 + 16);
LABEL_14:
        v23();
      }
    }

LABEL_20:
    [v8 _displayItemIfNeeded];
    goto LABEL_21;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __66__SKProductRemoteViewTask_lookupProductWithParameters_completion___block_invoke_cold_2();
  }

  if (*(a1 + 32))
  {
    v24 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"SKErrorDomain" code:0 userInfo:0];
    (*(*(a1 + 32) + 16))();
  }

LABEL_21:
}

- (void)setAdditionalBuyParameters:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(NSString *)self->_logKey copy];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__SKProductRemoteViewTask_setAdditionalBuyParameters___block_invoke;
  v8[3] = &unk_1E7B28B68;
  objc_copyWeak(&v11, &location);
  v6 = v5;
  v9 = v6;
  v7 = v4;
  v10 = v7;
  [(SKProductRemoteViewTask *)self _addConfigurationAction:v8 needsEntitlement:1];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __54__SKProductRemoteViewTask_setAdditionalBuyParameters___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      __54__SKProductRemoteViewTask_setAdditionalBuyParameters___block_invoke_cold_1(a1);
    }

    v8 = *(a1 + 40);
    v6 = v5;
    goto LABEL_7;
  }

  if (v6)
  {
    v8 = *(a1 + 40);
LABEL_7:
    [v6 setAdditionalBuyParameters:v8];
  }
}

- (void)setAffiliateIdentifier:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(NSString *)self->_logKey copy];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__SKProductRemoteViewTask_setAffiliateIdentifier___block_invoke;
  v8[3] = &unk_1E7B28B68;
  objc_copyWeak(&v11, &location);
  v6 = v5;
  v9 = v6;
  v7 = v4;
  v10 = v7;
  [(SKProductRemoteViewTask *)self _addConfigurationAction:v8 needsEntitlement:1];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __50__SKProductRemoteViewTask_setAffiliateIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      __50__SKProductRemoteViewTask_setAffiliateIdentifier___block_invoke_cold_1(a1);
    }

    v8 = *(a1 + 40);
    v6 = v5;
    goto LABEL_7;
  }

  if (v6)
  {
    v8 = *(a1 + 40);
LABEL_7:
    [v6 setAffiliateIdentifier:v8];
  }
}

- (void)setClientIdentifier:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(NSString *)self->_logKey copy];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__SKProductRemoteViewTask_setClientIdentifier___block_invoke;
  v8[3] = &unk_1E7B28B68;
  objc_copyWeak(&v11, &location);
  v6 = v5;
  v9 = v6;
  v7 = v4;
  v10 = v7;
  [(SKProductRemoteViewTask *)self _addConfigurationAction:v8 needsEntitlement:1];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __47__SKProductRemoteViewTask_setClientIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      __47__SKProductRemoteViewTask_setClientIdentifier___block_invoke_cold_1(a1);
    }

    v8 = *(a1 + 40);
    v6 = v5;
    goto LABEL_7;
  }

  if (v6)
  {
    v8 = *(a1 + 40);
LABEL_7:
    [v6 setClientIdentifier:v8];
  }
}

- (id)_hostApplicationIdentifier
{
  if (self->_isClientEntitled && (hostApplicationOverride = self->_hostApplicationOverride) != 0)
  {
    v3 = hostApplicationOverride;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAE8] mainBundle];
    v3 = [v4 bundleIdentifier];
  }

  return v3;
}

- (void)setCancelButtonTitle:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(NSString *)self->_logKey copy];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__SKProductRemoteViewTask_setCancelButtonTitle___block_invoke;
  v8[3] = &unk_1E7B28B68;
  objc_copyWeak(&v11, &location);
  v6 = v5;
  v9 = v6;
  v7 = v4;
  v10 = v7;
  [(SKProductRemoteViewTask *)self _addConfigurationAction:v8 needsEntitlement:1];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __48__SKProductRemoteViewTask_setCancelButtonTitle___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      __48__SKProductRemoteViewTask_setCancelButtonTitle___block_invoke_cold_1(a1);
    }

    v8 = *(a1 + 40);
    v6 = v5;
    goto LABEL_7;
  }

  if (v6)
  {
    v8 = *(a1 + 40);
LABEL_7:
    [v6 setCancelButtonTitle:v8];
  }
}

- (void)setRightBarButtonTitle:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(NSString *)self->_logKey copy];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__SKProductRemoteViewTask_setRightBarButtonTitle___block_invoke;
  v8[3] = &unk_1E7B28B68;
  objc_copyWeak(&v11, &location);
  v6 = v5;
  v9 = v6;
  v7 = v4;
  v10 = v7;
  [(SKProductRemoteViewTask *)self _addConfigurationAction:v8 needsEntitlement:1];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __50__SKProductRemoteViewTask_setRightBarButtonTitle___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      __50__SKProductRemoteViewTask_setRightBarButtonTitle___block_invoke_cold_1(a1);
    }

    v8 = *(a1 + 40);
    v6 = v5;
    goto LABEL_7;
  }

  if (v6)
  {
    v8 = *(a1 + 40);
LABEL_7:
    [v6 setRightBarButtonTitle:v8];
  }
}

- (void)setShowsRightBarButton:(BOOL)a3
{
  objc_initWeak(&location, self);
  v5 = [(NSString *)self->_logKey copy];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__SKProductRemoteViewTask_setShowsRightBarButton___block_invoke;
  v7[3] = &unk_1E7B28CF8;
  objc_copyWeak(&v9, &location);
  v6 = v5;
  v8 = v6;
  v10 = a3;
  [(SKProductRemoteViewTask *)self _addConfigurationAction:v7 needsEntitlement:1];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __50__SKProductRemoteViewTask_setShowsRightBarButton___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      __50__SKProductRemoteViewTask_setShowsRightBarButton___block_invoke_cold_1(a1);
    }

    [v5 setShowsRightBarButton:*(a1 + 48)];
  }

  else if (v6)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 48)];
    [v7 setShowsRightBarButton:v8];
  }
}

- (void)setPromptString:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(NSString *)self->_logKey copy];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__SKProductRemoteViewTask_setPromptString___block_invoke;
  v8[3] = &unk_1E7B28B68;
  objc_copyWeak(&v11, &location);
  v6 = v5;
  v9 = v6;
  v7 = v4;
  v10 = v7;
  [(SKProductRemoteViewTask *)self _addConfigurationAction:v8 needsEntitlement:1];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __43__SKProductRemoteViewTask_setPromptString___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      __43__SKProductRemoteViewTask_setPromptString___block_invoke_cold_1(a1);
    }

    v8 = *(a1 + 40);
    v6 = v5;
    goto LABEL_7;
  }

  if (v6)
  {
    v8 = *(a1 + 40);
LABEL_7:
    [v6 setPromptString:v8];
  }
}

- (void)setProductPageStyle:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(NSString *)self->_logKey copy];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__SKProductRemoteViewTask_setProductPageStyle___block_invoke;
  v8[3] = &unk_1E7B28B68;
  objc_copyWeak(&v11, &location);
  v6 = v5;
  v9 = v6;
  v7 = v4;
  v10 = v7;
  [(SKProductRemoteViewTask *)self _addConfigurationAction:v8 needsEntitlement:1];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __47__SKProductRemoteViewTask_setProductPageStyle___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      __47__SKProductRemoteViewTask_setProductPageStyle___block_invoke_cold_1(a1);
    }

    v8 = *(a1 + 40);
    v6 = v5;
    goto LABEL_7;
  }

  if (v6)
  {
    v8 = *(a1 + 40);
LABEL_7:
    [v6 setProductPageStyle:v8];
  }
}

- (void)setShowsStoreButton:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(NSString *)self->_logKey copy];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__SKProductRemoteViewTask_setShowsStoreButton___block_invoke;
  v8[3] = &unk_1E7B28B68;
  objc_copyWeak(&v11, &location);
  v6 = v5;
  v9 = v6;
  v7 = v4;
  v10 = v7;
  [(SKProductRemoteViewTask *)self _addConfigurationAction:v8 needsEntitlement:1];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __47__SKProductRemoteViewTask_setShowsStoreButton___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      __47__SKProductRemoteViewTask_setShowsStoreButton___block_invoke_cold_1(a1);
    }

    [v5 setShowsStoreButton:{objc_msgSend(*(a1 + 40), "BOOLValue")}];
  }

  else if (v6)
  {
    [v6 setShowsStoreButton:*(a1 + 40)];
  }
}

- (void)setScriptContextDictionary:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(NSString *)self->_logKey copy];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__SKProductRemoteViewTask_setScriptContextDictionary___block_invoke;
  v8[3] = &unk_1E7B28B68;
  objc_copyWeak(&v11, &location);
  v6 = v5;
  v9 = v6;
  v7 = v4;
  v10 = v7;
  [(SKProductRemoteViewTask *)self _addConfigurationAction:v8 needsEntitlement:1];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __54__SKProductRemoteViewTask_setScriptContextDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      __54__SKProductRemoteViewTask_setScriptContextDictionary___block_invoke_cold_1(a1);
    }

    v8 = *(a1 + 40);
    v6 = v5;
    goto LABEL_7;
  }

  if (v6)
  {
    v8 = *(a1 + 40);
LABEL_7:
    [v6 setScriptContextDictionary:v8];
  }
}

- (void)setUsageContext:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(NSString *)self->_logKey copy];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__SKProductRemoteViewTask_setUsageContext___block_invoke;
  v8[3] = &unk_1E7B28B68;
  objc_copyWeak(&v11, &location);
  v6 = v5;
  v9 = v6;
  v7 = v4;
  v10 = v7;
  [(SKProductRemoteViewTask *)self _addConfigurationAction:v8 needsEntitlement:1];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __43__SKProductRemoteViewTask_setUsageContext___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      __43__SKProductRemoteViewTask_setUsageContext___block_invoke_cold_1(a1);
    }

    v8 = *(a1 + 40);
    v6 = v5;
    goto LABEL_7;
  }

  if (v6)
  {
    v8 = *(a1 + 40);
LABEL_7:
    [v6 setUsageContext:v8];
  }
}

- (void)setAskToBuy:(BOOL)a3
{
  self->_isAskToBuy = a3;
  objc_initWeak(&location, self);
  v5 = [(NSString *)self->_logKey copy];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__SKProductRemoteViewTask_setAskToBuy___block_invoke;
  v7[3] = &unk_1E7B28CF8;
  objc_copyWeak(&v9, &location);
  v6 = v5;
  v8 = v6;
  v10 = a3;
  [(SKProductRemoteViewTask *)self _addConfigurationAction:v7 needsEntitlement:1];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __39__SKProductRemoteViewTask_setAskToBuy___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      __39__SKProductRemoteViewTask_setAskToBuy___block_invoke_cold_1(a1);
    }

    [v5 setAskToBuy:*(a1 + 48)];
  }

  else if (v6)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 48)];
    [v7 setAskToBuy:v8];
  }
}

void __44__SKProductRemoteViewTask_finishImmediately__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v4 = a3;
  v5 = v6;
  if (v6 || (v5 = v4) != 0)
  {
    [v5 finishImmediately];
  }
}

+ (id)_unavailableErrorWithUserInfo:(id)a3
{
  v3 = MEMORY[0x1E696ABC0];
  v4 = a3;
  v5 = [[v3 alloc] initWithDomain:@"SKErrorDomain" code:5 userInfo:v4];

  return v5;
}

+ (id)_unknownErrorWithUserInfo:(id)a3
{
  v3 = MEMORY[0x1E696ABC0];
  v4 = a3;
  v5 = [[v3 alloc] initWithDomain:@"SKErrorDomain" code:0 userInfo:v4];

  return v5;
}

- (void)performLookupWithIdentifier:(NSString *)a3 parameters:(NSDictionary *)a4 logKey:(NSString *)a5 keyProfile:(NSString *)a6 completionHandler:(id)a7
{
  v12 = _Block_copy(a7);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  v13[5] = a6;
  v13[6] = v12;
  v13[7] = self;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = self;

  sub_1B251DDF8(&unk_1B2584E00, v13);
}

- (void)performLookupWithURL:(NSURL *)a3 logKey:(NSString *)a4 keyProfile:(NSString *)a5 completionHandler:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = v10;
  v11[6] = self;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = self;

  sub_1B251DDF8(&unk_1B2584DA8, v11);
}

- (void)_addConfigurationAction:needsEntitlement:.cold.1()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_addConfigurationAction:needsEntitlement:.cold.2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __68__SKProductRemoteViewTask__addConfigurationAction_needsEntitlement___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void __67__SKProductRemoteViewTask__loadUIServiceIfNecessaryWithCompletion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

- (void)_showExtensionWithID:.cold.1()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

- (void)_showExtensionWithID:.cold.2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __48__SKProductRemoteViewTask__showExtensionWithID___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void __48__SKProductRemoteViewTask__showExtensionWithID___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __68__SKProductRemoteViewTask__didReceiveExtensionRemoteViewController___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));

  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);
}

- (void)_productIDFromParameters:.cold.1()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_productIDFromParameters:.cold.2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_finishWithResult:.cold.1()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4(&dword_1B23EF000, MEMORY[0x1E69E9C10], v0, "[%{public}@][%{public}@]: Finishing with result: %ld", v1, v2, v3, v4, v5);
}

- (void)productPageRemoteViewController:userDidInteractWithProduct:.cold.1()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

- (void)productPageRemoteViewController:didTerminateWithError:.cold.1()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

- (void)loadProductWithPageDictionary:completionBlock:.cold.1()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_0();
  v1 = 2082;
  v2 = "[SKProductRemoteViewTask loadProductWithPageDictionary:completionBlock:]";
  _os_log_fault_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "[%{public}@][%{public}@]: Deprecated method: %{public}s.", v0, 0x20u);
}

- (void)loadProductWithRequest:completionBlock:.cold.1()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_0();
  v1 = 2082;
  v2 = "[SKProductRemoteViewTask loadProductWithRequest:completionBlock:]";
  _os_log_fault_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "[%{public}@][%{public}@]: Deprecated method: %{public}s.", v0, 0x20u);
}

- (void)loadProductWithURL:completionBlock:.cold.1()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __54__SKProductRemoteViewTask_setAdditionalBuyParameters___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_4(&dword_1B23EF000, MEMORY[0x1E69E9C10], v2, "[%{public}@][%{public}@]: Set additional buy params: %{public}@.", v3, v4, v5, v6, v7);
}

void __50__SKProductRemoteViewTask_setAffiliateIdentifier___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_4(&dword_1B23EF000, MEMORY[0x1E69E9C10], v2, "[%{public}@][%{public}@]: Set affiliate identifier: %{public}@.", v3, v4, v5, v6, v7);
}

void __47__SKProductRemoteViewTask_setClientIdentifier___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_4(&dword_1B23EF000, MEMORY[0x1E69E9C10], v2, "[%{public}@][%{public}@]: Set client identifier: %{public}@.", v3, v4, v5, v6, v7);
}

void __48__SKProductRemoteViewTask_setCancelButtonTitle___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_4(&dword_1B23EF000, MEMORY[0x1E69E9C10], v2, "[%{public}@][%{public}@]: Set cancel button title: %{public}@.", v3, v4, v5, v6, v7);
}

void __50__SKProductRemoteViewTask_setRightBarButtonTitle___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_4(&dword_1B23EF000, MEMORY[0x1E69E9C10], v2, "[%{public}@][%{public}@]: Set right bar button title: %{public}@.", v3, v4, v5, v6, v7);
}

void __50__SKProductRemoteViewTask_setShowsRightBarButton___block_invoke_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  OUTLINED_FUNCTION_2_0();
  v4 = 1024;
  v5 = v2;
  _os_log_debug_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[%{public}@][%{public}@]: Set shows right bar button: %{BOOL}d.", v3, 0x1Cu);
}

void __43__SKProductRemoteViewTask_setPromptString___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_4(&dword_1B23EF000, MEMORY[0x1E69E9C10], v2, "[%{public}@][%{public}@]: Set prompt string: %{public}@.", v3, v4, v5, v6, v7);
}

void __47__SKProductRemoteViewTask_setProductPageStyle___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_4(&dword_1B23EF000, MEMORY[0x1E69E9C10], v2, "[%{public}@][%{public}@]: Set product page style: %{public}@.", v3, v4, v5, v6, v7);
}

void __47__SKProductRemoteViewTask_setShowsStoreButton___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_4(&dword_1B23EF000, MEMORY[0x1E69E9C10], v2, "[%{public}@][%{public}@]: Set shows store: %{public}@.", v3, v4, v5, v6, v7);
}

void __54__SKProductRemoteViewTask_setScriptContextDictionary___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_4(&dword_1B23EF000, MEMORY[0x1E69E9C10], v2, "[%{public}@][%{public}@]: Set context dictionary: %{public}@.", v3, v4, v5, v6, v7);
}

void __43__SKProductRemoteViewTask_setUsageContext___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_4(&dword_1B23EF000, MEMORY[0x1E69E9C10], v2, "[%{public}@][%{public}@]: Set usage context: %{public}@.", v3, v4, v5, v6, v7);
}

void __39__SKProductRemoteViewTask_setAskToBuy___block_invoke_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  OUTLINED_FUNCTION_2_0();
  v4 = 1024;
  v5 = v2;
  _os_log_debug_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[%{public}@][%{public}@]: Set ATB: %{BOOL}d.", v3, 0x1Cu);
}

@end