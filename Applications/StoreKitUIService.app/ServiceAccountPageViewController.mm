@interface ServiceAccountPageViewController
- (CGRect)presentationBounds;
- (SUScriptRedeemCameraViewController)redeemCameraScriptObject;
- (ServiceAccountPageViewController)initWithNibName:(id)name bundle:(id)bundle;
- (UIViewController)presentingBridgedViewController;
- (id)_bagKeyForConfigURLString:(id)string;
- (id)_preloadConfiguration;
- (id)navigationController;
- (id)navigationItem;
- (id)navigationItemOptionsFromViewController:(id)controller;
- (void)_loadURLWithActiveConfiguration:(id)configuration;
- (void)_presentErrorViewControllerWithError:(id)error;
- (void)_presentViewController:(id)controller;
- (void)_willAppearInRemoteViewController;
- (void)applicationDidEnterBackground;
- (void)applicationWillEnterForeground;
- (void)bridgedRightButtonPressed;
- (void)clientInterface:(id)interface overrideCreditCardPresentationFromViewController:(id)controller completion:(id)completion;
- (void)clientInterface:(id)interface overrideRedeemCameraPerformAction:(int64_t)action withObject:(id)object;
- (void)clientInterfaceDidFinishLoading:(id)loading;
- (void)dealloc;
- (void)dismissPresentingBridgedViewController;
- (void)dismissViewController;
- (void)keyboardDidChangeFrame:(CGRect)frame animationCurve:(int64_t)curve duration:(double)duration;
- (void)keyboardWillChangeFrame:(CGRect)frame animationCurve:(int64_t)curve duration:(double)duration;
- (void)loadWithURL:(id)l;
- (void)navigationItemUpdated;
- (void)overrideIPadRedeemCamera:(id)camera completion:(id)completion;
- (void)popBridgedViewControllersToIndex:(unint64_t)index;
- (void)redeemCameraCodeDetected:(id)detected;
- (void)setBridgedNavigationItemWithOptions:(id)options;
- (void)setChildViewController:(id)controller;
- (void)setReferrer:(id)referrer;
- (void)setUnderlyingViewController:(id)controller;
- (void)viewDidLoad;
@end

@implementation ServiceAccountPageViewController

- (ServiceAccountPageViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v12.receiver = self;
  v12.super_class = ServiceAccountPageViewController;
  v4 = [(ServiceAccountPageViewController *)&v12 initWithNibName:name bundle:bundle];
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

    _preloadConfiguration = [(ServiceAccountPageViewController *)v4 _preloadConfiguration];
    configurationPromise = v4->_configurationPromise;
    v4->_configurationPromise = _preloadConfiguration;
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
  view = [(ServiceAccountPageViewController *)self view];
  v4 = +[UIColor systemGroupedBackgroundColor];
  [view setBackgroundColor:v4];

  viewControllerFactory = [(SUClientInterface *)self->_clientInterface viewControllerFactory];
  newPlaceholderViewController = [viewControllerFactory newPlaceholderViewController];

  v7 = [[SUNavigationController alloc] initWithRootViewController:newPlaceholderViewController];
  [(ServiceAccountPageViewController *)self setContainerNavigationController:v7];

  containerNavigationController = [(ServiceAccountPageViewController *)self containerNavigationController];
  [containerNavigationController setClientInterface:self->_clientInterface];

  containerNavigationController2 = [(ServiceAccountPageViewController *)self containerNavigationController];
  [(ServiceAccountPageViewController *)self setChildViewController:containerNavigationController2];
}

- (void)setChildViewController:(id)controller
{
  controllerCopy = controller;
  childViewController = self->_childViewController;
  if (childViewController != controllerCopy)
  {
    v13 = controllerCopy;
    if (childViewController)
    {
      [(UIViewController *)childViewController willMoveToParentViewController:0];
      view = [(UIViewController *)self->_childViewController view];
      [view removeFromSuperview];

      [(UIViewController *)self->_childViewController removeFromParentViewController];
      controllerCopy = v13;
    }

    [(UIViewController *)controllerCopy willMoveToParentViewController:self];
    view2 = [(UIViewController *)v13 view];
    view3 = [(ServiceAccountPageViewController *)self view];
    [view3 bounds];
    [view2 setFrame:?];

    view4 = [(UIViewController *)v13 view];
    [view4 setAutoresizingMask:18];

    view5 = [(ServiceAccountPageViewController *)self view];
    view6 = [(UIViewController *)v13 view];
    [view5 addSubview:view6];

    [(ServiceAccountPageViewController *)self addChildViewController:v13];
    objc_storeStrong(&self->_childViewController, controller);
  }

  _objc_release_x1();
}

- (void)setUnderlyingViewController:(id)controller
{
  objc_storeStrong(&self->_underlyingViewController, controller);
  controllerCopy = controller;
  navigationItem = [controllerCopy navigationItem];
  v6 = [ServiceBridgedNavigationItem itemFromItem:navigationItem];
  [v6 setProxyHandler:self];
  [controllerCopy su_setBridgedNavigationItem:v6];
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

  _clientViewControllerProxy = [(ServiceAccountPageViewController *)self _clientViewControllerProxy];
  v6 = [NSNumber numberWithBool:v4];
  [_clientViewControllerProxy didPrepareWithResult:v6 error:v3];
}

- (id)navigationItem
{
  if ([(ServiceAccountPageViewController *)self type]== 1)
  {
    underlyingViewController = [(ServiceAccountPageViewController *)self underlyingViewController];
    su_bridgedNavigationItem = [underlyingViewController su_bridgedNavigationItem];
    v5 = su_bridgedNavigationItem;
    if (su_bridgedNavigationItem)
    {
      navigationItem = su_bridgedNavigationItem;
    }

    else
    {
      v10.receiver = self;
      v10.super_class = ServiceAccountPageViewController;
      navigationItem = [(ServiceAccountPageViewController *)&v10 navigationItem];
    }

    navigationItem2 = navigationItem;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = ServiceAccountPageViewController;
    navigationItem2 = [(ServiceAccountPageViewController *)&v9 navigationItem];
  }

  return navigationItem2;
}

- (id)navigationController
{
  if ([(ServiceAccountPageViewController *)self type]== 1)
  {
    navigationController = +[ServiceBridgedNavigationController sharedController];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = ServiceAccountPageViewController;
    navigationController = [(ServiceAccountPageViewController *)&v5 navigationController];
  }

  return navigationController;
}

- (void)navigationItemUpdated
{
  underlyingViewController = [(ServiceAccountPageViewController *)self underlyingViewController];
  v4 = [(ServiceAccountPageViewController *)self navigationItemOptionsFromViewController:underlyingViewController];

  [(ServiceAccountPageViewController *)self setBridgedNavigationItemWithOptions:v4];
}

- (void)setBridgedNavigationItemWithOptions:(id)options
{
  optionsCopy = options;
  _clientViewControllerProxy = [(ServiceAccountPageViewController *)self _clientViewControllerProxy];
  [_clientViewControllerProxy setBridgedNavigationItemWithOptions:optionsCopy];
}

- (id)navigationItemOptionsFromViewController:(id)controller
{
  navigationItem = [controller navigationItem];
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [navigationItem hidesBackButton]);
  [v4 setObject:v5 forKeyedSubscript:SKUIServiceNavigationOptionBackButtonHidden];

  backButtonTitle = [navigationItem backButtonTitle];

  if (backButtonTitle)
  {
    backButtonTitle2 = [navigationItem backButtonTitle];
    [v4 setObject:backButtonTitle2 forKeyedSubscript:SKUIServiceNavigationOptionBackButtonTitle];
  }

  rightBarButtonItem = [navigationItem rightBarButtonItem];

  if (rightBarButtonItem)
  {
    rightBarButtonItem2 = [navigationItem rightBarButtonItem];
    title = [rightBarButtonItem2 title];
    [v4 setObject:title forKeyedSubscript:SKUIServiceNavigationOptionRightButtonTitle];

    rightBarButtonItem3 = [navigationItem rightBarButtonItem];
    v12 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [rightBarButtonItem3 style]);
    [v4 setObject:v12 forKeyedSubscript:SKUIServiceNavigationOptionRightButtonStyle];

    rightBarButtonItem4 = [navigationItem rightBarButtonItem];
    v14 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [rightBarButtonItem4 isEnabled]);
    [v4 setObject:v14 forKeyedSubscript:SKUIServiceNavigationOptionRightButtonEnabled];
  }

  title2 = [navigationItem title];

  if (title2)
  {
    title3 = [navigationItem title];
    [v4 setObject:title3 forKeyedSubscript:SKUIServiceNavigationOptionTitle];
  }

  return v4;
}

- (void)popBridgedViewControllersToIndex:(unint64_t)index
{
  _clientViewControllerProxy = [(ServiceAccountPageViewController *)self _clientViewControllerProxy];
  [_clientViewControllerProxy popBridgedViewControllersToIndex:index];
}

- (void)dismissViewController
{
  _clientViewControllerProxy = [(ServiceAccountPageViewController *)self _clientViewControllerProxy];
  [_clientViewControllerProxy dismissBridgedViewController];
}

- (void)loadWithURL:(id)l
{
  lCopy = l;
  if ([(ServiceAccountPageViewController *)self loadFromBridgedNavigation])
  {
    v5 = +[ServiceBridgedNavigationController sharedController];
    topViewController = [v5 topViewController];

    [(ServiceAccountPageViewController *)self setUnderlyingViewController:topViewController];
    [(ServiceAccountPageViewController *)self setChildViewController:topViewController];
  }

  else if ([(ServiceAccountPageViewController *)self type]== 2)
  {
    v7 = objc_alloc_init(UIView);
    v8 = +[UIColor clearColor];
    [v7 setBackgroundColor:v8];

    [v7 setOpaque:0];
    [(ServiceAccountPageViewController *)self setView:v7];
    view = [(ServiceAccountPageViewController *)self view];
    window = [view window];
    [window makeKeyWindow];

    v11 = +[ServiceBridgedPresentationController sharedController];
    removeSavedViewController = [v11 removeSavedViewController];

    if (removeSavedViewController)
    {
      [(ServiceAccountPageViewController *)self setPresentingBridgedViewController:removeSavedViewController];
      [(ServiceAccountPageViewController *)self showViewController:removeSavedViewController sender:self];
    }
  }

  else
  {
    objc_initWeak(&location, self);
    configurationPromise = [(ServiceAccountPageViewController *)self configurationPromise];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100014168;
    v14[3] = &unk_100051820;
    objc_copyWeak(&v16, &location);
    v15 = lCopy;
    [configurationPromise addFinishBlock:v14];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

- (void)applicationWillEnterForeground
{
  underlyingViewController = [(ServiceAccountPageViewController *)self underlyingViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    embeddedViewController = [underlyingViewController embeddedViewController];

    underlyingViewController = embeddedViewController;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = underlyingViewController;
    [v3 applicationWillEnterForeground];
    activeChildViewController = [v3 activeChildViewController];

    [activeChildViewController applicationWillEnterForeground];
  }
}

- (void)applicationDidEnterBackground
{
  underlyingViewController = [(ServiceAccountPageViewController *)self underlyingViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    embeddedViewController = [underlyingViewController embeddedViewController];

    underlyingViewController = embeddedViewController;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = underlyingViewController;
    [v3 applicationDidEnterBackground];
    activeChildViewController = [v3 activeChildViewController];

    [activeChildViewController applicationDidEnterBackground];
  }
}

- (void)bridgedRightButtonPressed
{
  if ([(ServiceAccountPageViewController *)self type]== 1)
  {
    underlyingViewController = [(ServiceAccountPageViewController *)self underlyingViewController];
    su_bridgedNavigationItem = [underlyingViewController su_bridgedNavigationItem];
    rightBarButtonItem = [su_bridgedNavigationItem rightBarButtonItem];

    target = [rightBarButtonItem target];
    [target performSelector:{objc_msgSend(rightBarButtonItem, "action")}];
  }
}

- (void)dismissPresentingBridgedViewController
{
  if ([(ServiceAccountPageViewController *)self type]== 2)
  {
    presentingBridgedViewController = [(ServiceAccountPageViewController *)self presentingBridgedViewController];

    if (presentingBridgedViewController)
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

- (void)redeemCameraCodeDetected:(id)detected
{
  detectedCopy = detected;
  redeemCameraScriptObject = [(ServiceAccountPageViewController *)self redeemCameraScriptObject];
  [redeemCameraScriptObject codeDetected:detectedCopy];
}

- (void)keyboardDidChangeFrame:(CGRect)frame animationCurve:(int64_t)curve duration:(double)duration
{
  v13[0] = UIKeyboardFrameEndUserInfoKey;
  frameCopy = frame;
  v7 = [NSValue valueWithBytes:&frameCopy objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  v14[0] = v7;
  v13[1] = UIKeyboardAnimationCurveUserInfoKey;
  v8 = [NSNumber numberWithInteger:curve];
  v14[1] = v8;
  v13[2] = UIKeyboardAnimationDurationUserInfoKey;
  v9 = [NSNumber numberWithDouble:duration];
  v14[2] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:3];

  v11 = +[NSNotificationCenter defaultCenter];
  [v11 postNotificationName:SUKeyboardDidChangeNotification object:0 userInfo:v10];
}

- (void)keyboardWillChangeFrame:(CGRect)frame animationCurve:(int64_t)curve duration:(double)duration
{
  v13[0] = UIKeyboardFrameEndUserInfoKey;
  frameCopy = frame;
  v7 = [NSValue valueWithBytes:&frameCopy objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  v14[0] = v7;
  v13[1] = UIKeyboardAnimationCurveUserInfoKey;
  v8 = [NSNumber numberWithInteger:curve];
  v14[1] = v8;
  v13[2] = UIKeyboardAnimationDurationUserInfoKey;
  v9 = [NSNumber numberWithDouble:duration];
  v14[2] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:3];

  v11 = +[NSNotificationCenter defaultCenter];
  [v11 postNotificationName:SUKeyboardWillChangeNotification object:0 userInfo:v10];
}

- (void)setReferrer:(id)referrer
{
  referrerCopy = referrer;
  clientInterface = [(ServiceAccountPageViewController *)self clientInterface];
  [clientInterface setHostApplicationIdentifier:referrerCopy];
}

- (void)overrideIPadRedeemCamera:(id)camera completion:(id)completion
{
  completionCopy = completion;
  objc_storeWeak(&self->_redeemCameraViewController, camera);
  _clientViewControllerProxy = [(ServiceAccountPageViewController *)self _clientViewControllerProxy];
  [_clientViewControllerProxy overrideRedeemCameraWithCompletion:completionCopy];
}

- (void)clientInterface:(id)interface overrideCreditCardPresentationFromViewController:(id)controller completion:(id)completion
{
  completionCopy = completion;
  _clientViewControllerProxy = [(ServiceAccountPageViewController *)self _clientViewControllerProxy];
  [_clientViewControllerProxy overrideCreditCardPresentationWithCompletion:completionCopy];
}

- (void)clientInterface:(id)interface overrideRedeemCameraPerformAction:(int64_t)action withObject:(id)object
{
  objectCopy = object;
  if (action == 1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(ServiceAccountPageViewController *)self setRedeemCameraScriptObject:objectCopy];
    }

    objectCopy = 0;
  }

  _clientViewControllerProxy = [(ServiceAccountPageViewController *)self _clientViewControllerProxy];
  [_clientViewControllerProxy overrideRedeemCameraPerformAction:action withObject:objectCopy];
}

- (void)clientInterfaceDidFinishLoading:(id)loading
{
  self->_finishedLoading = 1;
  underlyingViewController = [(ServiceAccountPageViewController *)self underlyingViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    firstViewController = [underlyingViewController firstViewController];

    underlyingViewController = firstViewController;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  navigationItem = [underlyingViewController navigationItem];
  leftBarButtonItems = [navigationItem leftBarButtonItems];

  v8 = [leftBarButtonItems countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(leftBarButtonItems);
        }

        if ([*(*(&v19 + 1) + 8 * v12) tag] == 999)
        {
          navigationItem2 = [underlyingViewController navigationItem];
          leftBarButtonItems2 = [navigationItem2 leftBarButtonItems];
          v16 = [leftBarButtonItems2 mutableCopy];

          [v16 removeObjectAtIndex:v13];
          navigationItem3 = [underlyingViewController navigationItem];
          [navigationItem3 setLeftBarButtonItems:v16 animated:1];

          goto LABEL_13;
        }

        ++v13;
        v12 = v12 + 1;
      }

      while (v9 != v12);
      v9 = [leftBarButtonItems countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  _clientViewControllerProxy = [(ServiceAccountPageViewController *)self _clientViewControllerProxy];
  [_clientViewControllerProxy didFinishLoading];
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

- (id)_bagKeyForConfigURLString:(id)string
{
  v7[0] = SKAccountPagePaymentsShippingURLString;
  v7[1] = SKAccountPageManageSubscriptionsURLString;
  v8[0] = @"paymentsAndShippingUrl";
  v8[1] = @"manageSubscriptionsUrl";
  v7[2] = SKAccountPageEditBillingURLString;
  v8[2] = @"editBillingUrl";
  stringCopy = string;
  v4 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:3];
  v5 = [v4 objectForKey:stringCopy];

  return v5;
}

- (void)_loadURLWithActiveConfiguration:(id)configuration
{
  configurationCopy = configuration;
  _hostApplicationBundleIdentifier = [(ServiceAccountPageViewController *)self _hostApplicationBundleIdentifier];
  v4 = +[SSLogConfig sharedConfig];
  shouldLog = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    shouldLog |= 2u;
  }

  oSLogObject = [v4 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v7 = shouldLog;
  }

  else
  {
    v7 = shouldLog & 2;
  }

  if (v7)
  {
    *location = 138543618;
    *&location[4] = objc_opt_class();
    v88 = 2112;
    v89 = _hostApplicationBundleIdentifier;
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
  [v11 setRegisteredHostBundleId:_hostApplicationBundleIdentifier];

  path = [configurationCopy path];
  v75 = [(ServiceAccountPageViewController *)self _bagKeyForConfigURLString:path];

  if (v75)
  {
    v13 = +[SSLogConfig sharedConfig];
    shouldLog2 = [v13 shouldLog];
    if ([v13 shouldLogToDisk])
    {
      v15 = shouldLog2 | 2;
    }

    else
    {
      v15 = shouldLog2;
    }

    oSLogObject2 = [v13 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
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
        value = v84;
        [(ServiceSKUIRedeemViewController *)v21 loadValueForKey:v75 completionBlock:v83];

        goto LABEL_63;
      }

      oSLogObject2 = [NSString stringWithCString:v20 encoding:4, location, v72];
      free(v20);
      SSFileLog();
    }

    goto LABEL_21;
  }

  pathComponents = [configurationCopy pathComponents];
  firstObject = [pathComponents firstObject];
  v25 = [firstObject isEqual:SKAccountPageRedeemURLString];

  if (v25)
  {
    v21 = [[ServiceSKUIRedeemViewController alloc] initWithRedeemCategory:0];
    v26 = +[ServiceClientContext defaultContext];
    [(ServiceSKUIRedeemViewController *)v21 setClientContext:v26];

    [(ServiceSKUIRedeemViewController *)v21 setClientInterface:self->_clientInterface];
    [(ServiceSKUIRedeemViewController *)v21 setEmbeddedParent:self];
    [(ServiceSKUIRedeemViewController *)v21 setCameraDelegate:self];
    pathComponents2 = [configurationCopy pathComponents];
    v28 = [pathComponents2 count] > 1;

    if (v28)
    {
      pathComponents3 = [configurationCopy pathComponents];
      value = [pathComponents3 objectAtIndexedSubscript:1];
    }

    else
    {
      pathComponents3 = [NSURLComponents componentsWithURL:configurationCopy resolvingAgainstBaseURL:1];
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      queryItems = [pathComponents3 queryItems];
      v48 = [queryItems countByEnumeratingWithState:&v79 objects:v86 count:16];
      if (v48)
      {
        v49 = *v80;
        while (2)
        {
          for (i = 0; i != v48; i = i + 1)
          {
            if (*v80 != v49)
            {
              objc_enumerationMutation(queryItems);
            }

            v51 = *(*(&v79 + 1) + 8 * i);
            name = [v51 name];
            v53 = [name isEqualToString:@"code"];

            if (v53)
            {
              value = [v51 value];
              goto LABEL_41;
            }
          }

          v48 = [queryItems countByEnumeratingWithState:&v79 objects:v86 count:16];
          if (v48)
          {
            continue;
          }

          break;
        }
      }

      value = 0;
LABEL_41:
    }

    if (value)
    {
      [(ServiceSKUIRedeemViewController *)v21 setInitialCode:value];
      [(ServiceSKUIRedeemViewController *)v21 setAttempsAutomaticRedeem:1];
    }

    [(ServiceAccountPageViewController *)self setUnderlyingViewController:v21, v71];
    [(ServiceAccountPageViewController *)self setChildViewController:v21];
  }

  else
  {
    pathComponents4 = [configurationCopy pathComponents];
    firstObject2 = [pathComponents4 firstObject];
    v31 = [firstObject2 isEqual:SKAccountPageGiftURLString];

    if (v31)
    {
      pathComponents5 = [configurationCopy pathComponents];
      v33 = [pathComponents5 count] > 1;

      if (v33)
      {
        pathComponents6 = [configurationCopy pathComponents];
        v21 = [pathComponents6 objectAtIndexedSubscript:1];

        value = objc_alloc_init(SSLookupRequest);
        [(ServiceSKUIGiftViewController *)value setKeyProfile:SSLookupKeyProfileLockup];
        v85 = v21;
        v35 = [NSArray arrayWithObjects:&v85 count:1];
        [(ServiceSKUIGiftViewController *)value setValue:v35 forRequestParameter:SSLookupParameterItemIdentifiers];

        [(ServiceSKUIGiftViewController *)value setValue:@"2" forRequestParameter:SSLookupParameterProtocolVersion];
        objc_initWeak(location, self);
        v77[0] = _NSConcreteStackBlock;
        v77[1] = 3221225472;
        v77[2] = sub_100016138;
        v77[3] = &unk_1000518C0;
        objc_copyWeak(&v78, location);
        [(ServiceSKUIGiftViewController *)value startWithLookupBlock:v77];
        objc_destroyWeak(&v78);
        objc_destroyWeak(location);
      }

      else
      {
        v21 = [[SKUIGift alloc] initWithGiftCategory:0];
        value = [[ServiceSKUIGiftViewController alloc] initWithGift:v21];
        v54 = +[ServiceClientContext defaultContext];
        [(ServiceSKUIGiftViewController *)value setClientContext:v54];

        [(ServiceSKUIGiftViewController *)value setEmbeddedParent:self];
        [(ServiceAccountPageViewController *)self setUnderlyingViewController:value];
        [(ServiceAccountPageViewController *)self setChildViewController:value];
      }
    }

    else
    {
      path2 = [configurationCopy path];
      v37 = [path2 isEqual:SKAccountPageCustomURLString];

      if (v37)
      {
        v21 = [configurationCopy copyQueryStringDictionaryWithUnescapedValues:1];
        v38 = [(ServiceSKUIRedeemViewController *)v21 objectForKeyedSubscript:@"url"];
        value = [NSURL URLWithString:v38];

        if (value)
        {
          v39 = [(ServiceSKUIRedeemViewController *)v21 objectForKeyedSubscript:@"shouldSignRequests"];
          bOOLValue = [v39 BOOLValue];

          v41 = objc_alloc_init(SUWebViewController);
          account = [(ServiceAccountPageViewController *)self account];
          [v41 setAccount:account];

          [v41 setStyle:0];
          [v41 setShouldSignRequests:bOOLValue];
          webView = [v41 webView];
          scrollView = [webView scrollView];
          [scrollView _setContentInsetAdjustmentBehavior:0];

          [v41 reloadWithStorePage:0 forURL:value];
          webView2 = [v41 webView];
          v46 = [NSURLRequest requestWithURL:value];
          [webView2 loadRequest:v46];

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
        path3 = [configurationCopy path];
        v56 = [path3 isEqual:SKAccountPageCharityURLString];

        if (v56)
        {
          v21 = [configurationCopy copyQueryStringDictionaryWithUnescapedValues:1];
          value = [(ServiceSKUIRedeemViewController *)v21 objectForKeyedSubscript:@"id"];
          v57 = [[ServiceSKUIDonationViewController alloc] initWithCharityIdentifier:value];
          v58 = +[ServiceClientContext defaultContext];
          [(ServiceSKUIDonationViewController *)v57 setClientContext:v58];

          [(ServiceSKUIDonationViewController *)v57 setEmbeddedParent:self];
          [(ServiceAccountPageViewController *)self setUnderlyingViewController:v57];
          [(ServiceAccountPageViewController *)self setChildViewController:v57];
        }

        else
        {
          if (configurationCopy)
          {
            v21 = [[ServiceSUAccountViewController alloc] initWithExternalAccountURL:configurationCopy];
          }

          else
          {
            v21 = objc_alloc_init(ServiceSUAccountViewController);
            v59 = +[SSAccountStore defaultStore];
            activeAccount = [v59 activeAccount];
            v61 = activeAccount == 0;

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

          clientInterface = [(ServiceAccountPageViewController *)self clientInterface];
          [clientInterface setShowDialogOnError:1];

          [(ServiceSKUIRedeemViewController *)v21 setClientInterface:self->_clientInterface];
          [(ServiceSKUIRedeemViewController *)v21 setEmbeddedParent:self];
          authenticationContext = [(ServiceSKUIRedeemViewController *)v21 authenticationContext];
          value = [authenticationContext mutableCopy];

          if (!value)
          {
            account2 = [(ServiceAccountPageViewController *)self account];
            ams_DSID = [account2 ams_DSID];
            v66 = ams_DSID == 0;

            v67 = [SSMutableAuthenticationContext alloc];
            if (v66)
            {
              account3 = +[SSAccountStore defaultStore];
              activeAccount2 = [account3 activeAccount];
              v70 = [v67 initWithAccount:activeAccount2];
            }

            else
            {
              account3 = [(ServiceAccountPageViewController *)self account];
              activeAccount2 = [account3 ams_DSID];
              v70 = [v67 initWithAccountIdentifier:activeAccount2];
            }

            value = v70;
          }

          [(ServiceSKUIGiftViewController *)value setDisplaysOnLockScreen:1];
          [(ServiceSKUIRedeemViewController *)v21 setAuthenticationContext:value];
          [(ServiceAccountPageViewController *)self setPresentedAccountViewController:v21];
          [(ServiceAccountPageViewController *)self _presentViewController:v21];
        }
      }
    }
  }

LABEL_63:
}

- (void)_presentViewController:(id)controller
{
  controllerCopy = controller;
  v5 = [[SUNavigationContainerViewController alloc] initWithChildViewController:controllerCopy];
  if ([(ServiceAccountPageViewController *)self type]== 1)
  {
    [v5 setBridgedNavigation:1];
    v6 = +[ServiceBridgedNavigationController sharedController];
    [v6 setupWithContainerViewController:v5];
  }

  navigationController = [(ServiceAccountPageViewController *)self navigationController];

  if (navigationController)
  {
    [(ServiceAccountPageViewController *)self setUnderlyingViewController:controllerCopy];
    [(ServiceAccountPageViewController *)self setChildViewController:v5];
  }

  else
  {
    v8 = [[ServiceSUNavigationController alloc] initWithRootViewController:v5];
    [(ServiceSUNavigationController *)v8 setEmbeddedParent:self];
    [(ServiceAccountPageViewController *)self setUnderlyingViewController:controllerCopy];
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

- (void)_presentErrorViewControllerWithError:(id)error
{
  errorCopy = error;
  self->_finishedLoading = 1;
  _clientViewControllerProxy = [(ServiceAccountPageViewController *)self _clientViewControllerProxy];
  [_clientViewControllerProxy didFinishLoading];

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
  v11 = errorCopy;
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