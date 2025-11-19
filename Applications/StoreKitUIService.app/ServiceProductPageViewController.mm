@interface ServiceProductPageViewController
- (BOOL)_shouldLayoutAsOverlayWithTraitCollection:(id)a3;
- (ServiceProductPageViewController)init;
- (id)_hostApplicationBundleIdentifier;
- (id)_setupErrorViewController;
- (id)_setupProductPageViewController;
- (void)_addConfigurationAction:(id)a3;
- (void)_cancelButtonAction:(id)a3;
- (void)_cleanUpExtension;
- (void)_didReceiveRemoteViewController:(id)a3 forItem:(id)a4 withParameters:(id)a5;
- (void)_executeConfigurationActionsWithServiceProductPage:(id)a3;
- (void)_loadProductWithIdentifier:(id)a3 parameters:(id)a4;
- (void)_loadProductWithIdentifier:(id)a3 parameters:(id)a4 completion:(id)a5;
- (void)_lookupItemWithIdentifier:(id)a3 success:(id)a4 failure:(id)a5;
- (void)_makeItemKindEventForItem:(id)a3 extension:(id)a4;
- (void)_requestRemoteViewControllerForItem:(id)a3 withParameters:(id)a4 completion:(id)a5;
- (void)_respondWithSuccess:(BOOL)a3;
- (void)_sendDidFinishWithResult:(int64_t)a3;
- (void)_sendUnentitledErrorResponse;
- (void)_setupChildViewController:(id)a3 animated:(BOOL)a4;
- (void)_showLegacyControllerForProductID:(id)a3 parameters:(id)a4;
- (void)_willAppearInRemoteViewController;
- (void)dealloc;
- (void)dismissViewControllerAnimated:(id)a3;
- (void)finishImmediately;
- (void)finishStarRatingPromptWithRating:(id)a3;
- (void)loadPlaceholder;
- (void)loadProductWithPageDictionary:(id)a3;
- (void)loadProductWithParameters:(id)a3;
- (void)loadProductWithRequest:(id)a3;
- (void)loadProductWithURL:(id)a3;
- (void)loadView;
- (void)productPageRemoteViewController:(id)a3 didTerminateWithError:(id)a4;
- (void)productPageRemoteViewController:(id)a3 finishWithResult:(unint64_t)a4 completion:(id)a5;
- (void)productPageRemoteViewController:(id)a3 userDidInteractWithProduct:(unint64_t)a4;
- (void)productPageRemoteViewControllerLoadDidFinish:(id)a3;
- (void)serviceProductPageViewControllerFinishWithResult:(int64_t)a3;
- (void)setAdditionalBuyParameters:(id)a3;
- (void)setAffiliateIdentifier:(id)a3;
- (void)setAskToBuy:(id)a3;
- (void)setCancelButtonTitle:(id)a3;
- (void)setClientIdentifier:(id)a3;
- (void)setHostBundleIdentifier:(id)a3;
- (void)setPresentationStyle:(id)a3;
- (void)setPreview:(id)a3;
- (void)setProductPageStyle:(id)a3;
- (void)setPromptString:(id)a3;
- (void)setRightBarButtonTitle:(id)a3;
- (void)setScriptContextDictionary:(id)a3;
- (void)setShowsRightBarButton:(id)a3;
- (void)setShowsStoreButton:(id)a3;
- (void)setUsageContext:(id)a3;
- (void)setVisibleInClientWindow:(id)a3;
- (void)showErrorPageWithCompletion:(id)a3;
- (void)showPageForLookupResult:(id)a3 productID:(id)a4 parameters:(id)a5 logKey:(id)a6 completion:(id)a7;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
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
    v8 = [v7 UUIDString];
    v9 = [v8 componentsSeparatedByString:@"-"];
    v10 = [v9 firstObject];
    logKey = v2->_logKey;
    v2->_logKey = v10;
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[SSLogConfig sharedConfig];
  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 OSLogObject];
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
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
    v6 = [NSString stringWithCString:v10 encoding:4, &v13, v11];
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
  v3 = [(ServiceProductPageViewController *)self errorViewController];

  if (!v3)
  {
    [(ServiceProductPageViewController *)self loadPlaceholder];
  }
}

- (void)_willAppearInRemoteViewController
{
  v3 = [(ServiceProductPageViewController *)self _hostApplicationBundleIdentifier];
  v4 = [(ServiceProductPageViewController *)self _isClientEntitled];
  v5 = +[SSLogConfig sharedConfig];
  v6 = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = v6 | 2;
  }

  else
  {
    v7 = v6;
  }

  v8 = [v5 OSLogObject];
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
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
    v28 = v3;
    v29 = 1024;
    v30 = v4;
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

  v14 = [LSApplicationProxy applicationProxyForIdentifier:v3];
  v15 = [v14 profileValidated];
  objc_initWeak(location, self);
  v16 = [(NSString *)self->_logKey copy];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100018CF4;
  v21[3] = &unk_1000519B0;
  objc_copyWeak(v23, location);
  v17 = v15;
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

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v4.receiver = self;
  v4.super_class = ServiceProductPageViewController;
  [(ServiceProductPageViewController *)&v4 willTransitionToTraitCollection:a3 withTransitionCoordinator:a4];
}

- (void)productPageRemoteViewController:(id)a3 finishWithResult:(unint64_t)a4 completion:(id)a5
{
  if (a4 > 4)
  {
    v5 = 1;
  }

  else
  {
    v5 = qword_100039098[a4];
  }

  [(ServiceProductPageViewController *)self _sendDidFinishWithResult:v5];
}

- (void)productPageRemoteViewControllerLoadDidFinish:(id)a3
{
  v5 = [(ServiceProductPageViewController *)self remoteContainerViewController];
  v6 = [v5 remoteViewController];
  v7 = [(ServiceProductPageViewController *)self cardContainerViewController];
  [v7 setRemoteViewController:v6];

  v8 = [(ServiceProductPageViewController *)self remoteContainerViewController];
  [(ServiceProductPageViewController *)self _setupChildViewController:v8 animated:0];

  v9 = [(ServiceProductPageViewController *)self remoteLoadDidFinishCompletion];
  if (v9)
  {
    v10 = v9;
    [(ServiceProductPageViewController *)self setRemoteLoadDidFinishCompletion:0];
    v10[2](v10, a3 == 0);
    v9 = v10;
    if (!a3)
    {
      [(ServiceProductPageViewController *)self _cleanUpExtension];
      v9 = v10;
    }
  }
}

- (void)productPageRemoteViewController:(id)a3 userDidInteractWithProduct:(unint64_t)a4
{
  v6 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    logKey = self->_logKey;
    v10 = 138543618;
    v11 = self;
    v12 = 2114;
    v13 = logKey;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@]: Product page user did interact with product.", &v10, 0x16u);
  }

  if (a4 >= 3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002C574(self, a4);
    }
  }

  else if ([(ServiceProductPageViewController *)self _isClientEntitled])
  {
    v8 = [(ServiceProductPageViewController *)self _clientViewControllerProxy];
    v9 = [NSNumber numberWithUnsignedInteger:a4];
    [v8 userDidInteractWithProduct:v9];
  }
}

- (void)productPageRemoteViewController:(id)a3 didTerminateWithError:(id)a4
{
  v5 = a3;
  v6 = [(ServiceProductPageViewController *)self remoteContainerViewController];
  v7 = [v6 remoteViewController];

  if (v7 == v5)
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

- (void)dismissViewControllerAnimated:(id)a3
{
  v4 = a3;
  v5 = [(ServiceProductPageViewController *)self cardContainerViewController];
  v6 = [v4 BOOLValue];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001934C;
  v7[3] = &unk_100051148;
  v7[4] = self;
  [v5 dismissViewControllerAnimated:v6 completion:v7];
}

- (void)finishStarRatingPromptWithRating:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100019424;
  v5[3] = &unk_100051A18;
  v6 = a3;
  v4 = v6;
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
    v13 = self;
    v14 = v3;
    v5 = v3;
    dispatch_after(v4, &_dispatch_main_q, &v9);
    v6 = [UINavigationController alloc];
    v7 = [v6 initWithRootViewController:{v5, v9, v10, v11, v12, v13}];
    v8 = [v7 navigationBar];
    [v8 setAccessibilityIgnoresInvertColors:1];

    [(ServiceProductPageViewController *)self setPlaceholderViewController:v7];
    [(ServiceProductPageViewController *)self _setupChildViewController:v7 animated:0];
  }
}

- (void)loadProductWithPageDictionary:(id)a3
{
  v4 = a3;
  if ([(ServiceProductPageViewController *)self _isClientEntitled])
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10001972C;
    v5[3] = &unk_100051A18;
    v6 = v4;
    [(ServiceProductPageViewController *)self _addConfigurationAction:v5];
  }

  else
  {
    [(ServiceProductPageViewController *)self _sendUnentitledErrorResponse];
  }
}

- (void)loadProductWithParameters:(id)a3
{
  v4 = a3;
  v5 = +[SSLogConfig sharedConfig];
  v6 = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = v6 | 2;
  }

  else
  {
    v7 = v6;
  }

  v8 = [v5 OSLogObject];
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
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
    v18 = v4;
    v11 = v9;
    LODWORD(v16) = 32;
    v15 = v17;
    v12 = _os_log_send_and_compose_impl();

    if (!v12)
    {
      goto LABEL_10;
    }

    v8 = [NSString stringWithCString:v12 encoding:4, v17, v16, *v17, *&v17[16], v18];
    free(v12);
    v15 = v8;
    SSFileLog();
  }

LABEL_10:
  v13 = [v4 objectForKeyedSubscript:SKStoreProductParameterITunesItemIdentifier];
  if (v13 && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || [v13 length]) && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || objc_msgSend(v13, "integerValue")))
  {
    v14 = [v4 mutableCopy];
    [v14 removeObjectForKey:SKStoreProductParameterITunesItemIdentifier];
    [(ServiceProductPageViewController *)self _loadProductWithIdentifier:v13 parameters:v14];
  }

  else
  {
    [(ServiceProductPageViewController *)self _respondWithSuccess:0, v15];
  }
}

- (void)_loadProductWithIdentifier:(id)a3 parameters:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100019A9C;
  v10[3] = &unk_100051A40;
  objc_copyWeak(&v13, &location);
  v8 = v6;
  v11 = v8;
  v9 = v7;
  v12 = v9;
  [(ServiceProductPageViewController *)self _loadProductWithIdentifier:v8 parameters:v9 completion:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)_showLegacyControllerForProductID:(id)a3 parameters:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[SSLogConfig sharedConfig];
  v9 = [v8 shouldLog];
  if ([v8 shouldLogToDisk])
  {
    v10 = v9 | 2;
  }

  else
  {
    v10 = v9;
  }

  v11 = [v8 OSLogObject];
  if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
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
  v20 = v6;
  v14 = v12;
  LODWORD(v18) = 32;
  v15 = _os_log_send_and_compose_impl();

  if (v15)
  {
    v11 = [NSString stringWithCString:v15 encoding:4, v19, v18, *v19, *&v19[16], v20];
    free(v15);
    SSFileLog();
LABEL_9:
  }

  v16 = [(ServiceProductPageViewController *)self _setupProductPageViewController];
  v17 = [[NSMutableDictionary alloc] initWithDictionary:v7];

  [v17 setObject:v6 forKeyedSubscript:SKStoreProductParameterITunesItemIdentifier];
  [v16 loadProductWithParameters:v17];
}

- (void)loadProductWithRequest:(id)a3
{
  v4 = a3;
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
    v9 = v4;
    [(ServiceProductPageViewController *)self _addConfigurationAction:v7];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  else
  {
    [(ServiceProductPageViewController *)self _sendUnentitledErrorResponse];
  }
}

- (void)loadProductWithURL:(id)a3
{
  v4 = a3;
  if ([(ServiceProductPageViewController *)self _isClientEntitled])
  {
    v5 = [v4 lastPathComponent];
    v6 = +[NSCharacterSet decimalDigitCharacterSet];
    v7 = [v6 invertedSet];
    v8 = [v5 stringByTrimmingCharactersInSet:v7];

    if (![v8 length])
    {
      [(ServiceProductPageViewController *)self _respondWithSuccess:0];
      goto LABEL_25;
    }

    v9 = objc_alloc_init(NSMutableDictionary);
    v10 = [NSURLComponents componentsWithURL:v4 resolvingAgainstBaseURL:1];
    v11 = [v10 queryItems];
    v12 = [v11 count];

    v33 = v10;
    if (v12)
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v13 = [v10 queryItems];
      v14 = [v13 countByEnumeratingWithState:&v34 objects:v46 count:16];
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
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v34 + 1) + 8 * i);
            v19 = [v18 value];
            v20 = [v18 name];
            [v9 setObject:v19 forKey:v20];
          }

          v15 = [v13 countByEnumeratingWithState:&v34 objects:v46 count:16];
        }

        while (v15);
      }

      v10 = v33;
    }

    v21 = +[SSLogConfig sharedConfig];
    v22 = [v21 shouldLog];
    if ([v21 shouldLogToDisk])
    {
      v23 = v22 | 2;
    }

    else
    {
      v23 = v22;
    }

    v24 = [v21 OSLogObject];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
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
      v29 = [v4 path];
      v38 = 138544130;
      v39 = v26;
      v10 = v33;
      v40 = 2114;
      v41 = logKey;
      v8 = v27;
      v42 = 2112;
      v43 = v29;
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

      v24 = [NSString stringWithCString:v30 encoding:4, &v38, v31];
      free(v30);
      SSFileLog();
    }

    goto LABEL_22;
  }

  [(ServiceProductPageViewController *)self _sendUnentitledErrorResponse];
LABEL_26:
}

- (void)setAdditionalBuyParameters:(id)a3
{
  v4 = a3;
  if ([(ServiceProductPageViewController *)self _isClientEntitled])
  {
    v5 = +[SSLogConfig sharedConfig];
    v6 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = v6 | 2;
    }

    else
    {
      v7 = v6;
    }

    v8 = [v5 OSLogObject];
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
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
      v21 = v4;
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
        v15 = v4;
        [(ServiceProductPageViewController *)self _addConfigurationAction:v14];

        goto LABEL_12;
      }

      v8 = [NSString stringWithCString:v12 encoding:4, &v16, v13];
      free(v12);
      SSFileLog();
    }

    goto LABEL_11;
  }

LABEL_12:
}

- (void)setAffiliateIdentifier:(id)a3
{
  v4 = a3;
  if ([(ServiceProductPageViewController *)self _isClientEntitled])
  {
    v5 = +[SSLogConfig sharedConfig];
    v6 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = v6 | 2;
    }

    else
    {
      v7 = v6;
    }

    v8 = [v5 OSLogObject];
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
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
      v21 = v4;
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
        v15 = v4;
        [(ServiceProductPageViewController *)self _addConfigurationAction:v14];

        goto LABEL_12;
      }

      v8 = [NSString stringWithCString:v12 encoding:4, &v16, v13];
      free(v12);
      SSFileLog();
    }

    goto LABEL_11;
  }

LABEL_12:
}

- (void)setAskToBuy:(id)a3
{
  v4 = a3;
  if ([(ServiceProductPageViewController *)self _isClientEntitled])
  {
    v5 = +[SSLogConfig sharedConfig];
    v6 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = v6 | 2;
    }

    else
    {
      v7 = v6;
    }

    v8 = [v5 OSLogObject];
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
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
      v22 = v4;
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
        v13 = v4;
        v16 = v13;
        [(ServiceProductPageViewController *)self _addConfigurationAction:v15];
        -[ServiceProductPageViewController setIsAskToBuy:](self, "setIsAskToBuy:", [v13 BOOLValue]);

        goto LABEL_12;
      }

      v8 = [NSString stringWithCString:v12 encoding:4, &v17, v14];
      free(v12);
      SSFileLog();
    }

    goto LABEL_11;
  }

LABEL_12:
}

- (void)setCancelButtonTitle:(id)a3
{
  v4 = a3;
  if ([(ServiceProductPageViewController *)self _isClientEntitled])
  {
    v5 = +[SSLogConfig sharedConfig];
    v6 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = v6 | 2;
    }

    else
    {
      v7 = v6;
    }

    v8 = [v5 OSLogObject];
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
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
      v21 = v4;
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
        v15 = v4;
        [(ServiceProductPageViewController *)self _addConfigurationAction:v14];

        goto LABEL_12;
      }

      v8 = [NSString stringWithCString:v12 encoding:4, &v16, v13];
      free(v12);
      SSFileLog();
    }

    goto LABEL_11;
  }

LABEL_12:
}

- (void)setClientIdentifier:(id)a3
{
  v4 = a3;
  if ([(ServiceProductPageViewController *)self _isClientEntitled])
  {
    v5 = +[SSLogConfig sharedConfig];
    v6 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = v6 | 2;
    }

    else
    {
      v7 = v6;
    }

    v8 = [v5 OSLogObject];
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
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
      v21 = v4;
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
        v15 = v4;
        [(ServiceProductPageViewController *)self _addConfigurationAction:v14];

        goto LABEL_12;
      }

      v8 = [NSString stringWithCString:v12 encoding:4, &v16, v13];
      free(v12);
      SSFileLog();
    }

    goto LABEL_11;
  }

LABEL_12:
}

- (void)setHostBundleIdentifier:(id)a3
{
  v5 = a3;
  if ([(ServiceProductPageViewController *)self _isClientEntitled])
  {
    v6 = +[SSLogConfig sharedConfig];
    v7 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = v7 | 2;
    }

    else
    {
      v8 = v7;
    }

    v9 = [v6 OSLogObject];
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
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
      v16 = v5;
      v12 = v10;
      LODWORD(v14) = 32;
      v13 = _os_log_send_and_compose_impl();

      if (!v13)
      {
LABEL_11:

        objc_storeStrong(&self->_hostApplicationBundleIdentifierOverride, a3);
        goto LABEL_12;
      }

      v9 = [NSString stringWithCString:v13 encoding:4, v15, v14, *v15, *&v15[16], v16];
      free(v13);
      SSFileLog();
    }

    goto LABEL_11;
  }

LABEL_12:
}

- (void)setProductPageStyle:(id)a3
{
  v4 = a3;
  if ([(ServiceProductPageViewController *)self _isClientEntitled])
  {
    v5 = +[SSLogConfig sharedConfig];
    v6 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = v6 | 2;
    }

    else
    {
      v7 = v6;
    }

    v8 = [v5 OSLogObject];
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
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
      v21 = v4;
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
        v15 = v4;
        [(ServiceProductPageViewController *)self _addConfigurationAction:v14];

        goto LABEL_12;
      }

      v8 = [NSString stringWithCString:v12 encoding:4, &v16, v13];
      free(v12);
      SSFileLog();
    }

    goto LABEL_11;
  }

LABEL_12:
}

- (void)setPromptString:(id)a3
{
  v4 = a3;
  if ([(ServiceProductPageViewController *)self _isClientEntitled])
  {
    v5 = +[SSLogConfig sharedConfig];
    v6 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = v6 | 2;
    }

    else
    {
      v7 = v6;
    }

    v8 = [v5 OSLogObject];
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
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
      v21 = v4;
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
        v15 = v4;
        [(ServiceProductPageViewController *)self _addConfigurationAction:v14];

        goto LABEL_12;
      }

      v8 = [NSString stringWithCString:v12 encoding:4, &v16, v13];
      free(v12);
      SSFileLog();
    }

    goto LABEL_11;
  }

LABEL_12:
}

- (void)setRightBarButtonTitle:(id)a3
{
  v4 = a3;
  if ([(ServiceProductPageViewController *)self _isClientEntitled])
  {
    v5 = +[SSLogConfig sharedConfig];
    v6 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = v6 | 2;
    }

    else
    {
      v7 = v6;
    }

    v8 = [v5 OSLogObject];
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
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
      v21 = v4;
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
        v15 = v4;
        [(ServiceProductPageViewController *)self _addConfigurationAction:v14];

        goto LABEL_12;
      }

      v8 = [NSString stringWithCString:v12 encoding:4, &v16, v13];
      free(v12);
      SSFileLog();
    }

    goto LABEL_11;
  }

LABEL_12:
}

- (void)setScriptContextDictionary:(id)a3
{
  v4 = a3;
  if ([(ServiceProductPageViewController *)self _isClientEntitled])
  {
    v5 = +[SSLogConfig sharedConfig];
    v6 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = v6 | 2;
    }

    else
    {
      v7 = v6;
    }

    v8 = [v5 OSLogObject];
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
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
      v21 = v4;
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
        v15 = v4;
        [(ServiceProductPageViewController *)self _addConfigurationAction:v14];

        goto LABEL_12;
      }

      v8 = [NSString stringWithCString:v12 encoding:4, &v16, v13];
      free(v12);
      SSFileLog();
    }

    goto LABEL_11;
  }

LABEL_12:
}

- (void)setPreview:(id)a3
{
  v4 = a3;
  v5 = +[SSLogConfig sharedConfig];
  v6 = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = v6 | 2;
  }

  else
  {
    v7 = v6;
  }

  v8 = [v5 OSLogObject];
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
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
  v22 = v4;
  v11 = v9;
  LODWORD(v14) = 32;
  v12 = _os_log_send_and_compose_impl();

  if (v12)
  {
    v8 = [NSString stringWithCString:v12 encoding:4, &v17, v14];
    free(v12);
    SSFileLog();
LABEL_9:
  }

  self->_preview = [v4 BOOLValue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10001BBD0;
  v15[3] = &unk_100051A18;
  v16 = v4;
  v13 = v4;
  [(ServiceProductPageViewController *)self _addConfigurationAction:v15];
}

- (void)setPresentationStyle:(id)a3
{
  v4 = a3;
  v5 = +[SSLogConfig sharedConfig];
  v6 = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = v6 | 2;
  }

  else
  {
    v7 = v6;
  }

  v8 = [v5 OSLogObject];
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
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
  v15 = v4;
  v11 = v9;
  LODWORD(v13) = 32;
  v12 = _os_log_send_and_compose_impl();

  if (v12)
  {
    v8 = [NSString stringWithCString:v12 encoding:4, v14, v13, *v14, *&v14[16], v15];
    free(v12);
    SSFileLog();
LABEL_9:
  }

  [(ServiceProductPageViewController *)self setDesiredPresentationStyle:v4];
}

- (void)setUsageContext:(id)a3
{
  v4 = a3;
  if ([(ServiceProductPageViewController *)self _isClientEntitled])
  {
    v5 = +[SSLogConfig sharedConfig];
    v6 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = v6 | 2;
    }

    else
    {
      v7 = v6;
    }

    v8 = [v5 OSLogObject];
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
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
      v21 = v4;
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
        v15 = v4;
        [(ServiceProductPageViewController *)self _addConfigurationAction:v14];

        goto LABEL_12;
      }

      v8 = [NSString stringWithCString:v12 encoding:4, &v16, v13];
      free(v12);
      SSFileLog();
    }

    goto LABEL_11;
  }

LABEL_12:
}

- (void)setShowsRightBarButton:(id)a3
{
  v4 = a3;
  if ([(ServiceProductPageViewController *)self _isClientEntitled])
  {
    v5 = +[SSLogConfig sharedConfig];
    v6 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = v6 | 2;
    }

    else
    {
      v7 = v6;
    }

    v8 = [v5 OSLogObject];
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
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
      v21 = v4;
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
        v15 = v4;
        [(ServiceProductPageViewController *)self _addConfigurationAction:v14];

        goto LABEL_12;
      }

      v8 = [NSString stringWithCString:v12 encoding:4, &v16, v13];
      free(v12);
      SSFileLog();
    }

    goto LABEL_11;
  }

LABEL_12:
}

- (void)setShowsStoreButton:(id)a3
{
  v4 = a3;
  if ([(ServiceProductPageViewController *)self _isClientEntitled])
  {
    v5 = +[SSLogConfig sharedConfig];
    v6 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = v6 | 2;
    }

    else
    {
      v7 = v6;
    }

    v8 = [v5 OSLogObject];
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
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
      v21 = v4;
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
        v15 = v4;
        [(ServiceProductPageViewController *)self _addConfigurationAction:v14];

        goto LABEL_12;
      }

      v8 = [NSString stringWithCString:v12 encoding:4, &v16, v13];
      free(v12);
      SSFileLog();
    }

    goto LABEL_11;
  }

LABEL_12:
}

- (void)setVisibleInClientWindow:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_visibleInClientWindow, a3);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001C500;
  v7[3] = &unk_100051A18;
  v8 = v5;
  v6 = v5;
  [(ServiceProductPageViewController *)self _addConfigurationAction:v7];
}

- (void)_cancelButtonAction:(id)a3
{
  v4 = [(ServiceProductPageViewController *)self isAskToBuy];

  [(ServiceProductPageViewController *)self _sendDidFinishWithResult:v4];
}

- (void)_loadProductWithIdentifier:(id)a3 parameters:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v11 = [(NSString *)self->_logKey copy];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10001C75C;
  v24[3] = &unk_100051AE0;
  objc_copyWeak(&v29, &location);
  v12 = v9;
  v25 = v12;
  v13 = v10;
  v28 = v13;
  v14 = v11;
  v26 = v14;
  v15 = v8;
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

- (void)_lookupItemWithIdentifier:(id)a3 success:(id)a4 failure:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[SSLogConfig sharedConfig];
  v12 = [v11 shouldLog];
  if ([v11 shouldLogToDisk])
  {
    v13 = v12 | 2;
  }

  else
  {
    v13 = v12;
  }

  v14 = [v11 OSLogObject];
  if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
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
    v43 = v8;
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
  v38 = v8;
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
  v28 = v8;
  v34 = v28;
  v29 = v10;
  v35 = v29;
  v30 = v9;
  v36 = v30;
  [v25 addFinishBlock:v32];

  objc_destroyWeak(&v37);
  objc_destroyWeak(location);
}

- (void)_requestRemoteViewControllerForItem:(id)a3 withParameters:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(ServiceProductPageViewController *)self _beginDelayingPresentation:&stru_100051B70 cancellationHandler:3.0];
  v11 = [(ServiceProductPageViewController *)self remoteContainerViewController];

  if (v11)
  {
    [(ServiceProductPageViewController *)self _cleanUpExtension];
    v12 = [(ServiceProductPageViewController *)self remoteContainerViewController];
    [v12 invalidate];

    [(ServiceProductPageViewController *)self setRemoteContainerViewController:0];
    v13 = [(ServiceProductPageViewController *)self visibleInClientWindow];
    [(ServiceProductPageViewController *)self setVisibleInClientWindow:v13];
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
  v16 = v10;
  v24 = v16;
  v17 = v8;
  v21 = v17;
  v18 = v14;
  v22 = v18;
  v19 = v9;
  v23 = v19;
  [NSExtension extensionsWithMatchingAttributes:v15 completion:v20];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

- (void)_didReceiveRemoteViewController:(id)a3 forItem:(id)a4 withParameters:(id)a5
{
  v15 = a3;
  v8 = a4;
  v9 = a5;
  [v15 setDelegate:self];
  [(ServiceProductPageViewController *)self _endDelayingPresentation];
  self->_isRemoteViewControllerReady = 1;
  v10 = [(ServiceProductPageViewController *)self _hostApplicationBundleIdentifier];
  v11 = [@"com.apple.Spotlight" isEqualToString:v10];

  v12 = +[UIDevice currentDevice];
  v13 = [v12 userInterfaceIdiom];

  if (v11 && v13 == 1)
  {
    [v15 _setViewClipsToBounds:0];
  }

  [(ServiceProductPageViewController *)self _executeConfigurationActionsWithServiceProductPage:v15];
  if (v8)
  {
    v14 = [v15 serviceViewControllerProxy];
    [v14 clientLookupItemDidLoad:v8 parameters:v9];
  }
}

- (id)_setupErrorViewController
{
  v3 = [[ServiceErrorViewController alloc] initWithActionBlock:0];
  v4 = +[UIColor whiteColor];
  v5 = [(ServiceErrorViewController *)v3 view];
  [v5 setBackgroundColor:v4];

  [(ServiceProductPageViewController *)self _setupChildViewController:v3 animated:0];
  [(ServiceProductPageViewController *)self setErrorViewController:v3];

  return v3;
}

- (void)_setupChildViewController:(id)a3 animated:(BOOL)a4
{
  v9 = a3;
  v5 = [(ServiceProductPageViewController *)self cardContainerViewController];
  IsDescendent = SKUIViewControllerIsDescendent();

  if ((IsDescendent & 1) == 0)
  {
    v7 = [(ServiceProductPageViewController *)self errorViewController];

    if (v7)
    {
      [(ServiceProductPageViewController *)self setErrorViewController:0];
    }

    v8 = [(ServiceProductPageViewController *)self cardContainerViewController];
    [v8 setChildViewController:v9];
  }
}

- (void)_addConfigurationAction:(id)a3
{
  v4 = a3;
  v11 = v4;
  if (self->_storeProductViewController)
  {
    (v4[2])();
  }

  else
  {
    v5 = [(ServiceResilientRemoteViewContainerViewController *)self->_remoteContainerViewController remoteViewController];

    if (v5)
    {
      v6 = [(ServiceResilientRemoteViewContainerViewController *)self->_remoteContainerViewController remoteViewController];
      v11[2](v11, v6);
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

- (void)_executeConfigurationActionsWithServiceProductPage:(id)a3
{
  v4 = a3;
  v5 = [(ServiceProductPageViewController *)self configurationActions];
  v6 = objc_alloc_init(NSMutableArray);
  [(ServiceProductPageViewController *)self setConfigurationActions:v6];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v5;
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
  v3 = [(ServiceProductPageViewController *)self hostApplicationBundleIdentifierOverride];

  if (v3)
  {
    v4 = [(ServiceProductPageViewController *)self hostApplicationBundleIdentifierOverride];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = ServiceProductPageViewController;
    v4 = [(ServiceProductPageViewController *)&v6 _hostApplicationBundleIdentifier];
  }

  return v4;
}

- (void)_sendDidFinishWithResult:(int64_t)a3
{
  v5 = [(ServiceProductPageViewController *)self cardContainerViewController];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001E9E4;
  v6[3] = &unk_100051C38;
  v6[4] = self;
  v6[5] = a3;
  [v5 dismissViewControllerAnimated:1 completion:v6];
}

- (void)_respondWithSuccess:(BOOL)a3
{
  if (a3)
  {
    v5 = [(ServiceProductPageViewController *)self _clientViewControllerProxy];
    [v5 loadDidFinishWithResult:&__kCFBooleanTrue error:0];
  }

  else
  {
    v5 = [NSError errorWithDomain:SKErrorDomain code:5 userInfo:0];
    v4 = [(ServiceProductPageViewController *)self _clientViewControllerProxy];
    [v4 loadDidFinishWithResult:&__kCFBooleanFalse error:v5];
  }
}

- (void)_sendUnentitledErrorResponse
{
  v3 = +[SSLogConfig sharedConfig];
  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 OSLogObject];
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
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
    v6 = [NSString stringWithCString:v10 encoding:4, &v14, v13];
    free(v10);
    SSFileLog();
LABEL_9:
  }

  v11 = [NSError errorWithDomain:SKErrorDomain code:5 userInfo:0];
  v12 = [(ServiceProductPageViewController *)self _clientViewControllerProxy];
  [v12 loadDidFinishWithResult:&__kCFBooleanFalse error:v11];
}

- (BOOL)_shouldLayoutAsOverlayWithTraitCollection:(id)a3
{
  v3 = a3;
  v4 = +[UIDevice currentDevice];
  v5 = [v4 userInterfaceIdiom];

  v6 = (v5 & 0xFFFFFFFFFFFFFFFBLL) == 1 && [v3 horizontalSizeClass] == 2;
  return v6;
}

- (void)_cleanUpExtension
{
  v3 = [(ServiceProductPageViewController *)self extension];

  if (!v3)
  {
    return;
  }

  v4 = +[SSLogConfig sharedConfig];
  v5 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = v5 | 2;
  }

  else
  {
    v6 = v5;
  }

  v7 = [v4 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
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
  v17 = self;
  v18 = 2114;
  v19 = logKey;
  LODWORD(v15) = 22;
  v14 = &v16;
  v10 = _os_log_send_and_compose_impl();

  if (v10)
  {
    v7 = [NSString stringWithCString:v10 encoding:4, &v16, v15];
    free(v10);
    v14 = v7;
    SSFileLog();
LABEL_11:
  }

  v11 = [(ServiceProductPageViewController *)self extensionRequest];

  if (v11)
  {
    v12 = [(ServiceProductPageViewController *)self extension];
    [v12 cancelExtensionRequestWithIdentifier:self->_extensionRequest];
  }

  v13 = [(ServiceProductPageViewController *)self extension];
  [v13 _kill:9];

  [(ServiceProductPageViewController *)self setExtension:0];
}

- (void)_makeItemKindEventForItem:(id)a3 extension:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[SSLogConfig sharedConfig];
  v9 = [v8 shouldLog];
  if ([v8 shouldLogToDisk])
  {
    v10 = v9 | 2;
  }

  else
  {
    v10 = v9;
  }

  v11 = [v8 OSLogObject];
  if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
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
    v11 = [NSString stringWithCString:v15 encoding:4, v18, v17, *v18, *&v18[16]];
    free(v15);
    SSFileLog();
LABEL_9:
  }

  v16 = objc_alloc_init(_TtC17StoreKitUIService18ProductLookupEvent);
  [(ProductLookupEvent *)v16 configureWithItem:v7 compatibleExtension:v6];

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
  v5 = [(ServiceProductPageViewController *)self cardContainerViewController];
  v6 = [v5 view];
  v7 = +[UIColor whiteColor];
  [v6 setBackgroundColor:v7];

  [(ServiceProductPageViewController *)self _setupChildViewController:self->_storeProductViewController animated:0];
  v8 = self->_storeProductViewController;

  return v8;
}

- (void)serviceProductPageViewControllerFinishWithResult:(int64_t)a3
{
  v5 = +[SSLogConfig sharedConfig];
  v6 = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = v6 | 2;
  }

  else
  {
    v7 = v6;
  }

  v8 = [v5 OSLogObject];
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
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
  v15 = a3;
  v11 = v9;
  LODWORD(v13) = 32;
  v12 = _os_log_send_and_compose_impl();

  if (v12)
  {
    v8 = [NSString stringWithCString:v12 encoding:4, v14, v13, *v14, *&v14[16], v15];
    free(v12);
    SSFileLog();
LABEL_9:
  }

  [(ServiceProductPageViewController *)self _sendDidFinishWithResult:a3];
}

- (void)showPageForLookupResult:(id)a3 productID:(id)a4 parameters:(id)a5 logKey:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [[AMSLookupItem alloc] initWithLookupDictionary:v12];
  objc_initWeak(&location, self);
  v18 = [(NSString *)self->_logKey copy];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10001F5A8;
  v24[3] = &unk_100051C88;
  objc_copyWeak(&v30, &location);
  v19 = v18;
  v25 = v19;
  v20 = v15;
  v26 = v20;
  v21 = v13;
  v27 = v21;
  v22 = v16;
  v29 = v22;
  v23 = v14;
  v28 = v23;
  [(ServiceProductPageViewController *)self _requestRemoteViewControllerForItem:v17 withParameters:v23 completion:v24];

  objc_destroyWeak(&v30);
  objc_destroyWeak(&location);
}

- (void)showErrorPageWithCompletion:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001FADC;
  v4[3] = &unk_100051CB0;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
  dispatch_async(&_dispatch_main_q, v4);
}

@end