@interface MapsSceneDelegate
- (AppCoordinator)appCoordinator;
- (EntryPointsCoordinator)entryPointsCoordinator;
- (IOSBasedChromeViewController)chromeViewController;
- (MapsActionController)mapsActionController;
- (MapsActivityController)mapsActivityController;
- (PPTTestCoordinatorProtocol)testCoordinator;
- (RAPPresenter)rapPresenter;
- (UIViewController)topMostPresentedViewController;
- (id)appSessionController;
- (id)mapsActivityWithFidelity:(unint64_t)a3;
- (id)searchPinsManager;
- (id)stateRestorationActivityForScene:(id)a3;
- (void)_loadMapsForWindowScene:(id)a3 withCompletion:(id)a4;
- (void)_locationManagerAuthorizationChanged:(id)a3;
- (void)_sendMapsSuggestionsSignalsUsingBaseMode:(BOOL)a3 secondsSinceBackgrounding:(double)a4 routePlanningPresented:(BOOL)a5;
- (void)archiveMapsActivity;
- (void)dealloc;
- (void)geoDaemonDisconnectNotificationHandler:(id)a3;
- (void)presentFromContainerViewController:(id)a3 animated:(BOOL)a4;
- (void)presentMapsDebugController;
- (void)presentMapsDebugControllerIfEnabled;
- (void)presentViewController:(id)a3 animated:(BOOL)a4;
- (void)pushDaemonProxyReceivedNotificationData:(id)a3 forType:(id)a4 recordIdentifier:(id)a5;
- (void)refreshTitle;
- (void)refreshTitleAfterShortDelay;
- (void)scene:(id)a3 continueUserActivity:(id)a4;
- (void)scene:(id)a3 didFailToContinueUserActivityWithType:(id)a4 error:(id)a5;
- (void)scene:(id)a3 openURLContexts:(id)a4;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)scene:(id)a3 willContinueUserActivityWithType:(id)a4;
- (void)sceneDidBecomeActive:(id)a3;
- (void)sceneDidDisconnect:(id)a3;
- (void)sceneDidEnterBackground:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
- (void)sceneWillResignActive:(id)a3;
- (void)setMapsActivity:(id)a3 assumedSourceFidelity:(unint64_t)a4 source:(int64_t)a5;
- (void)setNeedsUserActivityUpdate;
- (void)updateDirectionsListVisibility:(BOOL)a3;
- (void)userActivityWillSave:(id)a3;
- (void)vkFaultNotificationHandler:(id)a3;
- (void)windowScene:(id)a3 performActionForShortcutItem:(id)a4 completionHandler:(id)a5;
@end

@implementation MapsSceneDelegate

- (MapsActionController)mapsActionController
{
  mapsActionController = self->_mapsActionController;
  if (!mapsActionController)
  {
    v4 = objc_alloc_init(MapsActionController);
    v5 = self->_mapsActionController;
    self->_mapsActionController = v4;

    v6 = [(MapsSceneDelegate *)self appCoordinator];
    [(MapsActionController *)self->_mapsActionController setAppCoordinator:v6];

    mapsActionController = self->_mapsActionController;
  }

  return mapsActionController;
}

- (id)appSessionController
{
  v2 = +[UIApplication sharedMapsDelegate];
  v3 = [v2 appSessionController];

  return v3;
}

- (EntryPointsCoordinator)entryPointsCoordinator
{
  v3 = [(MapsSceneDelegate *)self mapsActionController];
  v4 = [(PlatformController *)self->_platformController entryPointsCoordinator];
  [v4 setDelegate:v3];

  platformController = self->_platformController;

  return [(PlatformController *)platformController entryPointsCoordinator];
}

- (AppCoordinator)appCoordinator
{
  appCoordinator = self->_appCoordinator;
  if (!appCoordinator)
  {
    v4 = [AppCoordinator alloc];
    v5 = [(MapsSceneDelegate *)self platformController];
    v6 = [(AppCoordinator *)v4 initWithPlatformController:v5];
    v7 = self->_appCoordinator;
    self->_appCoordinator = v6;

    [(AppCoordinator *)self->_appCoordinator setMapsSceneDelegate:self];
    v8 = [(MapsSceneDelegate *)self chromeViewController];
    [(AppCoordinator *)self->_appCoordinator setChromeViewController:v8];

    appCoordinator = self->_appCoordinator;
  }

  return appCoordinator;
}

- (IOSBasedChromeViewController)chromeViewController
{
  chromeViewController = self->_chromeViewController;
  if (!chromeViewController)
  {
    v4 = +[UIDevice currentDevice];
    v5 = [v4 userInterfaceIdiom];

    v6 = off_1015F62A8;
    if (v5 != 5)
    {
      v6 = off_1015F6260;
    }

    v7 = objc_alloc_init(*v6);
    v8 = self->_chromeViewController;
    self->_chromeViewController = v7;

    v9 = [(MapsSceneDelegate *)self mapsActionController];
    [(IOSBasedChromeViewController *)self->_chromeViewController setMapsActionController:v9];

    chromeViewController = self->_chromeViewController;
  }

  [(IOSBasedChromeViewController *)chromeViewController setAppCoordinator:self->_appCoordinator];
  v10 = self->_chromeViewController;

  return v10;
}

- (void)setNeedsUserActivityUpdate
{
  v2 = [(MapsSceneDelegate *)self mapsActivityController];
  [v2 setNeedsUserActivityUpdate];
}

- (MapsActivityController)mapsActivityController
{
  mapsActivityController = self->_mapsActivityController;
  if (!mapsActivityController)
  {
    v4 = objc_alloc_init(MapsActivityController);
    v5 = self->_mapsActivityController;
    self->_mapsActivityController = v4;

    [(MapsActivityController *)self->_mapsActivityController setDelegate:self];
    mapsActivityController = self->_mapsActivityController;
  }

  return mapsActivityController;
}

- (PPTTestCoordinatorProtocol)testCoordinator
{
  v3 = [(MapsSceneDelegate *)self appCoordinator];
  v4 = [v3 conformsToProtocol:&OBJC_PROTOCOL___PPTTestCoordinatorProtocol];

  if (v4)
  {
    v5 = [(MapsSceneDelegate *)self appCoordinator];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)refreshTitleAfterShortDelay
{
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"refreshTitle" object:0];

  [(MapsSceneDelegate *)self performSelector:"refreshTitle" withObject:0 afterDelay:1.0];
}

- (void)refreshTitle
{
  v3 = [(MapsSceneDelegate *)self appCoordinator];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100F53F38;
  v4[3] = &unk_10165EF00;
  v4[4] = self;
  [v3 getCurrentSceneTitleWithCompletion:v4];
}

- (void)presentFromContainerViewController:(id)a3 animated:(BOOL)a4
{
  v5 = a3;
  v6 = [(MapsSceneDelegate *)self appCoordinator];
  v7 = [v6 baseActionCoordinator];
  [v5 setContaineeDelegate:v7];

  v10 = [(MapsSceneDelegate *)self appCoordinator];
  v8 = [v10 baseActionCoordinator];
  v9 = [v8 containerViewController];
  [v9 presentController:v5 animated:1];
}

- (void)presentViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v6)
  {
    v11 = v6;
    v7 = [v6 presentingViewController];

    v6 = v11;
    if (!v7)
    {
      v8 = [(MapsSceneDelegate *)self topMostPresentedViewController];
      if ([v8 isViewLoaded])
      {
        v9 = [v8 view];
        v10 = [v9 window];

        if (v10)
        {
          [v11 setModalPresentationStyle:2];
          [v8 presentViewController:v11 animated:v4 completion:0];
        }
      }

      v6 = v11;
    }
  }
}

- (void)presentMapsDebugController
{
  if (!self->_mapsDebugController)
  {
    v3 = objc_alloc_init(MapsDebugController);
    mapsDebugController = self->_mapsDebugController;
    self->_mapsDebugController = v3;

    v5 = [(MapsSceneDelegate *)self chromeViewController];
    [(MapsDebugValuesViewController *)self->_mapsDebugController setDelegate:v5];
  }

  debugNavigationController = self->_debugNavigationController;
  if (!debugNavigationController)
  {
    v7 = [[UINavigationController alloc] initWithRootViewController:self->_mapsDebugController];
    v8 = self->_debugNavigationController;
    self->_debugNavigationController = v7;

    debugNavigationController = self->_debugNavigationController;
  }

  v9 = [(UINavigationController *)debugNavigationController presentingViewController];

  if (!v9)
  {
    v10 = self->_debugNavigationController;

    [(MapsSceneDelegate *)self presentViewController:v10 animated:1];
  }
}

- (void)presentMapsDebugControllerIfEnabled
{
  if (sub_10078A958())
  {

    [(MapsSceneDelegate *)self presentMapsDebugController];
  }
}

- (void)updateDirectionsListVisibility:(BOOL)a3
{
  v3 = a3;
  v4 = [(MapsSceneDelegate *)self appCoordinator];
  v5 = v4;
  if (v3)
  {
    [v4 showFullscreenDirectionsList];
  }

  else
  {
    [v4 hideFullscreenDirectionsList];
  }
}

- (void)pushDaemonProxyReceivedNotificationData:(id)a3 forType:(id)a4 recordIdentifier:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(MapsSceneDelegate *)self entryPointsCoordinator];
  [v11 openNotificationData:v10 forType:v9 recordIdentifier:v8];

  v12 = +[MSPMapsPushDaemonRemoteProxy sharedInstance];
  [v12 clearBulletinWithRecordID:v8];
}

- (void)vkFaultNotificationHandler:(id)a3
{
  v4 = a3;
  if (GEOConfigGetBOOL())
  {
    v5 = +[MKSystemController sharedInstance];
    v6 = [v5 isInternalInstall];

    if (v6)
    {
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_100F54460;
      v7[3] = &unk_101661A90;
      v8 = v4;
      v9 = self;
      dispatch_async(&_dispatch_main_q, v7);
    }
  }
}

- (void)geoDaemonDisconnectNotificationHandler:(id)a3
{
  if (GEOConfigGetBOOL())
  {
    v4 = +[MKSystemController sharedInstance];
    v5 = [v4 isInternalInstall];

    if (v5)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100F547F0;
      block[3] = &unk_101661B18;
      block[4] = self;
      dispatch_async(&_dispatch_main_q, block);
    }
  }
}

- (void)_sendMapsSuggestionsSignalsUsingBaseMode:(BOOL)a3 secondsSinceBackgrounding:(double)a4 routePlanningPresented:(BOOL)a5
{
  obj = self;
  objc_sync_enter(obj);
  if (qword_10195F7B0 != -1)
  {
    dispatch_once(&qword_10195F7B0, &stru_10165E1F0);
  }

  *&v6 = a4;
  [qword_10195F7C0 writeSignalValue:23 forType:v6];
  v7 = qword_10195F7B8;
  v8 = [qword_10195F7C0 copy];
  [v7 donateSignalPack:v8];

  objc_sync_exit(obj);
}

- (void)_locationManagerAuthorizationChanged:(id)a3
{
  v7 = +[MKLocationManager sharedLocationManager];
  if ([v7 isLocationServicesAuthorizationNeeded])
  {
    v4 = [(MapsSceneDelegate *)self entryPointsCoordinator];
    v5 = [v4 launchAlertsManager];

    [v5 enqueueAlert:0];
  }

  else
  {
    if (![v7 isLocationServicesDenied])
    {
      goto LABEL_6;
    }

    v5 = [(MapsSceneDelegate *)self chromeViewController];
    v6 = [v5 mapView];
    [v6 setUserTrackingMode:0];
  }

LABEL_6:
}

- (void)_loadMapsForWindowScene:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100005610();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v6 description];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "_loadMapsForWindowScene: %@", &buf, 0xCu);
  }

  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_100F55254;
  v44[3] = &unk_101661B18;
  v44[4] = self;
  v10 = [v6 statusBarManager];
  [v10 setDebugMenuHandler:v44];

  v11 = +[NSFileManager defaultManager];
  v12 = [v11 URLsForDirectory:13 inDomains:1];
  v13 = [v12 firstObject];
  [MKIconManager setDiskCacheURL:v13];

  v14 = +[GEOResourceManifestManager modernManager];
  v15 = [v14 activeTileGroup];

  v16 = +[MSPMapsPushDaemonRemoteProxy sharedInstance];
  [v16 addObserver:self];

  objc_initWeak(&location, self);
  v17 = +[MSPMapsPushDaemonRemoteProxy sharedInstance];
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_100F5525C;
  v41[3] = &unk_10165E180;
  objc_copyWeak(&v42, &location);
  [v17 fetchCurrentAnnouncement:v41];

  v18 = [[NSURLCache alloc] initWithMemoryCapacity:0 diskCapacity:0 diskPath:0];
  [NSURLCache setSharedURLCache:v18];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v46 = 0x3032000000;
  v47 = sub_100F5531C;
  v48 = sub_100F5532C;
  v49 = 0;
  v19 = +[GEOResourceManifestManager modernManager];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_100F55334;
  v40[3] = &unk_10165F5C8;
  v40[4] = &buf;
  [v19 addNetworkActivityHandler:v40];

  v20 = [(MapsSceneDelegate *)self chromeViewController];
  [(PlatformController *)self->_platformController setChromeViewController:v20];

  v21 = [[EventSourceWindow alloc] initWithWindowScene:v6];
  [(MapsSceneDelegate *)self setWindow:v21];

  v22 = [(MapsSceneDelegate *)self window];
  [v22 setAccessibilityIdentifier:@"Maps.Application"];

  v23 = [(MapsSceneDelegate *)self chromeViewController];
  v24 = [(MapsSceneDelegate *)self window];
  [v24 setRootViewController:v23];

  v25 = [(MapsSceneDelegate *)self window];
  LOBYTE(v24) = sub_10000FA08(v25) == 5;

  if ((v24 & 1) == 0)
  {
    v26 = +[UIColor _maps_keyColor];
    v27 = [(MapsSceneDelegate *)self window];
    [v27 setTintColor:v26];
  }

  v28 = +[UIColor clearColor];
  v29 = [(MapsSceneDelegate *)self window];
  [v29 setBackgroundColor:v28];

  v30 = [(MapsSceneDelegate *)self window];
  [v30 makeKeyAndVisible];

  if ([UIApp launchedToTest])
  {
    v31 = +[UIApplication sharedMapsDelegate];
    [v31 doPostLaunchTestSetup];
  }

  v32 = +[MapsPinsController sharedController];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_100F553B0;
  v38[3] = &unk_10165E1D0;
  objc_copyWeak(&v39, &location);
  [v32 getDroppedPinWithCompletion:v38];

  v33 = +[MKSystemController sharedInstance];
  v34 = [v33 isInternalInstall];

  if (v34)
  {
    v35 = +[NSNotificationCenter defaultCenter];
    [v35 addObserver:self selector:"geoDaemonDisconnectNotificationHandler:" name:GEODaemonCommunicationInterruptedNotification object:0];

    v36 = +[NSNotificationCenter defaultCenter];
    [v36 addObserver:self selector:"vkFaultNotificationHandler:" name:VKFaultNotification object:0];
  }

  [(MapsSceneDelegate *)self setNeedsUserActivityUpdate];
  v37 = [(MapsSceneDelegate *)self appCoordinator];
  [v37 startSearchModeWithCompletion:v7];

  objc_destroyWeak(&v39);
  _Block_object_dispose(&buf, 8);

  objc_destroyWeak(&v42);
  objc_destroyWeak(&location);
}

- (UIViewController)topMostPresentedViewController
{
  v2 = [(MapsSceneDelegate *)self window];
  v3 = [v2 rootViewController];

  v4 = [v3 presentedViewController];

  if (v4)
  {
    do
    {
      v5 = [v3 presentedViewController];

      v6 = [v5 presentedViewController];

      v3 = v5;
    }

    while (v6);
  }

  else
  {
    v5 = v3;
  }

  return v5;
}

- (RAPPresenter)rapPresenter
{
  rapPresenter = self->_rapPresenter;
  if (!rapPresenter)
  {
    v4 = [[RAPPresenter alloc] initWithSceneDelegate:self];
    v5 = self->_rapPresenter;
    self->_rapPresenter = v4;

    rapPresenter = self->_rapPresenter;
  }

  return rapPresenter;
}

- (id)searchPinsManager
{
  v2 = [(MapsSceneDelegate *)self chromeViewController];
  v3 = [v2 searchPinsManager];

  return v3;
}

- (void)windowScene:(id)a3 performActionForShortcutItem:(id)a4 completionHandler:(id)a5
{
  v6 = a4;
  v7 = [(MapsSceneDelegate *)self entryPointsCoordinator];
  [v7 openShortcutItem:v6];
}

- (void)scene:(id)a3 openURLContexts:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100005610();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v6 description];
    v20 = 138412546;
    v21 = v9;
    v22 = 2112;
    v23 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "-scene:openURLContexts: %@ contexts %@", &v20, 0x16u);
  }

  v10 = v6;
  v11 = +[MKLocationManager sharedLocationManager];
  [v11 resetAfterResumeIfNecessary];

  v12 = [v7 anyObject];
  v13 = [(MapsSceneDelegate *)self entryPointsCoordinator];
  v14 = [v12 URL];
  v15 = [v10 session];
  v16 = [v12 options];
  v17 = [v10 coordinateSpace];

  [v17 bounds];
  [v13 openURL:v14 session:v15 sceneOptions:v16 mkOptions:0 windowSize:{v18, v19}];
}

- (void)setMapsActivity:(id)a3 assumedSourceFidelity:(unint64_t)a4 source:(int64_t)a5
{
  v10 = a3;
  if ((+[UIApplication shouldMakeUIForDefaultPNG]& 1) == 0)
  {
    v8 = [(MapsSceneDelegate *)self appCoordinator];
    v9 = [v8 appStateManager];
    [v9 setMapsActivity:v10 assumedSourceFidelity:a4 source:a5];
  }
}

- (id)mapsActivityWithFidelity:(unint64_t)a3
{
  v4 = [(MapsSceneDelegate *)self appCoordinator];
  v5 = [v4 appStateManager];
  v6 = [v5 mapsActivityWithFidelity:a3];

  return v6;
}

- (void)userActivityWillSave:(id)a3
{
  v4 = a3;
  v5 = [(MapsSceneDelegate *)self mapsActivityController];
  [v5 userActivityWillSave:v4];
}

- (void)archiveMapsActivity
{
  v2 = [(MapsSceneDelegate *)self mapsActivityController];
  [v2 archiveMapsActivity];
}

- (void)scene:(id)a3 didFailToContinueUserActivityWithType:(id)a4 error:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(MapsSceneDelegate *)self entryPointsCoordinator];
  [v9 didFailToContinueUserActivityWithType:v8 error:v7];
}

- (void)scene:(id)a3 continueUserActivity:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(MapsSceneDelegate *)self entryPointsCoordinator];
  v8 = [v12 session];
  v9 = [v12 coordinateSpace];
  [v9 bounds];
  [v7 continueUserActivity:v6 session:v8 windowSize:{v10, v11}];
}

- (void)scene:(id)a3 willContinueUserActivityWithType:(id)a4
{
  v5 = a4;
  v6 = [(MapsSceneDelegate *)self entryPointsCoordinator];
  [v6 willContinueUserActivityWithType:v5];
}

- (id)stateRestorationActivityForScene:(id)a3
{
  v4 = a3;
  v5 = [v4 activationState];
  v6 = sub_100028730();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (v5 == -1)
  {
    if (v7)
    {
      v10 = [(MapsSceneDelegate *)self mapsActivity];
      v12 = 138478083;
      v13 = v10;
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "UIKit not archiving MapsActivity %{private}@ for Scene: %@", &v12, 0x16u);
    }

    v9 = 0;
  }

  else
  {
    if (v7)
    {
      v8 = [(MapsSceneDelegate *)self mapsActivity];
      v12 = 138477827;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "UIKit archiving MapsActivity: %{private}@", &v12, 0xCu);
    }

    v6 = [(MapsSceneDelegate *)self mapsActivityController];
    v9 = [v6 mapsUserActivityForStateRestoration];
  }

  return v9;
}

- (void)sceneDidEnterBackground:(id)a3
{
  v4 = a3;
  v5 = sub_100005610();
  if (os_signpost_enabled(v5))
  {
    LOWORD(v12) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SceneDidEnterBackground", "", &v12, 2u);
  }

  v6 = sub_100005610();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v4 description];
    v12 = 138412290;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[MapsSceneDelegate] -sceneDidEnterBackground: %@", &v12, 0xCu);
  }

  v8 = [(MapsSceneDelegate *)self entryPointsCoordinator];
  v9 = [v4 session];
  [v8 didEnterBackgroundWithSession:v9];

  [(MapsSceneDelegate *)self archiveMapsActivity];
  v10 = +[MapsLightLevelController sharedController];
  [v10 reloadForChangedLightLevelTrackers];

  v11 = sub_100005610();
  if (os_signpost_enabled(v11))
  {
    LOWORD(v12) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SceneDidEnterBackground", "", &v12, 2u);
  }
}

- (void)sceneWillEnterForeground:(id)a3
{
  v4 = a3;
  v5 = sub_100005610();
  if (os_signpost_enabled(v5))
  {
    LOWORD(v12) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SceneWillEnterForeground", "", &v12, 2u);
  }

  v6 = sub_100005610();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v4 description];
    v12 = 138412290;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[MapsSceneDelegate] -sceneWillEnterForeground: %@", &v12, 0xCu);
  }

  v8 = dispatch_get_global_queue(0, 0);
  dispatch_async(v8, &stru_10165E158);

  v9 = [(MapsSceneDelegate *)self entryPointsCoordinator];
  v10 = [v4 session];
  [v9 willEnterForegroundWithSession:v10];

  v11 = sub_100005610();
  if (os_signpost_enabled(v11))
  {
    LOWORD(v12) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SceneWillEnterForeground", "", &v12, 2u);
  }
}

- (void)sceneWillResignActive:(id)a3
{
  v4 = a3;
  v5 = sub_100005610();
  if (os_signpost_enabled(v5))
  {
    LOWORD(v15) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SceneWillResignActive", "", &v15, 2u);
  }

  v6 = sub_100005610();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v4 description];
    v15 = 138412290;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[MapsSceneDelegate] -sceneWillResignActive: %@", &v15, 0xCu);
  }

  v8 = [(MapsSceneDelegate *)self entryPointsCoordinator];
  v9 = [v4 session];
  [v8 willResignActiveWithSession:v9];

  v10 = +[UIApplication sharedApplication];
  if ([v10 isSuspendedUnderLock])
  {
    v11 = +[MNNavigationService sharedService];
    [v11 state];
    IsNavigating = MNNavigationServiceStateIsNavigating();

    if (!IsNavigating)
    {
      goto LABEL_9;
    }

    v10 = [(MapsSceneDelegate *)self chromeViewController];
    [v10 dismissAllModalViewsIfPresentAnimated:1 completion:0];
  }

LABEL_9:
  [(MapsSceneDelegate *)self refreshTitle];
  v13 = +[MKLocationManager sharedLocationManager];
  self->_isTemporaryPreciseLocationAuthorizationPromptShown = [v13 isTemporaryPreciseLocationAuthorizationPromptShown];

  if (!self->_isTemporaryPreciseLocationAuthorizationPromptShown)
  {
    dispatch_async(self->_analyticsQueue, &stru_10165E138);
  }

  v14 = sub_100005610();
  if (os_signpost_enabled(v14))
  {
    LOWORD(v15) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SceneWillResignActive", "", &v15, 2u);
  }
}

- (void)sceneDidBecomeActive:(id)a3
{
  v4 = a3;
  v5 = sub_100005610();
  if (os_signpost_enabled(v5))
  {
    LOWORD(v23) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SceneDidBecomeActive", "", &v23, 2u);
  }

  v6 = sub_100005610();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v4 description];
    v23 = 138412290;
    v24 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[MapsSceneDelegate] -sceneDidBecomeActive: %@", &v23, 0xCu);
  }

  v8 = [(MapsSceneDelegate *)self entryPointsCoordinator];
  v9 = [v4 session];
  [v8 didBecomeActiveWithSession:v9];

  v10 = +[MapsLightLevelController sharedController];
  [v10 reloadForChangedLightLevelTrackers];

  v11 = [(MapsSceneDelegate *)self chromeViewController];
  v12 = [v11 topContext];
  v13 = [(AppCoordinator *)self->_appCoordinator baseModeController];
  v14 = +[UIApplication sharedMapsDelegate];
  [v14 timeIntervalSinceLastBackgrounded];
  v16 = v15;
  v17 = [(MapsSceneDelegate *)self appCoordinator];
  v18 = [v17 baseActionCoordinator];
  -[MapsSceneDelegate _sendMapsSuggestionsSignalsUsingBaseMode:secondsSinceBackgrounding:routePlanningPresented:](self, "_sendMapsSuggestionsSignalsUsingBaseMode:secondsSinceBackgrounding:routePlanningPresented:", v12 == v13, [v18 isRoutePlanningPresented], v16);

  v19 = +[MKLocationManager sharedLocationManager];
  LOBYTE(v12) = [v19 isLocationServicesAuthorizationNeeded];

  if ((v12 & 1) == 0)
  {
    v20 = +[MKLocationManager sharedLocationManager];
    [v20 resetAfterResumeIfNecessary];
  }

  if (!self->_isTemporaryPreciseLocationAuthorizationPromptShown)
  {
    dispatch_async(self->_analyticsQueue, &stru_10165E118);
  }

  v21 = +[MKLocationManager sharedLocationManager];
  self->_isTemporaryPreciseLocationAuthorizationPromptShown = [v21 isTemporaryPreciseLocationAuthorizationPromptShown];

  v22 = sub_100005610();
  if (os_signpost_enabled(v22))
  {
    LOWORD(v23) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SceneDidBecomeActive", "", &v23, 2u);
  }
}

- (void)sceneDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = sub_100005610();
  if (os_signpost_enabled(v5))
  {
    LOWORD(v15) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SceneDidDisconnect", "", &v15, 2u);
  }

  v6 = sub_100005610();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v4 description];
    v15 = 138412290;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[MapsSceneDelegate] -sceneDidDisconnect: %@", &v15, 0xCu);
  }

  [(MapsSceneDelegate *)self archiveMapsActivity];
  v8 = [(MapsSceneDelegate *)self appSessionController];
  v9 = [(MapsSceneDelegate *)self platformController];
  [v8 removeiOSPlatformController:v9];

  [(MapsSceneDelegate *)self setPlatformController:0];
  v10 = +[MNNavigationService sharedService];
  [v10 closeForClient:self];

  v11 = +[NSNotificationCenter defaultCenter];
  [v11 removeObserver:self];

  v12 = [(MapsSceneDelegate *)self window];
  [v12 setHidden:1];

  v13 = [(MapsSceneDelegate *)self window];
  [v13 setRootViewController:0];

  [(MapsSceneDelegate *)self setWindow:0];
  v14 = sub_100005610();
  if (os_signpost_enabled(v14))
  {
    LOWORD(v15) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SceneDidDisconnect", "", &v15, 2u);
  }
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_100005610();
  if (os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "WillConnectTosSession", "", buf, 2u);
  }

  v12 = v8;
  v13 = sub_100005610();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = [v12 description];
    *buf = 138412802;
    v44 = v14;
    v45 = 2112;
    v46 = v9;
    v47 = 2112;
    v48 = v10;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[MapsSceneDelegate] -scene:willConnectToSession:withOptions: %@, %@, %@", buf, 0x20u);
  }

  v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v16 = dispatch_queue_create("com.apple.maps.analytics", v15);
  analyticsQueue = self->_analyticsQueue;
  self->_analyticsQueue = v16;

  v18 = sub_100005610();
  if (os_signpost_enabled(v18))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "PlatformController", "", buf, 2u);
  }

  v19 = [(MapsSceneDelegate *)self appSessionController];
  v20 = [v19 addActiveiOSPlatformControllerForScene:v12];
  [(MapsSceneDelegate *)self setPlatformController:v20];

  v21 = [(MapsSceneDelegate *)self platformController];
  v22 = [(MapsSceneDelegate *)self appSessionController];
  v23 = [v22 primaryPlatformController];
  v24 = v21 == v23;

  if (v24)
  {
    v25 = [(MapsSceneDelegate *)self platformController];
    [v25 prepareToReplaySessions];
  }

  v26 = sub_100005610();
  if (os_signpost_enabled(v26))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v26, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "PlatformController", "", buf, 2u);
  }

  v27 = sub_100005610();
  if (os_signpost_enabled(v27))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v27, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "EntryPointCoordinator", "", buf, 2u);
  }

  v28 = [(MapsSceneDelegate *)self entryPointsCoordinator];
  v29 = [v12 coordinateSpace];
  [v29 bounds];
  [v28 willConnectToSession:v9 options:v10 windowSize:v12 scene:{v30, v31}];

  v32 = sub_100005610();
  if (os_signpost_enabled(v32))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v32, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "EntryPointCoordinator", "", buf, 2u);
  }

  objc_initWeak(buf, self);
  v33 = sub_100005610();
  if (os_signpost_enabled(v33))
  {
    *v42 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v33, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "LoadMapsForScene", "", v42, 2u);
  }

  v36 = _NSConcreteStackBlock;
  v37 = 3221225472;
  v38 = sub_100F56E8C;
  v39 = &unk_101661368;
  objc_copyWeak(&v40, buf);
  v41 = v24;
  [(MapsSceneDelegate *)self _loadMapsForWindowScene:v12 withCompletion:&v36];
  v34 = [NSNotificationCenter defaultCenter:v36];
  [v34 addObserver:self selector:"_locationManagerAuthorizationChanged:" name:MKLocationManagerApprovalDidChangeNotification object:0];

  v35 = sub_100005610();
  if (os_signpost_enabled(v35))
  {
    *v42 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v35, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "WillConnectTosSession", "", v42, 2u);
  }

  objc_destroyWeak(&v40);
  objc_destroyWeak(buf);
}

- (void)dealloc
{
  [(MapsDebugValuesViewController *)self->_mapsDebugController setDelegate:0];
  v3.receiver = self;
  v3.super_class = MapsSceneDelegate;
  [(MapsSceneDelegate *)&v3 dealloc];
}

@end