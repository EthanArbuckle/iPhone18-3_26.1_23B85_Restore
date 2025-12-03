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
- (id)mapsActivityWithFidelity:(unint64_t)fidelity;
- (id)searchPinsManager;
- (id)stateRestorationActivityForScene:(id)scene;
- (void)_loadMapsForWindowScene:(id)scene withCompletion:(id)completion;
- (void)_locationManagerAuthorizationChanged:(id)changed;
- (void)_sendMapsSuggestionsSignalsUsingBaseMode:(BOOL)mode secondsSinceBackgrounding:(double)backgrounding routePlanningPresented:(BOOL)presented;
- (void)archiveMapsActivity;
- (void)dealloc;
- (void)geoDaemonDisconnectNotificationHandler:(id)handler;
- (void)presentFromContainerViewController:(id)controller animated:(BOOL)animated;
- (void)presentMapsDebugController;
- (void)presentMapsDebugControllerIfEnabled;
- (void)presentViewController:(id)controller animated:(BOOL)animated;
- (void)pushDaemonProxyReceivedNotificationData:(id)data forType:(id)type recordIdentifier:(id)identifier;
- (void)refreshTitle;
- (void)refreshTitleAfterShortDelay;
- (void)scene:(id)scene continueUserActivity:(id)activity;
- (void)scene:(id)scene didFailToContinueUserActivityWithType:(id)type error:(id)error;
- (void)scene:(id)scene openURLContexts:(id)contexts;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)scene:(id)scene willContinueUserActivityWithType:(id)type;
- (void)sceneDidBecomeActive:(id)active;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)sceneDidEnterBackground:(id)background;
- (void)sceneWillEnterForeground:(id)foreground;
- (void)sceneWillResignActive:(id)active;
- (void)setMapsActivity:(id)activity assumedSourceFidelity:(unint64_t)fidelity source:(int64_t)source;
- (void)setNeedsUserActivityUpdate;
- (void)updateDirectionsListVisibility:(BOOL)visibility;
- (void)userActivityWillSave:(id)save;
- (void)vkFaultNotificationHandler:(id)handler;
- (void)windowScene:(id)scene performActionForShortcutItem:(id)item completionHandler:(id)handler;
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

    appCoordinator = [(MapsSceneDelegate *)self appCoordinator];
    [(MapsActionController *)self->_mapsActionController setAppCoordinator:appCoordinator];

    mapsActionController = self->_mapsActionController;
  }

  return mapsActionController;
}

- (id)appSessionController
{
  v2 = +[UIApplication sharedMapsDelegate];
  appSessionController = [v2 appSessionController];

  return appSessionController;
}

- (EntryPointsCoordinator)entryPointsCoordinator
{
  mapsActionController = [(MapsSceneDelegate *)self mapsActionController];
  entryPointsCoordinator = [(PlatformController *)self->_platformController entryPointsCoordinator];
  [entryPointsCoordinator setDelegate:mapsActionController];

  platformController = self->_platformController;

  return [(PlatformController *)platformController entryPointsCoordinator];
}

- (AppCoordinator)appCoordinator
{
  appCoordinator = self->_appCoordinator;
  if (!appCoordinator)
  {
    v4 = [AppCoordinator alloc];
    platformController = [(MapsSceneDelegate *)self platformController];
    v6 = [(AppCoordinator *)v4 initWithPlatformController:platformController];
    v7 = self->_appCoordinator;
    self->_appCoordinator = v6;

    [(AppCoordinator *)self->_appCoordinator setMapsSceneDelegate:self];
    chromeViewController = [(MapsSceneDelegate *)self chromeViewController];
    [(AppCoordinator *)self->_appCoordinator setChromeViewController:chromeViewController];

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
    userInterfaceIdiom = [v4 userInterfaceIdiom];

    v6 = off_1015F62A8;
    if (userInterfaceIdiom != 5)
    {
      v6 = off_1015F6260;
    }

    v7 = objc_alloc_init(*v6);
    v8 = self->_chromeViewController;
    self->_chromeViewController = v7;

    mapsActionController = [(MapsSceneDelegate *)self mapsActionController];
    [(IOSBasedChromeViewController *)self->_chromeViewController setMapsActionController:mapsActionController];

    chromeViewController = self->_chromeViewController;
  }

  [(IOSBasedChromeViewController *)chromeViewController setAppCoordinator:self->_appCoordinator];
  v10 = self->_chromeViewController;

  return v10;
}

- (void)setNeedsUserActivityUpdate
{
  mapsActivityController = [(MapsSceneDelegate *)self mapsActivityController];
  [mapsActivityController setNeedsUserActivityUpdate];
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
  appCoordinator = [(MapsSceneDelegate *)self appCoordinator];
  v4 = [appCoordinator conformsToProtocol:&OBJC_PROTOCOL___PPTTestCoordinatorProtocol];

  if (v4)
  {
    appCoordinator2 = [(MapsSceneDelegate *)self appCoordinator];
  }

  else
  {
    appCoordinator2 = 0;
  }

  return appCoordinator2;
}

- (void)refreshTitleAfterShortDelay
{
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"refreshTitle" object:0];

  [(MapsSceneDelegate *)self performSelector:"refreshTitle" withObject:0 afterDelay:1.0];
}

- (void)refreshTitle
{
  appCoordinator = [(MapsSceneDelegate *)self appCoordinator];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100F53F38;
  v4[3] = &unk_10165EF00;
  v4[4] = self;
  [appCoordinator getCurrentSceneTitleWithCompletion:v4];
}

- (void)presentFromContainerViewController:(id)controller animated:(BOOL)animated
{
  controllerCopy = controller;
  appCoordinator = [(MapsSceneDelegate *)self appCoordinator];
  baseActionCoordinator = [appCoordinator baseActionCoordinator];
  [controllerCopy setContaineeDelegate:baseActionCoordinator];

  appCoordinator2 = [(MapsSceneDelegate *)self appCoordinator];
  baseActionCoordinator2 = [appCoordinator2 baseActionCoordinator];
  containerViewController = [baseActionCoordinator2 containerViewController];
  [containerViewController presentController:controllerCopy animated:1];
}

- (void)presentViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  if (controllerCopy)
  {
    v11 = controllerCopy;
    presentingViewController = [controllerCopy presentingViewController];

    controllerCopy = v11;
    if (!presentingViewController)
    {
      topMostPresentedViewController = [(MapsSceneDelegate *)self topMostPresentedViewController];
      if ([topMostPresentedViewController isViewLoaded])
      {
        view = [topMostPresentedViewController view];
        window = [view window];

        if (window)
        {
          [v11 setModalPresentationStyle:2];
          [topMostPresentedViewController presentViewController:v11 animated:animatedCopy completion:0];
        }
      }

      controllerCopy = v11;
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

    chromeViewController = [(MapsSceneDelegate *)self chromeViewController];
    [(MapsDebugValuesViewController *)self->_mapsDebugController setDelegate:chromeViewController];
  }

  debugNavigationController = self->_debugNavigationController;
  if (!debugNavigationController)
  {
    v7 = [[UINavigationController alloc] initWithRootViewController:self->_mapsDebugController];
    v8 = self->_debugNavigationController;
    self->_debugNavigationController = v7;

    debugNavigationController = self->_debugNavigationController;
  }

  presentingViewController = [(UINavigationController *)debugNavigationController presentingViewController];

  if (!presentingViewController)
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

- (void)updateDirectionsListVisibility:(BOOL)visibility
{
  visibilityCopy = visibility;
  appCoordinator = [(MapsSceneDelegate *)self appCoordinator];
  v5 = appCoordinator;
  if (visibilityCopy)
  {
    [appCoordinator showFullscreenDirectionsList];
  }

  else
  {
    [appCoordinator hideFullscreenDirectionsList];
  }
}

- (void)pushDaemonProxyReceivedNotificationData:(id)data forType:(id)type recordIdentifier:(id)identifier
{
  identifierCopy = identifier;
  typeCopy = type;
  dataCopy = data;
  entryPointsCoordinator = [(MapsSceneDelegate *)self entryPointsCoordinator];
  [entryPointsCoordinator openNotificationData:dataCopy forType:typeCopy recordIdentifier:identifierCopy];

  v12 = +[MSPMapsPushDaemonRemoteProxy sharedInstance];
  [v12 clearBulletinWithRecordID:identifierCopy];
}

- (void)vkFaultNotificationHandler:(id)handler
{
  handlerCopy = handler;
  if (GEOConfigGetBOOL())
  {
    v5 = +[MKSystemController sharedInstance];
    isInternalInstall = [v5 isInternalInstall];

    if (isInternalInstall)
    {
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_100F54460;
      v7[3] = &unk_101661A90;
      v8 = handlerCopy;
      selfCopy = self;
      dispatch_async(&_dispatch_main_q, v7);
    }
  }
}

- (void)geoDaemonDisconnectNotificationHandler:(id)handler
{
  if (GEOConfigGetBOOL())
  {
    v4 = +[MKSystemController sharedInstance];
    isInternalInstall = [v4 isInternalInstall];

    if (isInternalInstall)
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

- (void)_sendMapsSuggestionsSignalsUsingBaseMode:(BOOL)mode secondsSinceBackgrounding:(double)backgrounding routePlanningPresented:(BOOL)presented
{
  obj = self;
  objc_sync_enter(obj);
  if (qword_10195F7B0 != -1)
  {
    dispatch_once(&qword_10195F7B0, &stru_10165E1F0);
  }

  *&v6 = backgrounding;
  [qword_10195F7C0 writeSignalValue:23 forType:v6];
  v7 = qword_10195F7B8;
  v8 = [qword_10195F7C0 copy];
  [v7 donateSignalPack:v8];

  objc_sync_exit(obj);
}

- (void)_locationManagerAuthorizationChanged:(id)changed
{
  v7 = +[MKLocationManager sharedLocationManager];
  if ([v7 isLocationServicesAuthorizationNeeded])
  {
    entryPointsCoordinator = [(MapsSceneDelegate *)self entryPointsCoordinator];
    launchAlertsManager = [entryPointsCoordinator launchAlertsManager];

    [launchAlertsManager enqueueAlert:0];
  }

  else
  {
    if (![v7 isLocationServicesDenied])
    {
      goto LABEL_6;
    }

    launchAlertsManager = [(MapsSceneDelegate *)self chromeViewController];
    mapView = [launchAlertsManager mapView];
    [mapView setUserTrackingMode:0];
  }

LABEL_6:
}

- (void)_loadMapsForWindowScene:(id)scene withCompletion:(id)completion
{
  sceneCopy = scene;
  completionCopy = completion;
  v8 = sub_100005610();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [sceneCopy description];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "_loadMapsForWindowScene: %@", &buf, 0xCu);
  }

  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_100F55254;
  v44[3] = &unk_101661B18;
  v44[4] = self;
  statusBarManager = [sceneCopy statusBarManager];
  [statusBarManager setDebugMenuHandler:v44];

  v11 = +[NSFileManager defaultManager];
  v12 = [v11 URLsForDirectory:13 inDomains:1];
  firstObject = [v12 firstObject];
  [MKIconManager setDiskCacheURL:firstObject];

  v14 = +[GEOResourceManifestManager modernManager];
  activeTileGroup = [v14 activeTileGroup];

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

  chromeViewController = [(MapsSceneDelegate *)self chromeViewController];
  [(PlatformController *)self->_platformController setChromeViewController:chromeViewController];

  v21 = [[EventSourceWindow alloc] initWithWindowScene:sceneCopy];
  [(MapsSceneDelegate *)self setWindow:v21];

  window = [(MapsSceneDelegate *)self window];
  [window setAccessibilityIdentifier:@"Maps.Application"];

  chromeViewController2 = [(MapsSceneDelegate *)self chromeViewController];
  window2 = [(MapsSceneDelegate *)self window];
  [window2 setRootViewController:chromeViewController2];

  window3 = [(MapsSceneDelegate *)self window];
  LOBYTE(window2) = sub_10000FA08(window3) == 5;

  if ((window2 & 1) == 0)
  {
    v26 = +[UIColor _maps_keyColor];
    window4 = [(MapsSceneDelegate *)self window];
    [window4 setTintColor:v26];
  }

  v28 = +[UIColor clearColor];
  window5 = [(MapsSceneDelegate *)self window];
  [window5 setBackgroundColor:v28];

  window6 = [(MapsSceneDelegate *)self window];
  [window6 makeKeyAndVisible];

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
  isInternalInstall = [v33 isInternalInstall];

  if (isInternalInstall)
  {
    v35 = +[NSNotificationCenter defaultCenter];
    [v35 addObserver:self selector:"geoDaemonDisconnectNotificationHandler:" name:GEODaemonCommunicationInterruptedNotification object:0];

    v36 = +[NSNotificationCenter defaultCenter];
    [v36 addObserver:self selector:"vkFaultNotificationHandler:" name:VKFaultNotification object:0];
  }

  [(MapsSceneDelegate *)self setNeedsUserActivityUpdate];
  appCoordinator = [(MapsSceneDelegate *)self appCoordinator];
  [appCoordinator startSearchModeWithCompletion:completionCopy];

  objc_destroyWeak(&v39);
  _Block_object_dispose(&buf, 8);

  objc_destroyWeak(&v42);
  objc_destroyWeak(&location);
}

- (UIViewController)topMostPresentedViewController
{
  window = [(MapsSceneDelegate *)self window];
  rootViewController = [window rootViewController];

  presentedViewController = [rootViewController presentedViewController];

  if (presentedViewController)
  {
    do
    {
      presentedViewController2 = [rootViewController presentedViewController];

      v5PresentedViewController = [presentedViewController2 presentedViewController];

      rootViewController = presentedViewController2;
    }

    while (v5PresentedViewController);
  }

  else
  {
    presentedViewController2 = rootViewController;
  }

  return presentedViewController2;
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
  chromeViewController = [(MapsSceneDelegate *)self chromeViewController];
  searchPinsManager = [chromeViewController searchPinsManager];

  return searchPinsManager;
}

- (void)windowScene:(id)scene performActionForShortcutItem:(id)item completionHandler:(id)handler
{
  itemCopy = item;
  entryPointsCoordinator = [(MapsSceneDelegate *)self entryPointsCoordinator];
  [entryPointsCoordinator openShortcutItem:itemCopy];
}

- (void)scene:(id)scene openURLContexts:(id)contexts
{
  sceneCopy = scene;
  contextsCopy = contexts;
  v8 = sub_100005610();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [sceneCopy description];
    v20 = 138412546;
    v21 = v9;
    v22 = 2112;
    v23 = contextsCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "-scene:openURLContexts: %@ contexts %@", &v20, 0x16u);
  }

  v10 = sceneCopy;
  v11 = +[MKLocationManager sharedLocationManager];
  [v11 resetAfterResumeIfNecessary];

  anyObject = [contextsCopy anyObject];
  entryPointsCoordinator = [(MapsSceneDelegate *)self entryPointsCoordinator];
  v14 = [anyObject URL];
  session = [v10 session];
  options = [anyObject options];
  coordinateSpace = [v10 coordinateSpace];

  [coordinateSpace bounds];
  [entryPointsCoordinator openURL:v14 session:session sceneOptions:options mkOptions:0 windowSize:{v18, v19}];
}

- (void)setMapsActivity:(id)activity assumedSourceFidelity:(unint64_t)fidelity source:(int64_t)source
{
  activityCopy = activity;
  if ((+[UIApplication shouldMakeUIForDefaultPNG]& 1) == 0)
  {
    appCoordinator = [(MapsSceneDelegate *)self appCoordinator];
    appStateManager = [appCoordinator appStateManager];
    [appStateManager setMapsActivity:activityCopy assumedSourceFidelity:fidelity source:source];
  }
}

- (id)mapsActivityWithFidelity:(unint64_t)fidelity
{
  appCoordinator = [(MapsSceneDelegate *)self appCoordinator];
  appStateManager = [appCoordinator appStateManager];
  v6 = [appStateManager mapsActivityWithFidelity:fidelity];

  return v6;
}

- (void)userActivityWillSave:(id)save
{
  saveCopy = save;
  mapsActivityController = [(MapsSceneDelegate *)self mapsActivityController];
  [mapsActivityController userActivityWillSave:saveCopy];
}

- (void)archiveMapsActivity
{
  mapsActivityController = [(MapsSceneDelegate *)self mapsActivityController];
  [mapsActivityController archiveMapsActivity];
}

- (void)scene:(id)scene didFailToContinueUserActivityWithType:(id)type error:(id)error
{
  errorCopy = error;
  typeCopy = type;
  entryPointsCoordinator = [(MapsSceneDelegate *)self entryPointsCoordinator];
  [entryPointsCoordinator didFailToContinueUserActivityWithType:typeCopy error:errorCopy];
}

- (void)scene:(id)scene continueUserActivity:(id)activity
{
  sceneCopy = scene;
  activityCopy = activity;
  entryPointsCoordinator = [(MapsSceneDelegate *)self entryPointsCoordinator];
  session = [sceneCopy session];
  coordinateSpace = [sceneCopy coordinateSpace];
  [coordinateSpace bounds];
  [entryPointsCoordinator continueUserActivity:activityCopy session:session windowSize:{v10, v11}];
}

- (void)scene:(id)scene willContinueUserActivityWithType:(id)type
{
  typeCopy = type;
  entryPointsCoordinator = [(MapsSceneDelegate *)self entryPointsCoordinator];
  [entryPointsCoordinator willContinueUserActivityWithType:typeCopy];
}

- (id)stateRestorationActivityForScene:(id)scene
{
  sceneCopy = scene;
  activationState = [sceneCopy activationState];
  mapsActivityController = sub_100028730();
  v7 = os_log_type_enabled(mapsActivityController, OS_LOG_TYPE_DEBUG);
  if (activationState == -1)
  {
    if (v7)
    {
      mapsActivity = [(MapsSceneDelegate *)self mapsActivity];
      v12 = 138478083;
      v13 = mapsActivity;
      v14 = 2112;
      v15 = sceneCopy;
      _os_log_impl(&_mh_execute_header, mapsActivityController, OS_LOG_TYPE_DEBUG, "UIKit not archiving MapsActivity %{private}@ for Scene: %@", &v12, 0x16u);
    }

    mapsUserActivityForStateRestoration = 0;
  }

  else
  {
    if (v7)
    {
      mapsActivity2 = [(MapsSceneDelegate *)self mapsActivity];
      v12 = 138477827;
      v13 = mapsActivity2;
      _os_log_impl(&_mh_execute_header, mapsActivityController, OS_LOG_TYPE_DEBUG, "UIKit archiving MapsActivity: %{private}@", &v12, 0xCu);
    }

    mapsActivityController = [(MapsSceneDelegate *)self mapsActivityController];
    mapsUserActivityForStateRestoration = [mapsActivityController mapsUserActivityForStateRestoration];
  }

  return mapsUserActivityForStateRestoration;
}

- (void)sceneDidEnterBackground:(id)background
{
  backgroundCopy = background;
  v5 = sub_100005610();
  if (os_signpost_enabled(v5))
  {
    LOWORD(v12) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SceneDidEnterBackground", "", &v12, 2u);
  }

  v6 = sub_100005610();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [backgroundCopy description];
    v12 = 138412290;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[MapsSceneDelegate] -sceneDidEnterBackground: %@", &v12, 0xCu);
  }

  entryPointsCoordinator = [(MapsSceneDelegate *)self entryPointsCoordinator];
  session = [backgroundCopy session];
  [entryPointsCoordinator didEnterBackgroundWithSession:session];

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

- (void)sceneWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  v5 = sub_100005610();
  if (os_signpost_enabled(v5))
  {
    LOWORD(v12) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SceneWillEnterForeground", "", &v12, 2u);
  }

  v6 = sub_100005610();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [foregroundCopy description];
    v12 = 138412290;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[MapsSceneDelegate] -sceneWillEnterForeground: %@", &v12, 0xCu);
  }

  v8 = dispatch_get_global_queue(0, 0);
  dispatch_async(v8, &stru_10165E158);

  entryPointsCoordinator = [(MapsSceneDelegate *)self entryPointsCoordinator];
  session = [foregroundCopy session];
  [entryPointsCoordinator willEnterForegroundWithSession:session];

  v11 = sub_100005610();
  if (os_signpost_enabled(v11))
  {
    LOWORD(v12) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SceneWillEnterForeground", "", &v12, 2u);
  }
}

- (void)sceneWillResignActive:(id)active
{
  activeCopy = active;
  v5 = sub_100005610();
  if (os_signpost_enabled(v5))
  {
    LOWORD(v15) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SceneWillResignActive", "", &v15, 2u);
  }

  v6 = sub_100005610();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [activeCopy description];
    v15 = 138412290;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[MapsSceneDelegate] -sceneWillResignActive: %@", &v15, 0xCu);
  }

  entryPointsCoordinator = [(MapsSceneDelegate *)self entryPointsCoordinator];
  session = [activeCopy session];
  [entryPointsCoordinator willResignActiveWithSession:session];

  chromeViewController = +[UIApplication sharedApplication];
  if ([chromeViewController isSuspendedUnderLock])
  {
    v11 = +[MNNavigationService sharedService];
    [v11 state];
    IsNavigating = MNNavigationServiceStateIsNavigating();

    if (!IsNavigating)
    {
      goto LABEL_9;
    }

    chromeViewController = [(MapsSceneDelegate *)self chromeViewController];
    [chromeViewController dismissAllModalViewsIfPresentAnimated:1 completion:0];
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

- (void)sceneDidBecomeActive:(id)active
{
  activeCopy = active;
  v5 = sub_100005610();
  if (os_signpost_enabled(v5))
  {
    LOWORD(v23) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SceneDidBecomeActive", "", &v23, 2u);
  }

  v6 = sub_100005610();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [activeCopy description];
    v23 = 138412290;
    v24 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[MapsSceneDelegate] -sceneDidBecomeActive: %@", &v23, 0xCu);
  }

  entryPointsCoordinator = [(MapsSceneDelegate *)self entryPointsCoordinator];
  session = [activeCopy session];
  [entryPointsCoordinator didBecomeActiveWithSession:session];

  v10 = +[MapsLightLevelController sharedController];
  [v10 reloadForChangedLightLevelTrackers];

  chromeViewController = [(MapsSceneDelegate *)self chromeViewController];
  topContext = [chromeViewController topContext];
  baseModeController = [(AppCoordinator *)self->_appCoordinator baseModeController];
  v14 = +[UIApplication sharedMapsDelegate];
  [v14 timeIntervalSinceLastBackgrounded];
  v16 = v15;
  appCoordinator = [(MapsSceneDelegate *)self appCoordinator];
  baseActionCoordinator = [appCoordinator baseActionCoordinator];
  -[MapsSceneDelegate _sendMapsSuggestionsSignalsUsingBaseMode:secondsSinceBackgrounding:routePlanningPresented:](self, "_sendMapsSuggestionsSignalsUsingBaseMode:secondsSinceBackgrounding:routePlanningPresented:", topContext == baseModeController, [baseActionCoordinator isRoutePlanningPresented], v16);

  v19 = +[MKLocationManager sharedLocationManager];
  LOBYTE(topContext) = [v19 isLocationServicesAuthorizationNeeded];

  if ((topContext & 1) == 0)
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

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  v5 = sub_100005610();
  if (os_signpost_enabled(v5))
  {
    LOWORD(v15) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SceneDidDisconnect", "", &v15, 2u);
  }

  v6 = sub_100005610();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [disconnectCopy description];
    v15 = 138412290;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[MapsSceneDelegate] -sceneDidDisconnect: %@", &v15, 0xCu);
  }

  [(MapsSceneDelegate *)self archiveMapsActivity];
  appSessionController = [(MapsSceneDelegate *)self appSessionController];
  platformController = [(MapsSceneDelegate *)self platformController];
  [appSessionController removeiOSPlatformController:platformController];

  [(MapsSceneDelegate *)self setPlatformController:0];
  v10 = +[MNNavigationService sharedService];
  [v10 closeForClient:self];

  v11 = +[NSNotificationCenter defaultCenter];
  [v11 removeObserver:self];

  window = [(MapsSceneDelegate *)self window];
  [window setHidden:1];

  window2 = [(MapsSceneDelegate *)self window];
  [window2 setRootViewController:0];

  [(MapsSceneDelegate *)self setWindow:0];
  v14 = sub_100005610();
  if (os_signpost_enabled(v14))
  {
    LOWORD(v15) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SceneDidDisconnect", "", &v15, 2u);
  }
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  v11 = sub_100005610();
  if (os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "WillConnectTosSession", "", buf, 2u);
  }

  v12 = sceneCopy;
  v13 = sub_100005610();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = [v12 description];
    *buf = 138412802;
    v44 = v14;
    v45 = 2112;
    v46 = sessionCopy;
    v47 = 2112;
    v48 = optionsCopy;
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

  appSessionController = [(MapsSceneDelegate *)self appSessionController];
  v20 = [appSessionController addActiveiOSPlatformControllerForScene:v12];
  [(MapsSceneDelegate *)self setPlatformController:v20];

  platformController = [(MapsSceneDelegate *)self platformController];
  appSessionController2 = [(MapsSceneDelegate *)self appSessionController];
  primaryPlatformController = [appSessionController2 primaryPlatformController];
  v24 = platformController == primaryPlatformController;

  if (v24)
  {
    platformController2 = [(MapsSceneDelegate *)self platformController];
    [platformController2 prepareToReplaySessions];
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

  entryPointsCoordinator = [(MapsSceneDelegate *)self entryPointsCoordinator];
  coordinateSpace = [v12 coordinateSpace];
  [coordinateSpace bounds];
  [entryPointsCoordinator willConnectToSession:sessionCopy options:optionsCopy windowSize:v12 scene:{v30, v31}];

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