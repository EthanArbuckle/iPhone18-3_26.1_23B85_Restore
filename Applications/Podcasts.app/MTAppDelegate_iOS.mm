@interface MTAppDelegate_iOS
- (BOOL)application:(id)application continueUserActivity:(id)activity restorationHandler:(id)handler;
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (BOOL)application:(id)application openURL:(id)l options:(id)options;
- (BOOL)application:(id)application runTest:(id)test options:(id)options;
- (BOOL)application:(id)application willFinishLaunchingWithOptions:(id)options;
- (BOOL)canOpenURL:(id)l;
- (UIViewController)rootViewController;
- (id)_platformContentController;
- (id)application:(id)application handlerForIntent:(id)intent;
- (id)createWindowWithScene:(id)scene;
- (unint64_t)application:(id)application supportedInterfaceOrientationsForWindow:(id)window;
- (void)_prewarmSingletons;
- (void)application:(id)application handleEventsForBackgroundURLSession:(id)session completionHandler:(id)handler;
- (void)application:(id)application handleStateRestorationWith:(id)with;
- (void)application:(id)application performActionForShortcutItem:(id)item completionHandler:(id)handler;
- (void)applicationDidBecomeActive:(id)active;
- (void)applicationDidEnterBackground:(id)background;
- (void)applicationWillEnterForeground:(id)foreground;
- (void)applicationWillResignActive:(id)active;
- (void)applicationWillTerminate:(id)terminate;
- (void)openURL:(id)l;
- (void)performActionForShortcutItem:(id)item completionHandler:(id)handler;
- (void)setupAfterBecomingActive;
- (void)setupAfterBecomingFrontmost;
- (void)setupAfterResigningFrontmost;
- (void)startLibraryUpdate;
- (void)switchToLibraryIfNowHasContent;
- (void)willConnectScene;
- (void)willSwitchUser;
@end

@implementation MTAppDelegate_iOS

- (void)_prewarmSingletons
{
  v2 = dispatch_get_global_queue(2, 0);
  dispatch_async(v2, &stru_1004DD3A0);
}

- (void)willConnectScene
{
  internalAppDelegate = [(MTAppDelegate_iOS *)self internalAppDelegate];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    internalAppDelegate2 = [(MTAppDelegate_iOS *)self internalAppDelegate];
    [internalAppDelegate2 willConnectScene];
    v6 = +[_TtC8Podcasts17AccessAppDelegate shared];
    v7 = [_TtC8Podcasts21PlatformAppController appControllerWithDelegate:v6];
    [(MTAppDelegate_Shared *)self setAppController:v7];

    _platformContentController = [(MTAppDelegate_iOS *)self _platformContentController];
    appController = [(MTAppDelegate_Shared *)self appController];
    [_platformContentController setMigrationPresenter:appController];

    window = [internalAppDelegate2 window];
    rootViewController = [window rootViewController];
    [(MTAppDelegate_Shared *)self setMainWindowRootViewController:rootViewController];

    rootViewController2 = [(MTAppDelegate_iOS *)self rootViewController];
    [rootViewController2 becomeFirstResponder];

    v13 = _MTLogCategoryLifecycle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Will kick off downloads restoration, if needed.", v15, 2u);
    }

    libraryDataProvider = [(MTAppDelegate_iOS *)self libraryDataProvider];
    [libraryDataProvider restorePreviouslyDownloadedEpisodes];
  }
}

- (id)_platformContentController
{
  platformContentController = self->_platformContentController;
  if (!platformContentController)
  {
    v4 = objc_alloc_init(_TtC8Podcasts25PlatformContentController);
    v5 = self->_platformContentController;
    self->_platformContentController = v4;

    platformContentController = self->_platformContentController;
  }

  return platformContentController;
}

- (UIViewController)rootViewController
{
  internalAppDelegate = [(MTAppDelegate_iOS *)self internalAppDelegate];
  window = [internalAppDelegate window];
  rootViewController = [window rootViewController];

  if (!rootViewController)
  {
    rootViewController = objc_opt_new();
  }

  return rootViewController;
}

- (BOOL)application:(id)application runTest:(id)test options:(id)options
{
  applicationCopy = application;
  testCopy = test;
  optionsCopy = options;
  internalAppDelegate = [(MTAppDelegate_iOS *)self internalAppDelegate];

  if (internalAppDelegate)
  {
    internalAppDelegate2 = [(MTAppDelegate_iOS *)self internalAppDelegate];
    v13 = [internalAppDelegate2 application:applicationCopy runTest:testCopy options:optionsCopy];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)application:(id)application willFinishLaunchingWithOptions:(id)options
{
  optionsCopy = options;
  applicationCopy = application;
  [(MTAppDelegate_iOS *)self _prewarmSingletons];
  v8 = _MTLogCategoryLifecycle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = +[MTReachability sharedInstance];
    *buf = 138543618;
    v19 = optionsCopy;
    v20 = 1024;
    isReachable = [v9 isReachable];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received willFinishLaunchingWithOptions: %{public}@, isNetworkReachable: %hhd", buf, 0x12u);
  }

  v10 = +[_TtC8Podcasts17AccessAppDelegate shared];

  if (!v10)
  {
    v11 = objc_alloc_init(_TtC8Podcasts11AppDelegate);
    [_TtC8Podcasts17AccessAppDelegate setShared:v11];
  }

  v12 = +[_TtC8Podcasts17AccessAppDelegate shared];
  internalAppDelegate = self->_internalAppDelegate;
  self->_internalAppDelegate = v12;

  v17.receiver = self;
  v17.super_class = MTAppDelegate_iOS;
  [(MTAppDelegate_Shared *)&v17 application:applicationCopy willFinishLaunchingWithOptions:optionsCopy];
  v14 = [self->_internalAppDelegate application:applicationCopy willFinishLaunchingWithOptions:optionsCopy];

  libraryDataProvider = [self->_internalAppDelegate libraryDataProvider];
  [(MTAppDelegate_iOS *)self setLibraryDataProvider:libraryDataProvider];

  return v14;
}

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  applicationCopy = application;
  optionsCopy = options;
  v8 = _MTLogCategoryLifecycle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = +[MTReachability sharedInstance];
    *buf = 138543618;
    v19 = optionsCopy;
    v20 = 1024;
    isReachable = [v9 isReachable];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received didFinishLaunchingWithOptions: %{public}@, isNetworkReachable: %hhd", buf, 0x12u);
  }

  v17.receiver = self;
  v17.super_class = MTAppDelegate_iOS;
  [(MTAppDelegate_Shared *)&v17 application:applicationCopy didFinishLaunchingWithOptions:optionsCopy];
  v10 = +[PFRestrictionsController shared];
  [v10 presentLaunchAlertIfNeeded];

  v11 = +[UMUserManager sharedManager];
  isMultiUser = [v11 isMultiUser];

  if (isMultiUser)
  {
    v13 = +[UMUserManager sharedManager];
    [v13 registerUserSwitchStakeHolder:self];
  }

  v14 = [self->_internalAppDelegate application:applicationCopy didFinishLaunchingWithOptions:optionsCopy];
  v15 = [optionsCopy valueForKey:UIApplicationLaunchOptionsShortcutItemKey];
  if (v15)
  {
    [(MTAppDelegate_iOS *)self performActionForShortcutItem:v15 completionHandler:0];
    v14 = 0;
  }

  return v14;
}

- (void)application:(id)application handleEventsForBackgroundURLSession:(id)session completionHandler:(id)handler
{
  applicationCopy = application;
  sessionCopy = session;
  handlerCopy = handler;
  v11 = _MTLogCategoryLifecycle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v16 = sessionCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received handleEventsForBackgroundURLSession, identifier %{public}@", buf, 0xCu);
  }

  libraryDataProvider = [(MTAppDelegate_iOS *)self libraryDataProvider];
  v13 = [libraryDataProvider handleEventsForBackgroundURLSessionWithIdentifier:sessionCopy handler:handlerCopy];

  if ((v13 & 1) == 0)
  {
    v14.receiver = self;
    v14.super_class = MTAppDelegate_iOS;
    [(MTAppDelegate_Shared *)&v14 application:applicationCopy handleEventsForBackgroundURLSession:sessionCopy completionHandler:handlerCopy];
  }
}

- (void)applicationDidBecomeActive:(id)active
{
  activeCopy = active;
  v5 = _MTLogCategoryLifecycle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = +[MTReachability sharedInstance];
    *buf = 67109120;
    isReachable = [v6 isReachable];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received applicationDidBecomeActive, isNetworkReachable: %hhd", buf, 8u);
  }

  v14.receiver = self;
  v14.super_class = MTAppDelegate_iOS;
  [(MTAppDelegate_Shared *)&v14 applicationDidBecomeActive:activeCopy];
  _platformContentController = [(MTAppDelegate_iOS *)self _platformContentController];
  if ([(MTAppDelegate_iOS *)self optionDown])
  {
    v8 = +[MTWelcomeUtil shouldShowWelcome]^ 1;
  }

  else
  {
    v8 = 0;
  }

  if (([_platformContentController isMigrationPossible] & 1) != 0 || v8)
  {
    v10 = +[MTDB sharedInstance];
    mainQueueContext = [v10 mainQueueContext];
    v9 = [mainQueueContext countOfPodcasts] == 0;
  }

  else
  {
    v9 = 0;
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100128FD4;
  v12[3] = &unk_1004D8748;
  v13 = v9;
  v12[4] = self;
  [_platformContentController performMigrationIfNecessaryWithOptionKeyDown:v8 :v12];
  [self->_internalAppDelegate applicationDidBecomeActive:activeCopy];
}

- (void)applicationWillTerminate:(id)terminate
{
  terminateCopy = terminate;
  v5 = _MTLogCategoryLifecycle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = +[MTReachability sharedInstance];
    *buf = 67109120;
    isReachable = [v6 isReachable];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received applicationWillTerminate, isNetworkReachable: %hhd", buf, 8u);
  }

  [self->_internalAppDelegate applicationWillTerminate:terminateCopy];
  v7.receiver = self;
  v7.super_class = MTAppDelegate_iOS;
  [(MTAppDelegate_Shared *)&v7 applicationWillTerminate:terminateCopy];
}

- (void)switchToLibraryIfNowHasContent
{
  v3 = +[MTDB sharedInstance];
  mainQueueContext = [v3 mainQueueContext];

  if ([mainQueueContext countOfPodcasts])
  {
    appController = [(MTAppDelegate_Shared *)self appController];
    [appController selectMyPodcastsTab];
  }
}

- (void)applicationWillResignActive:(id)active
{
  activeCopy = active;
  v5 = _MTLogCategoryLifecycle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = +[MTReachability sharedInstance];
    *buf = 67109120;
    isReachable = [v6 isReachable];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received applicationWillResignActive, isNetworkReachable: %hhd", buf, 8u);
  }

  v8.receiver = self;
  v8.super_class = MTAppDelegate_iOS;
  [(MTAppDelegate_Shared *)&v8 applicationWillResignActive:activeCopy];

  v7 = +[MTNotificationManager sharedInstance];
  [v7 processNotificationsWithReason:@"Application Resign"];
}

- (void)applicationDidEnterBackground:(id)background
{
  backgroundCopy = background;
  v5 = _MTLogCategoryLifecycle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = +[MTReachability sharedInstance];
    *buf = 67109120;
    isReachable = [v6 isReachable];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received applicationDidEnterBackground, isNetworkReachable: %hhd", buf, 8u);
  }

  v7 = +[MTMediaLibraryUpdater sharedInstance];
  [v7 stopObservingMediaLibrary];

  v8 = +[MTNMSDefaultsUpdater sharedInstance];
  [v8 stopObservingDownloadedPodcastsChanges];

  v9 = +[MTAppShortcutManager sharedInstance];
  [v9 updateShortcutItems];

  [self->_internalAppDelegate applicationDidEnterBackground:backgroundCopy];
  v10.receiver = self;
  v10.super_class = MTAppDelegate_iOS;
  [(MTAppDelegate_Shared *)&v10 applicationDidEnterBackground:backgroundCopy];
}

- (void)applicationWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  v5 = _MTLogCategoryLifecycle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = +[MTReachability sharedInstance];
    *buf = 67109120;
    isReachable = [v6 isReachable];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received applicationWillEnterForeground, isNetworkReachable: %hhd", buf, 8u);
  }

  v7.receiver = self;
  v7.super_class = MTAppDelegate_iOS;
  [(MTAppDelegate_Shared *)&v7 applicationWillEnterForeground:foregroundCopy];
}

- (BOOL)application:(id)application openURL:(id)l options:(id)options
{
  applicationCopy = application;
  lCopy = l;
  optionsCopy = options;
  v11 = _MTLogCategoryLifecycle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    absoluteString = [lCopy absoluteString];
    *buf = 138412290;
    v18 = absoluteString;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received openURL: url: %@", buf, 0xCu);
  }

  internalAppDelegate = self->_internalAppDelegate;
  if (internalAppDelegate && [internalAppDelegate application:applicationCopy openURL:lCopy options:optionsCopy])
  {
    v14 = 1;
  }

  else
  {
    v16.receiver = self;
    v16.super_class = MTAppDelegate_iOS;
    v14 = [(MTAppDelegate_Shared *)&v16 application:applicationCopy openURL:lCopy options:optionsCopy];
  }

  return v14;
}

- (unint64_t)application:(id)application supportedInterfaceOrientationsForWindow:(id)window
{
  windowCopy = window;
  v5 = +[UIApplication sharedApplication];
  v6 = [v5 supportedInterfaceOrientationsForWindow:windowCopy];

  return v6;
}

- (void)setupAfterBecomingFrontmost
{
  v2 = +[_TtC8Podcasts21SyncControllerFactory resolvedSyncController];
  [v2 syncEverything];
}

- (void)setupAfterResigningFrontmost
{
  v2 = +[_TtC8Podcasts21SyncControllerFactory resolvedSyncController];
  [v2 syncEverything];
}

- (void)setupAfterBecomingActive
{
  v6.receiver = self;
  v6.super_class = MTAppDelegate_iOS;
  [(MTAppDelegate_Shared *)&v6 setupAfterBecomingActive];
  v3 = +[MTImageDownloader sharedInstance];
  [v3 cleanupTemporaryResourcesDirectoryIfNecessary];

  v4 = dispatch_time(0, 2000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100129918;
  block[3] = &unk_1004D8358;
  block[4] = self;
  dispatch_after(v4, &_dispatch_main_q, block);
}

- (void)willSwitchUser
{
  v2 = +[MTPlayerController defaultInstance];
  isPlayingLocally = [v2 isPlayingLocally];

  if (isPlayingLocally)
  {
    v4 = +[MTPlayerController defaultInstance];
    [v4 pauseLocalPlayerWithInitiator:2];
  }
}

- (id)createWindowWithScene:(id)scene
{
  sceneCopy = scene;
  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 registerDefaults:&off_100502528];

  v5 = [_TtC8Podcasts11AppDelegate createWindowWithScene:sceneCopy];

  return v5;
}

- (BOOL)canOpenURL:(id)l
{
  lCopy = l;
  rootViewController = [(MTAppDelegate_iOS *)self rootViewController];
  mt_topViewController = [rootViewController mt_topViewController];

  v7 = [[MTURLPresentationController alloc] initWithURL:lCopy];
  LOBYTE(lCopy) = [(MTURLPresentationController *)v7 canShowWithPresentingViewController:mt_topViewController];

  return lCopy;
}

- (void)openURL:(id)l
{
  lCopy = l;
  rootViewController = [(MTAppDelegate_iOS *)self rootViewController];
  mt_topViewController = [rootViewController mt_topViewController];

  v6 = [[MTURLPresentationController alloc] initWithURL:lCopy];
  [(MTURLPresentationController *)v6 showWithPresentingViewController:mt_topViewController];
}

- (void)application:(id)application handleStateRestorationWith:(id)with
{
  applicationCopy = application;
  withCopy = with;
  internalAppDelegate = [(MTAppDelegate_iOS *)self internalAppDelegate];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    internalAppDelegate2 = [(MTAppDelegate_iOS *)self internalAppDelegate];
    [internalAppDelegate2 application:applicationCopy openStateRestorationActivity:withCopy];
  }
}

- (void)startLibraryUpdate
{
  updateQueue = [(MTAppDelegate_Shared *)self updateQueue];
  [updateQueue cancelAllOperations];

  v4 = +[MTMediaLibraryUpdater sharedInstance];
  [v4 startObservingMediaLibrary];

  v5 = _MTLogCategoryMediaLibrary();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "library updater scheduled", buf, 2u);
  }

  updateQueue2 = [(MTAppDelegate_Shared *)self updateQueue];
  [updateQueue2 addOperationWithBlock:&stru_1004DD3C0];

  updateQueue3 = [(MTAppDelegate_Shared *)self updateQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100129E8C;
  v8[3] = &unk_1004D8358;
  v8[4] = self;
  [updateQueue3 addOperationWithBlock:v8];
}

- (void)application:(id)application performActionForShortcutItem:(id)item completionHandler:(id)handler
{
  handlerCopy = handler;
  itemCopy = item;
  v9 = _MTLogCategoryLifecycle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received performActionForShortcutItem", v10, 2u);
  }

  [(MTAppDelegate_iOS *)self performActionForShortcutItem:itemCopy completionHandler:handlerCopy];
}

- (void)performActionForShortcutItem:(id)item completionHandler:(id)handler
{
  handlerCopy = handler;
  itemCopy = item;
  v7 = +[MTAppShortcutManager sharedInstance];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10012A03C;
  v9[3] = &unk_1004D8838;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [v7 performActionForShortcutItem:itemCopy completionHandler:v9];
}

- (id)application:(id)application handlerForIntent:(id)intent
{
  intentCopy = intent;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = objc_opt_new();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)application:(id)application continueUserActivity:(id)activity restorationHandler:(id)handler
{
  applicationCopy = application;
  activityCopy = activity;
  handlerCopy = handler;
  v13.receiver = self;
  v13.super_class = MTAppDelegate_iOS;
  if ([(MTAppDelegate_Shared *)&v13 application:applicationCopy continueUserActivity:activityCopy restorationHandler:handlerCopy])
  {
    v11 = [self->_internalAppDelegate application:applicationCopy continueUserActivity:activityCopy restorationHandler:handlerCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end