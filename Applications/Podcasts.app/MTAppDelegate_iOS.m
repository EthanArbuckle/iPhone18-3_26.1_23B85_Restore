@interface MTAppDelegate_iOS
- (BOOL)application:(id)a3 continueUserActivity:(id)a4 restorationHandler:(id)a5;
- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4;
- (BOOL)application:(id)a3 openURL:(id)a4 options:(id)a5;
- (BOOL)application:(id)a3 runTest:(id)a4 options:(id)a5;
- (BOOL)application:(id)a3 willFinishLaunchingWithOptions:(id)a4;
- (BOOL)canOpenURL:(id)a3;
- (UIViewController)rootViewController;
- (id)_platformContentController;
- (id)application:(id)a3 handlerForIntent:(id)a4;
- (id)createWindowWithScene:(id)a3;
- (unint64_t)application:(id)a3 supportedInterfaceOrientationsForWindow:(id)a4;
- (void)_prewarmSingletons;
- (void)application:(id)a3 handleEventsForBackgroundURLSession:(id)a4 completionHandler:(id)a5;
- (void)application:(id)a3 handleStateRestorationWith:(id)a4;
- (void)application:(id)a3 performActionForShortcutItem:(id)a4 completionHandler:(id)a5;
- (void)applicationDidBecomeActive:(id)a3;
- (void)applicationDidEnterBackground:(id)a3;
- (void)applicationWillEnterForeground:(id)a3;
- (void)applicationWillResignActive:(id)a3;
- (void)applicationWillTerminate:(id)a3;
- (void)openURL:(id)a3;
- (void)performActionForShortcutItem:(id)a3 completionHandler:(id)a4;
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
  v3 = [(MTAppDelegate_iOS *)self internalAppDelegate];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(MTAppDelegate_iOS *)self internalAppDelegate];
    [v5 willConnectScene];
    v6 = +[_TtC8Podcasts17AccessAppDelegate shared];
    v7 = [_TtC8Podcasts21PlatformAppController appControllerWithDelegate:v6];
    [(MTAppDelegate_Shared *)self setAppController:v7];

    v8 = [(MTAppDelegate_iOS *)self _platformContentController];
    v9 = [(MTAppDelegate_Shared *)self appController];
    [v8 setMigrationPresenter:v9];

    v10 = [v5 window];
    v11 = [v10 rootViewController];
    [(MTAppDelegate_Shared *)self setMainWindowRootViewController:v11];

    v12 = [(MTAppDelegate_iOS *)self rootViewController];
    [v12 becomeFirstResponder];

    v13 = _MTLogCategoryLifecycle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Will kick off downloads restoration, if needed.", v15, 2u);
    }

    v14 = [(MTAppDelegate_iOS *)self libraryDataProvider];
    [v14 restorePreviouslyDownloadedEpisodes];
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
  v2 = [(MTAppDelegate_iOS *)self internalAppDelegate];
  v3 = [v2 window];
  v4 = [v3 rootViewController];

  if (!v4)
  {
    v4 = objc_opt_new();
  }

  return v4;
}

- (BOOL)application:(id)a3 runTest:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MTAppDelegate_iOS *)self internalAppDelegate];

  if (v11)
  {
    v12 = [(MTAppDelegate_iOS *)self internalAppDelegate];
    v13 = [v12 application:v8 runTest:v9 options:v10];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)application:(id)a3 willFinishLaunchingWithOptions:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(MTAppDelegate_iOS *)self _prewarmSingletons];
  v8 = _MTLogCategoryLifecycle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = +[MTReachability sharedInstance];
    *buf = 138543618;
    v19 = v6;
    v20 = 1024;
    v21 = [v9 isReachable];
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
  [(MTAppDelegate_Shared *)&v17 application:v7 willFinishLaunchingWithOptions:v6];
  v14 = [self->_internalAppDelegate application:v7 willFinishLaunchingWithOptions:v6];

  v15 = [self->_internalAppDelegate libraryDataProvider];
  [(MTAppDelegate_iOS *)self setLibraryDataProvider:v15];

  return v14;
}

- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _MTLogCategoryLifecycle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = +[MTReachability sharedInstance];
    *buf = 138543618;
    v19 = v7;
    v20 = 1024;
    v21 = [v9 isReachable];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received didFinishLaunchingWithOptions: %{public}@, isNetworkReachable: %hhd", buf, 0x12u);
  }

  v17.receiver = self;
  v17.super_class = MTAppDelegate_iOS;
  [(MTAppDelegate_Shared *)&v17 application:v6 didFinishLaunchingWithOptions:v7];
  v10 = +[PFRestrictionsController shared];
  [v10 presentLaunchAlertIfNeeded];

  v11 = +[UMUserManager sharedManager];
  v12 = [v11 isMultiUser];

  if (v12)
  {
    v13 = +[UMUserManager sharedManager];
    [v13 registerUserSwitchStakeHolder:self];
  }

  v14 = [self->_internalAppDelegate application:v6 didFinishLaunchingWithOptions:v7];
  v15 = [v7 valueForKey:UIApplicationLaunchOptionsShortcutItemKey];
  if (v15)
  {
    [(MTAppDelegate_iOS *)self performActionForShortcutItem:v15 completionHandler:0];
    v14 = 0;
  }

  return v14;
}

- (void)application:(id)a3 handleEventsForBackgroundURLSession:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _MTLogCategoryLifecycle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received handleEventsForBackgroundURLSession, identifier %{public}@", buf, 0xCu);
  }

  v12 = [(MTAppDelegate_iOS *)self libraryDataProvider];
  v13 = [v12 handleEventsForBackgroundURLSessionWithIdentifier:v9 handler:v10];

  if ((v13 & 1) == 0)
  {
    v14.receiver = self;
    v14.super_class = MTAppDelegate_iOS;
    [(MTAppDelegate_Shared *)&v14 application:v8 handleEventsForBackgroundURLSession:v9 completionHandler:v10];
  }
}

- (void)applicationDidBecomeActive:(id)a3
{
  v4 = a3;
  v5 = _MTLogCategoryLifecycle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = +[MTReachability sharedInstance];
    *buf = 67109120;
    v16 = [v6 isReachable];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received applicationDidBecomeActive, isNetworkReachable: %hhd", buf, 8u);
  }

  v14.receiver = self;
  v14.super_class = MTAppDelegate_iOS;
  [(MTAppDelegate_Shared *)&v14 applicationDidBecomeActive:v4];
  v7 = [(MTAppDelegate_iOS *)self _platformContentController];
  if ([(MTAppDelegate_iOS *)self optionDown])
  {
    v8 = +[MTWelcomeUtil shouldShowWelcome]^ 1;
  }

  else
  {
    v8 = 0;
  }

  if (([v7 isMigrationPossible] & 1) != 0 || v8)
  {
    v10 = +[MTDB sharedInstance];
    v11 = [v10 mainQueueContext];
    v9 = [v11 countOfPodcasts] == 0;
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
  [v7 performMigrationIfNecessaryWithOptionKeyDown:v8 :v12];
  [self->_internalAppDelegate applicationDidBecomeActive:v4];
}

- (void)applicationWillTerminate:(id)a3
{
  v4 = a3;
  v5 = _MTLogCategoryLifecycle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = +[MTReachability sharedInstance];
    *buf = 67109120;
    v9 = [v6 isReachable];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received applicationWillTerminate, isNetworkReachable: %hhd", buf, 8u);
  }

  [self->_internalAppDelegate applicationWillTerminate:v4];
  v7.receiver = self;
  v7.super_class = MTAppDelegate_iOS;
  [(MTAppDelegate_Shared *)&v7 applicationWillTerminate:v4];
}

- (void)switchToLibraryIfNowHasContent
{
  v3 = +[MTDB sharedInstance];
  v5 = [v3 mainQueueContext];

  if ([v5 countOfPodcasts])
  {
    v4 = [(MTAppDelegate_Shared *)self appController];
    [v4 selectMyPodcastsTab];
  }
}

- (void)applicationWillResignActive:(id)a3
{
  v4 = a3;
  v5 = _MTLogCategoryLifecycle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = +[MTReachability sharedInstance];
    *buf = 67109120;
    v10 = [v6 isReachable];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received applicationWillResignActive, isNetworkReachable: %hhd", buf, 8u);
  }

  v8.receiver = self;
  v8.super_class = MTAppDelegate_iOS;
  [(MTAppDelegate_Shared *)&v8 applicationWillResignActive:v4];

  v7 = +[MTNotificationManager sharedInstance];
  [v7 processNotificationsWithReason:@"Application Resign"];
}

- (void)applicationDidEnterBackground:(id)a3
{
  v4 = a3;
  v5 = _MTLogCategoryLifecycle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = +[MTReachability sharedInstance];
    *buf = 67109120;
    v12 = [v6 isReachable];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received applicationDidEnterBackground, isNetworkReachable: %hhd", buf, 8u);
  }

  v7 = +[MTMediaLibraryUpdater sharedInstance];
  [v7 stopObservingMediaLibrary];

  v8 = +[MTNMSDefaultsUpdater sharedInstance];
  [v8 stopObservingDownloadedPodcastsChanges];

  v9 = +[MTAppShortcutManager sharedInstance];
  [v9 updateShortcutItems];

  [self->_internalAppDelegate applicationDidEnterBackground:v4];
  v10.receiver = self;
  v10.super_class = MTAppDelegate_iOS;
  [(MTAppDelegate_Shared *)&v10 applicationDidEnterBackground:v4];
}

- (void)applicationWillEnterForeground:(id)a3
{
  v4 = a3;
  v5 = _MTLogCategoryLifecycle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = +[MTReachability sharedInstance];
    *buf = 67109120;
    v9 = [v6 isReachable];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received applicationWillEnterForeground, isNetworkReachable: %hhd", buf, 8u);
  }

  v7.receiver = self;
  v7.super_class = MTAppDelegate_iOS;
  [(MTAppDelegate_Shared *)&v7 applicationWillEnterForeground:v4];
}

- (BOOL)application:(id)a3 openURL:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _MTLogCategoryLifecycle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v9 absoluteString];
    *buf = 138412290;
    v18 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received openURL: url: %@", buf, 0xCu);
  }

  internalAppDelegate = self->_internalAppDelegate;
  if (internalAppDelegate && [internalAppDelegate application:v8 openURL:v9 options:v10])
  {
    v14 = 1;
  }

  else
  {
    v16.receiver = self;
    v16.super_class = MTAppDelegate_iOS;
    v14 = [(MTAppDelegate_Shared *)&v16 application:v8 openURL:v9 options:v10];
  }

  return v14;
}

- (unint64_t)application:(id)a3 supportedInterfaceOrientationsForWindow:(id)a4
{
  v4 = a4;
  v5 = +[UIApplication sharedApplication];
  v6 = [v5 supportedInterfaceOrientationsForWindow:v4];

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
  v3 = [v2 isPlayingLocally];

  if (v3)
  {
    v4 = +[MTPlayerController defaultInstance];
    [v4 pauseLocalPlayerWithInitiator:2];
  }
}

- (id)createWindowWithScene:(id)a3
{
  v3 = a3;
  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 registerDefaults:&off_100502528];

  v5 = [_TtC8Podcasts11AppDelegate createWindowWithScene:v3];

  return v5;
}

- (BOOL)canOpenURL:(id)a3
{
  v4 = a3;
  v5 = [(MTAppDelegate_iOS *)self rootViewController];
  v6 = [v5 mt_topViewController];

  v7 = [[MTURLPresentationController alloc] initWithURL:v4];
  LOBYTE(v4) = [(MTURLPresentationController *)v7 canShowWithPresentingViewController:v6];

  return v4;
}

- (void)openURL:(id)a3
{
  v4 = a3;
  v5 = [(MTAppDelegate_iOS *)self rootViewController];
  v7 = [v5 mt_topViewController];

  v6 = [[MTURLPresentationController alloc] initWithURL:v4];
  [(MTURLPresentationController *)v6 showWithPresentingViewController:v7];
}

- (void)application:(id)a3 handleStateRestorationWith:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(MTAppDelegate_iOS *)self internalAppDelegate];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = [(MTAppDelegate_iOS *)self internalAppDelegate];
    [v9 application:v10 openStateRestorationActivity:v6];
  }
}

- (void)startLibraryUpdate
{
  v3 = [(MTAppDelegate_Shared *)self updateQueue];
  [v3 cancelAllOperations];

  v4 = +[MTMediaLibraryUpdater sharedInstance];
  [v4 startObservingMediaLibrary];

  v5 = _MTLogCategoryMediaLibrary();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "library updater scheduled", buf, 2u);
  }

  v6 = [(MTAppDelegate_Shared *)self updateQueue];
  [v6 addOperationWithBlock:&stru_1004DD3C0];

  v7 = [(MTAppDelegate_Shared *)self updateQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100129E8C;
  v8[3] = &unk_1004D8358;
  v8[4] = self;
  [v7 addOperationWithBlock:v8];
}

- (void)application:(id)a3 performActionForShortcutItem:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = _MTLogCategoryLifecycle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received performActionForShortcutItem", v10, 2u);
  }

  [(MTAppDelegate_iOS *)self performActionForShortcutItem:v8 completionHandler:v7];
}

- (void)performActionForShortcutItem:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[MTAppShortcutManager sharedInstance];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10012A03C;
  v9[3] = &unk_1004D8838;
  v10 = v5;
  v8 = v5;
  [v7 performActionForShortcutItem:v6 completionHandler:v9];
}

- (id)application:(id)a3 handlerForIntent:(id)a4
{
  v4 = a4;
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

- (BOOL)application:(id)a3 continueUserActivity:(id)a4 restorationHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v13.receiver = self;
  v13.super_class = MTAppDelegate_iOS;
  if ([(MTAppDelegate_Shared *)&v13 application:v8 continueUserActivity:v9 restorationHandler:v10])
  {
    v11 = [self->_internalAppDelegate application:v8 continueUserActivity:v9 restorationHandler:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end