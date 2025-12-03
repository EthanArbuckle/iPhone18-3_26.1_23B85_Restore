@interface MSApplicationDelegate
- (BOOL)_showsDownloadsTabForDownloadManager:(id)manager;
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (BOOL)application:(id)application openURL:(id)l sourceApplication:(id)sourceApplication annotation:(id)annotation;
- (BOOL)application:(id)application runTest:(id)test options:(id)options;
- (MSApplicationDelegate)init;
- (id)_downloadManager;
- (id)_newDefaultTabBarItemsWithClientContext:(id)context style:(int64_t)style;
- (id)_newTabBarItemsWithStyle:(int64_t)style;
- (id)_storeReview;
- (id)application:(id)application navigationControllerWithTabBarItem:(id)item;
- (id)bootstrapScriptURLForApplication:(id)application;
- (id)purchaseManager:(id)manager purchaseBatchForItems:(id)items;
- (id)purchaseManager:(id)manager purchaseBatchForPurchases:(id)purchases;
- (int64_t)_maximumTabBarItemsForStyle:(int64_t)style;
- (int64_t)_tabBarStyleWithWidth:(double)width;
- (void)_loadApplicationWithLaunchOptions:(id)options;
- (void)_networkingStartNotification:(id)notification;
- (void)_networkingStopNotification:(id)notification;
- (void)_purchaseFinishedNotification:(id)notification;
- (void)_requestAuthorization;
- (void)_showExternalURL:(id)l;
- (void)application:(id)application didFailToLoadWithError:(id)error;
- (void)application:(id)application performActionForShortcutItem:(id)item completionHandler:(id)handler;
- (void)application:(id)application willTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)applicationDidBecomeActive:(id)active;
- (void)applicationDidChangeClientContext:(id)context;
- (void)applicationDidCustomizeTabBarItems:(id)items;
- (void)applicationDidDisplayFirstPage:(id)page;
- (void)applicationWillResignActive:(id)active;
- (void)dealloc;
- (void)downloadManagerDownloadsDidChange:(id)change;
- (void)presentOnboardingIfNeeded;
@end

@implementation MSApplicationDelegate

- (MSApplicationDelegate)init
{
  v9.receiver = self;
  v9.super_class = MSApplicationDelegate;
  v2 = [(MSApplicationDelegate *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(SUUIMutableApplicationControllerOptions);
    [v3 setPageRenderMetricsEnabled:1];
    v4 = [[SUUIApplicationController alloc] initWithClientContextClass:objc_opt_class() options:v3];
    applicationController = v2->_applicationController;
    v2->_applicationController = v4;

    [(SUUIApplicationController *)v2->_applicationController setDelegate:v2];
    v6 = [[NSURLCache alloc] initWithMemoryCapacity:512000 diskCapacity:52428800 diskPath:0];
    [NSURLCache setSharedURLCache:v6];
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v2 selector:"_networkingStartNotification:" name:SSVNetworkingDidStartNotification object:0];
    [v7 addObserver:v2 selector:"_networkingStopNotification:" name:SSVNetworkingDidStopNotification object:0];
    [v7 addObserver:v2 selector:"_purchaseFinishedNotification:" name:SUPurchaseFinishedNotification object:0];
  }

  return v2;
}

- (id)_downloadManager
{
  downloadManager = self->_downloadManager;
  if (!downloadManager)
  {
    clientContext = [(SUUIApplicationController *)self->_applicationController clientContext];
    clientInterface = [clientContext clientInterface];

    viewControllerFactory = [clientInterface viewControllerFactory];
    newDownloadManagerOptions = [viewControllerFactory newDownloadManagerOptions];
    queueSessionManager = [clientInterface queueSessionManager];
    v9 = [queueSessionManager beginDownloadManagerSessionWithManagerOptions:newDownloadManagerOptions];
    v10 = self->_downloadManager;
    self->_downloadManager = v9;

    [(SSDownloadManager *)self->_downloadManager addObserver:self];
    downloadManager = self->_downloadManager;
  }

  return downloadManager;
}

- (void)_requestAuthorization
{
  objc_initWeak(&location, self);
  v2 = +[UNUserNotificationCenter currentNotificationCenter];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100001B08;
  v3[3] = &unk_100010758;
  objc_copyWeak(&v4, &location);
  [v2 requestAuthorizationWithOptions:6 completionHandler:v3];

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (id)_storeReview
{
  if (qword_100015738 != -1)
  {
    sub_100001D30();
  }

  v3 = qword_100015730;

  return v3;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:SSVNetworkingDidStartNotification object:0];
  [v3 removeObserver:self name:SSVNetworkingDidStopNotification object:0];
  [v3 removeObserver:self name:SUPurchaseFinishedNotification object:0];
  [(SUUIApplicationController *)self->_applicationController setDelegate:0];
  [(SSDownloadManager *)self->_downloadManager removeObserver:self];

  v4.receiver = self;
  v4.super_class = MSApplicationDelegate;
  [(MSApplicationDelegate *)&v4 dealloc];
}

- (void)applicationDidChangeClientContext:(id)context
{
  clientContext = [(SUUIApplicationController *)self->_applicationController clientContext];
  [clientContext setPurchaseReferrerURL:self->_launchURL];

  [(SSDownloadManager *)self->_downloadManager removeObserver:self];
  downloadManager = self->_downloadManager;
  self->_downloadManager = 0;

  rootViewController = [(SUUIApplicationController *)self->_applicationController rootViewController];
  view = [rootViewController view];
  [view bounds];
  v8 = [(MSApplicationDelegate *)self _tabBarStyleWithWidth:v7];

  applicationController = self->_applicationController;
  v10 = [(MSApplicationDelegate *)self _newTabBarItemsWithStyle:v8];
  [(SUUIApplicationController *)applicationController setTabBarItems:v10];

  [(UIWindow *)self->_window setRootViewController:rootViewController];
  clientContext2 = [(SUUIApplicationController *)self->_applicationController clientContext];
  clientInterface = [clientContext2 clientInterface];

  v13 = [[SULegacyClientBridge alloc] initWithClientInterface:clientInterface];
  legacyBridge = self->_legacyBridge;
  self->_legacyBridge = v13;

  v15 = self->_legacyBridge;
  tabBarController = [(SUUIApplicationController *)self->_applicationController tabBarController];
  [(SULegacyClientBridge *)v15 setRootViewController:tabBarController];

  [SUClientDispatch setClientBridge:self->_legacyBridge];
  purchaseManager = [clientInterface purchaseManager];
  [purchaseManager setDelegate:self];

  [(MSApplicationDelegate *)self presentOnboardingIfNeeded];
}

- (void)applicationDidCustomizeTabBarItems:(id)items
{
  itemsCopy = items;
  v4 = objc_alloc_init(NSMutableArray);
  tabBarItems = [itemsCopy tabBarItems];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000034E4;
  v8[3] = &unk_100010550;
  v9 = v4;
  v6 = v4;
  [tabBarItems enumerateObjectsUsingBlock:v8];

  v7 = +[NSUserDefaults standardUserDefaults];
  [v7 setObject:v6 forKey:@"MSApplicationDelegateTabBarOrdering"];
  [v7 synchronize];
}

- (void)applicationDidDisplayFirstPage:(id)page
{
  pageCopy = page;
  if (!self->_launchNotificationsController)
  {
    v4 = [MSLaunchNotificationsController alloc];
    rootViewController = [(UIWindow *)self->_window rootViewController];
    v6 = [(MSLaunchNotificationsController *)v4 initWithParentViewController:rootViewController];
    launchNotificationsController = self->_launchNotificationsController;
    self->_launchNotificationsController = v6;

    v8 = self->_launchNotificationsController;
    clientContext = [pageCopy clientContext];
    [(MSLaunchNotificationsController *)v8 setClientContext:clientContext];

    if ((+[MSOnboardingUtil shouldShowOnboarding]& 1) == 0)
    {
      [(MSLaunchNotificationsController *)self->_launchNotificationsController checkForNotifications];
    }
  }

  self->_didDisplayFirstPage = 1;
  if (self->_quickActionBlock && (+[MSOnboardingUtil shouldShowOnboarding]& 1) == 0)
  {
    (*(self->_quickActionBlock + 2))();
    quickActionBlock = self->_quickActionBlock;
    self->_quickActionBlock = 0;
  }

  [(MSApplicationDelegate *)self presentOnboardingIfNeeded];
}

- (void)application:(id)application didFailToLoadWithError:(id)error
{
  applicationCopy = application;
  clientContext = [applicationCopy clientContext];
  v6 = clientContext;
  if (clientContext)
  {
    v7 = [clientContext localizedStringForKey:@"GENERIC_ERROR"];
  }

  else
  {
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"GENERIC_ERROR" value:&stru_1000107F8 table:0];

    v7 = v9;
  }

  v10 = v7;
  [applicationCopy showErrorViewWithTitle:v7 message:0];
}

- (id)application:(id)application navigationControllerWithTabBarItem:(id)item
{
  applicationCopy = application;
  itemCopy = item;
  tabIdentifier = [itemCopy tabIdentifier];
  v8 = [tabIdentifier isEqualToString:@"search"];
  if (v8)
  {
    v9 = 0;
    v10 = 1;
  }

  else if (([tabIdentifier isEqualToString:@"movies"] & 1) != 0 || objc_msgSend(tabIdentifier, "isEqualToString:", @"tv"))
  {
    v10 = 0;
    v9 = 1;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  clientContext = [applicationCopy clientContext];
  clientInterface = [clientContext clientInterface];
  v13 = [[SUSection alloc] initWithClientInterface:clientInterface sectionType:v10 defaultPNGStyle:v9];
  if ((v8 & 1) != 0 || SUUIUserInterfaceIdiom() == 1)
  {
    v14 = [SUSearchFieldConfiguration defaultConfigurationWithClientInterface:clientInterface];
    [v13 setSearchFieldConfiguration:v14];
  }

  underlyingTabBarItem = [itemCopy underlyingTabBarItem];
  image = [underlyingTabBarItem image];
  [v13 setImage:image];

  selectedImage = [underlyingTabBarItem selectedImage];
  [v13 setSelectedImage:selectedImage];

  v18 = [[SUNavigationController alloc] initWithSection:v13];
  [v18 setClientInterface:clientInterface];

  return v18;
}

- (void)application:(id)application willTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  width = size.width;
  applicationCopy = application;
  coordinatorCopy = coordinator;
  rootViewController = [applicationCopy rootViewController];
  view = [rootViewController view];
  [view bounds];
  v12 = [(MSApplicationDelegate *)self _tabBarStyleWithWidth:v11];

  v13 = [(MSApplicationDelegate *)self _tabBarStyleWithWidth:width];
  if (v12 != v13)
  {
    v14 = v13;
    v15 = [(MSApplicationDelegate *)self _newTabBarItemsWithStyle:v13];
    tabBarController = [applicationCopy tabBarController];
    [tabBarController _setMaximumNumberOfItems:{-[MSApplicationDelegate _maximumTabBarItemsForStyle:](self, "_maximumTabBarItemsForStyle:", v14)}];

    [applicationCopy updateTabBarWithItems:v15 animated:{objc_msgSend(coordinatorCopy, "isAnimated")}];
  }
}

- (id)bootstrapScriptURLForApplication:(id)application
{
  v3 = +[UIApplication sharedApplication];
  launchedToTest = [v3 launchedToTest];

  if (launchedToTest)
  {
    v5 = [NSString alloc];
    sUUITestDataURLScheme = [v5 initWithFormat:@"%@://PPT.js", SUUITestDataURLScheme];
    v7 = [NSURL URLWithString:sUUITestDataURLScheme];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)downloadManagerDownloadsDidChange:(id)change
{
  changeCopy = change;
  v5 = dispatch_time(0, 1000000000);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100003B58;
  v7[3] = &unk_100010498;
  v7[4] = self;
  v8 = changeCopy;
  v6 = changeCopy;
  dispatch_after(v5, &_dispatch_main_q, v7);
}

- (id)purchaseManager:(id)manager purchaseBatchForItems:(id)items
{
  itemsCopy = items;
  v5 = [[MSPurchaseBatch alloc] initWithItems:itemsCopy];

  return v5;
}

- (id)purchaseManager:(id)manager purchaseBatchForPurchases:(id)purchases
{
  purchasesCopy = purchases;
  v6 = objc_alloc_init(MSPurchaseBatch);
  clientContext = [(SUUIApplicationController *)self->_applicationController clientContext];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = purchasesCopy;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [clientContext customizePurchase:{v13, v15}];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  [v6 setPurchasesAndContinuationsFromPurchases:v8];

  return v6;
}

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  optionsCopy = options;
  applicationCopy = application;
  v8 = +[NSUserDefaults standardUserDefaults];
  [v8 registerDefaults:&off_1000110E8];

  window = self->_window;
  if (!window)
  {
    v10 = [UIWindow alloc];
    v11 = +[UIScreen mainScreen];
    [v11 bounds];
    v12 = [v10 initWithFrame:?];
    v13 = self->_window;
    self->_window = v12;

    [(UIWindow *)self->_window setAutoresizingMask:18];
    v14 = self->_window;
    v15 = sub_100001468();
    [(UIWindow *)v14 setTintColor:v15];

    window = self->_window;
  }

  rootViewController = [(SUUIApplicationController *)self->_applicationController rootViewController];
  [(UIWindow *)window setRootViewController:rootViewController];

  [(UIWindow *)self->_window makeKeyAndVisible];
  launchedToTest = [applicationCopy launchedToTest];

  if ((launchedToTest & 1) == 0)
  {
    [(MSApplicationDelegate *)self _loadApplicationWithLaunchOptions:optionsCopy];
  }

  tabBarItems = [(SUUIApplicationController *)self->_applicationController tabBarItems];

  if (!tabBarItems)
  {
    [(UIWindow *)self->_window bounds];
    v20 = [(MSApplicationDelegate *)self _tabBarStyleWithWidth:v19];
    tabBarController = [(SUUIApplicationController *)self->_applicationController tabBarController];
    [tabBarController _setMaximumNumberOfItems:{-[MSApplicationDelegate _maximumTabBarItemsForStyle:](self, "_maximumTabBarItemsForStyle:", v20)}];

    applicationController = self->_applicationController;
    v23 = [(MSApplicationDelegate *)self _newTabBarItemsWithStyle:v20];
    [(SUUIApplicationController *)applicationController setTabBarItems:v23];
  }

  +[MSQuickActionController updateShortcutItems];
  v24 = +[AVAudioSession sharedInstance];
  [v24 setCategory:AVAudioSessionCategoryPlayback error:0];

  [(MSApplicationDelegate *)self _requestAuthorization];
  return 1;
}

- (BOOL)application:(id)application openURL:(id)l sourceApplication:(id)sourceApplication annotation:(id)annotation
{
  applicationCopy = application;
  lCopy = l;
  sourceApplicationCopy = sourceApplication;
  annotationCopy = annotation;
  v14 = [[SUUIURL alloc] initWithURL:lCopy];
  [v14 setReferrerApplicationName:sourceApplicationCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = sub_1000030EC();
    v16 = *sub_100003194("LSReferrerURLKey", v15);
    if (v16)
    {
      v17 = [annotationCopy objectForKey:v16];
    }

    else
    {
      v17 = 0;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v14 setReferrerURLString:v17];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        absoluteString = [v17 absoluteString];
        [v14 setReferrerURLString:absoluteString];
      }
    }
  }

  objc_initWeak(&location, self);
  applicationController = self->_applicationController;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000042B4;
  v25[3] = &unk_1000105B8;
  objc_copyWeak(&v27, &location);
  v20 = v14;
  v26 = v20;
  [(SUUIApplicationController *)applicationController evaluateBlockWhenLoaded:v25];
  self->_onActiveShouldResumeApplication = 0;
  clientContext = [(SUUIApplicationController *)self->_applicationController clientContext];
  [clientContext setPurchaseReferrerURL:v20];

  launchURL = self->_launchURL;
  self->_launchURL = v20;
  v23 = v20;

  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);

  return 1;
}

- (BOOL)application:(id)application runTest:(id)test options:(id)options
{
  testCopy = test;
  optionsCopy = options;
  v9 = +[NSBundle mainBundle];
  v10 = [v9 pathForResource:@"testDefinitions" ofType:@"plist"];

  if (v10)
  {
    v11 = [[NSData alloc] initWithContentsOfFile:v10];
    v12 = [NSPropertyListSerialization propertyListWithData:v11 options:0 format:0 error:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v13 = v12;
      v14 = [v13 countByEnumeratingWithState:&v32 objects:v38 count:16];
      if (v14)
      {
        v15 = v14;
        v28 = v12;
        v29 = v11;
        v30 = optionsCopy;
        selfCopy = self;
        v16 = *v33;
        while (2)
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v33 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v32 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v19 = [v18 objectForKey:@"testName"];
              v20 = [v19 isEqualToString:testCopy];

              if (v20)
              {
                optionsCopy = v18;

                self = selfCopy;
                goto LABEL_14;
              }
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v32 objects:v38 count:16];
          if (v15)
          {
            continue;
          }

          break;
        }

        self = selfCopy;
LABEL_14:
        v11 = v29;
        v12 = v28;
      }
    }
  }

  v21 = +[SSLogConfig sharedConfig];
  shouldLog = [v21 shouldLog];
  if ([v21 shouldLogToDisk])
  {
    shouldLog |= 2u;
  }

  oSLogObject = [v21 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v24 = shouldLog;
  }

  else
  {
    v24 = shouldLog & 2;
  }

  if (!v24)
  {
    goto LABEL_25;
  }

  v36 = 138412290;
  v37 = optionsCopy;
  LODWORD(v27) = 12;
  v25 = _os_log_send_and_compose_impl();

  if (v25)
  {
    oSLogObject = [NSString stringWithCString:v25 encoding:4, &v36, v27];
    free(v25);
    SSFileLog();
LABEL_25:
  }

  [(MSApplicationDelegate *)self _loadApplicationWithLaunchOptions:optionsCopy];
  return 1;
}

- (void)applicationDidBecomeActive:(id)active
{
  if (self->_onActiveShouldResumeApplication)
  {
    [(SUUIApplicationController *)self->_applicationController resumeApplicationWithOptions:0];
  }

  _storeReview = [(MSApplicationDelegate *)self _storeReview];
  [_storeReview applicationDidForeground];
}

- (void)application:(id)application performActionForShortcutItem:(id)item completionHandler:(id)handler
{
  applicationCopy = application;
  itemCopy = item;
  handlerCopy = handler;
  objc_initWeak(&location, self->_applicationController);
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_1000047F8;
  v19 = &unk_1000105E0;
  objc_copyWeak(&v22, &location);
  v11 = itemCopy;
  v20 = v11;
  v12 = handlerCopy;
  v21 = v12;
  v13 = objc_retainBlock(&v16);
  quickActionBlock = self->_quickActionBlock;
  self->_quickActionBlock = v13;

  if (self->_didDisplayFirstPage && ([MSOnboardingUtil shouldShowOnboarding:v16]& 1) == 0)
  {
    (*(self->_quickActionBlock + 2))();
    v15 = self->_quickActionBlock;
    self->_quickActionBlock = 0;
  }

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

- (void)applicationWillResignActive:(id)active
{
  activeCopy = active;
  [activeCopy beginBackgroundTaskWithExpirationHandler:0];
  v4 = activeCopy;
  SSDialogGetDaemonDialogState();
}

- (void)_networkingStartNotification:(id)notification
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004ACC;
  block[3] = &unk_100010470;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_networkingStopNotification:(id)notification
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004B9C;
  block[3] = &unk_100010470;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_purchaseFinishedNotification:(id)notification
{
  object = [notification object];
  v5 = object;
  if (object)
  {
    buyParameters = [object buyParameters];

    if (buyParameters)
    {
      buyParameters2 = [v5 buyParameters];
      v8 = [AMSBuyParams buyParamsWithString:buyParameters2];

      v9 = [v8 parameterForKey:@"mtApp"];
      if ([v9 isEqual:@"com.apple.MobileStore"])
      {
        _storeReview = [(MSApplicationDelegate *)self _storeReview];
        shouldAttemptPromptReview = [_storeReview shouldAttemptPromptReview];

        if (shouldAttemptPromptReview)
        {
          _storeReview2 = [(MSApplicationDelegate *)self _storeReview];
          [_storeReview2 didAttemptPromptReview];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100004E28;
          block[3] = &unk_100010470;
          block[4] = self;
          dispatch_async(&_dispatch_main_q, block);
        }
      }
    }
  }
}

- (void)_loadApplicationWithLaunchOptions:(id)options
{
  applicationController = self->_applicationController;
  optionsCopy = options;
  v14 = [objc_opt_class() applicationOptionsWithLaunchOptions:optionsCopy];

  [(SUUIApplicationController *)self->_applicationController loadApplicationWithOptions:v14];
  clientContext = [(SUUIApplicationController *)self->_applicationController clientContext];
  v7 = clientContext;
  if (clientContext)
  {
    clientInterface = [clientContext clientInterface];
    v9 = [[SULegacyClientBridge alloc] initWithClientInterface:clientInterface];
    legacyBridge = self->_legacyBridge;
    self->_legacyBridge = v9;

    v11 = self->_legacyBridge;
    tabBarController = [(SUUIApplicationController *)self->_applicationController tabBarController];
    [(SULegacyClientBridge *)v11 setRootViewController:tabBarController];

    [SUClientDispatch setClientBridge:self->_legacyBridge];
    purchaseManager = [clientInterface purchaseManager];
    [purchaseManager setDelegate:self];
  }
}

- (int64_t)_maximumTabBarItemsForStyle:(int64_t)style
{
  if (style)
  {
    return 8;
  }

  else
  {
    return 5;
  }
}

- (id)_newDefaultTabBarItemsWithClientContext:(id)context style:(int64_t)style
{
  contextCopy = context;
  v6 = objc_alloc_init(NSMutableArray);
  v7 = SUUIUserInterfaceIdiom();

  v8 = [[SUUITabBarItem alloc] initWithTabIdentifier:@"music"];
  v9 = [NSURL URLWithString:@"https://itunes.apple.com/WebObjects/MZStore.woa/wa/viewMusicMain"];
  [v8 setRootURL:v9];

  [v6 addObject:v8];
  v10 = [[SUUITabBarItem alloc] initWithTabIdentifier:@"movies"];
  v11 = [NSURL URLWithString:@"https://itunes.apple.com/WebObjects/MZStore.woa/wa/viewMoviesMain"];
  [v10 setRootURL:v11];

  [v6 addObject:v10];
  v12 = [[SUUITabBarItem alloc] initWithTabIdentifier:@"tv"];
  v13 = [NSURL URLWithString:@"https://itunes.apple.com/WebObjects/MZStore.woa/wa/viewTVShowsMain"];
  [v12 setRootURL:v13];

  [v6 addObject:v12];
  if (!style || v7 != 1)
  {
    v14 = [[SUUITabBarItem alloc] initWithTabIdentifier:@"search"];
    [v6 addObject:v14];
  }

  v15 = [[SUUITabBarItem alloc] initWithTabIdentifier:@"audiobooks"];
  v16 = [NSURL URLWithString:@"https://itunes.apple.com/WebObjects/MZStore.woa/wa/viewAudiobooksMain"];
  [v15 setRootURL:v16];

  [v6 addObject:v15];
  if (v7 != 1)
  {
    v17 = @"https://itunes.apple.com/WebObjects/MZStore.woa/wa/viewRingtones";
    v18 = @"tones";
    goto LABEL_8;
  }

  if (style == 1)
  {
    v17 = @"https://itunes.apple.com/WebObjects/MZStore.woa/wa/viewTop?genreId=34";
    v18 = @"charts";
LABEL_8:
    v19 = [[SUUITabBarItem alloc] initWithTabIdentifier:v18];
    v20 = [NSURL URLWithString:v17];
    [v19 setRootURL:v20];

    [v6 addObject:v19];
  }

  v21 = [[SUUITabBarItem alloc] initWithTabIdentifier:@"genius"];
  v22 = [NSURL URLWithString:@"https://my.itunes.apple.com/WebObjects/MZPersonalizer.woa/wa/seeAllRecommendations?html=true"];
  [v21 setRootURL:v22];

  [v6 addObject:v21];
  v23 = [[SUUITabBarItem alloc] initWithTabIdentifier:@"purchased"];
  v24 = [NSURL URLWithString:@"https://se.itunes.apple.com/WebObjects/MZStoreElements.woa/wa/purchases?mode=UNHIDDEN"];
  [v23 setRootURL:v24];

  [v23 setRootViewControllerClass:objc_opt_class()];
  [v6 addObject:v23];

  v25 = [[SUUITabBarItem alloc] initWithTabIdentifier:@"downloads"];
  [v6 addObject:v25];

  return v6;
}

- (id)_newTabBarItemsWithStyle:(int64_t)style
{
  v5 = objc_alloc_init(NSMutableArray);
  selfCopy = self;
  clientContext = [(SUUIApplicationController *)self->_applicationController clientContext];
  if ((+[UIApplication shouldMakeUIForDefaultPNG]& 1) != 0)
  {
    v7 = 0;
  }

  else if (clientContext)
  {
    v69[0] = _NSConcreteStackBlock;
    v69[1] = 3221225472;
    v69[2] = sub_100005C48;
    v69[3] = &unk_100010678;
    v70 = clientContext;
    v7 = objc_retainBlock(v69);
  }

  else
  {
    v7 = &stru_1000106B8;
  }

  v8 = [clientContext tabBarItemsForStyle:style];
  if (!v8)
  {
    v8 = [(MSApplicationDelegate *)selfCopy _newDefaultTabBarItemsWithClientContext:clientContext style:style];
  }

  v60 = clientContext;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v65 objects:v71 count:16];
  if (v10)
  {
    v11 = v10;
    v62 = v9;
    v12 = *v66;
    v61 = v5;
    do
    {
      v13 = 0;
      do
      {
        if (*v66 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v65 + 1) + 8 * v13);
        tabIdentifier = [v14 tabIdentifier];
        if ([tabIdentifier isEqualToString:@"music"])
        {
          v16 = objc_alloc_init(UITabBarItem);
          v17 = [UIImage _systemImageNamed:@"music"];
          [v16 setImage:v17];

          if (v7)
          {
            invoke = v7->invoke;
            v19 = v7;
            v20 = @"MUSIC";
            goto LABEL_16;
          }

          goto LABEL_18;
        }

        if ([tabIdentifier isEqualToString:@"movies"])
        {
          v16 = objc_alloc_init(UITabBarItem);
          v24 = [UIImage _systemImageNamed:@"film.fill"];
          [v16 setImage:v24];

          if (v7)
          {
            v25 = v7->invoke;
            v26 = v7;
            v27 = @"MOVIES";
            goto LABEL_25;
          }

          goto LABEL_26;
        }

        if ([tabIdentifier isEqualToString:@"tv"])
        {
          v16 = objc_alloc_init(UITabBarItem);
          v28 = [UIImage _systemImageNamed:@"tv.inset.filled"];
          [v16 setImage:v28];

          if (v7)
          {
            v25 = v7->invoke;
            v26 = v7;
            v27 = @"TV_SHOWS";
LABEL_25:
            v29 = v25(v26, v27);
            [v16 setTitle:v29];
          }

LABEL_26:
          v22 = v14;
          v23 = 1;
          goto LABEL_27;
        }

        if ([tabIdentifier isEqualToString:@"search"])
        {
          v16 = [[UITabBarItem alloc] initWithTabBarSystemItem:8 tag:0];
          if (v7)
          {
            v33 = v7->invoke;
            v34 = v7;
            v35 = @"SEARCH";
            goto LABEL_34;
          }

          goto LABEL_45;
        }

        if ([tabIdentifier isEqualToString:@"audiobooks"])
        {
          v16 = objc_alloc_init(UITabBarItem);
          v36 = [UIImage imageNamed:@"UITabBarAudiobooks"];
          _imageThatSuppressesAccessibilityHairlineThickening = [v36 _imageThatSuppressesAccessibilityHairlineThickening];
          [v16 setImage:_imageThatSuppressesAccessibilityHairlineThickening];

          v38 = [UIImage imageNamed:@"UITabBarAudiobooksSelected"];
          _imageThatSuppressesAccessibilityHairlineThickening2 = [v38 _imageThatSuppressesAccessibilityHairlineThickening];
          [v16 setSelectedImage:_imageThatSuppressesAccessibilityHairlineThickening2];

          if (v7)
          {
            v40 = v7->invoke(v7, @"AUDIOBOOKS");
            [v16 setTitle:v40];
          }

          [v14 setBarTintStyle:2];
          v30 = SUStorePageViewController_ptr;
          v5 = v61;
          v9 = v62;
          goto LABEL_28;
        }

        if ([tabIdentifier isEqualToString:@"tones"])
        {
          v16 = objc_alloc_init(UITabBarItem);
          v41 = [UIImage _systemImageNamed:@"bell.fill"];
          [v16 setImage:v41];

          if (v7)
          {
            invoke = v7->invoke;
            v19 = v7;
            v20 = @"TONES";
            goto LABEL_16;
          }

LABEL_18:
          v22 = v14;
          v23 = 2;
LABEL_27:
          [v22 setBarTintStyle:v23];
          v30 = SUStorePageViewController_ptr;
LABEL_28:
          v31 = *v30;
          [v14 setRootViewControllerClass:objc_opt_class()];
          [v14 setUnderlyingTabBarItem:v16];
          v32 = sub_100001468();
          [v14 setUserInterfaceTintColor:v32];

          [v5 addObject:v14];
          goto LABEL_29;
        }

        if ([tabIdentifier isEqualToString:@"charts"])
        {
          v16 = [[UITabBarItem alloc] initWithTabBarSystemItem:11 tag:0];
          if (v7)
          {
            v33 = v7->invoke;
            v34 = v7;
            v35 = @"CHARTS";
LABEL_34:
            v21 = v33(v34, v35);
            [v16 _setInternalTitle:v21];
LABEL_17:

            goto LABEL_18;
          }

LABEL_45:
          [v16 _setInternalTitle:&stru_1000107F8];
          goto LABEL_18;
        }

        if ([tabIdentifier isEqualToString:@"genius"])
        {
          v16 = objc_alloc_init(UITabBarItem);
          v42 = [UIImage _systemImageNamed:@"genius"];
          [v16 setImage:v42];

          if (!v7)
          {
            goto LABEL_18;
          }

          invoke = v7->invoke;
          v19 = v7;
          v20 = @"GENIUS";
LABEL_16:
          v21 = invoke(v19, v20);
          [v16 setTitle:v21];
          goto LABEL_17;
        }

        if ([tabIdentifier isEqualToString:@"purchased"])
        {
          v16 = objc_alloc_init(UITabBarItem);
          v43 = [UIImage _systemImageNamed:@"purchased"];
          [v16 setImage:v43];

          if (!v7)
          {
            goto LABEL_18;
          }

          invoke = v7->invoke;
          v19 = v7;
          v20 = @"PURCHASED";
          goto LABEL_16;
        }

        if ([tabIdentifier isEqualToString:@"downloads"])
        {
          _downloadManager = [(MSApplicationDelegate *)selfCopy _downloadManager];
          v45 = [(MSApplicationDelegate *)selfCopy _showsDownloadsTabForDownloadManager:_downloadManager];

          if (v45)
          {
            v16 = [[UITabBarItem alloc] initWithTabBarSystemItem:9 tag:0];
            if (v7)
            {
              v46 = v7->invoke(v7, @"DOWNLOADS");
              [v16 setTitle:v46];
            }

            [v14 setBarTintStyle:2];
            [v14 setAlwaysCreatesRootViewController:1];
            v30 = SUUIDownloadsViewController_ptr;
            goto LABEL_28;
          }
        }

        else
        {
          if ([tabIdentifier isEqualToString:@"itunesu"])
          {
            v16 = objc_alloc_init(UITabBarItem);
            v47 = [UIImage imageNamed:@"UITabBariTunesU"];
            _imageThatSuppressesAccessibilityHairlineThickening3 = [v47 _imageThatSuppressesAccessibilityHairlineThickening];
            [v16 setImage:_imageThatSuppressesAccessibilityHairlineThickening3];

            if (v7)
            {
              v49 = v7->invoke;
              v50 = v7;
              v51 = @"ITUNES_U";
              goto LABEL_63;
            }

            goto LABEL_64;
          }

          if ([tabIdentifier isEqualToString:@"podcast"])
          {
            v16 = objc_alloc_init(UITabBarItem);
            v52 = [UIImage imageNamed:@"UITabBarPodcasts"];
            _imageThatSuppressesAccessibilityHairlineThickening4 = [v52 _imageThatSuppressesAccessibilityHairlineThickening];
            [v16 setImage:_imageThatSuppressesAccessibilityHairlineThickening4];

            if (v7)
            {
              v49 = v7->invoke;
              v50 = v7;
              v51 = @"PODCASTS";
LABEL_63:
              v54 = v49(v50, v51);
              [v16 setTitle:v54];
            }

LABEL_64:
            [v14 setBarTintStyle:2];
            v30 = SUStorePageViewController_ptr;
            v9 = v62;
            goto LABEL_28;
          }
        }

LABEL_29:

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v55 = [v9 countByEnumeratingWithState:&v65 objects:v71 count:16];
      v11 = v55;
    }

    while (v55);
  }

  v56 = +[NSUserDefaults standardUserDefaults];
  v57 = [v56 objectForKey:@"MSApplicationDelegateTabBarOrdering"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v63[0] = _NSConcreteStackBlock;
    v63[1] = 3221225472;
    v63[2] = sub_100005D30;
    v63[3] = &unk_1000106E0;
    v64 = v57;
    [v5 sortUsingComparator:v63];
  }

  return v5;
}

- (void)_showExternalURL:(id)l
{
  lCopy = l;
  if (+[MSOnboardingUtil shouldShowOnboarding])
  {
    objc_initWeak(&location, self);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100005EB0;
    v7[3] = &unk_1000105B8;
    objc_copyWeak(&v9, &location);
    v8 = lCopy;
    v5 = objc_retainBlock(v7);
    showURLBlock = self->_showURLBlock;
    self->_showURLBlock = v5;

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  else
  {
    [(SUUIApplicationController *)self->_applicationController showExternalURL:lCopy];
  }
}

- (void)presentOnboardingIfNeeded
{
  if (self->_didDisplayFirstPage)
  {
    objc_initWeak(&location, self);
    clientContext = [(SUUIApplicationController *)self->_applicationController clientContext];
    v8[0] = SUUIConfigurationKeyTabs;
    v8[1] = SUUIConfigurationKeyStopPages;
    v4 = [NSArray arrayWithObjects:v8 count:2];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100006068;
    v5[3] = &unk_100010730;
    objc_copyWeak(&v6, &location);
    [clientContext loadValueForConfigurationKeys:v4 completionBlock:v5];

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

- (BOOL)_showsDownloadsTabForDownloadManager:(id)manager
{
  managerCopy = manager;
  v4 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v4 userInterfaceIdiom];

  if (userInterfaceIdiom)
  {
    downloads = [managerCopy downloads];
    v7 = [downloads count] != 0;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (int64_t)_tabBarStyleWithWidth:(double)width
{
  clientContext = [(SUUIApplicationController *)self->_applicationController clientContext];
  v5 = SUUIUserInterfaceIdiom();

  return width >= 768.0 && v5 == 1;
}

@end