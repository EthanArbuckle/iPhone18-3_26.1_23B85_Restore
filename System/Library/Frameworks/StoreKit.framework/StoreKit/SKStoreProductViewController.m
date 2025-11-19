@interface SKStoreProductViewController
+ (id)_defaultIXStoreSheetDictionary;
+ (void)_validateURL:(id)a3 withSheetInfo:(id)a4 completionBlock:(id)a5;
+ (void)getCanLoadURL:(id)a3 completionBlock:(id)a4;
+ (void)getCanLoadURL:(id)a3 withURLBag:(id)a4 completionBlock:(id)a5;
- (BOOL)_isInvalidSubclass;
- (BOOL)_isPeeking;
- (BOOL)dismissRemoteViewControllerWithCompletion:(id)a3;
- (SKStoreProductViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)_impressionDictFromImpression:(id)a3;
- (id)animationControllerForDismissedController:(id)a3;
- (id)delegate;
- (unint64_t)supportedInterfaceOrientations;
- (void)_addRemoteView;
- (void)_configureForFullScreenPresentationOrThrowException;
- (void)_didFinish;
- (void)_didFinishDismissal;
- (void)_didFinishWithResult:(int64_t)a3;
- (void)_fireLoadBlockBeforeFinishing;
- (void)_forceOrientationBackToSupportedOrientation;
- (void)_isInvalidSubclass;
- (void)_loadDidFinishWithResult:(BOOL)a3 error:(id)a4;
- (void)_presentPageWithRequest:(id)a3 animated:(BOOL)a4;
- (void)_requestRemoteViewController;
- (void)_resetRemoteViewController;
- (void)_setLoadBlock:(id)a3;
- (void)_throwUnsupportedPresentationException;
- (void)_userDidInteractWithProduct:(unint64_t)a3;
- (void)_viewTapped:(id)a3;
- (void)dealloc;
- (void)didChangeAlpha:(double)a3;
- (void)didChangeHidden;
- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)finishImmediately;
- (void)loadProductWithPageDictionary:(id)a3 completionBlock:(id)a4;
- (void)loadProductWithParameters:(NSDictionary *)parameters completionBlock:(void *)block;
- (void)loadProductWithParameters:(NSDictionary *)parameters impression:(SKAdImpression *)impression completionBlock:(void *)block;
- (void)loadProductWithRequest:(id)a3 completionBlock:(id)a4;
- (void)loadProductWithURL:(id)a3 completionBlock:(id)a4;
- (void)loadView;
- (void)setAdditionalBuyParameters:(id)a3;
- (void)setAffiliateIdentifier:(id)a3;
- (void)setAskToBuy:(BOOL)a3;
- (void)setCancelButtonTitle:(id)a3;
- (void)setClientIdentifier:(id)a3;
- (void)setHostBundleIdentifier:(id)a3;
- (void)setModalPresentationStyle:(int64_t)a3;
- (void)setNoClippingIfNeeded;
- (void)setParentViewController:(id)a3;
- (void)setPresentationStyleIfNeeded;
- (void)setProductPageStyle:(int64_t)a3;
- (void)setPromptString:(id)a3;
- (void)setRightBarButtonTitle:(id)a3;
- (void)setScriptContextDictionary:(id)a3;
- (void)setShowsRightBarButton:(BOOL)a3;
- (void)setShowsStoreButton:(BOOL)a3;
- (void)setUsageContext:(id)a3;
- (void)sk_didBecomeOffScreen:(id)a3;
- (void)sk_didBecomeOnScreen:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)willMoveToParentViewController:(id)a3;
@end

@implementation SKStoreProductViewController

- (SKStoreProductViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v16.receiver = self;
  v16.super_class = SKStoreProductViewController;
  v4 = [(SKStoreProductViewController *)&v16 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = _os_feature_enabled_impl();
    v4->_productPageQFAEnabled = v5;
    if (v5)
    {
      v6 = [[SKProductRemoteViewTask alloc] initWithStoreController:v4];
      remoteViewTask = v4->_remoteViewTask;
      v4->_remoteViewTask = v6;

      v4->_viewWillAppearWasCalled = 0;
    }

    else
    {
      v8 = [[SKInvocationQueueProxy alloc] initWithProtocol:&unk_1F2A065F8];
      serviceProxy = v4->_serviceProxy;
      v4->_serviceProxy = v8;

      [(SKStoreProductViewController *)v4 _requestRemoteViewController];
      [(SKStoreProductViewController *)v4 setTransitioningDelegate:v4];
    }

    v10 = [MEMORY[0x1E696AAE8] mainBundle];
    v11 = [v10 bundleIdentifier];
    bundleID = v4->_bundleID;
    v4->_bundleID = v11;

    [(SKStoreProductViewController *)v4 setShowsStoreButton:1];
    v13 = [MEMORY[0x1E69DC938] currentDevice];
    v14 = [v13 userInterfaceIdiom];

    if (v14 == 1)
    {
      [(SKStoreProductViewController *)v4 setModalPresentationStyle:2];
    }

    v4->_viewWasOnScreen = 0;
  }

  return v4;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4 = [(_UIAsyncInvocation *)self->_cancelRequest invoke];
  [(SKRemoteProductViewController *)self->_remoteViewController setProductViewController:0];
  v5 = [(_UIRemoteViewController *)self->_remoteViewController disconnect];
  [(SKUIServiceProductPageViewController *)self->_serviceProxy setInvocationTarget:0];
  v6.receiver = self;
  v6.super_class = SKStoreProductViewController;
  [(SKStoreProductViewController *)&v6 dealloc];
}

- (void)setModalPresentationStyle:(int64_t)a3
{
  if (self->_productPageQFAEnabled)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    [(SKProductRemoteViewTask *)self->_remoteViewTask overridePresentationStyle:v5];
  }
}

- (void)loadProductWithParameters:(NSDictionary *)parameters completionBlock:(void *)block
{
  v6 = parameters;
  v7 = block;
  v8 = [(NSDictionary *)v6 objectForKeyedSubscript:@"adNetworkNonce"];
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [(NSDictionary *)v6 mutableCopy];
      v10 = [v8 UUIDString];
      v11 = [v10 lowercaseString];
      [v9 setObject:v11 forKeyedSubscript:@"adNetworkNonce"];

      v12 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v9];

      v6 = v12;
    }
  }

  if (self->_productPageQFAEnabled)
  {
    remoteViewTask = self->_remoteViewTask;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __74__SKStoreProductViewController_loadProductWithParameters_completionBlock___block_invoke;
    v16[3] = &unk_1E7B27B08;
    v17 = v7;
    [(SKProductRemoteViewTask *)remoteViewTask lookupProductWithParameters:v6 completion:v16];
  }

  else
  {
    if (self->_loadBlock != v7)
    {
      v14 = [v7 copy];
      loadBlock = self->_loadBlock;
      self->_loadBlock = v14;
    }

    [(SKUIServiceProductPageViewController *)self->_serviceProxy loadProductWithParameters:v6];
  }
}

void __74__SKStoreProductViewController_loadProductWithParameters_completionBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (*(a1 + 32))
  {
    if (v4)
    {
      v6 = _SKErrorFromNSError(v4);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __74__SKStoreProductViewController_loadProductWithParameters_completionBlock___block_invoke_2;
      block[3] = &unk_1E7B27B30;
      v7 = *(a1 + 32);
      v12 = v6;
      v13 = v7;
      v8 = v6;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    else
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __74__SKStoreProductViewController_loadProductWithParameters_completionBlock___block_invoke_3;
      v9[3] = &unk_1E7B27900;
      v10 = *(a1 + 32);
      dispatch_async(MEMORY[0x1E69E96A0], v9);
      v8 = v10;
    }
  }
}

- (void)loadProductWithParameters:(NSDictionary *)parameters impression:(SKAdImpression *)impression completionBlock:(void *)block
{
  v8 = parameters;
  v9 = impression;
  v10 = block;
  v11 = [(SKAdImpression *)v9 adImpressionIdentifier];
  if (v11)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__1;
    v24 = __Block_byref_object_dispose__1;
    v25 = [(NSDictionary *)v8 mutableCopy];
    v12 = [(SKStoreProductViewController *)self _impressionDictFromImpression:v9];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __85__SKStoreProductViewController_loadProductWithParameters_impression_completionBlock___block_invoke;
    v19[3] = &unk_1E7B28538;
    v19[4] = &v20;
    [v12 enumerateKeysAndObjectsUsingBlock:v19];
    v13 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v21[5]];

    _Block_object_dispose(&v20, 8);
    v8 = v13;
  }

  if (self->_productPageQFAEnabled)
  {
    remoteViewTask = self->_remoteViewTask;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __85__SKStoreProductViewController_loadProductWithParameters_impression_completionBlock___block_invoke_2;
    v17[3] = &unk_1E7B27B08;
    v18 = v10;
    [(SKProductRemoteViewTask *)remoteViewTask lookupProductWithParameters:v8 completion:v17];
  }

  else
  {
    if (self->_loadBlock != v10)
    {
      v15 = [v10 copy];
      loadBlock = self->_loadBlock;
      self->_loadBlock = v15;
    }

    [(SKUIServiceProductPageViewController *)self->_serviceProxy loadProductWithParameters:v8];
  }
}

void __85__SKStoreProductViewController_loadProductWithParameters_impression_completionBlock___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (*(a1 + 32))
  {
    if (v5)
    {
      v7 = _SKErrorFromNSError(v5);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __85__SKStoreProductViewController_loadProductWithParameters_impression_completionBlock___block_invoke_3;
      block[3] = &unk_1E7B27B30;
      v8 = *(a1 + 32);
      v14 = v7;
      v15 = v8;
      v9 = v7;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    else
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __85__SKStoreProductViewController_loadProductWithParameters_impression_completionBlock___block_invoke_4;
      v10[3] = &unk_1E7B28560;
      v11 = *(a1 + 32);
      v12 = a2;
      dispatch_async(MEMORY[0x1E69E96A0], v10);
      v9 = v11;
    }
  }
}

- (void)loadView
{
  v8 = objc_alloc_init(SKObservableView);
  [(SKObservableView *)v8 setDelegate:self];
  [(SKObservableView *)v8 setAutoresizingMask:18];
  v3 = [MEMORY[0x1E69DC888] clearColor];
  [(SKObservableView *)v8 setBackgroundColor:v3];

  [(SKStoreProductViewController *)self setView:v8];
  [(SKStoreProductViewController *)self _addRemoteView];
  v4 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__viewTapped_];
  v5 = [(SKStoreProductViewController *)self view];
  [v5 addGestureRecognizer:v4];

  v6 = [(SKStoreProductViewController *)self view];
  v7 = [v6 layer];
  [v7 setHitTestsAsOpaque:1];
}

- (void)_viewTapped:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = self;
    _os_log_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%{public}@: viewTapped.", &v6, 0xCu);
  }

  if (self->_productPageQFAEnabled)
  {
    remoteViewTask = self->_remoteViewTask;
    if (remoteViewTask)
    {
      if ([(SKProductRemoteViewTask *)remoteViewTask extensionControllerState]== 1)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          v6 = 138543362;
          v7 = self;
          _os_log_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%{public}@: Dismissing view after tap.", &v6, 0xCu);
        }

        [(SKStoreProductViewController *)self dismissViewControllerAnimated:1 completion:0];
      }
    }
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 1)
  {
    return 30;
  }

  if (SKAllowsLandscapePhone())
  {
    return 26;
  }

  return 2;
}

- (void)willMoveToParentViewController:(id)a3
{
  v4 = a3;
  [(SKStoreProductViewController *)self _configureForFullScreenPresentationOrThrowException];
  if ([(SKStoreProductViewController *)self _isInvalidSubclass])
  {
    [(SKStoreProductViewController *)self _didFinishWithResult:0];
  }

  v5.receiver = self;
  v5.super_class = SKStoreProductViewController;
  [(SKStoreProductViewController *)&v5 willMoveToParentViewController:v4];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5 = [(SKStoreProductViewController *)self presentingViewController];
  if (v5)
  {
    v6 = v5;
    v7 = isMyViewVisible(self);

    if (v7)
    {
      if (self->_productPageQFAEnabled)
      {
        v8 = &OBJC_IVAR___SKStoreProductViewController__remoteViewTask;
      }

      else
      {
        v8 = &OBJC_IVAR___SKStoreProductViewController__serviceProxy;
      }

      v9 = *(&self->super.super.super.isa + *v8);
      v10 = [MEMORY[0x1E696AD98] numberWithBool:1];
      [v9 setVisibleInClientWindow:v10];

      self->_viewWasOnScreen = 1;
    }
  }

  if (self->_productPageQFAEnabled)
  {
    remoteViewTask = self->_remoteViewTask;
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[SKStoreProductViewController _isPeeking](self, "_isPeeking")}];
    [(SKProductRemoteViewTask *)remoteViewTask setPreview:v12];

    [(SKProductRemoteViewTask *)self->_remoteViewTask storeProductViewControllerWillAppear];
    self->_viewWillAppearWasCalled = 1;
  }

  else
  {
    serviceProxy = self->_serviceProxy;
    v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[SKStoreProductViewController _isPeeking](self, "_isPeeking")}];
    [(SKUIServiceProductPageViewController *)serviceProxy setPreview:v14];
  }

  [(SKStoreProductViewController *)self setPresentationStyleIfNeeded];
  [(SKStoreProductViewController *)self setNoClippingIfNeeded];
  v15 = [MEMORY[0x1E69DC668] sharedApplication];
  self->_originalStatusBarStyle = [v15 statusBarStyle];

  v16 = [MEMORY[0x1E69DC938] currentDevice];
  v17 = [v16 userInterfaceIdiom];

  if (!v17)
  {
    v18 = [MEMORY[0x1E69DC668] sharedApplication];
    [v18 setStatusBarStyle:0 animated:v3];
  }

  [(SKStoreProductViewController *)self _forceOrientationBackToSupportedOrientation];
  v19.receiver = self;
  v19.super_class = SKStoreProductViewController;
  [(SKStoreProductViewController *)&v19 viewWillAppear:v3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5 = [(SKStoreProductViewController *)self presentingViewController];

  if (!v5)
  {
    v6 = [[SKScrollDetector alloc] initWithDelegate:self];
    scrollDetector = self->_scrollDetector;
    self->_scrollDetector = v6;

    v8 = self->_scrollDetector;
    v9 = [(SKStoreProductViewController *)self view];
    [(SKScrollDetector *)v8 findAndListenForScrollingOfView:v9];
  }

  [(SKStoreProductViewController *)self _configureForFullScreenPresentationOrThrowException];
  if (self->_productPageQFAEnabled)
  {
    [(SKProductRemoteViewTask *)self->_remoteViewTask storeProductViewControllerDidAppear];
  }

  v10.receiver = self;
  v10.super_class = SKStoreProductViewController;
  [(SKStoreProductViewController *)&v10 viewDidAppear:v3];
}

- (void)viewWillLayoutSubviews
{
  v1 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  _os_log_fault_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "[%@] Invalid use of SKStoreProductViewController.", v0, 0xCu);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x1E69DC668] sharedApplication];
  [v5 setStatusBarStyle:self->_originalStatusBarStyle animated:v3];

  if (self->_productPageQFAEnabled)
  {
    [(SKProductRemoteViewTask *)self->_remoteViewTask storeProductViewControllerWillDisappear];
  }

  v6.receiver = self;
  v6.super_class = SKStoreProductViewController;
  [(SKStoreProductViewController *)&v6 viewWillDisappear:v3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v8 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v7 = self;
    _os_log_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%{public}@: viewDidDisappear.", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = SKStoreProductViewController;
  [(SKStoreProductViewController *)&v5 viewDidDisappear:v3];
}

- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = a4;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v8 = self;
    _os_log_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%{public}@: dismissViewControllerAnimated.", buf, 0xCu);
  }

  if (self->_productPageQFAEnabled)
  {
    [(SKProductRemoteViewTask *)self->_remoteViewTask storeProductViewControllerWillDismiss];
  }

  v6.receiver = self;
  v6.super_class = SKStoreProductViewController;
  [(SKStoreProductViewController *)&v6 dismissViewControllerAnimated:1 completion:v5];
}

+ (void)getCanLoadURL:(id)a3 withURLBag:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v12 = [v11 isOnDeviceAppInstallationAllowed];

  if (v12)
  {
    v13 = [v8 scheme];
    if ([v13 caseInsensitiveCompare:@"http"] && objc_msgSend(v13, "caseInsensitiveCompare:", @"https"))
    {
      v10[2](v10, 0);
    }

    else
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __73__SKStoreProductViewController_getCanLoadURL_withURLBag_completionBlock___block_invoke;
      v14[3] = &unk_1E7B28588;
      v17 = a1;
      v15 = v8;
      v16 = v10;
      [v9 loadValueForKey:@"ix-store-sheet" completionBlock:v14];
    }
  }

  else
  {
    v10[2](v10, 0);
  }
}

void __73__SKStoreProductViewController_getCanLoadURL_withURLBag_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v5;
  }

  else
  {
    v4 = [*(a1 + 48) _defaultIXStoreSheetDictionary];

    v3 = v4;
  }

  v6 = v3;
  [*(a1 + 48) _validateURL:*(a1 + 32) withSheetInfo:v3 completionBlock:*(a1 + 40)];
}

+ (void)getCanLoadURL:(id)a3 completionBlock:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x1E69D49F8];
  v8 = a3;
  v9 = [v7 contextWithBagType:0];
  [v9 setAllowsExpiredBags:1];
  [v9 setUsesCachedBagsOnly:1];
  v10 = [objc_alloc(MEMORY[0x1E69D49F0]) initWithURLBagContext:v9];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__SKStoreProductViewController_getCanLoadURL_completionBlock___block_invoke;
  v12[3] = &unk_1E7B285D0;
  v13 = v6;
  v11 = v6;
  [a1 getCanLoadURL:v8 withURLBag:v10 completionBlock:v12];
}

void __62__SKStoreProductViewController_getCanLoadURL_completionBlock___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = [MEMORY[0x1E69D49F8] contextWithBagType:0];
  [v2 setAllowsExpiredBags:1];
  v1 = [objc_alloc(MEMORY[0x1E69D49F0]) initWithURLBagContext:v2];
  [v1 loadWithCompletionBlock:&__block_literal_global_6];
}

- (void)finishImmediately
{
  if (self->_productPageQFAEnabled)
  {
    v2 = &OBJC_IVAR___SKStoreProductViewController__remoteViewTask;
  }

  else
  {
    v2 = &OBJC_IVAR___SKStoreProductViewController__serviceProxy;
  }

  [*(&self->super.super.super.isa + *v2) finishImmediately];
}

- (void)loadProductWithPageDictionary:(id)a3 completionBlock:(id)a4
{
  if (self->_productPageQFAEnabled)
  {
    [(SKProductRemoteViewTask *)self->_remoteViewTask loadProductWithPageDictionary:a3 completionBlock:a4];
  }

  else
  {
    v6 = a3;
    [(SKStoreProductViewController *)self _setLoadBlock:a4];
    [(SKUIServiceProductPageViewController *)self->_serviceProxy loadProductWithPageDictionary:v6];
  }
}

- (void)loadProductWithRequest:(id)a3 completionBlock:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (!self->_productPageQFAEnabled)
  {
    [(SKStoreProductViewController *)self _setLoadBlock:v6];
  }

  self->_productPageStyle = [v8 productPageStyle];
  v7 = [v8 copyXPCEncoding];
  if (self->_productPageQFAEnabled)
  {
    [(SKProductRemoteViewTask *)self->_remoteViewTask loadProductWithRequest:v7 completionBlock:v6];
  }

  else
  {
    [(SKUIServiceProductPageViewController *)self->_serviceProxy loadProductWithRequest:v7];
  }
}

- (void)loadProductWithURL:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_productPageQFAEnabled || ([(SKStoreProductViewController *)self _setLoadBlock:v7], self->_productPageQFAEnabled))
  {
    remoteViewTask = self->_remoteViewTask;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __67__SKStoreProductViewController_loadProductWithURL_completionBlock___block_invoke;
    v9[3] = &unk_1E7B27B08;
    v10 = v7;
    [(SKProductRemoteViewTask *)remoteViewTask loadProductWithURL:v6 completionBlock:v9];
  }

  else
  {
    [(SKUIServiceProductPageViewController *)self->_serviceProxy loadProductWithURL:v6];
  }
}

void __67__SKStoreProductViewController_loadProductWithURL_completionBlock___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (*(a1 + 32))
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__SKStoreProductViewController_loadProductWithURL_completionBlock___block_invoke_2;
    block[3] = &unk_1E7B285F8;
    v8 = *(a1 + 32);
    v9 = a2;
    v7 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)setAdditionalBuyParameters:(id)a3
{
  v4 = a3;
  if (self->_additionalBuyParameters != v4)
  {
    v8 = v4;
    v5 = [(NSString *)v4 copy];
    additionalBuyParameters = self->_additionalBuyParameters;
    self->_additionalBuyParameters = v5;

    if (self->_productPageQFAEnabled)
    {
      v7 = &OBJC_IVAR___SKStoreProductViewController__remoteViewTask;
    }

    else
    {
      v7 = &OBJC_IVAR___SKStoreProductViewController__serviceProxy;
    }

    [*(&self->super.super.super.isa + *v7) setAdditionalBuyParameters:v8];
    v4 = v8;
  }
}

- (void)setAffiliateIdentifier:(id)a3
{
  v4 = a3;
  if (self->_affiliateIdentifier != v4)
  {
    v8 = v4;
    v5 = [(NSString *)v4 copy];
    affiliateIdentifier = self->_affiliateIdentifier;
    self->_affiliateIdentifier = v5;

    if (self->_productPageQFAEnabled)
    {
      v7 = &OBJC_IVAR___SKStoreProductViewController__remoteViewTask;
    }

    else
    {
      v7 = &OBJC_IVAR___SKStoreProductViewController__serviceProxy;
    }

    [*(&self->super.super.super.isa + *v7) setAffiliateIdentifier:v8];
    v4 = v8;
  }
}

- (void)setClientIdentifier:(id)a3
{
  v4 = a3;
  if (self->_clientIdentifier != v4)
  {
    v8 = v4;
    v5 = [(NSString *)v4 copy];
    clientIdentifier = self->_clientIdentifier;
    self->_clientIdentifier = v5;

    if (self->_productPageQFAEnabled)
    {
      v7 = &OBJC_IVAR___SKStoreProductViewController__remoteViewTask;
    }

    else
    {
      v7 = &OBJC_IVAR___SKStoreProductViewController__serviceProxy;
    }

    [*(&self->super.super.super.isa + *v7) setClientIdentifier:v8];
    v4 = v8;
  }
}

- (void)setHostBundleIdentifier:(id)a3
{
  v4 = a3;
  if (self->_hostBundleIdentifier != v4)
  {
    v8 = v4;
    v5 = [(NSString *)v4 copy];
    hostBundleIdentifier = self->_hostBundleIdentifier;
    self->_hostBundleIdentifier = v5;

    if (self->_productPageQFAEnabled)
    {
      v7 = &OBJC_IVAR___SKStoreProductViewController__remoteViewTask;
    }

    else
    {
      v7 = &OBJC_IVAR___SKStoreProductViewController__serviceProxy;
    }

    [*(&self->super.super.super.isa + *v7) setHostBundleIdentifier:v8];
    v4 = v8;
  }
}

- (void)setCancelButtonTitle:(id)a3
{
  v5 = a3;
  if (self->_cancelButtonTitle != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_cancelButtonTitle, a3);
    if (self->_productPageQFAEnabled)
    {
      v6 = &OBJC_IVAR___SKStoreProductViewController__remoteViewTask;
    }

    else
    {
      v6 = &OBJC_IVAR___SKStoreProductViewController__serviceProxy;
    }

    [*(&self->super.super.super.isa + *v6) setCancelButtonTitle:v7];
    v5 = v7;
  }
}

- (void)setRightBarButtonTitle:(id)a3
{
  v5 = a3;
  if (self->_rightBarButtonTitle != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_rightBarButtonTitle, a3);
    if (self->_productPageQFAEnabled)
    {
      v6 = &OBJC_IVAR___SKStoreProductViewController__remoteViewTask;
    }

    else
    {
      v6 = &OBJC_IVAR___SKStoreProductViewController__serviceProxy;
    }

    [*(&self->super.super.super.isa + *v6) setRightBarButtonTitle:v7];
    v5 = v7;
  }
}

- (void)setShowsRightBarButton:(BOOL)a3
{
  if (self->_showsRightBarButton != a3)
  {
    self->_showsRightBarButton = a3;
    if (self->_productPageQFAEnabled)
    {
      remoteViewTask = self->_remoteViewTask;

      [(SKProductRemoteViewTask *)remoteViewTask setShowsRightBarButton:?];
    }

    else
    {
      serviceProxy = self->_serviceProxy;
      v6 = [MEMORY[0x1E696AD98] numberWithBool:?];
      [(SKUIServiceProductPageViewController *)serviceProxy setShowsRightBarButton:v6];
    }
  }
}

- (void)setPromptString:(id)a3
{
  v5 = a3;
  if (self->_promptString != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_promptString, a3);
    if (self->_productPageQFAEnabled)
    {
      v6 = &OBJC_IVAR___SKStoreProductViewController__remoteViewTask;
    }

    else
    {
      v6 = &OBJC_IVAR___SKStoreProductViewController__serviceProxy;
    }

    [*(&self->super.super.super.isa + *v6) setPromptString:v7];
    v5 = v7;
  }
}

- (void)setProductPageStyle:(int64_t)a3
{
  if (self->_productPageStyle != a3)
  {
    self->_productPageStyle = a3;
    if (self->_productPageQFAEnabled)
    {
      v4 = &OBJC_IVAR___SKStoreProductViewController__remoteViewTask;
    }

    else
    {
      v4 = &OBJC_IVAR___SKStoreProductViewController__serviceProxy;
    }

    v5 = *(&self->super.super.super.isa + *v4);
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    [v5 setProductPageStyle:v6];
  }
}

- (void)setShowsStoreButton:(BOOL)a3
{
  if (self->_showsStoreButton != a3)
  {
    self->_showsStoreButton = a3;
    if (self->_productPageQFAEnabled)
    {
      v4 = &OBJC_IVAR___SKStoreProductViewController__remoteViewTask;
    }

    else
    {
      v4 = &OBJC_IVAR___SKStoreProductViewController__serviceProxy;
    }

    v5 = *(&self->super.super.super.isa + *v4);
    v6 = [MEMORY[0x1E696AD98] numberWithBool:?];
    [v5 setShowsStoreButton:v6];
  }
}

- (void)setScriptContextDictionary:(id)a3
{
  v4 = a3;
  if (self->_scriptContextDictionary != v4)
  {
    v8 = v4;
    v5 = [(NSDictionary *)v4 copy];
    scriptContextDictionary = self->_scriptContextDictionary;
    self->_scriptContextDictionary = v5;

    if (self->_productPageQFAEnabled)
    {
      v7 = &OBJC_IVAR___SKStoreProductViewController__remoteViewTask;
    }

    else
    {
      v7 = &OBJC_IVAR___SKStoreProductViewController__serviceProxy;
    }

    [*(&self->super.super.super.isa + *v7) setScriptContextDictionary:v8];
    v4 = v8;
  }
}

- (void)setUsageContext:(id)a3
{
  v5 = a3;
  if (self->_usageContext != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_usageContext, a3);
    if (self->_productPageQFAEnabled)
    {
      v6 = &OBJC_IVAR___SKStoreProductViewController__remoteViewTask;
    }

    else
    {
      v6 = &OBJC_IVAR___SKStoreProductViewController__serviceProxy;
    }

    [*(&self->super.super.super.isa + *v6) setUsageContext:v7];
    v5 = v7;
  }
}

- (void)setAskToBuy:(BOOL)a3
{
  if (self->_askToBuy != a3)
  {
    self->_askToBuy = a3;
    if (self->_productPageQFAEnabled)
    {
      remoteViewTask = self->_remoteViewTask;

      [(SKProductRemoteViewTask *)remoteViewTask setAskToBuy:?];
    }

    else
    {
      serviceProxy = self->_serviceProxy;
      v6 = [MEMORY[0x1E696AD98] numberWithBool:?];
      [(SKUIServiceProductPageViewController *)serviceProxy setAskToBuy:v6];
    }
  }
}

- (void)_didFinish
{
  v8 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = self;
    _os_log_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%{public}@: didFinish.", &v6, 0xCu);
  }

  [(SKStoreProductViewController *)self _fireLoadBlockBeforeFinishing];
  [(SKStoreProductViewController *)self dismissViewControllerAnimated:1 completion:0];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 productViewControllerDidFinish:self];
  }
}

- (void)_didFinishWithResult:(int64_t)a3
{
  [(SKStoreProductViewController *)self _fireLoadBlockBeforeFinishing];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    [SKStoreProductViewController _didFinishWithResult:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    [(SKStoreProductViewController *)self dismissViewControllerAnimated:1 completion:0];
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 productViewController:self didFinishWithResult:a3];
  }

  else
  {
    [(SKStoreProductViewController *)self _didFinish];
  }
}

- (void)_didFinishDismissal
{
  v7 = *MEMORY[0x1E69E9840];
  dismissalCompleted = self->_dismissalCompleted;
  if (dismissalCompleted)
  {
    dismissalCompleted[2](dismissalCompleted, a2);
    v4 = self->_dismissalCompleted;
  }

  else
  {
    v4 = 0;
  }

  self->_dismissalCompleted = 0;

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = self;
    _os_log_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%{public}@: dismiss end delay.", &v5, 0xCu);
  }

  [(SKStoreProductViewController *)self _endDelayingPresentation];
}

- (void)_loadDidFinishWithResult:(BOOL)a3 error:(id)a4
{
  loadBlock = self->_loadBlock;
  if (loadBlock)
  {
    loadBlock[2](loadBlock, a3, a4);
    v6 = self->_loadBlock;
    self->_loadBlock = 0;
  }
}

- (void)_userDidInteractWithProduct:(unint64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 productViewController:self userDidInteractWithProduct:a3];
  }
}

- (void)_presentPageWithRequest:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 productViewController:self presentProductWithRequest:v9 animated:v4];
  }
}

- (void)_resetRemoteViewController
{
  v1 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%{public}@ Resetting controller.", v0, 0xCu);
}

- (BOOL)_isInvalidSubclass
{
  if (([(SKStoreProductViewController *)self isMemberOfClass:objc_opt_class()]& 1) != 0)
  {
    goto LABEL_2;
  }

  v4 = [(NSString *)self->_bundleID lowercaseString];
  v5 = [v4 hasPrefix:@"com.apple."];

  if (v5)
  {
    has_internal_content = os_variant_has_internal_content();
    if (has_internal_content)
    {
      has_internal_content = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT);
      if (has_internal_content)
      {
        [SKStoreProductViewController _isInvalidSubclass];
LABEL_2:
        LOBYTE(has_internal_content) = 0;
      }
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      [SKStoreProductViewController _isInvalidSubclass];
    }

    LOBYTE(has_internal_content) = 1;
  }

  return has_internal_content;
}

- (BOOL)_isPeeking
{
  v3 = [(SKStoreProductViewController *)self presentationController];
  if ([v3 presentationStyle] == 20)
  {
    isKindOfClass = 1;
  }

  else
  {
    v5 = [(SKStoreProductViewController *)self presentationController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (void)setParentViewController:(id)a3
{
  v3.receiver = self;
  v3.super_class = SKStoreProductViewController;
  [(SKStoreProductViewController *)&v3 setParentViewController:a3];
}

- (void)setPresentationStyleIfNeeded
{
  v3 = [(SKStoreProductViewController *)self parentViewController];
  if (v3)
  {
  }

  else if (![(SKStoreProductViewController *)self _isPeeking])
  {
    v4 = MEMORY[0x1E696AD98];
    if (self->_productPageQFAEnabled)
    {
      v8 = 1176;
    }

    else
    {
      v8 = 1072;
    }

    v6 = *(&self->super.super.super.isa + v8);
    v7 = 4294967294;
    goto LABEL_8;
  }

  v4 = MEMORY[0x1E696AD98];
  if (self->_productPageQFAEnabled)
  {
    v5 = 1176;
  }

  else
  {
    v5 = 1072;
  }

  v6 = *(&self->super.super.super.isa + v5);
  v7 = 0;
LABEL_8:
  v9 = [v4 numberWithInt:v7];
  [v6 setPresentationStyle:?];
}

- (void)setNoClippingIfNeeded
{
  v3 = [MEMORY[0x1E696AAE8] mainBundle];
  v4 = [v3 bundleIdentifier];
  v5 = [@"com.apple.Spotlight" isEqualToString:v4];

  v6 = [MEMORY[0x1E69DC938] currentDevice];
  v7 = [v6 userInterfaceIdiom];

  remoteViewController = self->_remoteViewController;
  if (remoteViewController)
  {
    v9 = v5 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9 && v7 == 1)
  {

    [(_UIRemoteViewController *)remoteViewController _setViewClipsToBounds:0];
  }
}

- (void)_addRemoteView
{
  if (self->_remoteViewController && [(SKStoreProductViewController *)self isViewLoaded])
  {
    v5 = [(SKRemoteProductViewController *)self->_remoteViewController view];
    v3 = [MEMORY[0x1E69DC888] clearColor];
    [v5 setBackgroundColor:v3];

    v4 = [(SKStoreProductViewController *)self view];
    [v4 addSubview:v5];
    [v4 bounds];
    [v5 setFrame:?];
    [v5 setAutoresizingMask:18];
  }
}

+ (id)_defaultIXStoreSheetDictionary
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"itunes[.]apple[.]com", @"new[.]itunes[.]com", 0}];
  [v2 setObject:v3 forKey:@"host-patterns"];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v4 addObject:@"^/([a-z][a-z]/)?(app|app-bundle|album|movie|tv-season)([/?]|$)"];
  [v4 addObject:@"^/redir/.*[&?]mt=[0123456789]+(&|$)"];
  [v2 setObject:v4 forKey:@"path-patterns"];

  return v2;
}

- (void)_fireLoadBlockBeforeFinishing
{
  if (self->_loadBlock && dyld_program_sdk_at_least())
  {
    v3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SKErrorDomain" code:0 userInfo:0];
    [(SKStoreProductViewController *)self _loadDidFinishWithResult:0 error:v3];
  }
}

- (void)_forceOrientationBackToSupportedOrientation
{
  v7 = [MEMORY[0x1E69DC668] sharedApplication];
  if (([v7 statusBarOrientation] - 3) <= 1 && (-[SKStoreProductViewController supportedInterfaceOrientations](self, "supportedInterfaceOrientations") & 0x18) == 0)
  {
    if (!-[SKStoreProductViewController isViewLoaded](self, "isViewLoaded") || (-[SKStoreProductViewController view](self, "view"), v3 = objc_claimAutoreleasedReturnValue(), [v3 window], v4 = objc_claimAutoreleasedReturnValue(), v3, !v4))
    {
      v5 = [(SKStoreProductViewController *)self presentedViewController];
      v6 = [v5 view];
      v4 = [v6 window];

      if (!v4)
      {
        v4 = [MEMORY[0x1E69DD2E8] keyWindow];
      }
    }

    [v4 _setRotatableViewOrientation:1 duration:1 force:0.0];
  }
}

- (void)_requestRemoteViewController
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__SKStoreProductViewController__requestRemoteViewController__block_invoke;
  v8[3] = &unk_1E7B27A78;
  v8[4] = self;
  [(SKStoreProductViewController *)self _beginDelayingPresentation:v8 cancellationHandler:10.0];
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60__SKStoreProductViewController__requestRemoteViewController__block_invoke_2;
  v5[3] = &unk_1E7B27AA0;
  objc_copyWeak(&v6, &location);
  v5[4] = self;
  v3 = [SKRemoteProductViewController requestViewController:@"ServiceProductPageViewController" fromServiceWithBundleIdentifier:@"com.apple.ios.StoreKitUIService" connectionHandler:v5];
  cancelRequest = self->_cancelRequest;
  self->_cancelRequest = v3;

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

uint64_t __60__SKStoreProductViewController__requestRemoteViewController__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = SSError();
  [v1 _loadDidFinishWithResult:0 error:v2];

  return 0;
}

void __60__SKStoreProductViewController__requestRemoteViewController__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (v6)
  {
    objc_storeStrong(WeakRetained + 133, a2);
    [v9[133] setProductViewController:v9];
    v10 = v9[134];
    v11 = [v9[133] serviceViewControllerProxy];
    [v10 setInvocationTarget:v11];

    [v9 setPresentationStyleIfNeeded];
    [v9 setNoClippingIfNeeded];
    [v9 addChildViewController:v9[133]];
    [v9 _addRemoteView];
  }

  else
  {
    NSLog(&cfstr_CouldNotReques.isa, v7);
    v12 = SSError();
    [v9 _loadDidFinishWithResult:0 error:v12];

    v14.receiver = *(a1 + 32);
    v14.super_class = SKStoreProductViewController;
    objc_msgSendSuper2(&v14, sel_dismissViewControllerAnimated_completion_, 1, 0);
  }

  v13 = v9[127];
  v9[127] = 0;

  [v9 _endDelayingPresentation];
}

- (void)_setLoadBlock:(id)a3
{
  if (self->_loadBlock != a3)
  {
    v4 = [a3 copy];
    loadBlock = self->_loadBlock;
    self->_loadBlock = v4;

    MEMORY[0x1EEE66BB8](v4, loadBlock);
  }
}

- (void)_configureForFullScreenPresentationOrThrowException
{
  v3 = [(SKStoreProductViewController *)self presentingViewController];

  if (!v3)
  {
    if (dyld_program_sdk_at_least())
    {
      [(SKStoreProductViewController *)self _throwUnsupportedPresentationException];
    }

    [(SKStoreProductViewController *)self setPresentationStyleIfNeeded];
  }
}

- (void)_throwUnsupportedPresentationException
{
  v2 = MEMORY[0x1E695DF30];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [v2 raise:@"SKUnsupportedPresentationException" format:{@"%@ must be used in a modal view controller", v4}];
}

+ (void)_validateURL:(id)a3 withSheetInfo:(id)a4 completionBlock:(id)a5
{
  v52 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v8 objectForKey:@"host-patterns"];
    if (v10)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ([v7 host], (v11 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v20 = 0;
        v21 = 0;
LABEL_44:
        v22 = v20 & v21;

        goto LABEL_45;
      }

      v12 = v11;
      v41 = v7;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v13 = v10;
      v14 = [v13 countByEnumeratingWithState:&v46 objects:v51 count:16];
      if (!v14)
      {
        v20 = 0;
        v21 = 0;
LABEL_42:

        goto LABEL_43;
      }

      v15 = v14;
      v39 = v8;
      v40 = v10;
      v16 = *v47;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v47 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:*(*(&v46 + 1) + 8 * i) options:1 error:0];
          v19 = [v18 rangeOfFirstMatchInString:v12 options:0 range:{0, objc_msgSend(v12, "length")}];

          if (v19 != 0x7FFFFFFFFFFFFFFFLL)
          {

            v10 = v40;
            v7 = v41;
            v8 = v39;
            goto LABEL_17;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v46 objects:v51 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }

      v20 = 0;
      v21 = 0;
      goto LABEL_36;
    }

LABEL_17:
    v12 = [v8 objectForKey:@"path-patterns"];
    if (v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v40 = v10;
        v23 = MEMORY[0x1E696AD60];
        [v7 path];
        v25 = v24 = v7;
        v13 = [v23 stringWithString:v25];

        if (!v13)
        {
          v21 = 0;
          v20 = 1;
          v7 = v24;
          goto LABEL_41;
        }

        v26 = [v24 parameterString];

        if (v26)
        {
          v27 = [v24 parameterString];
          [v13 appendFormat:@";%@", v27];
        }

        v28 = [v24 query];

        if (v28)
        {
          v29 = [v24 query];
          [v13 appendFormat:@"?%@", v29];
        }

        v39 = v8;
        v30 = [v24 fragment];

        if (v30)
        {
          v31 = [v24 fragment];
          [v13 appendFormat:@"#%@", v31];
        }

        v41 = v24;
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v32 = v12;
        v33 = [v32 countByEnumeratingWithState:&v42 objects:v50 count:16];
        if (v33)
        {
          v34 = v33;
          v35 = *v43;
LABEL_28:
          v36 = 0;
          while (1)
          {
            if (*v43 != v35)
            {
              objc_enumerationMutation(v32);
            }

            v21 = 1;
            v37 = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:*(*(&v42 + 1) + 8 * v36) options:1 error:0];
            v38 = [v37 rangeOfFirstMatchInString:v13 options:0 range:{0, objc_msgSend(v13, "length")}];

            if (v38 != 0x7FFFFFFFFFFFFFFFLL)
            {
              break;
            }

            if (v34 == ++v36)
            {
              v34 = [v32 countByEnumeratingWithState:&v42 objects:v50 count:16];
              if (v34)
              {
                goto LABEL_28;
              }

              goto LABEL_34;
            }
          }
        }

        else
        {
LABEL_34:
          v21 = 0;
        }

        v20 = 1;
LABEL_36:
        v7 = v41;
        v8 = v39;
LABEL_41:
        v10 = v40;
        goto LABEL_42;
      }

      v21 = 0;
      v20 = 1;
    }

    else
    {
      v20 = 1;
      v21 = 1;
    }

LABEL_43:

    goto LABEL_44;
  }

  v22 = 0;
LABEL_45:
  v9[2](v9, v22);
}

- (id)_impressionDictFromImpression:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 advertisedAppStoreItemIdentifier];
  [v4 setObject:v5 forKeyedSubscript:@"id"];

  v6 = [v3 signature];
  [v4 setObject:v6 forKeyedSubscript:@"adNetworkAttributionSignature"];

  v7 = [v3 adCampaignIdentifier];
  [v4 setObject:v7 forKeyedSubscript:@"adNetworkCampaignId"];

  v8 = [v3 sourceIdentifier];
  [v4 setObject:v8 forKeyedSubscript:@"sourceIdentifier"];

  v9 = [v3 adNetworkIdentifier];
  [v4 setObject:v9 forKeyedSubscript:@"adNetworkId"];

  v10 = [v3 adImpressionIdentifier];
  v11 = [v10 lowercaseString];
  [v4 setObject:v11 forKeyedSubscript:@"adNetworkNonce"];

  v12 = [v3 timestamp];
  [v4 setObject:v12 forKeyedSubscript:@"adNetworkImpressionTimestamp"];

  v13 = [v3 version];
  [v4 setObject:v13 forKeyedSubscript:@"adNetworkPayloadVersion"];

  v14 = [v3 sourceAppStoreItemIdentifier];

  [v4 setObject:v14 forKeyedSubscript:@"adNetworkSourceAppStoreIdentifier"];

  return v4;
}

- (void)sk_didBecomeOnScreen:(id)a3
{
  if (self->_productPageQFAEnabled)
  {
    v3 = &OBJC_IVAR___SKStoreProductViewController__remoteViewTask;
  }

  else
  {
    v3 = &OBJC_IVAR___SKStoreProductViewController__serviceProxy;
  }

  v4 = *(&self->super.super.super.isa + *v3);
  v5 = [MEMORY[0x1E696AD98] numberWithBool:1];
  [v4 setVisibleInClientWindow:v5];
}

- (void)sk_didBecomeOffScreen:(id)a3
{
  if (self->_productPageQFAEnabled)
  {
    v3 = &OBJC_IVAR___SKStoreProductViewController__remoteViewTask;
  }

  else
  {
    v3 = &OBJC_IVAR___SKStoreProductViewController__serviceProxy;
  }

  v4 = *(&self->super.super.super.isa + *v3);
  v5 = [MEMORY[0x1E696AD98] numberWithBool:0];
  [v4 setVisibleInClientWindow:v5];
}

- (id)animationControllerForDismissedController:(id)a3
{
  v3 = [[SKRemoteDismissingTransition alloc] initWithViewController:self];

  return v3;
}

- (BOOL)dismissRemoteViewControllerWithCompletion:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SKUIServiceProductPageViewController *)self->_serviceProxy invocationTarget];

  v6 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v6)
    {
      v10 = 138543362;
      v11 = self;
      _os_log_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%{public}@: dismiss begin delay.", &v10, 0xCu);
    }

    [(SKStoreProductViewController *)self _beginDelayingPresentation:0 cancellationHandler:5.0];
    v7 = _Block_copy(v4);
    dismissalCompleted = self->_dismissalCompleted;
    self->_dismissalCompleted = v7;

    [(SKUIServiceProductPageViewController *)self->_serviceProxy dismissViewControllerAnimated:MEMORY[0x1E695E118]];
  }

  else if (v6)
  {
    v10 = 138543362;
    v11 = self;
    _os_log_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%{public}@: no invocation target.", &v10, 0xCu);
  }

  return v5 != 0;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)didChangeAlpha:(double)a3
{
  v3 = a3 > 0.300000012;
  if (self->_viewWasOnScreen != v3)
  {
    if (self->_productPageQFAEnabled)
    {
      v5 = &OBJC_IVAR___SKStoreProductViewController__remoteViewTask;
    }

    else
    {
      v5 = &OBJC_IVAR___SKStoreProductViewController__serviceProxy;
    }

    v6 = *(&self->super.super.super.isa + *v5);
    v7 = [MEMORY[0x1E696AD98] numberWithBool:a3 > 0.300000012];
    [v6 setVisibleInClientWindow:v7];

    self->_viewWasOnScreen = v3;
  }
}

- (void)didChangeHidden
{
  v3 = [(SKStoreProductViewController *)self view];
  v4 = [v3 isHidden] ^ 1;

  if (self->_viewWasOnScreen != v4)
  {
    if (self->_productPageQFAEnabled)
    {
      v5 = &OBJC_IVAR___SKStoreProductViewController__remoteViewTask;
    }

    else
    {
      v5 = &OBJC_IVAR___SKStoreProductViewController__serviceProxy;
    }

    v6 = *(&self->super.super.super.isa + *v5);
    v7 = [MEMORY[0x1E696AD98] numberWithBool:v4];
    [v6 setVisibleInClientWindow:v7];

    self->_viewWasOnScreen = v4;
  }
}

- (void)_didFinishWithResult:.cold.1()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  v2 = 2048;
  v3 = v0;
  _os_log_debug_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%{public}@ Did finish with result: %ld", v1, 0x16u);
}

- (void)_isInvalidSubclass
{
  v1 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  _os_log_fault_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "[%@] Subclassing SKStoreProductViewController is not supported.", v0, 0xCu);
}

@end