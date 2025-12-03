@interface ServiceProductPageViewController
- (BOOL)_shouldLayoutAsOverlayWithTraitCollection:(id)collection;
- (ServiceProductPageViewController)init;
- (id)_hostApplicationBundleIdentifier;
- (id)_setupErrorViewController;
- (id)_setupProductPageViewController;
- (void)_addConfigurationAction:(id)action;
- (void)_cancelButtonAction:(id)action;
- (void)_cleanUpExtension;
- (void)_didReceiveRemoteViewController:(id)controller forItem:(id)item withParameters:(id)parameters;
- (void)_executeConfigurationActionsWithServiceProductPage:(id)page;
- (void)_loadProductWithIdentifier:(id)identifier parameters:(id)parameters;
- (void)_loadProductWithIdentifier:(id)identifier parameters:(id)parameters completion:(id)completion;
- (void)_lookupItemWithIdentifier:(id)identifier success:(id)success failure:(id)failure;
- (void)_makeItemKindEventForItem:(id)item extension:(id)extension;
- (void)_requestRemoteViewControllerForItem:(id)item withParameters:(id)parameters completion:(id)completion;
- (void)_respondWithSuccess:(BOOL)success;
- (void)_sendDidFinishWithResult:(int64_t)result;
- (void)_sendUnentitledErrorResponse;
- (void)_setupChildViewController:(id)controller animated:(BOOL)animated;
- (void)_showLegacyControllerForProductID:(id)d parameters:(id)parameters;
- (void)_willAppearInRemoteViewController;
- (void)dealloc;
- (void)dismissViewControllerAnimated:(id)animated;
- (void)finishImmediately;
- (void)finishStarRatingPromptWithRating:(id)rating;
- (void)loadPlaceholder;
- (void)loadProductWithPageDictionary:(id)dictionary;
- (void)loadProductWithParameters:(id)parameters;
- (void)loadProductWithRequest:(id)request;
- (void)loadProductWithURL:(id)l;
- (void)loadView;
- (void)productPageRemoteViewController:(id)controller didTerminateWithError:(id)error;
- (void)productPageRemoteViewController:(id)controller finishWithResult:(unint64_t)result completion:(id)completion;
- (void)productPageRemoteViewController:(id)controller userDidInteractWithProduct:(unint64_t)product;
- (void)productPageRemoteViewControllerLoadDidFinish:(id)finish;
- (void)serviceProductPageViewControllerFinishWithResult:(int64_t)result;
- (void)setAdditionalBuyParameters:(id)parameters;
- (void)setAffiliateIdentifier:(id)identifier;
- (void)setAskToBuy:(id)buy;
- (void)setCancelButtonTitle:(id)title;
- (void)setClientIdentifier:(id)identifier;
- (void)setHostBundleIdentifier:(id)identifier;
- (void)setPresentationStyle:(id)style;
- (void)setPreview:(id)preview;
- (void)setProductPageStyle:(id)style;
- (void)setPromptString:(id)string;
- (void)setRightBarButtonTitle:(id)title;
- (void)setScriptContextDictionary:(id)dictionary;
- (void)setShowsRightBarButton:(id)button;
- (void)setShowsStoreButton:(id)button;
- (void)setUsageContext:(id)context;
- (void)setVisibleInClientWindow:(id)window;
- (void)showErrorPageWithCompletion:(id)completion;
- (void)showPageForLookupResult:(id)result productID:(id)d parameters:(id)parameters logKey:(id)key completion:(id)completion;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation ServiceProductPageViewController

- (ServiceProductPageViewController)init
{
  v13.receiver = self;
  v13.super_class = ServiceProductPageViewController;
  v2 = [(ServiceProductPageViewController *)&v13 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    configurationActions = v2->_configurationActions;
    v2->_configurationActions = v3;

    v5 = objc_alloc_init(ServiceCardContainerViewController);
    cardContainerViewController = v2->_cardContainerViewController;
    v2->_cardContainerViewController = v5;

    v7 = +[NSUUID UUID];
    uUIDString = [v7 UUIDString];
    v9 = [uUIDString componentsSeparatedByString:@"-"];
    firstObject = [v9 firstObject];
    logKey = v2->_logKey;
    v2->_logKey = firstObject;
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[SSLogConfig sharedConfig];
  shouldLog = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = shouldLog | 2;
  }

  else
  {
    v5 = shouldLog;
  }

  oSLogObject = [v3 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_9;
  }

  v7 = objc_opt_class();
  logKey = self->_logKey;
  v13 = 138543618;
  v14 = v7;
  v15 = 2114;
  v16 = logKey;
  v9 = v7;
  LODWORD(v11) = 22;
  v10 = _os_log_send_and_compose_impl();

  if (v10)
  {
    oSLogObject = [NSString stringWithCString:v10 encoding:4, &v13, v11];
    free(v10);
    SSFileLog();
LABEL_9:
  }

  [(ServiceProductPageViewController *)self _cleanUpExtension];
  v12.receiver = self;
  v12.super_class = ServiceProductPageViewController;
  [(ServiceProductPageViewController *)&v12 dealloc];
}

- (void)loadView
{
  v4 = objc_alloc_init(UIView);
  [v4 setAutoresizingMask:40];
  [(ServiceProductPageViewController *)self setView:v4];
  errorViewController = [(ServiceProductPageViewController *)self errorViewController];

  if (!errorViewController)
  {
    [(ServiceProductPageViewController *)self loadPlaceholder];
  }
}

- (void)_willAppearInRemoteViewController
{
  _hostApplicationBundleIdentifier = [(ServiceProductPageViewController *)self _hostApplicationBundleIdentifier];
  _isClientEntitled = [(ServiceProductPageViewController *)self _isClientEntitled];
  v5 = +[SSLogConfig sharedConfig];
  shouldLog = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = shouldLog | 2;
  }

  else
  {
    v7 = shouldLog;
  }

  oSLogObject = [v5 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v7 &= 2u;
  }

  if (v7)
  {
    v9 = objc_opt_class();
    logKey = self->_logKey;
    *location = 138544130;
    *&location[4] = v9;
    v25 = 2114;
    v26 = logKey;
    v27 = 2112;
    v28 = _hostApplicationBundleIdentifier;
    v29 = 1024;
    v30 = _isClientEntitled;
    v11 = v9;
    LODWORD(v19) = 38;
    v12 = _os_log_send_and_compose_impl();

    if (v12)
    {
      v13 = [NSString stringWithCString:v12 encoding:4, location, v19];
      free(v12);
      SSFileLog();
    }
  }

  else
  {
  }

  v14 = [LSApplicationProxy applicationProxyForIdentifier:_hostApplicationBundleIdentifier];
  profileValidated = [v14 profileValidated];
  objc_initWeak(location, self);
  v16 = [(NSString *)self->_logKey copy];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100018CF4;
  v21[3] = &unk_1000519B0;
  objc_copyWeak(v23, location);
  v17 = profileValidated;
  v18 = v16;
  v22 = v18;
  v23[1] = v17;
  [(ServiceProductPageViewController *)self _addConfigurationAction:v21];
  v20.receiver = self;
  v20.super_class = ServiceProductPageViewController;
  [(ServiceProductPageViewController *)&v20 _willAppearInRemoteViewController];

  objc_destroyWeak(v23);
  objc_destroyWeak(location);
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  v4.receiver = self;
  v4.super_class = ServiceProductPageViewController;
  [(ServiceProductPageViewController *)&v4 willTransitionToTraitCollection:collection withTransitionCoordinator:coordinator];
}

- (void)productPageRemoteViewController:(id)controller finishWithResult:(unint64_t)result completion:(id)completion
{
  if (result > 4)
  {
    v5 = 1;
  }

  else
  {
    v5 = qword_100039098[result];
  }

  [(ServiceProductPageViewController *)self _sendDidFinishWithResult:v5];
}

- (void)productPageRemoteViewControllerLoadDidFinish:(id)finish
{
  remoteContainerViewController = [(ServiceProductPageViewController *)self remoteContainerViewController];
  remoteViewController = [remoteContainerViewController remoteViewController];
  cardContainerViewController = [(ServiceProductPageViewController *)self cardContainerViewController];
  [cardContainerViewController setRemoteViewController:remoteViewController];

  remoteContainerViewController2 = [(ServiceProductPageViewController *)self remoteContainerViewController];
  [(ServiceProductPageViewController *)self _setupChildViewController:remoteContainerViewController2 animated:0];

  remoteLoadDidFinishCompletion = [(ServiceProductPageViewController *)self remoteLoadDidFinishCompletion];
  if (remoteLoadDidFinishCompletion)
  {
    v10 = remoteLoadDidFinishCompletion;
    [(ServiceProductPageViewController *)self setRemoteLoadDidFinishCompletion:0];
    v10[2](v10, finish == 0);
    remoteLoadDidFinishCompletion = v10;
    if (!finish)
    {
      [(ServiceProductPageViewController *)self _cleanUpExtension];
      remoteLoadDidFinishCompletion = v10;
    }
  }
}

- (void)productPageRemoteViewController:(id)controller userDidInteractWithProduct:(unint64_t)product
{
  controllerCopy = controller;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    logKey = self->_logKey;
    v10 = 138543618;
    selfCopy = self;
    v12 = 2114;
    v13 = logKey;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@]: Product page user did interact with product.", &v10, 0x16u);
  }

  if (product >= 3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002C574(self, product);
    }
  }

  else if ([(ServiceProductPageViewController *)self _isClientEntitled])
  {
    _clientViewControllerProxy = [(ServiceProductPageViewController *)self _clientViewControllerProxy];
    v9 = [NSNumber numberWithUnsignedInteger:product];
    [_clientViewControllerProxy userDidInteractWithProduct:v9];
  }
}

- (void)productPageRemoteViewController:(id)controller didTerminateWithError:(id)error
{
  controllerCopy = controller;
  remoteContainerViewController = [(ServiceProductPageViewController *)self remoteContainerViewController];
  remoteViewController = [remoteContainerViewController remoteViewController];

  if (remoteViewController == controllerCopy)
  {

    [(ServiceProductPageViewController *)self _sendDidFinishWithResult:1];
  }
}

- (void)finishImmediately
{
  if ([(ServiceProductPageViewController *)self _isClientEntitled])
  {

    [(ServiceProductPageViewController *)self _addConfigurationAction:&stru_1000519F0];
  }

  else
  {

    [(ServiceProductPageViewController *)self _sendUnentitledErrorResponse];
  }
}

- (void)dismissViewControllerAnimated:(id)animated
{
  animatedCopy = animated;
  cardContainerViewController = [(ServiceProductPageViewController *)self cardContainerViewController];
  bOOLValue = [animatedCopy BOOLValue];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001934C;
  v7[3] = &unk_100051148;
  v7[4] = self;
  [cardContainerViewController dismissViewControllerAnimated:bOOLValue completion:v7];
}

- (void)finishStarRatingPromptWithRating:(id)rating
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100019424;
  v5[3] = &unk_100051A18;
  ratingCopy = rating;
  v4 = ratingCopy;
  [(ServiceProductPageViewController *)self _addConfigurationAction:v5];
}

- (void)loadPlaceholder
{
  if (!self->_isRemoteViewControllerReady && !self->_storeProductViewController)
  {
    v3 = [[SKUILoadingViewController alloc] initWithClientContext:0];
    v4 = dispatch_time(0, 3000000000);
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_100019570;
    v12 = &unk_100051510;
    selfCopy = self;
    v14 = v3;
    v5 = v3;
    dispatch_after(v4, &_dispatch_main_q, &v9);
    v6 = [UINavigationController alloc];
    v7 = [v6 initWithRootViewController:{v5, v9, v10, v11, v12, selfCopy}];
    navigationBar = [v7 navigationBar];
    [navigationBar setAccessibilityIgnoresInvertColors:1];

    [(ServiceProductPageViewController *)self setPlaceholderViewController:v7];
    [(ServiceProductPageViewController *)self _setupChildViewController:v7 animated:0];
  }
}

- (void)loadProductWithPageDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if ([(ServiceProductPageViewController *)self _isClientEntitled])
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10001972C;
    v5[3] = &unk_100051A18;
    v6 = dictionaryCopy;
    [(ServiceProductPageViewController *)self _addConfigurationAction:v5];
  }

  else
  {
    [(ServiceProductPageViewController *)self _sendUnentitledErrorResponse];
  }
}

- (void)loadProductWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v5 = +[SSLogConfig sharedConfig];
  shouldLog = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = shouldLog | 2;
  }

  else
  {
    v7 = shouldLog;
  }

  oSLogObject = [v5 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v7 &= 2u;
  }

  if (v7)
  {
    v9 = objc_opt_class();
    logKey = self->_logKey;
    *v17 = 138543874;
    *&v17[4] = v9;
    *&v17[12] = 2114;
    *&v17[14] = logKey;
    *&v17[22] = 2112;
    v18 = parametersCopy;
    v11 = v9;
    LODWORD(v16) = 32;
    v15 = v17;
    v12 = _os_log_send_and_compose_impl();

    if (!v12)
    {
      goto LABEL_10;
    }

    oSLogObject = [NSString stringWithCString:v12 encoding:4, v17, v16, *v17, *&v17[16], v18];
    free(v12);
    v15 = oSLogObject;
    SSFileLog();
  }

LABEL_10:
  v13 = [parametersCopy objectForKeyedSubscript:SKStoreProductParameterITunesItemIdentifier];
  if (v13 && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || [v13 length]) && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || objc_msgSend(v13, "integerValue")))
  {
    v14 = [parametersCopy mutableCopy];
    [v14 removeObjectForKey:SKStoreProductParameterITunesItemIdentifier];
    [(ServiceProductPageViewController *)self _loadProductWithIdentifier:v13 parameters:v14];
  }

  else
  {
    [(ServiceProductPageViewController *)self _respondWithSuccess:0, v15];
  }
}

- (void)_loadProductWithIdentifier:(id)identifier parameters:(id)parameters
{
  identifierCopy = identifier;
  parametersCopy = parameters;
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100019A9C;
  v10[3] = &unk_100051A40;
  objc_copyWeak(&v13, &location);
  v8 = identifierCopy;
  v11 = v8;
  v9 = parametersCopy;
  v12 = v9;
  [(ServiceProductPageViewController *)self _loadProductWithIdentifier:v8 parameters:v9 completion:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)_showLegacyControllerForProductID:(id)d parameters:(id)parameters
{
  dCopy = d;
  parametersCopy = parameters;
  v8 = +[SSLogConfig sharedConfig];
  shouldLog = [v8 shouldLog];
  if ([v8 shouldLogToDisk])
  {
    v10 = shouldLog | 2;
  }

  else
  {
    v10 = shouldLog;
  }

  oSLogObject = [v8 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v10 &= 2u;
  }

  if (!v10)
  {
    goto LABEL_9;
  }

  v12 = objc_opt_class();
  logKey = self->_logKey;
  *v19 = 138543874;
  *&v19[4] = v12;
  *&v19[12] = 2114;
  *&v19[14] = logKey;
  *&v19[22] = 2114;
  v20 = dCopy;
  v14 = v12;
  LODWORD(v18) = 32;
  v15 = _os_log_send_and_compose_impl();

  if (v15)
  {
    oSLogObject = [NSString stringWithCString:v15 encoding:4, v19, v18, *v19, *&v19[16], v20];
    free(v15);
    SSFileLog();
LABEL_9:
  }

  _setupProductPageViewController = [(ServiceProductPageViewController *)self _setupProductPageViewController];
  v17 = [[NSMutableDictionary alloc] initWithDictionary:parametersCopy];

  [v17 setObject:dCopy forKeyedSubscript:SKStoreProductParameterITunesItemIdentifier];
  [_setupProductPageViewController loadProductWithParameters:v17];
}

- (void)loadProductWithRequest:(id)request
{
  requestCopy = request;
  if ([(ServiceProductPageViewController *)self _isClientEntitled])
  {
    objc_initWeak(&location, self);
    v5 = [(NSString *)self->_logKey copy];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100019F9C;
    v7[3] = &unk_100051A68;
    objc_copyWeak(&v10, &location);
    v6 = v5;
    v8 = v6;
    v9 = requestCopy;
    [(ServiceProductPageViewController *)self _addConfigurationAction:v7];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  else
  {
    [(ServiceProductPageViewController *)self _sendUnentitledErrorResponse];
  }
}

- (void)loadProductWithURL:(id)l
{
  lCopy = l;
  if ([(ServiceProductPageViewController *)self _isClientEntitled])
  {
    lastPathComponent = [lCopy lastPathComponent];
    v6 = +[NSCharacterSet decimalDigitCharacterSet];
    invertedSet = [v6 invertedSet];
    v8 = [lastPathComponent stringByTrimmingCharactersInSet:invertedSet];

    if (![v8 length])
    {
      [(ServiceProductPageViewController *)self _respondWithSuccess:0];
      goto LABEL_25;
    }

    v9 = objc_alloc_init(NSMutableDictionary);
    v10 = [NSURLComponents componentsWithURL:lCopy resolvingAgainstBaseURL:1];
    queryItems = [v10 queryItems];
    v12 = [queryItems count];

    v33 = v10;
    if (v12)
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      queryItems2 = [v10 queryItems];
      v14 = [queryItems2 countByEnumeratingWithState:&v34 objects:v46 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v35;
        do
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v35 != v16)
            {
              objc_enumerationMutation(queryItems2);
            }

            v18 = *(*(&v34 + 1) + 8 * i);
            value = [v18 value];
            name = [v18 name];
            [v9 setObject:value forKey:name];
          }

          v15 = [queryItems2 countByEnumeratingWithState:&v34 objects:v46 count:16];
        }

        while (v15);
      }

      v10 = v33;
    }

    v21 = +[SSLogConfig sharedConfig];
    shouldLog = [v21 shouldLog];
    if ([v21 shouldLogToDisk])
    {
      v23 = shouldLog | 2;
    }

    else
    {
      v23 = shouldLog;
    }

    oSLogObject = [v21 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v25 = v23;
    }

    else
    {
      v25 = v23 & 2;
    }

    if (v25)
    {
      v26 = objc_opt_class();
      v27 = v8;
      logKey = self->_logKey;
      v32 = v26;
      path = [lCopy path];
      v38 = 138544130;
      v39 = v26;
      v10 = v33;
      v40 = 2114;
      v41 = logKey;
      v8 = v27;
      v42 = 2112;
      v43 = path;
      v44 = 2112;
      v45 = v9;
      LODWORD(v31) = 42;
      v30 = _os_log_send_and_compose_impl();

      if (!v30)
      {
LABEL_22:

        [(ServiceProductPageViewController *)self _loadProductWithIdentifier:v8 parameters:v9];
LABEL_25:

        goto LABEL_26;
      }

      oSLogObject = [NSString stringWithCString:v30 encoding:4, &v38, v31];
      free(v30);
      SSFileLog();
    }

    goto LABEL_22;
  }

  [(ServiceProductPageViewController *)self _sendUnentitledErrorResponse];
LABEL_26:
}

- (void)setAdditionalBuyParameters:(id)parameters
{
  parametersCopy = parameters;
  if ([(ServiceProductPageViewController *)self _isClientEntitled])
  {
    v5 = +[SSLogConfig sharedConfig];
    shouldLog = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = shouldLog | 2;
    }

    else
    {
      v7 = shouldLog;
    }

    oSLogObject = [v5 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v7 &= 2u;
    }

    if (v7)
    {
      v9 = objc_opt_class();
      logKey = self->_logKey;
      v16 = 138543874;
      v17 = v9;
      v18 = 2114;
      v19 = logKey;
      v20 = 2112;
      v21 = parametersCopy;
      v11 = v9;
      LODWORD(v13) = 32;
      v12 = _os_log_send_and_compose_impl();

      if (!v12)
      {
LABEL_11:

        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_10001A70C;
        v14[3] = &unk_100051A18;
        v15 = parametersCopy;
        [(ServiceProductPageViewController *)self _addConfigurationAction:v14];

        goto LABEL_12;
      }

      oSLogObject = [NSString stringWithCString:v12 encoding:4, &v16, v13];
      free(v12);
      SSFileLog();
    }

    goto LABEL_11;
  }

LABEL_12:
}

- (void)setAffiliateIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([(ServiceProductPageViewController *)self _isClientEntitled])
  {
    v5 = +[SSLogConfig sharedConfig];
    shouldLog = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = shouldLog | 2;
    }

    else
    {
      v7 = shouldLog;
    }

    oSLogObject = [v5 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v7 &= 2u;
    }

    if (v7)
    {
      v9 = objc_opt_class();
      logKey = self->_logKey;
      v16 = 138543874;
      v17 = v9;
      v18 = 2114;
      v19 = logKey;
      v20 = 2112;
      v21 = identifierCopy;
      v11 = v9;
      LODWORD(v13) = 32;
      v12 = _os_log_send_and_compose_impl();

      if (!v12)
      {
LABEL_11:

        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_10001A91C;
        v14[3] = &unk_100051A18;
        v15 = identifierCopy;
        [(ServiceProductPageViewController *)self _addConfigurationAction:v14];

        goto LABEL_12;
      }

      oSLogObject = [NSString stringWithCString:v12 encoding:4, &v16, v13];
      free(v12);
      SSFileLog();
    }

    goto LABEL_11;
  }

LABEL_12:
}

- (void)setAskToBuy:(id)buy
{
  buyCopy = buy;
  if ([(ServiceProductPageViewController *)self _isClientEntitled])
  {
    v5 = +[SSLogConfig sharedConfig];
    shouldLog = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = shouldLog | 2;
    }

    else
    {
      v7 = shouldLog;
    }

    oSLogObject = [v5 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v7 &= 2u;
    }

    if (v7)
    {
      v9 = objc_opt_class();
      logKey = self->_logKey;
      v17 = 138543874;
      v18 = v9;
      v19 = 2114;
      v20 = logKey;
      v21 = 2112;
      v22 = buyCopy;
      v11 = v9;
      LODWORD(v14) = 32;
      v12 = _os_log_send_and_compose_impl();

      if (!v12)
      {
LABEL_11:

        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_10001AB44;
        v15[3] = &unk_100051A18;
        v13 = buyCopy;
        v16 = v13;
        [(ServiceProductPageViewController *)self _addConfigurationAction:v15];
        -[ServiceProductPageViewController setIsAskToBuy:](self, "setIsAskToBuy:", [v13 BOOLValue]);

        goto LABEL_12;
      }

      oSLogObject = [NSString stringWithCString:v12 encoding:4, &v17, v14];
      free(v12);
      SSFileLog();
    }

    goto LABEL_11;
  }

LABEL_12:
}

- (void)setCancelButtonTitle:(id)title
{
  titleCopy = title;
  if ([(ServiceProductPageViewController *)self _isClientEntitled])
  {
    v5 = +[SSLogConfig sharedConfig];
    shouldLog = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = shouldLog | 2;
    }

    else
    {
      v7 = shouldLog;
    }

    oSLogObject = [v5 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v7 &= 2u;
    }

    if (v7)
    {
      v9 = objc_opt_class();
      logKey = self->_logKey;
      v16 = 138543874;
      v17 = v9;
      v18 = 2114;
      v19 = logKey;
      v20 = 2112;
      v21 = titleCopy;
      v11 = v9;
      LODWORD(v13) = 32;
      v12 = _os_log_send_and_compose_impl();

      if (!v12)
      {
LABEL_11:

        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_10001ADA0;
        v14[3] = &unk_100051A18;
        v15 = titleCopy;
        [(ServiceProductPageViewController *)self _addConfigurationAction:v14];

        goto LABEL_12;
      }

      oSLogObject = [NSString stringWithCString:v12 encoding:4, &v16, v13];
      free(v12);
      SSFileLog();
    }

    goto LABEL_11;
  }

LABEL_12:
}

- (void)setClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([(ServiceProductPageViewController *)self _isClientEntitled])
  {
    v5 = +[SSLogConfig sharedConfig];
    shouldLog = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = shouldLog | 2;
    }

    else
    {
      v7 = shouldLog;
    }

    oSLogObject = [v5 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v7 &= 2u;
    }

    if (v7)
    {
      v9 = objc_opt_class();
      logKey = self->_logKey;
      v16 = 138543874;
      v17 = v9;
      v18 = 2114;
      v19 = logKey;
      v20 = 2112;
      v21 = identifierCopy;
      v11 = v9;
      LODWORD(v13) = 32;
      v12 = _os_log_send_and_compose_impl();

      if (!v12)
      {
LABEL_11:

        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_10001AFB0;
        v14[3] = &unk_100051A18;
        v15 = identifierCopy;
        [(ServiceProductPageViewController *)self _addConfigurationAction:v14];

        goto LABEL_12;
      }

      oSLogObject = [NSString stringWithCString:v12 encoding:4, &v16, v13];
      free(v12);
      SSFileLog();
    }

    goto LABEL_11;
  }

LABEL_12:
}

- (void)setHostBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([(ServiceProductPageViewController *)self _isClientEntitled])
  {
    v6 = +[SSLogConfig sharedConfig];
    shouldLog = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = shouldLog | 2;
    }

    else
    {
      v8 = shouldLog;
    }

    oSLogObject = [v6 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v8 &= 2u;
    }

    if (v8)
    {
      v10 = objc_opt_class();
      logKey = self->_logKey;
      *v15 = 138543874;
      *&v15[4] = v10;
      *&v15[12] = 2114;
      *&v15[14] = logKey;
      *&v15[22] = 2112;
      v16 = identifierCopy;
      v12 = v10;
      LODWORD(v14) = 32;
      v13 = _os_log_send_and_compose_impl();

      if (!v13)
      {
LABEL_11:

        objc_storeStrong(&self->_hostApplicationBundleIdentifierOverride, identifier);
        goto LABEL_12;
      }

      oSLogObject = [NSString stringWithCString:v13 encoding:4, v15, v14, *v15, *&v15[16], v16];
      free(v13);
      SSFileLog();
    }

    goto LABEL_11;
  }

LABEL_12:
}

- (void)setProductPageStyle:(id)style
{
  styleCopy = style;
  if ([(ServiceProductPageViewController *)self _isClientEntitled])
  {
    v5 = +[SSLogConfig sharedConfig];
    shouldLog = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = shouldLog | 2;
    }

    else
    {
      v7 = shouldLog;
    }

    oSLogObject = [v5 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v7 &= 2u;
    }

    if (v7)
    {
      v9 = objc_opt_class();
      logKey = self->_logKey;
      v16 = 138543874;
      v17 = v9;
      v18 = 2114;
      v19 = logKey;
      v20 = 2112;
      v21 = styleCopy;
      v11 = v9;
      LODWORD(v13) = 32;
      v12 = _os_log_send_and_compose_impl();

      if (!v12)
      {
LABEL_11:

        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_10001B384;
        v14[3] = &unk_100051A18;
        v15 = styleCopy;
        [(ServiceProductPageViewController *)self _addConfigurationAction:v14];

        goto LABEL_12;
      }

      oSLogObject = [NSString stringWithCString:v12 encoding:4, &v16, v13];
      free(v12);
      SSFileLog();
    }

    goto LABEL_11;
  }

LABEL_12:
}

- (void)setPromptString:(id)string
{
  stringCopy = string;
  if ([(ServiceProductPageViewController *)self _isClientEntitled])
  {
    v5 = +[SSLogConfig sharedConfig];
    shouldLog = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = shouldLog | 2;
    }

    else
    {
      v7 = shouldLog;
    }

    oSLogObject = [v5 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v7 &= 2u;
    }

    if (v7)
    {
      v9 = objc_opt_class();
      logKey = self->_logKey;
      v16 = 138543874;
      v17 = v9;
      v18 = 2114;
      v19 = logKey;
      v20 = 2112;
      v21 = stringCopy;
      v11 = v9;
      LODWORD(v13) = 32;
      v12 = _os_log_send_and_compose_impl();

      if (!v12)
      {
LABEL_11:

        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_10001B594;
        v14[3] = &unk_100051A18;
        v15 = stringCopy;
        [(ServiceProductPageViewController *)self _addConfigurationAction:v14];

        goto LABEL_12;
      }

      oSLogObject = [NSString stringWithCString:v12 encoding:4, &v16, v13];
      free(v12);
      SSFileLog();
    }

    goto LABEL_11;
  }

LABEL_12:
}

- (void)setRightBarButtonTitle:(id)title
{
  titleCopy = title;
  if ([(ServiceProductPageViewController *)self _isClientEntitled])
  {
    v5 = +[SSLogConfig sharedConfig];
    shouldLog = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = shouldLog | 2;
    }

    else
    {
      v7 = shouldLog;
    }

    oSLogObject = [v5 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v7 &= 2u;
    }

    if (v7)
    {
      v9 = objc_opt_class();
      logKey = self->_logKey;
      v16 = 138543874;
      v17 = v9;
      v18 = 2114;
      v19 = logKey;
      v20 = 2112;
      v21 = titleCopy;
      v11 = v9;
      LODWORD(v13) = 32;
      v12 = _os_log_send_and_compose_impl();

      if (!v12)
      {
LABEL_11:

        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_10001B7A4;
        v14[3] = &unk_100051A18;
        v15 = titleCopy;
        [(ServiceProductPageViewController *)self _addConfigurationAction:v14];

        goto LABEL_12;
      }

      oSLogObject = [NSString stringWithCString:v12 encoding:4, &v16, v13];
      free(v12);
      SSFileLog();
    }

    goto LABEL_11;
  }

LABEL_12:
}

- (void)setScriptContextDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if ([(ServiceProductPageViewController *)self _isClientEntitled])
  {
    v5 = +[SSLogConfig sharedConfig];
    shouldLog = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = shouldLog | 2;
    }

    else
    {
      v7 = shouldLog;
    }

    oSLogObject = [v5 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v7 &= 2u;
    }

    if (v7)
    {
      v9 = objc_opt_class();
      logKey = self->_logKey;
      v16 = 138543874;
      v17 = v9;
      v18 = 2114;
      v19 = logKey;
      v20 = 2112;
      v21 = dictionaryCopy;
      v11 = v9;
      LODWORD(v13) = 32;
      v12 = _os_log_send_and_compose_impl();

      if (!v12)
      {
LABEL_11:

        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_10001B9B4;
        v14[3] = &unk_100051A18;
        v15 = dictionaryCopy;
        [(ServiceProductPageViewController *)self _addConfigurationAction:v14];

        goto LABEL_12;
      }

      oSLogObject = [NSString stringWithCString:v12 encoding:4, &v16, v13];
      free(v12);
      SSFileLog();
    }

    goto LABEL_11;
  }

LABEL_12:
}

- (void)setPreview:(id)preview
{
  previewCopy = preview;
  v5 = +[SSLogConfig sharedConfig];
  shouldLog = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = shouldLog | 2;
  }

  else
  {
    v7 = shouldLog;
  }

  oSLogObject = [v5 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v7 &= 2u;
  }

  if (!v7)
  {
    goto LABEL_9;
  }

  v9 = objc_opt_class();
  logKey = self->_logKey;
  v17 = 138543874;
  v18 = v9;
  v19 = 2114;
  v20 = logKey;
  v21 = 2112;
  v22 = previewCopy;
  v11 = v9;
  LODWORD(v14) = 32;
  v12 = _os_log_send_and_compose_impl();

  if (v12)
  {
    oSLogObject = [NSString stringWithCString:v12 encoding:4, &v17, v14];
    free(v12);
    SSFileLog();
LABEL_9:
  }

  self->_preview = [previewCopy BOOLValue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10001BBD0;
  v15[3] = &unk_100051A18;
  v16 = previewCopy;
  v13 = previewCopy;
  [(ServiceProductPageViewController *)self _addConfigurationAction:v15];
}

- (void)setPresentationStyle:(id)style
{
  styleCopy = style;
  v5 = +[SSLogConfig sharedConfig];
  shouldLog = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = shouldLog | 2;
  }

  else
  {
    v7 = shouldLog;
  }

  oSLogObject = [v5 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v7 &= 2u;
  }

  if (!v7)
  {
    goto LABEL_9;
  }

  v9 = objc_opt_class();
  logKey = self->_logKey;
  *v14 = 138543874;
  *&v14[4] = v9;
  *&v14[12] = 2114;
  *&v14[14] = logKey;
  *&v14[22] = 2112;
  v15 = styleCopy;
  v11 = v9;
  LODWORD(v13) = 32;
  v12 = _os_log_send_and_compose_impl();

  if (v12)
  {
    oSLogObject = [NSString stringWithCString:v12 encoding:4, v14, v13, *v14, *&v14[16], v15];
    free(v12);
    SSFileLog();
LABEL_9:
  }

  [(ServiceProductPageViewController *)self setDesiredPresentationStyle:styleCopy];
}

- (void)setUsageContext:(id)context
{
  contextCopy = context;
  if ([(ServiceProductPageViewController *)self _isClientEntitled])
  {
    v5 = +[SSLogConfig sharedConfig];
    shouldLog = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = shouldLog | 2;
    }

    else
    {
      v7 = shouldLog;
    }

    oSLogObject = [v5 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v7 &= 2u;
    }

    if (v7)
    {
      v9 = objc_opt_class();
      logKey = self->_logKey;
      v16 = 138543874;
      v17 = v9;
      v18 = 2114;
      v19 = logKey;
      v20 = 2112;
      v21 = contextCopy;
      v11 = v9;
      LODWORD(v13) = 32;
      v12 = _os_log_send_and_compose_impl();

      if (!v12)
      {
LABEL_11:

        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_10001BF84;
        v14[3] = &unk_100051A18;
        v15 = contextCopy;
        [(ServiceProductPageViewController *)self _addConfigurationAction:v14];

        goto LABEL_12;
      }

      oSLogObject = [NSString stringWithCString:v12 encoding:4, &v16, v13];
      free(v12);
      SSFileLog();
    }

    goto LABEL_11;
  }

LABEL_12:
}

- (void)setShowsRightBarButton:(id)button
{
  buttonCopy = button;
  if ([(ServiceProductPageViewController *)self _isClientEntitled])
  {
    v5 = +[SSLogConfig sharedConfig];
    shouldLog = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = shouldLog | 2;
    }

    else
    {
      v7 = shouldLog;
    }

    oSLogObject = [v5 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v7 &= 2u;
    }

    if (v7)
    {
      v9 = objc_opt_class();
      logKey = self->_logKey;
      v16 = 138543874;
      v17 = v9;
      v18 = 2114;
      v19 = logKey;
      v20 = 2112;
      v21 = buttonCopy;
      v11 = v9;
      LODWORD(v13) = 32;
      v12 = _os_log_send_and_compose_impl();

      if (!v12)
      {
LABEL_11:

        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_10001C194;
        v14[3] = &unk_100051A18;
        v15 = buttonCopy;
        [(ServiceProductPageViewController *)self _addConfigurationAction:v14];

        goto LABEL_12;
      }

      oSLogObject = [NSString stringWithCString:v12 encoding:4, &v16, v13];
      free(v12);
      SSFileLog();
    }

    goto LABEL_11;
  }

LABEL_12:
}

- (void)setShowsStoreButton:(id)button
{
  buttonCopy = button;
  if ([(ServiceProductPageViewController *)self _isClientEntitled])
  {
    v5 = +[SSLogConfig sharedConfig];
    shouldLog = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = shouldLog | 2;
    }

    else
    {
      v7 = shouldLog;
    }

    oSLogObject = [v5 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v7 &= 2u;
    }

    if (v7)
    {
      v9 = objc_opt_class();
      logKey = self->_logKey;
      v16 = 138543874;
      v17 = v9;
      v18 = 2114;
      v19 = logKey;
      v20 = 2112;
      v21 = buttonCopy;
      v11 = v9;
      LODWORD(v13) = 32;
      v12 = _os_log_send_and_compose_impl();

      if (!v12)
      {
LABEL_11:

        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_10001C3F0;
        v14[3] = &unk_100051A18;
        v15 = buttonCopy;
        [(ServiceProductPageViewController *)self _addConfigurationAction:v14];

        goto LABEL_12;
      }

      oSLogObject = [NSString stringWithCString:v12 encoding:4, &v16, v13];
      free(v12);
      SSFileLog();
    }

    goto LABEL_11;
  }

LABEL_12:
}

- (void)setVisibleInClientWindow:(id)window
{
  windowCopy = window;
  objc_storeStrong(&self->_visibleInClientWindow, window);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001C500;
  v7[3] = &unk_100051A18;
  v8 = windowCopy;
  v6 = windowCopy;
  [(ServiceProductPageViewController *)self _addConfigurationAction:v7];
}

- (void)_cancelButtonAction:(id)action
{
  isAskToBuy = [(ServiceProductPageViewController *)self isAskToBuy];

  [(ServiceProductPageViewController *)self _sendDidFinishWithResult:isAskToBuy];
}

- (void)_loadProductWithIdentifier:(id)identifier parameters:(id)parameters completion:(id)completion
{
  identifierCopy = identifier;
  parametersCopy = parameters;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v11 = [(NSString *)self->_logKey copy];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10001C75C;
  v24[3] = &unk_100051AE0;
  objc_copyWeak(&v29, &location);
  v12 = parametersCopy;
  v25 = v12;
  v13 = completionCopy;
  v28 = v13;
  v14 = v11;
  v26 = v14;
  v15 = identifierCopy;
  v27 = v15;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10001CB9C;
  v19[3] = &unk_100051B08;
  objc_copyWeak(&v23, &location);
  v16 = v14;
  v20 = v16;
  v17 = v15;
  v21 = v17;
  v18 = v13;
  v22 = v18;
  [(ServiceProductPageViewController *)self _lookupItemWithIdentifier:v17 success:v24 failure:v19];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&v29);

  objc_destroyWeak(&location);
}

- (void)_lookupItemWithIdentifier:(id)identifier success:(id)success failure:(id)failure
{
  identifierCopy = identifier;
  successCopy = success;
  failureCopy = failure;
  v11 = +[SSLogConfig sharedConfig];
  shouldLog = [v11 shouldLog];
  if ([v11 shouldLogToDisk])
  {
    v13 = shouldLog | 2;
  }

  else
  {
    v13 = shouldLog;
  }

  oSLogObject = [v11 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v13 &= 2u;
  }

  if (v13)
  {
    v15 = objc_opt_class();
    logKey = self->_logKey;
    *location = 138543874;
    *&location[4] = v15;
    v40 = 2114;
    v41 = logKey;
    v42 = 2114;
    v43 = identifierCopy;
    v17 = v15;
    LODWORD(v31) = 32;
    v18 = _os_log_send_and_compose_impl();

    if (v18)
    {
      v19 = [NSString stringWithCString:v18 encoding:4, location, v31];
      free(v18);
      SSFileLog();
    }
  }

  else
  {
  }

  v20 = [AMSBag bagForProfile:@"appstored" profileVersion:@"1"];
  if ([(ServiceProductPageViewController *)self isAskToBuy])
  {
    v21 = @"product-dv";
  }

  else
  {
    v21 = @"lockup-dv";
  }

  v22 = [[AMSLookup alloc] initWithBag:v20 caller:@"com.apple.appstored" keyProfile:v21];
  [v22 setPlatform:@"omni"];
  v23 = [[AMSProcessInfo alloc] initWithBundleIdentifier:@"com.apple.appstored"];
  [v22 setClientInfo:v23];
  v38 = identifierCopy;
  v24 = [NSArray arrayWithObjects:&v38 count:1];
  v25 = [v22 performLookupWithBundleIdentifiers:0 itemIdentifiers:v24];

  v26 = [(NSString *)self->_logKey copy];
  objc_initWeak(location, self);
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_10001D280;
  v32[3] = &unk_100051B30;
  objc_copyWeak(&v37, location);
  v27 = v26;
  v33 = v27;
  v28 = identifierCopy;
  v34 = v28;
  v29 = failureCopy;
  v35 = v29;
  v30 = successCopy;
  v36 = v30;
  [v25 addFinishBlock:v32];

  objc_destroyWeak(&v37);
  objc_destroyWeak(location);
}

- (void)_requestRemoteViewControllerForItem:(id)item withParameters:(id)parameters completion:(id)completion
{
  itemCopy = item;
  parametersCopy = parameters;
  completionCopy = completion;
  [(ServiceProductPageViewController *)self _beginDelayingPresentation:&stru_100051B70 cancellationHandler:3.0];
  remoteContainerViewController = [(ServiceProductPageViewController *)self remoteContainerViewController];

  if (remoteContainerViewController)
  {
    [(ServiceProductPageViewController *)self _cleanUpExtension];
    remoteContainerViewController2 = [(ServiceProductPageViewController *)self remoteContainerViewController];
    [remoteContainerViewController2 invalidate];

    [(ServiceProductPageViewController *)self setRemoteContainerViewController:0];
    visibleInClientWindow = [(ServiceProductPageViewController *)self visibleInClientWindow];
    [(ServiceProductPageViewController *)self setVisibleInClientWindow:visibleInClientWindow];
  }

  v14 = [(NSString *)self->_logKey copy];
  objc_initWeak(&location, self);
  v27 = NSExtensionPointName;
  v28 = @"com.apple.storekit.product-page";
  v15 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10001D86C;
  v20[3] = &unk_100051C10;
  objc_copyWeak(&v25, &location);
  v16 = completionCopy;
  v24 = v16;
  v17 = itemCopy;
  v21 = v17;
  v18 = v14;
  v22 = v18;
  v19 = parametersCopy;
  v23 = v19;
  [NSExtension extensionsWithMatchingAttributes:v15 completion:v20];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

- (void)_didReceiveRemoteViewController:(id)controller forItem:(id)item withParameters:(id)parameters
{
  controllerCopy = controller;
  itemCopy = item;
  parametersCopy = parameters;
  [controllerCopy setDelegate:self];
  [(ServiceProductPageViewController *)self _endDelayingPresentation];
  self->_isRemoteViewControllerReady = 1;
  _hostApplicationBundleIdentifier = [(ServiceProductPageViewController *)self _hostApplicationBundleIdentifier];
  v11 = [@"com.apple.Spotlight" isEqualToString:_hostApplicationBundleIdentifier];

  v12 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v12 userInterfaceIdiom];

  if (v11 && userInterfaceIdiom == 1)
  {
    [controllerCopy _setViewClipsToBounds:0];
  }

  [(ServiceProductPageViewController *)self _executeConfigurationActionsWithServiceProductPage:controllerCopy];
  if (itemCopy)
  {
    serviceViewControllerProxy = [controllerCopy serviceViewControllerProxy];
    [serviceViewControllerProxy clientLookupItemDidLoad:itemCopy parameters:parametersCopy];
  }
}

- (id)_setupErrorViewController
{
  v3 = [[ServiceErrorViewController alloc] initWithActionBlock:0];
  v4 = +[UIColor whiteColor];
  view = [(ServiceErrorViewController *)v3 view];
  [view setBackgroundColor:v4];

  [(ServiceProductPageViewController *)self _setupChildViewController:v3 animated:0];
  [(ServiceProductPageViewController *)self setErrorViewController:v3];

  return v3;
}

- (void)_setupChildViewController:(id)controller animated:(BOOL)animated
{
  controllerCopy = controller;
  cardContainerViewController = [(ServiceProductPageViewController *)self cardContainerViewController];
  IsDescendent = SKUIViewControllerIsDescendent();

  if ((IsDescendent & 1) == 0)
  {
    errorViewController = [(ServiceProductPageViewController *)self errorViewController];

    if (errorViewController)
    {
      [(ServiceProductPageViewController *)self setErrorViewController:0];
    }

    cardContainerViewController2 = [(ServiceProductPageViewController *)self cardContainerViewController];
    [cardContainerViewController2 setChildViewController:controllerCopy];
  }
}

- (void)_addConfigurationAction:(id)action
{
  actionCopy = action;
  v11 = actionCopy;
  if (self->_storeProductViewController)
  {
    (actionCopy[2])();
  }

  else
  {
    remoteViewController = [(ServiceResilientRemoteViewContainerViewController *)self->_remoteContainerViewController remoteViewController];

    if (remoteViewController)
    {
      remoteViewController2 = [(ServiceResilientRemoteViewContainerViewController *)self->_remoteContainerViewController remoteViewController];
      v11[2](v11, remoteViewController2);
    }

    else
    {
      configurationActions = self->_configurationActions;
      v8 = v11;
      if (!configurationActions)
      {
        goto LABEL_8;
      }

      v9 = [v11 copy];
      v10 = objc_retainBlock(v9);
      [(NSMutableArray *)configurationActions addObject:v10];
    }
  }

  v8 = v11;
LABEL_8:
}

- (void)_executeConfigurationActionsWithServiceProductPage:(id)page
{
  pageCopy = page;
  configurationActions = [(ServiceProductPageViewController *)self configurationActions];
  v6 = objc_alloc_init(NSMutableArray);
  [(ServiceProductPageViewController *)self setConfigurationActions:v6];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = configurationActions;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        (*(*(*(&v12 + 1) + 8 * v11) + 16))(*(*(&v12 + 1) + 8 * v11));
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (id)_hostApplicationBundleIdentifier
{
  hostApplicationBundleIdentifierOverride = [(ServiceProductPageViewController *)self hostApplicationBundleIdentifierOverride];

  if (hostApplicationBundleIdentifierOverride)
  {
    hostApplicationBundleIdentifierOverride2 = [(ServiceProductPageViewController *)self hostApplicationBundleIdentifierOverride];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = ServiceProductPageViewController;
    hostApplicationBundleIdentifierOverride2 = [(ServiceProductPageViewController *)&v6 _hostApplicationBundleIdentifier];
  }

  return hostApplicationBundleIdentifierOverride2;
}

- (void)_sendDidFinishWithResult:(int64_t)result
{
  cardContainerViewController = [(ServiceProductPageViewController *)self cardContainerViewController];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001E9E4;
  v6[3] = &unk_100051C38;
  v6[4] = self;
  v6[5] = result;
  [cardContainerViewController dismissViewControllerAnimated:1 completion:v6];
}

- (void)_respondWithSuccess:(BOOL)success
{
  if (success)
  {
    _clientViewControllerProxy = [(ServiceProductPageViewController *)self _clientViewControllerProxy];
    [_clientViewControllerProxy loadDidFinishWithResult:&__kCFBooleanTrue error:0];
  }

  else
  {
    _clientViewControllerProxy = [NSError errorWithDomain:SKErrorDomain code:5 userInfo:0];
    _clientViewControllerProxy2 = [(ServiceProductPageViewController *)self _clientViewControllerProxy];
    [_clientViewControllerProxy2 loadDidFinishWithResult:&__kCFBooleanFalse error:_clientViewControllerProxy];
  }
}

- (void)_sendUnentitledErrorResponse
{
  v3 = +[SSLogConfig sharedConfig];
  shouldLog = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = shouldLog | 2;
  }

  else
  {
    v5 = shouldLog;
  }

  oSLogObject = [v3 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_9;
  }

  v7 = objc_opt_class();
  logKey = self->_logKey;
  v9 = v7;
  [(ServiceProductPageViewController *)self _hostApplicationBundleIdentifier];
  v14 = 138543874;
  v15 = v7;
  v16 = 2114;
  v17 = logKey;
  v19 = v18 = 2112;
  LODWORD(v13) = 32;
  v10 = _os_log_send_and_compose_impl();

  if (v10)
  {
    oSLogObject = [NSString stringWithCString:v10 encoding:4, &v14, v13];
    free(v10);
    SSFileLog();
LABEL_9:
  }

  v11 = [NSError errorWithDomain:SKErrorDomain code:5 userInfo:0];
  _clientViewControllerProxy = [(ServiceProductPageViewController *)self _clientViewControllerProxy];
  [_clientViewControllerProxy loadDidFinishWithResult:&__kCFBooleanFalse error:v11];
}

- (BOOL)_shouldLayoutAsOverlayWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  v4 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v4 userInterfaceIdiom];

  v6 = (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1 && [collectionCopy horizontalSizeClass] == 2;
  return v6;
}

- (void)_cleanUpExtension
{
  extension = [(ServiceProductPageViewController *)self extension];

  if (!extension)
  {
    return;
  }

  v4 = +[SSLogConfig sharedConfig];
  shouldLog = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = shouldLog | 2;
  }

  else
  {
    v6 = shouldLog;
  }

  oSLogObject = [v4 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v6;
  }

  else
  {
    v8 = v6 & 2;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

  logKey = self->_logKey;
  v16 = 138543618;
  selfCopy = self;
  v18 = 2114;
  v19 = logKey;
  LODWORD(v15) = 22;
  v14 = &v16;
  v10 = _os_log_send_and_compose_impl();

  if (v10)
  {
    oSLogObject = [NSString stringWithCString:v10 encoding:4, &v16, v15];
    free(v10);
    v14 = oSLogObject;
    SSFileLog();
LABEL_11:
  }

  extensionRequest = [(ServiceProductPageViewController *)self extensionRequest];

  if (extensionRequest)
  {
    extension2 = [(ServiceProductPageViewController *)self extension];
    [extension2 cancelExtensionRequestWithIdentifier:self->_extensionRequest];
  }

  extension3 = [(ServiceProductPageViewController *)self extension];
  [extension3 _kill:9];

  [(ServiceProductPageViewController *)self setExtension:0];
}

- (void)_makeItemKindEventForItem:(id)item extension:(id)extension
{
  extensionCopy = extension;
  itemCopy = item;
  v8 = +[SSLogConfig sharedConfig];
  shouldLog = [v8 shouldLog];
  if ([v8 shouldLogToDisk])
  {
    v10 = shouldLog | 2;
  }

  else
  {
    v10 = shouldLog;
  }

  oSLogObject = [v8 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v10 &= 2u;
  }

  if (!v10)
  {
    goto LABEL_9;
  }

  v12 = objc_opt_class();
  logKey = self->_logKey;
  *v18 = 138543618;
  *&v18[4] = v12;
  *&v18[12] = 2114;
  *&v18[14] = logKey;
  v14 = v12;
  LODWORD(v17) = 22;
  v15 = _os_log_send_and_compose_impl();

  if (v15)
  {
    oSLogObject = [NSString stringWithCString:v15 encoding:4, v18, v17, *v18, *&v18[16]];
    free(v15);
    SSFileLog();
LABEL_9:
  }

  v16 = objc_alloc_init(_TtC17StoreKitUIService18ProductLookupEvent);
  [(ProductLookupEvent *)v16 configureWithItem:itemCopy compatibleExtension:extensionCopy];

  [_TtC17StoreKitUIService21objc_AnalyticsManager sendEvent:v16];
}

- (id)_setupProductPageViewController
{
  v3 = [[ServiceStoreProductViewController alloc] initWithNibName:0 bundle:0];
  storeProductViewController = self->_storeProductViewController;
  self->_storeProductViewController = v3;

  [(ServiceStoreProductViewController *)self->_storeProductViewController setShouldShowOnboarding:1];
  [(ServiceProductPageViewController *)self _executeConfigurationActionsWithServiceProductPage:self->_storeProductViewController];
  [(ServiceStoreProductViewController *)self->_storeProductViewController setDelegate:self];
  cardContainerViewController = [(ServiceProductPageViewController *)self cardContainerViewController];
  view = [cardContainerViewController view];
  v7 = +[UIColor whiteColor];
  [view setBackgroundColor:v7];

  [(ServiceProductPageViewController *)self _setupChildViewController:self->_storeProductViewController animated:0];
  v8 = self->_storeProductViewController;

  return v8;
}

- (void)serviceProductPageViewControllerFinishWithResult:(int64_t)result
{
  v5 = +[SSLogConfig sharedConfig];
  shouldLog = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = shouldLog | 2;
  }

  else
  {
    v7 = shouldLog;
  }

  oSLogObject = [v5 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v7 &= 2u;
  }

  if (!v7)
  {
    goto LABEL_9;
  }

  v9 = objc_opt_class();
  logKey = self->_logKey;
  *v14 = 138543874;
  *&v14[4] = v9;
  *&v14[12] = 2114;
  *&v14[14] = logKey;
  *&v14[22] = 2048;
  resultCopy = result;
  v11 = v9;
  LODWORD(v13) = 32;
  v12 = _os_log_send_and_compose_impl();

  if (v12)
  {
    oSLogObject = [NSString stringWithCString:v12 encoding:4, v14, v13, *v14, *&v14[16], resultCopy];
    free(v12);
    SSFileLog();
LABEL_9:
  }

  [(ServiceProductPageViewController *)self _sendDidFinishWithResult:result];
}

- (void)showPageForLookupResult:(id)result productID:(id)d parameters:(id)parameters logKey:(id)key completion:(id)completion
{
  resultCopy = result;
  dCopy = d;
  parametersCopy = parameters;
  keyCopy = key;
  completionCopy = completion;
  v17 = [[AMSLookupItem alloc] initWithLookupDictionary:resultCopy];
  objc_initWeak(&location, self);
  v18 = [(NSString *)self->_logKey copy];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10001F5A8;
  v24[3] = &unk_100051C88;
  objc_copyWeak(&v30, &location);
  v19 = v18;
  v25 = v19;
  v20 = keyCopy;
  v26 = v20;
  v21 = dCopy;
  v27 = v21;
  v22 = completionCopy;
  v29 = v22;
  v23 = parametersCopy;
  v28 = v23;
  [(ServiceProductPageViewController *)self _requestRemoteViewControllerForItem:v17 withParameters:v23 completion:v24];

  objc_destroyWeak(&v30);
  objc_destroyWeak(&location);
}

- (void)showErrorPageWithCompletion:(id)completion
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001FADC;
  v4[3] = &unk_100051CB0;
  v4[4] = self;
  completionCopy = completion;
  v3 = completionCopy;
  dispatch_async(&_dispatch_main_q, v4);
}

@end