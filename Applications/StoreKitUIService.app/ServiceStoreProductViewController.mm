@interface ServiceStoreProductViewController
- (ServiceStoreProductViewController)initWithNibName:(id)name bundle:(id)bundle;
- (ServiceStoreProductViewControllerDelegate)delegate;
- (id)_clientViewControllerProxy;
- (id)_newCancelButtonItemWithClientContext:(id)context;
- (id)legacyScriptInterfaceForApplication:(id)application;
- (void)_presentOnboardingIfNeededWithCompletion:(id)completion;
- (void)_sendDidFinishWithResult:(int64_t)result;
- (void)_sendInstallAttributionIfAllowed;
- (void)_startIfReady;
- (void)application:(id)application didFailToLoadWithError:(id)error;
- (void)application:(id)application didStopWithOptions:(id)options;
- (void)applicationDidDisplayFirstPage:(id)page;
- (void)dealloc;
- (void)finishImmediately;
- (void)finishStarRatingPromptWithRating:(id)rating;
- (void)loadProductWithPageDictionary:(id)dictionary;
- (void)loadProductWithParameters:(id)parameters;
- (void)loadProductWithRequest:(id)request;
- (void)loadProductWithURL:(id)l;
- (void)setAdditionalBuyParameters:(id)parameters;
- (void)setAffiliateIdentifier:(id)identifier;
- (void)setClientIdentifier:(id)identifier;
- (void)setPreview:(id)preview;
- (void)setProductPageStyle:(id)style;
- (void)setupWithClientBundleID:(id)d bagType:(int64_t)type;
- (void)viewDidLayoutSubviews;
- (void)willRotateToInterfaceOrientation:(int64_t)orientation duration:(double)duration;
@end

@implementation ServiceStoreProductViewController

- (ServiceStoreProductViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v27.receiver = self;
  v27.super_class = ServiceStoreProductViewController;
  v4 = [(ServiceStoreProductViewController *)&v27 initWithNibName:name bundle:bundle];
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

    clientContext = [(SKUIApplicationController *)v4->_applicationController clientContext];
    v12 = [(ServiceStoreProductViewController *)v4 _newCancelButtonItemWithClientContext:clientContext];

    v13 = objc_alloc_init(UIViewController);
    navigationItem = [v13 navigationItem];
    [navigationItem setLeftBarButtonItem:v12];

    view = [v13 view];
    v16 = +[UIColor whiteColor];
    [view setBackgroundColor:v16];

    v17 = [[UINavigationController alloc] initWithRootViewController:v13];
    loadingPlaceholderViewController = v4->_loadingPlaceholderViewController;
    v4->_loadingPlaceholderViewController = v17;

    v19 = objc_alloc_init(ServiceProductPageConfiguration);
    pageConfiguration = v4->_pageConfiguration;
    v4->_pageConfiguration = v19;

    [(ServiceProductPageConfiguration *)v4->_pageConfiguration setShowsStoreButton:1];
    v21 = +[NSUUID UUID];
    uUIDString = [v21 UUIDString];
    v23 = [uUIDString componentsSeparatedByString:@"-"];
    firstObject = [v23 firstObject];
    logKey = v4->_logKey;
    v4->_logKey = firstObject;
  }

  return v4;
}

- (void)viewDidLayoutSubviews
{
  loadingPlaceholderViewController = self->_loadingPlaceholderViewController;
  if (loadingPlaceholderViewController)
  {
    parentViewController = [(UINavigationController *)loadingPlaceholderViewController parentViewController];

    if (!parentViewController)
    {
      rootViewController = [(SKUIApplicationController *)self->_applicationController rootViewController];
      [rootViewController addChildViewController:self->_loadingPlaceholderViewController];
      view = [rootViewController view];
      view2 = [(UINavigationController *)self->_loadingPlaceholderViewController view];
      [view2 setAutoresizingMask:18];
      [view bounds];
      [view2 setFrame:?];
      [view addSubview:view2];
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

- (void)loadProductWithParameters:(id)parameters
{
  parametersCopy = parameters;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    logKey = self->_logKey;
    v6 = 138543618;
    selfCopy = self;
    v8 = 2114;
    v9 = logKey;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@]: Loading product with page parameters.", &v6, 0x16u);
  }

  [(ServiceProductPageConfiguration *)self->_pageConfiguration setProductParameters:parametersCopy];
  [(ServiceStoreProductViewController *)self _startIfReady];
}

- (void)_startIfReady
{
  if (!self->_didStart && [(ServiceStoreProductViewController *)self isViewLoaded]&& [(ServiceProductPageConfiguration *)self->_pageConfiguration isLoadable])
  {
    _applicationMode = [(SKUIApplicationController *)self->_applicationController _applicationMode];
    if (_applicationMode == 2)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10002C1E4(self);
      }

      v5 = [NSError alloc];
      copyITMLOptionsDictionary = [v5 initWithDomain:SKUIErrorDomain code:0 userInfo:0];
      _clientViewControllerProxy = [(ServiceStoreProductViewController *)self _clientViewControllerProxy];
      [_clientViewControllerProxy loadDidFinishWithResult:&__kCFBooleanFalse error:copyITMLOptionsDictionary];
    }

    else if (_applicationMode == 1)
    {
      copyITMLOptionsDictionary = [(ServiceProductPageConfiguration *)self->_pageConfiguration copyITMLOptionsDictionary];
      [(SKUIApplicationController *)self->_applicationController resumeApplicationWithOptions:copyITMLOptionsDictionary];
    }

    else
    {
      if (_applicationMode)
      {
LABEL_13:
        self->_didStart = 1;
        return;
      }

      copyITMLOptionsDictionary = [(ServiceProductPageConfiguration *)self->_pageConfiguration copyITMLOptionsDictionary];
      [(SKUIApplicationController *)self->_applicationController loadApplicationWithOptions:copyITMLOptionsDictionary];
    }

    goto LABEL_13;
  }
}

- (id)_clientViewControllerProxy
{
  delegate = [(ServiceStoreProductViewController *)self delegate];
  serviceProductPageViewControllerClientProxy = [delegate serviceProductPageViewControllerClientProxy];

  return serviceProductPageViewControllerClientProxy;
}

- (void)_sendInstallAttributionIfAllowed
{
  if (self->_didLoad && self->_didShow)
  {
    productParameters = [(ServiceProductPageConfiguration *)self->_pageConfiguration productParameters];
    v4 = [productParameters objectForKeyedSubscript:SKStoreProductParameterAdNetworkIdentifier];
    if (v4)
    {
      _hostApplicationBundleIdentifier = [(ServiceStoreProductViewController *)self _hostApplicationBundleIdentifier];
      v6 = [LSApplicationProxy applicationProxyForIdentifier:_hostApplicationBundleIdentifier];
      itemID = [v6 itemID];
      unsignedIntegerValue = [itemID unsignedIntegerValue];

      if (unsignedIntegerValue)
      {
        v22 = v4;
        v23 = v6;
        v9 = [productParameters objectForKeyedSubscript:SKStoreProductParameterITunesItemIdentifier];
        [productParameters objectForKeyedSubscript:SKStoreProductParameterAdNetworkCampaignIdentifier];
        v10 = v21 = _hostApplicationBundleIdentifier;
        v11 = [productParameters objectForKeyedSubscript:SKStoreProductParameterAdNetworkNonce];
        v12 = [productParameters objectForKeyedSubscript:SKStoreProductParameterAdNetworkTimestamp];
        v13 = [productParameters objectForKeyedSubscript:SKStoreProductParameterAdNetworkAttributionSignature];
        v14 = [productParameters objectForKeyedSubscript:SKStoreProductParameterAdNetworkVersion];
        v15 = [productParameters objectForKeyedSubscript:SKStoreProductParameterAdNetworkSourceAppStoreIdentifier];
        v16 = objc_opt_new();
        v24 = v9;
        v17 = v9;
        v18 = v10;
        _hostApplicationBundleIdentifier = v21;
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
          selfCopy = self;
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

- (id)_newCancelButtonItemWithClientContext:(id)context
{
  contextCopy = context;
  v5 = objc_alloc_init(UIBarButtonItem);
  [v5 setAction:"_cancelButtonAction:"];
  [v5 setTarget:self];
  if (contextCopy)
  {
    v6 = [contextCopy localizedStringForKey:@"CLOSE_SHEET_BUTTON"];
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

- (void)_presentOnboardingIfNeededWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([sub_100011E18() shouldShowOnboarding])
  {
    if (!self->_presentingOnboarding && [(ServiceStoreProductViewController *)self shouldShowOnboarding])
    {
      self->_presentingOnboarding = 1;
      selfCopy = self;
      v6 = sub_100011E18();
      v18 = _NSConcreteStackBlock;
      v19 = 3221225472;
      v20 = sub_100011EF8;
      v21 = &unk_100051798;
      v22 = selfCopy;
      v23 = completionCopy;
      v7 = [v6 viewControllerForMediaType:2 completion:&v18];
      view = [v7 view];
      view2 = [(ServiceStoreProductViewController *)selfCopy view];
      [view2 bounds];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      [view frame];
      [(ServiceStoreProductViewController *)selfCopy addChildViewController:v7];
      [view setAutoresizingMask:18];
      [view setFrame:{v11, 0.0, v13, v15}];
      view3 = [(ServiceStoreProductViewController *)selfCopy view];
      view4 = [v7 view];
      [view3 addSubview:view4];

      [v7 didMoveToParentViewController:selfCopy];
    }
  }

  else
  {
    completionCopy[2](completionCopy);
  }
}

- (id)legacyScriptInterfaceForApplication:(id)application
{
  v3 = objc_alloc_init(SKScriptInterface);

  return v3;
}

- (void)application:(id)application didFailToLoadWithError:(id)error
{
  applicationCopy = application;
  errorCopy = error;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10002C370(self);
  }

  v8 = [_UIContentUnavailableView alloc];
  clientContext = [applicationCopy clientContext];
  v10 = SKUIErrorDocumentTitle();
  v11 = [v8 initWithFrame:v10 title:0 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];

  topViewController = [(UINavigationController *)self->_loadingPlaceholderViewController topViewController];
  [topViewController setView:v11];

  _clientViewControllerProxy = [(ServiceStoreProductViewController *)self _clientViewControllerProxy];
  [_clientViewControllerProxy loadDidFinishWithResult:&__kCFBooleanFalse error:errorCopy];
}

- (void)application:(id)application didStopWithOptions:(id)options
{
  v5 = [options objectForKey:@"type"];
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
    selfCopy = self;
    v10 = 2114;
    v11 = logKey;
    v12 = 2114;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@]: Product load stopped with type: %{public}@.", &v8, 0x20u);
  }

  [(ServiceStoreProductViewController *)self _sendDidFinishWithResult:v6];
}

- (void)applicationDidDisplayFirstPage:(id)page
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    logKey = self->_logKey;
    v8 = 138543618;
    selfCopy = self;
    v10 = 2114;
    v11 = logKey;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@]: Product load completed.", &v8, 0x16u);
  }

  view = [(UINavigationController *)self->_loadingPlaceholderViewController view];
  [view removeFromSuperview];

  [(UINavigationController *)self->_loadingPlaceholderViewController removeFromParentViewController];
  loadingPlaceholderViewController = self->_loadingPlaceholderViewController;
  self->_loadingPlaceholderViewController = 0;

  _clientViewControllerProxy = [(ServiceStoreProductViewController *)self _clientViewControllerProxy];
  [_clientViewControllerProxy loadDidFinishWithResult:&__kCFBooleanTrue error:0];

  self->_didLoad = 1;
  [(ServiceStoreProductViewController *)self _sendInstallAttributionIfAllowed];
}

- (void)_sendDidFinishWithResult:(int64_t)result
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    logKey = self->_logKey;
    *buf = 138543874;
    selfCopy = self;
    v11 = 2114;
    v12 = logKey;
    v13 = 2048;
    resultCopy = result;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@]: Product finished with result: %ld.", buf, 0x20u);
  }

  delegate = [(ServiceStoreProductViewController *)self delegate];
  [delegate serviceProductPageViewControllerFinishWithResult:result];

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

- (void)finishStarRatingPromptWithRating:(id)rating
{
  starRatingCompletionBlock = self->_starRatingCompletionBlock;
  if (starRatingCompletionBlock)
  {
    v5 = rating != 0;
    [rating floatValue];
    starRatingCompletionBlock[2](starRatingCompletionBlock, v5);
    v6 = self->_starRatingCompletionBlock;
    self->_starRatingCompletionBlock = 0;
  }
}

- (void)loadProductWithPageDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    logKey = self->_logKey;
    v6 = 138543618;
    selfCopy = self;
    v8 = 2114;
    v9 = logKey;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@]: Loading product with page dictionary.", &v6, 0x16u);
  }

  [(ServiceProductPageConfiguration *)self->_pageConfiguration setProductPageDictionary:dictionaryCopy];
  [(ServiceStoreProductViewController *)self _startIfReady];
}

- (void)loadProductWithRequest:(id)request
{
  requestCopy = request;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    logKey = self->_logKey;
    v10 = 138543618;
    selfCopy = self;
    v12 = 2114;
    v13 = logKey;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@]: Loading product with encoded request.", &v10, 0x16u);
  }

  v6 = [[SKStorePageRequest alloc] initWithXPCEncoding:requestCopy];
  -[ServiceProductPageConfiguration setProductPageStyle:](self->_pageConfiguration, "setProductPageStyle:", [v6 productPageStyle]);
  productURL = [v6 productURL];
  pageConfiguration = self->_pageConfiguration;
  if (productURL)
  {
    [(ServiceProductPageConfiguration *)pageConfiguration setProductURL:productURL];
  }

  else
  {
    productParameters = [v6 productParameters];
    [(ServiceProductPageConfiguration *)pageConfiguration setProductParameters:productParameters];
  }

  [(ServiceStoreProductViewController *)self _startIfReady];
}

- (void)loadProductWithURL:(id)l
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10002C3FC(self, l);
  }

  _clientViewControllerProxy = [(ServiceStoreProductViewController *)self _clientViewControllerProxy];
  [_clientViewControllerProxy loadDidFinishWithResult:&__kCFBooleanFalse error:0];
}

- (void)setAdditionalBuyParameters:(id)parameters
{
  applicationController = self->_applicationController;
  parametersCopy = parameters;
  clientContext = [(SKUIApplicationController *)applicationController clientContext];
  [clientContext _setAdditionalPurchaseParameters:parametersCopy];
}

- (void)setAffiliateIdentifier:(id)identifier
{
  applicationController = self->_applicationController;
  identifierCopy = identifier;
  clientContext = [(SKUIApplicationController *)applicationController clientContext];
  [clientContext _setPurchaseAffiliateIdentifier:identifierCopy];
}

- (void)setClientIdentifier:(id)identifier
{
  applicationController = self->_applicationController;
  identifierCopy = identifier;
  clientContext = [(SKUIApplicationController *)applicationController clientContext];
  clientInterface = [clientContext clientInterface];

  [clientInterface setClientIdentifier:identifierCopy];
}

- (void)setPreview:(id)preview
{
  bOOLValue = [preview BOOLValue];
  self->_preview = bOOLValue;
  [(UINavigationController *)self->_loadingPlaceholderViewController setNavigationBarHidden:bOOLValue];
  clientContext = [(SKUIApplicationController *)self->_applicationController clientContext];
  [clientContext sendAppPreviewStateChanged:self->_preview];
}

- (void)setProductPageStyle:(id)style
{
  pageConfiguration = self->_pageConfiguration;
  integerValue = [style integerValue];

  [(ServiceProductPageConfiguration *)pageConfiguration setProductPageStyle:integerValue];
}

- (void)setupWithClientBundleID:(id)d bagType:(int64_t)type
{
  dCopy = d;
  clientContext = [(SKUIApplicationController *)self->_applicationController clientContext];
  v12 = dCopy;
  [clientContext setHostApplicationIdentifier:v12];
  [(ServiceProductPageConfiguration *)self->_pageConfiguration setHostApplicationIdentifier:v12];
  if (v12)
  {
    v8 = objc_alloc_init(SKUIURL);
    [v8 setReferrerApplicationName:v12];
    [clientContext setPurchaseReferrerURL:v8];
  }

  [clientContext _setPurchaseURLBagType:type];
  v9 = [LSApplicationProxy applicationProxyForIdentifier:v12];
  itemID = [v9 itemID];
  stringValue = [itemID stringValue];
  [clientContext _setPurchaseAffiliateIdentifier:stringValue];
}

- (void)willRotateToInterfaceOrientation:(int64_t)orientation duration:(double)duration
{
  rootViewController = [(SKUIApplicationController *)self->_applicationController rootViewController];
  v8 = rootViewController;
  if (rootViewController)
  {
    view = [rootViewController view];
    [view bounds];
    v11 = v10;
    v13 = v12;

    if (v13 != v11)
    {
      transitionCoordinator = [(ServiceStoreProductViewController *)self transitionCoordinator];
      [v8 viewWillTransitionToSize:transitionCoordinator withTransitionCoordinator:{v13, v11}];
    }
  }

  v15.receiver = self;
  v15.super_class = ServiceStoreProductViewController;
  [(ServiceStoreProductViewController *)&v15 willRotateToInterfaceOrientation:orientation duration:duration];
}

- (ServiceStoreProductViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end