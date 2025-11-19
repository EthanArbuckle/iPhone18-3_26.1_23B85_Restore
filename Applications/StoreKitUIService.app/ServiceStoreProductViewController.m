@interface ServiceStoreProductViewController
- (ServiceStoreProductViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (ServiceStoreProductViewControllerDelegate)delegate;
- (id)_clientViewControllerProxy;
- (id)_newCancelButtonItemWithClientContext:(id)a3;
- (id)legacyScriptInterfaceForApplication:(id)a3;
- (void)_presentOnboardingIfNeededWithCompletion:(id)a3;
- (void)_sendDidFinishWithResult:(int64_t)a3;
- (void)_sendInstallAttributionIfAllowed;
- (void)_startIfReady;
- (void)application:(id)a3 didFailToLoadWithError:(id)a4;
- (void)application:(id)a3 didStopWithOptions:(id)a4;
- (void)applicationDidDisplayFirstPage:(id)a3;
- (void)dealloc;
- (void)finishImmediately;
- (void)finishStarRatingPromptWithRating:(id)a3;
- (void)loadProductWithPageDictionary:(id)a3;
- (void)loadProductWithParameters:(id)a3;
- (void)loadProductWithRequest:(id)a3;
- (void)loadProductWithURL:(id)a3;
- (void)setAdditionalBuyParameters:(id)a3;
- (void)setAffiliateIdentifier:(id)a3;
- (void)setClientIdentifier:(id)a3;
- (void)setPreview:(id)a3;
- (void)setProductPageStyle:(id)a3;
- (void)setupWithClientBundleID:(id)a3 bagType:(int64_t)a4;
- (void)viewDidLayoutSubviews;
- (void)willRotateToInterfaceOrientation:(int64_t)a3 duration:(double)a4;
@end

@implementation ServiceStoreProductViewController

- (ServiceStoreProductViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v27.receiver = self;
  v27.super_class = ServiceStoreProductViewController;
  v4 = [(ServiceStoreProductViewController *)&v27 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = objc_alloc_init(SKUIMutableApplicationControllerOptions);
    [v5 setPageRenderMetricsEnabled:1];
    v6 = [[SKUIApplicationController alloc] initWithClientContextClass:objc_opt_class() options:v5];
    applicationController = v4->_applicationController;
    v4->_applicationController = v6;

    [(SKUIApplicationController *)v4->_applicationController setDelegate:v4];
    [(SKUIApplicationController *)v4->_applicationController _setHidesTabBar:1];
    v8 = [[SKUITabBarItem alloc] initWithTabIdentifier:@"main"];
    v9 = v4->_applicationController;
    v28 = v8;
    v10 = [NSArray arrayWithObjects:&v28 count:1];
    [(SKUIApplicationController *)v9 setTabBarItems:v10];

    v11 = [(SKUIApplicationController *)v4->_applicationController clientContext];
    v12 = [(ServiceStoreProductViewController *)v4 _newCancelButtonItemWithClientContext:v11];

    v13 = objc_alloc_init(UIViewController);
    v14 = [v13 navigationItem];
    [v14 setLeftBarButtonItem:v12];

    v15 = [v13 view];
    v16 = +[UIColor whiteColor];
    [v15 setBackgroundColor:v16];

    v17 = [[UINavigationController alloc] initWithRootViewController:v13];
    loadingPlaceholderViewController = v4->_loadingPlaceholderViewController;
    v4->_loadingPlaceholderViewController = v17;

    v19 = objc_alloc_init(ServiceProductPageConfiguration);
    pageConfiguration = v4->_pageConfiguration;
    v4->_pageConfiguration = v19;

    [(ServiceProductPageConfiguration *)v4->_pageConfiguration setShowsStoreButton:1];
    v21 = +[NSUUID UUID];
    v22 = [v21 UUIDString];
    v23 = [v22 componentsSeparatedByString:@"-"];
    v24 = [v23 firstObject];
    logKey = v4->_logKey;
    v4->_logKey = v24;
  }

  return v4;
}

- (void)viewDidLayoutSubviews
{
  loadingPlaceholderViewController = self->_loadingPlaceholderViewController;
  if (loadingPlaceholderViewController)
  {
    v4 = [(UINavigationController *)loadingPlaceholderViewController parentViewController];

    if (!v4)
    {
      v5 = [(SKUIApplicationController *)self->_applicationController rootViewController];
      [v5 addChildViewController:self->_loadingPlaceholderViewController];
      v6 = [v5 view];
      v7 = [(UINavigationController *)self->_loadingPlaceholderViewController view];
      [v7 setAutoresizingMask:18];
      [v6 bounds];
      [v7 setFrame:?];
      [v6 addSubview:v7];
    }
  }

  v8.receiver = self;
  v8.super_class = ServiceStoreProductViewController;
  [(ServiceStoreProductViewController *)&v8 viewDidLayoutSubviews];
}

- (void)dealloc
{
  [(SKUIApplicationController *)self->_applicationController _stopApplication];
  [(SKUIApplicationController *)self->_applicationController setDelegate:0];
  v3.receiver = self;
  v3.super_class = ServiceStoreProductViewController;
  [(ServiceStoreProductViewController *)&v3 dealloc];
}

- (void)loadProductWithParameters:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    logKey = self->_logKey;
    v6 = 138543618;
    v7 = self;
    v8 = 2114;
    v9 = logKey;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@]: Loading product with page parameters.", &v6, 0x16u);
  }

  [(ServiceProductPageConfiguration *)self->_pageConfiguration setProductParameters:v4];
  [(ServiceStoreProductViewController *)self _startIfReady];
}

- (void)_startIfReady
{
  if (!self->_didStart && [(ServiceStoreProductViewController *)self isViewLoaded]&& [(ServiceProductPageConfiguration *)self->_pageConfiguration isLoadable])
  {
    v3 = [(SKUIApplicationController *)self->_applicationController _applicationMode];
    if (v3 == 2)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10002C1E4(self);
      }

      v5 = [NSError alloc];
      v4 = [v5 initWithDomain:SKUIErrorDomain code:0 userInfo:0];
      v6 = [(ServiceStoreProductViewController *)self _clientViewControllerProxy];
      [v6 loadDidFinishWithResult:&__kCFBooleanFalse error:v4];
    }

    else if (v3 == 1)
    {
      v4 = [(ServiceProductPageConfiguration *)self->_pageConfiguration copyITMLOptionsDictionary];
      [(SKUIApplicationController *)self->_applicationController resumeApplicationWithOptions:v4];
    }

    else
    {
      if (v3)
      {
LABEL_13:
        self->_didStart = 1;
        return;
      }

      v4 = [(ServiceProductPageConfiguration *)self->_pageConfiguration copyITMLOptionsDictionary];
      [(SKUIApplicationController *)self->_applicationController loadApplicationWithOptions:v4];
    }

    goto LABEL_13;
  }
}

- (id)_clientViewControllerProxy
{
  v2 = [(ServiceStoreProductViewController *)self delegate];
  v3 = [v2 serviceProductPageViewControllerClientProxy];

  return v3;
}

- (void)_sendInstallAttributionIfAllowed
{
  if (self->_didLoad && self->_didShow)
  {
    v3 = [(ServiceProductPageConfiguration *)self->_pageConfiguration productParameters];
    v4 = [v3 objectForKeyedSubscript:SKStoreProductParameterAdNetworkIdentifier];
    if (v4)
    {
      v5 = [(ServiceStoreProductViewController *)self _hostApplicationBundleIdentifier];
      v6 = [LSApplicationProxy applicationProxyForIdentifier:v5];
      v7 = [v6 itemID];
      v8 = [v7 unsignedIntegerValue];

      if (v8)
      {
        v22 = v4;
        v23 = v6;
        v9 = [v3 objectForKeyedSubscript:SKStoreProductParameterITunesItemIdentifier];
        [v3 objectForKeyedSubscript:SKStoreProductParameterAdNetworkCampaignIdentifier];
        v10 = v21 = v5;
        v11 = [v3 objectForKeyedSubscript:SKStoreProductParameterAdNetworkNonce];
        v12 = [v3 objectForKeyedSubscript:SKStoreProductParameterAdNetworkTimestamp];
        v13 = [v3 objectForKeyedSubscript:SKStoreProductParameterAdNetworkAttributionSignature];
        v14 = [v3 objectForKeyedSubscript:SKStoreProductParameterAdNetworkVersion];
        v15 = [v3 objectForKeyedSubscript:SKStoreProductParameterAdNetworkSourceAppStoreIdentifier];
        v16 = objc_opt_new();
        v24 = v9;
        v17 = v9;
        v18 = v10;
        v5 = v21;
        [v16 setAppAdamId:v17];
        [v16 setAdNetworkId:@"com.apple.advp"];
        [v16 setCampaignId:v18];
        [v16 setImpressionId:v11];
        [v16 setSourceAppAdamId:v15];
        [v16 setTimestamp:v12];
        [v16 setAttributionSignature:v13];
        [v16 setSourceAppBundleId:v21];
        [v16 setOverrideCampaignLimit:0];
        [v16 setVersion:v14];
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          logKey = self->_logKey;
          *buf = 138544130;
          v26 = self;
          v27 = 2114;
          v28 = logKey;
          v29 = 2114;
          v30 = v21;
          v31 = 2114;
          v32 = v15;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@]: SKAdNetwork - Adding install attribution params for source app bundle ID: %{public}@ adam ID: %{public}@", buf, 0x2Au);
        }

        v20 = +[ASDInstallAttribution sharedInstance];
        [v20 addInstallAttributionParamsWithConfig:v16];

        v4 = v22;
        v6 = v23;
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10002C268(self);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002C2EC(self);
    }
  }
}

- (id)_newCancelButtonItemWithClientContext:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(UIBarButtonItem);
  [v5 setAction:"_cancelButtonAction:"];
  [v5 setTarget:self];
  if (v4)
  {
    v6 = [v4 localizedStringForKey:@"CLOSE_SHEET_BUTTON"];
    [v5 setTitle:v6];
  }

  else
  {
    v6 = SKUIBundle();
    v7 = [v6 localizedStringForKey:@"CLOSE_SHEET_BUTTON" value:&stru_100052318 table:0];
    [v5 setTitle:v7];
  }

  return v5;
}

- (void)_presentOnboardingIfNeededWithCompletion:(id)a3
{
  v4 = a3;
  if ([sub_100011E18() shouldShowOnboarding])
  {
    if (!self->_presentingOnboarding && [(ServiceStoreProductViewController *)self shouldShowOnboarding])
    {
      self->_presentingOnboarding = 1;
      v5 = self;
      v6 = sub_100011E18();
      v18 = _NSConcreteStackBlock;
      v19 = 3221225472;
      v20 = sub_100011EF8;
      v21 = &unk_100051798;
      v22 = v5;
      v23 = v4;
      v7 = [v6 viewControllerForMediaType:2 completion:&v18];
      v8 = [v7 view];
      v9 = [(ServiceStoreProductViewController *)v5 view];
      [v9 bounds];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      [v8 frame];
      [(ServiceStoreProductViewController *)v5 addChildViewController:v7];
      [v8 setAutoresizingMask:18];
      [v8 setFrame:{v11, 0.0, v13, v15}];
      v16 = [(ServiceStoreProductViewController *)v5 view];
      v17 = [v7 view];
      [v16 addSubview:v17];

      [v7 didMoveToParentViewController:v5];
    }
  }

  else
  {
    v4[2](v4);
  }
}

- (id)legacyScriptInterfaceForApplication:(id)a3
{
  v3 = objc_alloc_init(SKScriptInterface);

  return v3;
}

- (void)application:(id)a3 didFailToLoadWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10002C370(self);
  }

  v8 = [_UIContentUnavailableView alloc];
  v9 = [v6 clientContext];
  v10 = SKUIErrorDocumentTitle();
  v11 = [v8 initWithFrame:v10 title:0 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];

  v12 = [(UINavigationController *)self->_loadingPlaceholderViewController topViewController];
  [v12 setView:v11];

  v13 = [(ServiceStoreProductViewController *)self _clientViewControllerProxy];
  [v13 loadDidFinishWithResult:&__kCFBooleanFalse error:v7];
}

- (void)application:(id)a3 didStopWithOptions:(id)a4
{
  v5 = [a4 objectForKey:@"type"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v5 isEqualToString:@"close"])
    {
      v6 = 1;
    }

    else if ([v5 isEqualToString:@"download-complete"])
    {
      v6 = 2;
    }

    else if ([v5 isEqualToString:@"goto-store"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"goto-url"))
    {
      v6 = 3;
    }

    else if ([v5 isEqualToString:@"purchased"])
    {
      v6 = 4;
    }

    else if ([v5 isEqualToString:@"right"])
    {
      v6 = 5;
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

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    logKey = self->_logKey;
    v8 = 138543874;
    v9 = self;
    v10 = 2114;
    v11 = logKey;
    v12 = 2114;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@]: Product load stopped with type: %{public}@.", &v8, 0x20u);
  }

  [(ServiceStoreProductViewController *)self _sendDidFinishWithResult:v6];
}

- (void)applicationDidDisplayFirstPage:(id)a3
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    logKey = self->_logKey;
    v8 = 138543618;
    v9 = self;
    v10 = 2114;
    v11 = logKey;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@]: Product load completed.", &v8, 0x16u);
  }

  v5 = [(UINavigationController *)self->_loadingPlaceholderViewController view];
  [v5 removeFromSuperview];

  [(UINavigationController *)self->_loadingPlaceholderViewController removeFromParentViewController];
  loadingPlaceholderViewController = self->_loadingPlaceholderViewController;
  self->_loadingPlaceholderViewController = 0;

  v7 = [(ServiceStoreProductViewController *)self _clientViewControllerProxy];
  [v7 loadDidFinishWithResult:&__kCFBooleanTrue error:0];

  self->_didLoad = 1;
  [(ServiceStoreProductViewController *)self _sendInstallAttributionIfAllowed];
}

- (void)_sendDidFinishWithResult:(int64_t)a3
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    logKey = self->_logKey;
    *buf = 138543874;
    v10 = self;
    v11 = 2114;
    v12 = logKey;
    v13 = 2048;
    v14 = a3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@]: Product finished with result: %ld.", buf, 0x20u);
  }

  v6 = [(ServiceStoreProductViewController *)self delegate];
  [v6 serviceProductPageViewControllerFinishWithResult:a3];

  [(SKUIApplicationController *)self->_applicationController _resetDocumentControllers];
  v7 = dispatch_time(0, 5000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100012704;
  block[3] = &unk_100051148;
  block[4] = self;
  dispatch_after(v7, &_dispatch_main_q, block);
}

- (void)finishImmediately
{
  if (self->_didPurchase)
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  [(ServiceStoreProductViewController *)self _sendDidFinishWithResult:v2];
}

- (void)finishStarRatingPromptWithRating:(id)a3
{
  starRatingCompletionBlock = self->_starRatingCompletionBlock;
  if (starRatingCompletionBlock)
  {
    v5 = a3 != 0;
    [a3 floatValue];
    starRatingCompletionBlock[2](starRatingCompletionBlock, v5);
    v6 = self->_starRatingCompletionBlock;
    self->_starRatingCompletionBlock = 0;
  }
}

- (void)loadProductWithPageDictionary:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    logKey = self->_logKey;
    v6 = 138543618;
    v7 = self;
    v8 = 2114;
    v9 = logKey;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@]: Loading product with page dictionary.", &v6, 0x16u);
  }

  [(ServiceProductPageConfiguration *)self->_pageConfiguration setProductPageDictionary:v4];
  [(ServiceStoreProductViewController *)self _startIfReady];
}

- (void)loadProductWithRequest:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    logKey = self->_logKey;
    v10 = 138543618;
    v11 = self;
    v12 = 2114;
    v13 = logKey;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@]: Loading product with encoded request.", &v10, 0x16u);
  }

  v6 = [[SKStorePageRequest alloc] initWithXPCEncoding:v4];
  -[ServiceProductPageConfiguration setProductPageStyle:](self->_pageConfiguration, "setProductPageStyle:", [v6 productPageStyle]);
  v7 = [v6 productURL];
  pageConfiguration = self->_pageConfiguration;
  if (v7)
  {
    [(ServiceProductPageConfiguration *)pageConfiguration setProductURL:v7];
  }

  else
  {
    v9 = [v6 productParameters];
    [(ServiceProductPageConfiguration *)pageConfiguration setProductParameters:v9];
  }

  [(ServiceStoreProductViewController *)self _startIfReady];
}

- (void)loadProductWithURL:(id)a3
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10002C3FC(self, a3);
  }

  v5 = [(ServiceStoreProductViewController *)self _clientViewControllerProxy];
  [v5 loadDidFinishWithResult:&__kCFBooleanFalse error:0];
}

- (void)setAdditionalBuyParameters:(id)a3
{
  applicationController = self->_applicationController;
  v4 = a3;
  v5 = [(SKUIApplicationController *)applicationController clientContext];
  [v5 _setAdditionalPurchaseParameters:v4];
}

- (void)setAffiliateIdentifier:(id)a3
{
  applicationController = self->_applicationController;
  v4 = a3;
  v5 = [(SKUIApplicationController *)applicationController clientContext];
  [v5 _setPurchaseAffiliateIdentifier:v4];
}

- (void)setClientIdentifier:(id)a3
{
  applicationController = self->_applicationController;
  v4 = a3;
  v5 = [(SKUIApplicationController *)applicationController clientContext];
  v6 = [v5 clientInterface];

  [v6 setClientIdentifier:v4];
}

- (void)setPreview:(id)a3
{
  v4 = [a3 BOOLValue];
  self->_preview = v4;
  [(UINavigationController *)self->_loadingPlaceholderViewController setNavigationBarHidden:v4];
  v5 = [(SKUIApplicationController *)self->_applicationController clientContext];
  [v5 sendAppPreviewStateChanged:self->_preview];
}

- (void)setProductPageStyle:(id)a3
{
  pageConfiguration = self->_pageConfiguration;
  v4 = [a3 integerValue];

  [(ServiceProductPageConfiguration *)pageConfiguration setProductPageStyle:v4];
}

- (void)setupWithClientBundleID:(id)a3 bagType:(int64_t)a4
{
  v6 = a3;
  v7 = [(SKUIApplicationController *)self->_applicationController clientContext];
  v12 = v6;
  [v7 setHostApplicationIdentifier:v12];
  [(ServiceProductPageConfiguration *)self->_pageConfiguration setHostApplicationIdentifier:v12];
  if (v12)
  {
    v8 = objc_alloc_init(SKUIURL);
    [v8 setReferrerApplicationName:v12];
    [v7 setPurchaseReferrerURL:v8];
  }

  [v7 _setPurchaseURLBagType:a4];
  v9 = [LSApplicationProxy applicationProxyForIdentifier:v12];
  v10 = [v9 itemID];
  v11 = [v10 stringValue];
  [v7 _setPurchaseAffiliateIdentifier:v11];
}

- (void)willRotateToInterfaceOrientation:(int64_t)a3 duration:(double)a4
{
  v7 = [(SKUIApplicationController *)self->_applicationController rootViewController];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 view];
    [v9 bounds];
    v11 = v10;
    v13 = v12;

    if (v13 != v11)
    {
      v14 = [(ServiceStoreProductViewController *)self transitionCoordinator];
      [v8 viewWillTransitionToSize:v14 withTransitionCoordinator:{v13, v11}];
    }
  }

  v15.receiver = self;
  v15.super_class = ServiceStoreProductViewController;
  [(ServiceStoreProductViewController *)&v15 willRotateToInterfaceOrientation:a3 duration:a4];
}

- (ServiceStoreProductViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end