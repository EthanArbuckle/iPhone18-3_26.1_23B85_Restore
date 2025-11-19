@interface ServiceAccountPageViewController
- (CGRect)presentationBounds;
- (SUScriptRedeemCameraViewController)redeemCameraScriptObject;
- (ServiceAccountPageViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (UIViewController)presentingBridgedViewController;
- (id)_bagKeyForConfigURLString:(id)a3;
- (id)_preloadConfiguration;
- (id)navigationController;
- (id)navigationItem;
- (id)navigationItemOptionsFromViewController:(id)a3;
- (void)_loadURLWithActiveConfiguration:(id)a3;
- (void)_presentErrorViewControllerWithError:(id)a3;
- (void)_presentViewController:(id)a3;
- (void)_willAppearInRemoteViewController;
- (void)applicationDidEnterBackground;
- (void)applicationWillEnterForeground;
- (void)bridgedRightButtonPressed;
- (void)clientInterface:(id)a3 overrideCreditCardPresentationFromViewController:(id)a4 completion:(id)a5;
- (void)clientInterface:(id)a3 overrideRedeemCameraPerformAction:(int64_t)a4 withObject:(id)a5;
- (void)clientInterfaceDidFinishLoading:(id)a3;
- (void)dealloc;
- (void)dismissPresentingBridgedViewController;
- (void)dismissViewController;
- (void)keyboardDidChangeFrame:(CGRect)a3 animationCurve:(int64_t)a4 duration:(double)a5;
- (void)keyboardWillChangeFrame:(CGRect)a3 animationCurve:(int64_t)a4 duration:(double)a5;
- (void)loadWithURL:(id)a3;
- (void)navigationItemUpdated;
- (void)overrideIPadRedeemCamera:(id)a3 completion:(id)a4;
- (void)popBridgedViewControllersToIndex:(unint64_t)a3;
- (void)redeemCameraCodeDetected:(id)a3;
- (void)setBridgedNavigationItemWithOptions:(id)a3;
- (void)setChildViewController:(id)a3;
- (void)setReferrer:(id)a3;
- (void)setUnderlyingViewController:(id)a3;
- (void)viewDidLoad;
@end

@implementation ServiceAccountPageViewController

- (ServiceAccountPageViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v12.receiver = self;
  v12.super_class = ServiceAccountPageViewController;
  v4 = [(ServiceAccountPageViewController *)&v12 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = +[SKProductPageViewController _defaultClientInterface];
    clientInterface = v4->_clientInterface;
    v4->_clientInterface = v5;

    [(SUClientInterface *)v4->_clientInterface setDelegate:v4];
    [(SUClientInterface *)v4->_clientInterface setIgnoreDefaultKeyboardNotifications:1];
    v7 = v4->_clientInterface;
    v8 = +[SUWebViewManager defaultLocalStoragePath];
    [(SUClientInterface *)v7 setLocalStoragePath:v8];

    v9 = [(ServiceAccountPageViewController *)v4 _preloadConfiguration];
    configurationPromise = v4->_configurationPromise;
    v4->_configurationPromise = v9;
  }

  return v4;
}

- (void)dealloc
{
  [(SUClientInterface *)self->_clientInterface setDelegate:0];
  underlyingViewController = self->_underlyingViewController;
  if (objc_opt_respondsToSelector())
  {
    [(ServiceAccountPageEmbedded *)self->_underlyingViewController setEmbeddedParent:0];
  }

  if ((self->_type - 1) <= 1)
  {
    v4 = +[ServiceBridgedNavigationController sharedController];
    [v4 synchonrizeContinainerViewControllers];
  }

  v5.receiver = self;
  v5.super_class = ServiceAccountPageViewController;
  [(ServiceAccountPageViewController *)&v5 dealloc];
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = ServiceAccountPageViewController;
  [(ServiceAccountPageViewController *)&v10 viewDidLoad];
  v3 = [(ServiceAccountPageViewController *)self view];
  v4 = +[UIColor systemGroupedBackgroundColor];
  [v3 setBackgroundColor:v4];

  v5 = [(SUClientInterface *)self->_clientInterface viewControllerFactory];
  v6 = [v5 newPlaceholderViewController];

  v7 = [[SUNavigationController alloc] initWithRootViewController:v6];
  [(ServiceAccountPageViewController *)self setContainerNavigationController:v7];

  v8 = [(ServiceAccountPageViewController *)self containerNavigationController];
  [v8 setClientInterface:self->_clientInterface];

  v9 = [(ServiceAccountPageViewController *)self containerNavigationController];
  [(ServiceAccountPageViewController *)self setChildViewController:v9];
}

- (void)setChildViewController:(id)a3
{
  v5 = a3;
  childViewController = self->_childViewController;
  if (childViewController != v5)
  {
    v13 = v5;
    if (childViewController)
    {
      [(UIViewController *)childViewController willMoveToParentViewController:0];
      v7 = [(UIViewController *)self->_childViewController view];
      [v7 removeFromSuperview];

      [(UIViewController *)self->_childViewController removeFromParentViewController];
      v5 = v13;
    }

    [(UIViewController *)v5 willMoveToParentViewController:self];
    v8 = [(UIViewController *)v13 view];
    v9 = [(ServiceAccountPageViewController *)self view];
    [v9 bounds];
    [v8 setFrame:?];

    v10 = [(UIViewController *)v13 view];
    [v10 setAutoresizingMask:18];

    v11 = [(ServiceAccountPageViewController *)self view];
    v12 = [(UIViewController *)v13 view];
    [v11 addSubview:v12];

    [(ServiceAccountPageViewController *)self addChildViewController:v13];
    objc_storeStrong(&self->_childViewController, a3);
  }

  _objc_release_x1();
}

- (void)setUnderlyingViewController:(id)a3
{
  objc_storeStrong(&self->_underlyingViewController, a3);
  v5 = a3;
  v7 = [v5 navigationItem];
  v6 = [ServiceBridgedNavigationItem itemFromItem:v7];
  [v6 setProxyHandler:self];
  [v5 su_setBridgedNavigationItem:v6];
}

- (void)_willAppearInRemoteViewController
{
  v9 = 0u;
  v10 = 0u;
  [(ServiceAccountPageViewController *)self _hostAuditToken];
  v7 = v9;
  v8 = v10;
  if (sub_10000D270(&v7, @"com.apple.ios.StoreKit.account-page") || (v7 = v9, v8 = v10, sub_10000D270(&v7, kSSITunesStorePrivateEntitlement)))
  {
    v3 = 0;
    v4 = 1;
  }

  else
  {
    v3 = SSError();
    v4 = 0;
  }

  v5 = [(ServiceAccountPageViewController *)self _clientViewControllerProxy];
  v6 = [NSNumber numberWithBool:v4];
  [v5 didPrepareWithResult:v6 error:v3];
}

- (id)navigationItem
{
  if ([(ServiceAccountPageViewController *)self type]== 1)
  {
    v3 = [(ServiceAccountPageViewController *)self underlyingViewController];
    v4 = [v3 su_bridgedNavigationItem];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v10.receiver = self;
      v10.super_class = ServiceAccountPageViewController;
      v6 = [(ServiceAccountPageViewController *)&v10 navigationItem];
    }

    v7 = v6;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = ServiceAccountPageViewController;
    v7 = [(ServiceAccountPageViewController *)&v9 navigationItem];
  }

  return v7;
}

- (id)navigationController
{
  if ([(ServiceAccountPageViewController *)self type]== 1)
  {
    v3 = +[ServiceBridgedNavigationController sharedController];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = ServiceAccountPageViewController;
    v3 = [(ServiceAccountPageViewController *)&v5 navigationController];
  }

  return v3;
}

- (void)navigationItemUpdated
{
  v3 = [(ServiceAccountPageViewController *)self underlyingViewController];
  v4 = [(ServiceAccountPageViewController *)self navigationItemOptionsFromViewController:v3];

  [(ServiceAccountPageViewController *)self setBridgedNavigationItemWithOptions:v4];
}

- (void)setBridgedNavigationItemWithOptions:(id)a3
{
  v4 = a3;
  v5 = [(ServiceAccountPageViewController *)self _clientViewControllerProxy];
  [v5 setBridgedNavigationItemWithOptions:v4];
}

- (id)navigationItemOptionsFromViewController:(id)a3
{
  v3 = [a3 navigationItem];
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 hidesBackButton]);
  [v4 setObject:v5 forKeyedSubscript:SKUIServiceNavigationOptionBackButtonHidden];

  v6 = [v3 backButtonTitle];

  if (v6)
  {
    v7 = [v3 backButtonTitle];
    [v4 setObject:v7 forKeyedSubscript:SKUIServiceNavigationOptionBackButtonTitle];
  }

  v8 = [v3 rightBarButtonItem];

  if (v8)
  {
    v9 = [v3 rightBarButtonItem];
    v10 = [v9 title];
    [v4 setObject:v10 forKeyedSubscript:SKUIServiceNavigationOptionRightButtonTitle];

    v11 = [v3 rightBarButtonItem];
    v12 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v11 style]);
    [v4 setObject:v12 forKeyedSubscript:SKUIServiceNavigationOptionRightButtonStyle];

    v13 = [v3 rightBarButtonItem];
    v14 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v13 isEnabled]);
    [v4 setObject:v14 forKeyedSubscript:SKUIServiceNavigationOptionRightButtonEnabled];
  }

  v15 = [v3 title];

  if (v15)
  {
    v16 = [v3 title];
    [v4 setObject:v16 forKeyedSubscript:SKUIServiceNavigationOptionTitle];
  }

  return v4;
}

- (void)popBridgedViewControllersToIndex:(unint64_t)a3
{
  v4 = [(ServiceAccountPageViewController *)self _clientViewControllerProxy];
  [v4 popBridgedViewControllersToIndex:a3];
}

- (void)dismissViewController
{
  v2 = [(ServiceAccountPageViewController *)self _clientViewControllerProxy];
  [v2 dismissBridgedViewController];
}

- (void)loadWithURL:(id)a3
{
  v4 = a3;
  if ([(ServiceAccountPageViewController *)self loadFromBridgedNavigation])
  {
    v5 = +[ServiceBridgedNavigationController sharedController];
    v6 = [v5 topViewController];

    [(ServiceAccountPageViewController *)self setUnderlyingViewController:v6];
    [(ServiceAccountPageViewController *)self setChildViewController:v6];
  }

  else if ([(ServiceAccountPageViewController *)self type]== 2)
  {
    v7 = objc_alloc_init(UIView);
    v8 = +[UIColor clearColor];
    [v7 setBackgroundColor:v8];

    [v7 setOpaque:0];
    [(ServiceAccountPageViewController *)self setView:v7];
    v9 = [(ServiceAccountPageViewController *)self view];
    v10 = [v9 window];
    [v10 makeKeyWindow];

    v11 = +[ServiceBridgedPresentationController sharedController];
    v12 = [v11 removeSavedViewController];

    if (v12)
    {
      [(ServiceAccountPageViewController *)self setPresentingBridgedViewController:v12];
      [(ServiceAccountPageViewController *)self showViewController:v12 sender:self];
    }
  }

  else
  {
    objc_initWeak(&location, self);
    v13 = [(ServiceAccountPageViewController *)self configurationPromise];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100014168;
    v14[3] = &unk_100051820;
    objc_copyWeak(&v16, &location);
    v15 = v4;
    [v13 addFinishBlock:v14];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

- (void)applicationWillEnterForeground
{
  v5 = [(ServiceAccountPageViewController *)self underlyingViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v5 embeddedViewController];

    v5 = v2;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v5;
    [v3 applicationWillEnterForeground];
    v4 = [v3 activeChildViewController];

    [v4 applicationWillEnterForeground];
  }
}

- (void)applicationDidEnterBackground
{
  v5 = [(ServiceAccountPageViewController *)self underlyingViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v5 embeddedViewController];

    v5 = v2;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v5;
    [v3 applicationDidEnterBackground];
    v4 = [v3 activeChildViewController];

    [v4 applicationDidEnterBackground];
  }
}

- (void)bridgedRightButtonPressed
{
  if ([(ServiceAccountPageViewController *)self type]== 1)
  {
    v3 = [(ServiceAccountPageViewController *)self underlyingViewController];
    v4 = [v3 su_bridgedNavigationItem];
    v6 = [v4 rightBarButtonItem];

    v5 = [v6 target];
    [v5 performSelector:{objc_msgSend(v6, "action")}];
  }
}

- (void)dismissPresentingBridgedViewController
{
  if ([(ServiceAccountPageViewController *)self type]== 2)
  {
    v3 = [(ServiceAccountPageViewController *)self presentingBridgedViewController];

    if (v3)
    {
      objc_initWeak(&location, self);
      v4[0] = _NSConcreteStackBlock;
      v4[1] = 3221225472;
      v4[2] = sub_1000146C0;
      v4[3] = &unk_100051060;
      objc_copyWeak(&v5, &location);
      dispatch_async(&_dispatch_main_q, v4);
      objc_destroyWeak(&v5);
      objc_destroyWeak(&location);
    }
  }
}

- (void)redeemCameraCodeDetected:(id)a3
{
  v4 = a3;
  v5 = [(ServiceAccountPageViewController *)self redeemCameraScriptObject];
  [v5 codeDetected:v4];
}

- (void)keyboardDidChangeFrame:(CGRect)a3 animationCurve:(int64_t)a4 duration:(double)a5
{
  v13[0] = UIKeyboardFrameEndUserInfoKey;
  v12 = a3;
  v7 = [NSValue valueWithBytes:&v12 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  v14[0] = v7;
  v13[1] = UIKeyboardAnimationCurveUserInfoKey;
  v8 = [NSNumber numberWithInteger:a4];
  v14[1] = v8;
  v13[2] = UIKeyboardAnimationDurationUserInfoKey;
  v9 = [NSNumber numberWithDouble:a5];
  v14[2] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:3];

  v11 = +[NSNotificationCenter defaultCenter];
  [v11 postNotificationName:SUKeyboardDidChangeNotification object:0 userInfo:v10];
}

- (void)keyboardWillChangeFrame:(CGRect)a3 animationCurve:(int64_t)a4 duration:(double)a5
{
  v13[0] = UIKeyboardFrameEndUserInfoKey;
  v12 = a3;
  v7 = [NSValue valueWithBytes:&v12 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  v14[0] = v7;
  v13[1] = UIKeyboardAnimationCurveUserInfoKey;
  v8 = [NSNumber numberWithInteger:a4];
  v14[1] = v8;
  v13[2] = UIKeyboardAnimationDurationUserInfoKey;
  v9 = [NSNumber numberWithDouble:a5];
  v14[2] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:3];

  v11 = +[NSNotificationCenter defaultCenter];
  [v11 postNotificationName:SUKeyboardWillChangeNotification object:0 userInfo:v10];
}

- (void)setReferrer:(id)a3
{
  v4 = a3;
  v5 = [(ServiceAccountPageViewController *)self clientInterface];
  [v5 setHostApplicationIdentifier:v4];
}

- (void)overrideIPadRedeemCamera:(id)a3 completion:(id)a4
{
  v6 = a4;
  objc_storeWeak(&self->_redeemCameraViewController, a3);
  v7 = [(ServiceAccountPageViewController *)self _clientViewControllerProxy];
  [v7 overrideRedeemCameraWithCompletion:v6];
}

- (void)clientInterface:(id)a3 overrideCreditCardPresentationFromViewController:(id)a4 completion:(id)a5
{
  v6 = a5;
  v7 = [(ServiceAccountPageViewController *)self _clientViewControllerProxy];
  [v7 overrideCreditCardPresentationWithCompletion:v6];
}

- (void)clientInterface:(id)a3 overrideRedeemCameraPerformAction:(int64_t)a4 withObject:(id)a5
{
  v8 = a5;
  if (a4 == 1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(ServiceAccountPageViewController *)self setRedeemCameraScriptObject:v8];
    }

    v8 = 0;
  }

  v7 = [(ServiceAccountPageViewController *)self _clientViewControllerProxy];
  [v7 overrideRedeemCameraPerformAction:a4 withObject:v8];
}

- (void)clientInterfaceDidFinishLoading:(id)a3
{
  self->_finishedLoading = 1;
  v4 = [(ServiceAccountPageViewController *)self underlyingViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 firstViewController];

    v4 = v5;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [v4 navigationItem];
  v7 = [v6 leftBarButtonItems];

  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v20;
    while (2)
    {
      v12 = 0;
      v13 = v10;
      v10 += v9;
      do
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v7);
        }

        if ([*(*(&v19 + 1) + 8 * v12) tag] == 999)
        {
          v14 = [v4 navigationItem];
          v15 = [v14 leftBarButtonItems];
          v16 = [v15 mutableCopy];

          [v16 removeObjectAtIndex:v13];
          v17 = [v4 navigationItem];
          [v17 setLeftBarButtonItems:v16 animated:1];

          goto LABEL_13;
        }

        ++v13;
        v12 = v12 + 1;
      }

      while (v9 != v12);
      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v18 = [(ServiceAccountPageViewController *)self _clientViewControllerProxy];
  [v18 didFinishLoading];
}

- (id)_preloadConfiguration
{
  v2 = objc_alloc_init(SSPromise);
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100014FAC;
  v15 = sub_100014FBC;
  v16 = objc_alloc_init(SKUIConfigurationPreloader);
  v3 = v12[5];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100014FC4;
  v8[3] = &unk_100051848;
  v4 = v2;
  v9 = v4;
  v10 = &v11;
  [v3 preloadConfigurationForPurpose:0 withCompletionBlock:v8];
  v5 = v9;
  v6 = v4;

  _Block_object_dispose(&v11, 8);

  return v6;
}

- (id)_bagKeyForConfigURLString:(id)a3
{
  v7[0] = SKAccountPagePaymentsShippingURLString;
  v7[1] = SKAccountPageManageSubscriptionsURLString;
  v8[0] = @"paymentsAndShippingUrl";
  v8[1] = @"manageSubscriptionsUrl";
  v7[2] = SKAccountPageEditBillingURLString;
  v8[2] = @"editBillingUrl";
  v3 = a3;
  v4 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:3];
  v5 = [v4 objectForKey:v3];

  return v5;
}

- (void)_loadURLWithActiveConfiguration:(id)a3
{
  v76 = a3;
  v74 = [(ServiceAccountPageViewController *)self _hostApplicationBundleIdentifier];
  v4 = +[SSLogConfig sharedConfig];
  v5 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v5 |= 2u;
  }

  v6 = [v4 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v5;
  }

  else
  {
    v7 = v5 & 2;
  }

  if (v7)
  {
    *location = 138543618;
    *&location[4] = objc_opt_class();
    v88 = 2112;
    v89 = v74;
    v8 = *&location[4];
    LODWORD(v72) = 22;
    v71 = location;
    v9 = _os_log_send_and_compose_impl();

    if (v9)
    {
      v10 = [NSString stringWithCString:v9 encoding:4, location, v72];
      free(v9);
      v71 = v10;
      SSFileLog();
    }
  }

  else
  {
  }

  v11 = +[ServiceHostRegistry sharedInstance];
  [v11 setRegisteredHostBundleId:v74];

  v12 = [v76 path];
  v75 = [(ServiceAccountPageViewController *)self _bagKeyForConfigURLString:v12];

  if (v75)
  {
    v13 = +[SSLogConfig sharedConfig];
    v14 = [v13 shouldLog];
    if ([v13 shouldLogToDisk])
    {
      v15 = v14 | 2;
    }

    else
    {
      v15 = v14;
    }

    v16 = [v13 OSLogObject];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v15;
    }

    else
    {
      v17 = v15 & 2;
    }

    if (v17)
    {
      v18 = objc_opt_class();
      *location = 138543618;
      *&location[4] = v18;
      v88 = 2112;
      v89 = v75;
      v19 = v18;
      LODWORD(v72) = 22;
      v20 = _os_log_send_and_compose_impl();

      if (!v20)
      {
LABEL_21:

        v21 = objc_alloc_init(SSURLBag);
        [SSWeakReference weakReferenceWithObject:self];
        v83[0] = _NSConcreteStackBlock;
        v83[1] = 3221225472;
        v83[2] = sub_100015D28;
        v84 = v83[3] = &unk_100051898;
        v22 = v84;
        [(ServiceSKUIRedeemViewController *)v21 loadValueForKey:v75 completionBlock:v83];

        goto LABEL_63;
      }

      v16 = [NSString stringWithCString:v20 encoding:4, location, v72];
      free(v20);
      SSFileLog();
    }

    goto LABEL_21;
  }

  v23 = [v76 pathComponents];
  v24 = [v23 firstObject];
  v25 = [v24 isEqual:SKAccountPageRedeemURLString];

  if (v25)
  {
    v21 = [[ServiceSKUIRedeemViewController alloc] initWithRedeemCategory:0];
    v26 = +[ServiceClientContext defaultContext];
    [(ServiceSKUIRedeemViewController *)v21 setClientContext:v26];

    [(ServiceSKUIRedeemViewController *)v21 setClientInterface:self->_clientInterface];
    [(ServiceSKUIRedeemViewController *)v21 setEmbeddedParent:self];
    [(ServiceSKUIRedeemViewController *)v21 setCameraDelegate:self];
    v27 = [v76 pathComponents];
    v28 = [v27 count] > 1;

    if (v28)
    {
      v73 = [v76 pathComponents];
      v22 = [v73 objectAtIndexedSubscript:1];
    }

    else
    {
      v73 = [NSURLComponents componentsWithURL:v76 resolvingAgainstBaseURL:1];
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v47 = [v73 queryItems];
      v48 = [v47 countByEnumeratingWithState:&v79 objects:v86 count:16];
      if (v48)
      {
        v49 = *v80;
        while (2)
        {
          for (i = 0; i != v48; i = i + 1)
          {
            if (*v80 != v49)
            {
              objc_enumerationMutation(v47);
            }

            v51 = *(*(&v79 + 1) + 8 * i);
            v52 = [v51 name];
            v53 = [v52 isEqualToString:@"code"];

            if (v53)
            {
              v22 = [v51 value];
              goto LABEL_41;
            }
          }

          v48 = [v47 countByEnumeratingWithState:&v79 objects:v86 count:16];
          if (v48)
          {
            continue;
          }

          break;
        }
      }

      v22 = 0;
LABEL_41:
    }

    if (v22)
    {
      [(ServiceSKUIRedeemViewController *)v21 setInitialCode:v22];
      [(ServiceSKUIRedeemViewController *)v21 setAttempsAutomaticRedeem:1];
    }

    [(ServiceAccountPageViewController *)self setUnderlyingViewController:v21, v71];
    [(ServiceAccountPageViewController *)self setChildViewController:v21];
  }

  else
  {
    v29 = [v76 pathComponents];
    v30 = [v29 firstObject];
    v31 = [v30 isEqual:SKAccountPageGiftURLString];

    if (v31)
    {
      v32 = [v76 pathComponents];
      v33 = [v32 count] > 1;

      if (v33)
      {
        v34 = [v76 pathComponents];
        v21 = [v34 objectAtIndexedSubscript:1];

        v22 = objc_alloc_init(SSLookupRequest);
        [(ServiceSKUIGiftViewController *)v22 setKeyProfile:SSLookupKeyProfileLockup];
        v85 = v21;
        v35 = [NSArray arrayWithObjects:&v85 count:1];
        [(ServiceSKUIGiftViewController *)v22 setValue:v35 forRequestParameter:SSLookupParameterItemIdentifiers];

        [(ServiceSKUIGiftViewController *)v22 setValue:@"2" forRequestParameter:SSLookupParameterProtocolVersion];
        objc_initWeak(location, self);
        v77[0] = _NSConcreteStackBlock;
        v77[1] = 3221225472;
        v77[2] = sub_100016138;
        v77[3] = &unk_1000518C0;
        objc_copyWeak(&v78, location);
        [(ServiceSKUIGiftViewController *)v22 startWithLookupBlock:v77];
        objc_destroyWeak(&v78);
        objc_destroyWeak(location);
      }

      else
      {
        v21 = [[SKUIGift alloc] initWithGiftCategory:0];
        v22 = [[ServiceSKUIGiftViewController alloc] initWithGift:v21];
        v54 = +[ServiceClientContext defaultContext];
        [(ServiceSKUIGiftViewController *)v22 setClientContext:v54];

        [(ServiceSKUIGiftViewController *)v22 setEmbeddedParent:self];
        [(ServiceAccountPageViewController *)self setUnderlyingViewController:v22];
        [(ServiceAccountPageViewController *)self setChildViewController:v22];
      }
    }

    else
    {
      v36 = [v76 path];
      v37 = [v36 isEqual:SKAccountPageCustomURLString];

      if (v37)
      {
        v21 = [v76 copyQueryStringDictionaryWithUnescapedValues:1];
        v38 = [(ServiceSKUIRedeemViewController *)v21 objectForKeyedSubscript:@"url"];
        v22 = [NSURL URLWithString:v38];

        if (v22)
        {
          v39 = [(ServiceSKUIRedeemViewController *)v21 objectForKeyedSubscript:@"shouldSignRequests"];
          v40 = [v39 BOOLValue];

          v41 = objc_alloc_init(SUWebViewController);
          v42 = [(ServiceAccountPageViewController *)self account];
          [v41 setAccount:v42];

          [v41 setStyle:0];
          [v41 setShouldSignRequests:v40];
          v43 = [v41 webView];
          v44 = [v43 scrollView];
          [v44 _setContentInsetAdjustmentBehavior:0];

          [v41 reloadWithStorePage:0 forURL:v22];
          v45 = [v41 webView];
          v46 = [NSURLRequest requestWithURL:v22];
          [v45 loadRequest:v46];

          [(ServiceAccountPageViewController *)self _presentViewController:v41];
        }

        else
        {
          v41 = SSError();
          [(ServiceAccountPageViewController *)self dismissHostViewControllerWithResult:0 error:v41];
        }
      }

      else
      {
        v55 = [v76 path];
        v56 = [v55 isEqual:SKAccountPageCharityURLString];

        if (v56)
        {
          v21 = [v76 copyQueryStringDictionaryWithUnescapedValues:1];
          v22 = [(ServiceSKUIRedeemViewController *)v21 objectForKeyedSubscript:@"id"];
          v57 = [[ServiceSKUIDonationViewController alloc] initWithCharityIdentifier:v22];
          v58 = +[ServiceClientContext defaultContext];
          [(ServiceSKUIDonationViewController *)v57 setClientContext:v58];

          [(ServiceSKUIDonationViewController *)v57 setEmbeddedParent:self];
          [(ServiceAccountPageViewController *)self setUnderlyingViewController:v57];
          [(ServiceAccountPageViewController *)self setChildViewController:v57];
        }

        else
        {
          if (v76)
          {
            v21 = [[ServiceSUAccountViewController alloc] initWithExternalAccountURL:v76];
          }

          else
          {
            v21 = objc_alloc_init(ServiceSUAccountViewController);
            v59 = +[SSAccountStore defaultStore];
            v60 = [v59 activeAccount];
            v61 = v60 == 0;

            if (v61)
            {
              [(ServiceSKUIRedeemViewController *)v21 setStyle:1];
            }

            else
            {
              [(ServiceSKUIRedeemViewController *)v21 setStyle:2];
            }
          }

          if (objc_opt_respondsToSelector())
          {
            [(ServiceSKUIRedeemViewController *)v21 setShowAccountGlyph:[(ServiceAccountPageViewController *)self showAccountGlyph]];
          }

          v62 = [(ServiceAccountPageViewController *)self clientInterface];
          [v62 setShowDialogOnError:1];

          [(ServiceSKUIRedeemViewController *)v21 setClientInterface:self->_clientInterface];
          [(ServiceSKUIRedeemViewController *)v21 setEmbeddedParent:self];
          v63 = [(ServiceSKUIRedeemViewController *)v21 authenticationContext];
          v22 = [v63 mutableCopy];

          if (!v22)
          {
            v64 = [(ServiceAccountPageViewController *)self account];
            v65 = [v64 ams_DSID];
            v66 = v65 == 0;

            v67 = [SSMutableAuthenticationContext alloc];
            if (v66)
            {
              v68 = +[SSAccountStore defaultStore];
              v69 = [v68 activeAccount];
              v70 = [v67 initWithAccount:v69];
            }

            else
            {
              v68 = [(ServiceAccountPageViewController *)self account];
              v69 = [v68 ams_DSID];
              v70 = [v67 initWithAccountIdentifier:v69];
            }

            v22 = v70;
          }

          [(ServiceSKUIGiftViewController *)v22 setDisplaysOnLockScreen:1];
          [(ServiceSKUIRedeemViewController *)v21 setAuthenticationContext:v22];
          [(ServiceAccountPageViewController *)self setPresentedAccountViewController:v21];
          [(ServiceAccountPageViewController *)self _presentViewController:v21];
        }
      }
    }
  }

LABEL_63:
}

- (void)_presentViewController:(id)a3
{
  v4 = a3;
  v5 = [[SUNavigationContainerViewController alloc] initWithChildViewController:v4];
  if ([(ServiceAccountPageViewController *)self type]== 1)
  {
    [v5 setBridgedNavigation:1];
    v6 = +[ServiceBridgedNavigationController sharedController];
    [v6 setupWithContainerViewController:v5];
  }

  v7 = [(ServiceAccountPageViewController *)self navigationController];

  if (v7)
  {
    [(ServiceAccountPageViewController *)self setUnderlyingViewController:v4];
    [(ServiceAccountPageViewController *)self setChildViewController:v5];
  }

  else
  {
    v8 = [[ServiceSUNavigationController alloc] initWithRootViewController:v5];
    [(ServiceSUNavigationController *)v8 setEmbeddedParent:self];
    [(ServiceAccountPageViewController *)self setUnderlyingViewController:v4];
    [(ServiceAccountPageViewController *)self setChildViewController:v8];
  }

  v9 = dispatch_time(0, 3000000000);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000164F0;
  v11[3] = &unk_100051510;
  v11[4] = self;
  v12 = v5;
  v10 = v5;
  dispatch_after(v9, &_dispatch_main_q, v11);
}

- (void)_presentErrorViewControllerWithError:(id)a3
{
  v4 = a3;
  self->_finishedLoading = 1;
  v5 = [(ServiceAccountPageViewController *)self _clientViewControllerProxy];
  [v5 didFinishLoading];

  objc_initWeak(&location, self);
  v6 = [ServiceErrorViewController alloc];
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"CANNOT_CONNECT_TO_ITUNES_STORE" value:&stru_100052318 table:0];
  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"BACK" value:&stru_100052318 table:0];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000167A0;
  v13[3] = &unk_1000516B0;
  objc_copyWeak(&v15, &location);
  v11 = v4;
  v14 = v11;
  v12 = [(ServiceErrorViewController *)v6 initWithTitle:v8 message:0 buttonTitle:v10 actionBlock:v13];

  [(ServiceAccountPageViewController *)self setChildViewController:v12];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (CGRect)presentationBounds
{
  x = self->_presentationBounds.origin.x;
  y = self->_presentationBounds.origin.y;
  width = self->_presentationBounds.size.width;
  height = self->_presentationBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (SUScriptRedeemCameraViewController)redeemCameraScriptObject
{
  WeakRetained = objc_loadWeakRetained(&self->_redeemCameraScriptObject);

  return WeakRetained;
}

- (UIViewController)presentingBridgedViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingBridgedViewController);

  return WeakRetained;
}

@end