@interface BKSceneController
- (BAAnalyticsController)ba_analyticsController;
- (BCEngagementProvider)bc_engagementProvider;
- (BKMachineAuthorizationService)machineAuthorizationService;
- (BKMainFlowController)mainFlowController;
- (BKRootBarCoordinating)rootBarCoordinator;
- (BKSceneController)initWithSceneType:(unint64_t)type launchCoordinator:(id)coordinator criticalAlertCoordinator:(id)alertCoordinator;
- (BOOL)isHostingRootBar;
- (BOOL)sceneSupportsMinifiedPresenting;
- (BSUINativeFeedCardsPresenting)feedCardPresenting;
- (CGSize)preferredContentSizeForNavigationController:(id)controller;
- (id)_mainViewControllerForModalPresenting;
- (id)_optionsForContinueOpenBookActivity:(BOOL)activity;
- (id)analyticsManagerLibrary:(id)library;
- (id)dataForStateRestoration;
- (id)flowControllerModalPresentingViewController;
- (id)flowControllers;
- (id)rootViewController;
- (id)screen;
- (id)ubiquityStatusMonitor;
- (void)_finishWindowSetup:(id)setup;
- (void)_handleOpenBookActivityWithAssetID:(id)d isStateRestoration:(BOOL)restoration;
- (void)_setupWithWindow:(id)window;
- (void)_showWelcomeScreen:(id)screen completion:(id)completion;
- (void)analyticsManagerDidRestoreSession:(id)session;
- (void)analyticsManagerForceEndSession:(id)session reason:(int64_t)reason;
- (void)handleCreateSceneUserActivityWhenReady:(id)ready;
- (void)handleStateRestorationFromData:(id)data;
- (void)saveStateClosing:(BOOL)closing;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidBecomeActive:(id)active;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)sceneDidEnterBackground:(id)background;
- (void)sceneWillEnterForeground:(id)foreground;
- (void)setBk_window:(id)bk_window;
- (void)setRootBarCoordinator:(id)coordinator;
- (void)setupPlaceholderWindow;
- (void)setupRootViewController;
- (void)storeDidAttemptSignOut:(id)out;
- (void)updateCloseTypeState:(int64_t)state;
- (void)welcomePresenterFinishOngoingModalTransitionAnimations:(id)animations;
- (void)windowScene:(id)scene didUpdateCoordinateSpace:(id)space interfaceOrientation:(int64_t)orientation traitCollection:(id)collection;
@end

@implementation BKSceneController

- (BAAnalyticsController)ba_analyticsController
{
  analyticsManager = [(BKSceneController *)self analyticsManager];
  analyticsController = [analyticsManager analyticsController];

  delegate = [analyticsController delegate];

  if (!delegate)
  {
    sub_100789178();
  }

  applicationTracker = [analyticsController applicationTracker];

  if (!applicationTracker)
  {
    sub_1007891B0();
  }

  return analyticsController;
}

- (void)setRootBarCoordinator:(id)coordinator
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100022E50(coordinator);

  swift_unknownObjectRelease();
}

- (BKRootBarCoordinating)rootBarCoordinator
{
  selfCopy = self;
  v3 = BKSceneController.rootBarCoordinator.getter();

  return v3;
}

- (void)setupRootViewController
{
  objc_opt_class();
  bk_window = [(_BKBaseSceneController *)self bk_window];
  rootViewController = [bk_window rootViewController];
  v7 = BUDynamicCast();

  rootBarCoordinator = [(BKSceneController *)self rootBarCoordinator];
  rootViewController2 = [rootBarCoordinator rootViewController];
  [v7 setRootViewController:rootViewController2];
}

- (BKSceneController)initWithSceneType:(unint64_t)type launchCoordinator:(id)coordinator criticalAlertCoordinator:(id)alertCoordinator
{
  coordinatorCopy = coordinator;
  alertCoordinatorCopy = alertCoordinator;
  v22.receiver = self;
  v22.super_class = BKSceneController;
  v10 = [(_BKBaseSceneController *)&v22 initWithSceneType:type];
  v11 = v10;
  if (v10)
  {
    [(_BKBaseSceneController *)v10 setLaunchCoordinator:coordinatorCopy];
    [(_BKBaseSceneController *)v11 setCriticalAlertCoordinator:alertCoordinatorCopy];
    v12 = objc_alloc_init(BKAppAnalyticsManager);
    [(BKSceneController *)v11 setAnalyticsManager:v12];

    analyticsManager = [(BKSceneController *)v11 analyticsManager];
    [analyticsManager setDelegate:v11];

    analyticsManager2 = [(BKSceneController *)v11 analyticsManager];
    [analyticsManager2 analyticsSetupTracking];

    v15 = [BKAnalyticsSessionHost alloc];
    analyticsManager3 = [(BKSceneController *)v11 analyticsManager];
    v17 = [(BKAnalyticsSessionHost *)v15 initWithAnalyticsManager:analyticsManager3];
    analyticsSessionHost = v11->_analyticsSessionHost;
    v11->_analyticsSessionHost = v17;

    v19 = [[BKBookReaderInteractionCoordinator alloc] initWithWindow:0];
    interactionCoordinator = v11->_interactionCoordinator;
    v11->_interactionCoordinator = v19;
  }

  return v11;
}

- (BKMainFlowController)mainFlowController
{
  mainFlowController = self->_mainFlowController;
  if (!mainFlowController)
  {
    v4 = [BKMainFlowController alloc];
    v5 = +[BKLibraryManager defaultManager];
    v6 = [(BKMainFlowController *)v4 initWithLibraryAssetProvider:v5];
    v7 = self->_mainFlowController;
    self->_mainFlowController = v6;

    [(BKMainFlowController *)self->_mainFlowController setDelegate:self];
    rootBarCoordinator = [(BKSceneController *)self rootBarCoordinator];
    [(BKMainFlowController *)self->_mainFlowController setRootBarCoordinator:rootBarCoordinator];

    mainFlowController = self->_mainFlowController;
  }

  return mainFlowController;
}

- (id)flowControllers
{
  mainFlowController = [(BKSceneController *)self mainFlowController];
  v5 = mainFlowController;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (void)saveStateClosing:(BOOL)closing
{
  closingCopy = closing;
  mainFlowController = [(BKSceneController *)self mainFlowController];
  [mainFlowController saveStateClosing:closingCopy];
}

- (id)_mainViewControllerForModalPresenting
{
  rootBarCoordinator = [(BKSceneController *)self rootBarCoordinator];
  rootViewController = [rootBarCoordinator rootViewController];
  v5 = rootViewController;
  if (rootViewController)
  {
    rootViewController2 = rootViewController;
  }

  else
  {
    bk_window = [(_BKBaseSceneController *)self bk_window];
    rootViewController2 = [bk_window rootViewController];
  }

  return rootViewController2;
}

- (BSUINativeFeedCardsPresenting)feedCardPresenting
{
  rootBarCoordinator = [(BKSceneController *)self rootBarCoordinator];
  if (rootBarCoordinator)
  {
    rootBarCoordinator2 = [(BKSceneController *)self rootBarCoordinator];
    selectedNavigationController = [rootBarCoordinator2 selectedNavigationController];
    topViewController = [selectedNavigationController topViewController];
  }

  else
  {
    topViewController = [(BKSceneController *)self flowControllerModalPresentingViewController];
  }

  return topViewController;
}

- (void)setBk_window:(id)bk_window
{
  v6.receiver = self;
  v6.super_class = BKSceneController;
  bk_windowCopy = bk_window;
  [(_BKBaseSceneController *)&v6 setBk_window:bk_windowCopy];
  v5 = [(BKSceneController *)self interactionCoordinator:v6.receiver];
  [v5 setWindow:bk_windowCopy];
}

- (id)screen
{
  scene = [(_BKBaseSceneController *)self scene];
  if (scene)
  {
    scene2 = [(_BKBaseSceneController *)self scene];
    screen = [scene2 screen];
  }

  else
  {
    screen = +[UIScreen mainScreen];
  }

  return screen;
}

- (void)_setupWithWindow:(id)window
{
  windowCopy = window;
  [(BKSceneController *)self setBk_window:windowCopy];
  v4 = objc_alloc_init(BKUpgradeViewController);
  [(BKSceneController *)self setUpgradeViewController:v4];

  upgradeViewController = [(BKSceneController *)self upgradeViewController];
  [upgradeViewController _bk_setSceneController:self];

  upgradeViewController2 = [(BKSceneController *)self upgradeViewController];
  [windowCopy setRootViewController:upgradeViewController2];

  [windowCopy makeKeyAndVisible];
  [(BKSceneController *)self _finishWindowSetup:windowCopy];
}

- (void)_finishWindowSetup:(id)setup
{
  setupCopy = setup;
  v5 = objc_alloc_init(BKRootViewController);
  [(BKRootViewController *)v5 _bk_setSceneController:self];
  [setupCopy setRootViewController:v5];
  rootViewController = [setupCopy rootViewController];
  view = [rootViewController view];
  upgradeViewController = [(BKSceneController *)self upgradeViewController];
  view2 = [upgradeViewController view];
  [view addSubview:view2];

  ba_analyticsController = [(BKSceneController *)self ba_analyticsController];
  applicationTracker = [ba_analyticsController applicationTracker];
  rootViewController2 = [setupCopy rootViewController];
  [rootViewController2 ba_setAnalyticsTracker:applicationTracker];

  rootViewController3 = [setupCopy rootViewController];
  [rootViewController3 setBc_engagementProviderSource:self];

  if ([(_BKBaseSceneController *)self sceneType]== 1)
  {
    _sceneManager = [(BKSceneController *)self _sceneManager];
    v15 = [_sceneManager rootBarCoordinatorForSceneController:self];
    [(BKSceneController *)self setRootBarCoordinator:v15];
  }

  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1000593D4;
  v32[3] = &unk_100A033C8;
  v32[4] = self;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100059444;
  v31[3] = &unk_100A038D0;
  v31[4] = self;
  [UIView animateWithDuration:5242880 delay:v32 options:v31 animations:0.2 completion:0.0];
  if ([(_BKBaseSceneController *)self sceneType]== 1)
  {
    rootViewController4 = [setupCopy rootViewController];
    supportedInterfaceOrientations = [rootViewController4 supportedInterfaceOrientations];
    windowScene = [setupCopy windowScene];
    interfaceOrientation = [windowScene interfaceOrientation];

    if ((supportedInterfaceOrientations & (1 << interfaceOrientation)) != 0)
    {
      launchCoordinator = [(_BKBaseSceneController *)self launchCoordinator];
      [launchCoordinator signalConditionSatisfied:7];
    }

    else
    {
      objc_initWeak(&location, self);
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_1000594AC;
      v28[3] = &unk_100A038F8;
      objc_copyWeak(v29, &location);
      v29[1] = 0x3FF0000000000000;
      v21 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v28 block:1.0];
      rotationToSupportedTimer = self->_rotationToSupportedTimer;
      self->_rotationToSupportedTimer = v21;

      v23 = BCSceneLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        windowScene2 = [setupCopy windowScene];
        interfaceOrientation2 = [windowScene2 interfaceOrientation];
        *buf = 134217984;
        v34 = interfaceOrientation2;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "BKSceneController: Waiting for UIKit to rotate to the supported orientation from current orientation: %li", buf, 0xCu);
      }

      objc_destroyWeak(v29);
      objc_destroyWeak(&location);
    }

    _sceneManager2 = [(BKSceneController *)self _sceneManager];
    welcomePresenter = [(_BKBaseSceneController *)self welcomePresenter];
    [_sceneManager2 _setupWelcomeScreenWithPresenterIfNeeded:welcomePresenter];
  }
}

- (void)welcomePresenterFinishOngoingModalTransitionAnimations:(id)animations
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000595F0;
  v5[3] = &unk_100A03788;
  selfCopy = self;
  animationsCopy = animations;
  v4.receiver = selfCopy;
  v4.super_class = BKSceneController;
  v3 = animationsCopy;
  [(_BKBaseSceneController *)&v4 welcomePresenterFinishOngoingModalTransitionAnimations:v5];
}

- (id)ubiquityStatusMonitor
{
  v2 = +[BKAppDelegate delegate];
  ubiquityStatusMonitor = [v2 ubiquityStatusMonitor];

  return ubiquityStatusMonitor;
}

- (void)_showWelcomeScreen:(id)screen completion:(id)completion
{
  screenCopy = screen;
  completionCopy = completion;
  genericPresenting = [(BKSceneController *)self genericPresenting];
  presenterModalPresentingViewController = [genericPresenting presenterModalPresentingViewController];
  v10 = presenterModalPresentingViewController;
  if (presenterModalPresentingViewController)
  {
    rootViewController = presenterModalPresentingViewController;
  }

  else
  {
    rootBarCoordinator = [(BKSceneController *)self rootBarCoordinator];
    rootViewController = [rootBarCoordinator rootViewController];
  }

  presentedViewController = [rootViewController presentedViewController];

  if (presentedViewController)
  {
    do
    {
      presentedViewController2 = [rootViewController presentedViewController];

      v14PresentedViewController = [presentedViewController2 presentedViewController];

      rootViewController = presentedViewController2;
    }

    while (v14PresentedViewController);
  }

  else
  {
    presentedViewController2 = rootViewController;
  }

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100059A18;
  v28[3] = &unk_100A03948;
  v16 = presentedViewController2;
  v29 = v16;
  v17 = completionCopy;
  v31 = v17;
  v18 = screenCopy;
  v30 = v18;
  v19 = [v18 welcomeScreenViewControllerWithCompletion:v28];
  v20 = BCSceneLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v33 = v18;
    v34 = 2112;
    v35 = v16;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Showing the welcome screen for %@ on presenter %@", buf, 0x16u);
  }

  v21 = [[BKWelcomeNavigationController alloc] initWithRootViewController:v19];
  navigationBar = [(BKWelcomeNavigationController *)v21 navigationBar];
  [navigationBar setHidden:1];

  [(BKWelcomeNavigationController *)v21 setModalPresentationStyle:2];
  [(BKWelcomeNavigationController *)v21 setModalTransitionStyle:2];
  presentationController = [(BKWelcomeNavigationController *)v21 presentationController];
  [presentationController setDelegate:self];

  [(BKWelcomeNavigationController *)v21 setBkDelegate:self];
  transitionCoordinator = [v16 transitionCoordinator];
  if (transitionCoordinator)
  {
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100059B14;
    v25[3] = &unk_100A03970;
    v26 = v16;
    v27 = v21;
    [transitionCoordinator animateAlongsideTransition:0 completion:v25];
  }

  else
  {
    [v16 presentViewController:v21 withTransition:0 completion:0];
  }
}

- (CGSize)preferredContentSizeForNavigationController:(id)controller
{
  viewControllers = [controller viewControllers];
  firstObject = [viewControllers firstObject];

  [firstObject preferredContentSize];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (BCEngagementProvider)bc_engagementProvider
{
  v2 = +[BKAppDelegate delegate];
  engagementManager = [v2 engagementManager];

  return engagementManager;
}

- (id)analyticsManagerLibrary:(id)library
{
  v3 = +[BKAppDelegate delegate];
  mainLibrary = [v3 mainLibrary];

  return mainLibrary;
}

- (void)analyticsManagerForceEndSession:(id)session reason:(int64_t)reason
{
  sessionCopy = session;
  objc_initWeak(&location, self);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100059DCC;
  v11[3] = &unk_100A03998;
  objc_copyWeak(v13, &location);
  v7 = sessionCopy;
  v12 = v7;
  v13[1] = reason;
  v8 = objc_retainBlock(v11);
  if (v8)
  {
    if (+[NSThread isMainThread])
    {
      (v8[2])(v8);
    }

    else
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100059EB4;
      block[3] = &unk_100A03920;
      v10 = v8;
      dispatch_async(&_dispatch_main_q, block);
    }
  }

  objc_destroyWeak(v13);
  objc_destroyWeak(&location);
}

- (void)analyticsManagerDidRestoreSession:(id)session
{
  v3 = +[BKAppDelegate sceneManager];
  [v3 analyticsVisibilityUpdate];
}

- (BOOL)sceneSupportsMinifiedPresenting
{
  rootBarCoordinator = [(BKSceneController *)self rootBarCoordinator];
  v3 = rootBarCoordinator != 0;

  return v3;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sessionCopy = session;
  optionsCopy = options;
  sceneCopy = scene;
  scene = [(_BKBaseSceneController *)self scene];

  if (scene)
  {
    sub_10078929C();
  }

  objc_opt_class();
  v11 = BUDynamicCast();

  [(_BKBaseSceneController *)self setScene:v11];
  [v11 setController:self];
  bk_window = [(_BKBaseSceneController *)self bk_window];
  v13 = bk_window;
  if (bk_window)
  {
    [bk_window setWindowScene:v11];
    [v13 makeKeyAndVisible];
  }

  else
  {
    v14 = [(_BKBaseSceneController *)self _windowWithScene:v11 sceneType:[(_BKBaseSceneController *)self sceneType]];
    if ([(_BKBaseSceneController *)self sceneType]== 2)
    {
      [(BKSceneController *)self _setupAccountSceneForWindow:v14];
    }

    else
    {
      if ([(_BKBaseSceneController *)self sceneType]== 3)
      {
        [(BKSceneController *)self _setupEndOfBookSceneForWindow:v14 withSession:sessionCopy options:optionsCopy];
      }

      else
      {
        [(BKSceneController *)self _setupWithWindow:v14];
      }

      [(BKSceneController *)self setupStatusBar];
    }
  }
}

- (void)setupPlaceholderWindow
{
  bk_window = [(_BKBaseSceneController *)self bk_window];

  if (!bk_window)
  {
    v4 = +[BKAppDelegate anySceneController];
    scene = [v4 scene];

    screen = [(BKSceneController *)self screen];
    [screen setWantsSoftwareDimming:1];

    v6 = [(_BKBaseSceneController *)self _windowWithScene:scene sceneType:[(_BKBaseSceneController *)self sceneType]];
    [(BKSceneController *)self _setupWithWindow:v6];
    [v6 setHidden:1];
  }
}

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  bk_window = [(_BKBaseSceneController *)self bk_window];
  rootViewController = [bk_window rootViewController];
  v29 = [rootViewController im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL___BKSceneHosting];

  bk_window2 = [(_BKBaseSceneController *)self bk_window];
  rootViewController2 = [bk_window2 rootViewController];
  v9 = [rootViewController2 im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL___BKBookPresenting];

  newShowAssetTransaction = [(_BKBaseSceneController *)self newShowAssetTransaction];
  v11 = [v9 currentAssetPresentersForSingleSceneWithTransaction:newShowAssetTransaction];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v41;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v41 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v40 + 1) + 8 * i) assetPresenterPrepareForTermination];
      }

      v13 = [v11 countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v13);
  }

  [bk_window setHidden:1];
  _sceneManager = [(BKSceneController *)self _sceneManager];
  welcomePresenter = [(_BKBaseSceneController *)self welcomePresenter];
  [_sceneManager _welcomePresenterDidDisconnect:welcomePresenter];

  if ([(_BKBaseSceneController *)self sceneType]== 2)
  {
    v18 = v29;
    [v29 didDisconnectScene:disconnectCopy];
    [(BKSceneController *)self setBk_window:0];
LABEL_14:
    [(_BKBaseSceneController *)self setScene:0];
    goto LABEL_15;
  }

  rootBarCoordinator = [(BKSceneController *)self rootBarCoordinator];
  v18 = v29;
  if (rootBarCoordinator)
  {

LABEL_13:
    [v29 didDisconnectScene:disconnectCopy];
    goto LABEL_14;
  }

  if ([(_BKBaseSceneController *)self sceneType]== 3)
  {
    goto LABEL_13;
  }

  v27 = bk_window;
  v28 = disconnectCopy;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v20 = v11;
  v21 = [v20 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v37;
    do
    {
      for (j = 0; j != v22; j = j + 1)
      {
        if (*v37 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v36 + 1) + 8 * j);
        assetPresenterAssetID = [v25 assetPresenterAssetID];
        [v9 requestOpenBookMinified:assetPresenterAssetID transaction:newShowAssetTransaction force:1];

        [v25 assetPresenterPrepareForDismissal];
      }

      v22 = [v20 countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v22);
  }

  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10005A564;
  v30[3] = &unk_100A039C0;
  v31 = v20;
  v18 = v29;
  v32 = v29;
  disconnectCopy = v28;
  v33 = v28;
  bk_window = v27;
  v34 = v27;
  selfCopy = self;
  [v9 closeAllPresentersForSingleSceneWithTransaction:newShowAssetTransaction animated:0 completion:v30];

LABEL_15:
}

- (void)sceneDidBecomeActive:(id)active
{
  bk_window = [(_BKBaseSceneController *)self bk_window];
  [bk_window makeKeyAndVisible];
}

- (void)sceneWillEnterForeground:(id)foreground
{
  analyticsManager = [(BKSceneController *)self analyticsManager];
  [analyticsManager analyticsStartSession];

  [(_BKBaseSceneController *)self _interruptReadAloud:0];
  _sceneManager = [(BKSceneController *)self _sceneManager];
  welcomePresenter = [(_BKBaseSceneController *)self welcomePresenter];
  [_sceneManager _setCurrentWelcomePresenterIfNeeded:welcomePresenter];

  launchCoordinator = [(_BKBaseSceneController *)self launchCoordinator];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10005A828;
  v8[3] = &unk_100A038D0;
  v8[4] = self;
  [launchCoordinator appLaunchCoordinatorOnConditionMask:32 blockID:@"sceneWillEnterForeground" performBlock:v8];
}

- (void)sceneDidEnterBackground:(id)background
{
  [(_BKBaseSceneController *)self _interruptReadAloud:1];
  analyticsManager = [(BKSceneController *)self analyticsManager];
  [(BKSceneController *)self analyticsManagerForceEndSession:analyticsManager reason:1];

  launchCoordinator = [(_BKBaseSceneController *)self launchCoordinator];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10005A980;
  v6[3] = &unk_100A038D0;
  v6[4] = self;
  [launchCoordinator appLaunchCoordinatorOnConditionMask:32 blockID:@"sceneDidEnterBackground" performBlock:v6];
}

- (void)windowScene:(id)scene didUpdateCoordinateSpace:(id)space interfaceOrientation:(int64_t)orientation traitCollection:(id)collection
{
  sceneCopy = scene;
  collectionCopy = collection;
  rootBarCoordinator = [(BKSceneController *)self rootBarCoordinator];
  traitCollection = [sceneCopy traitCollection];
  [rootBarCoordinator windowSceneTraitCollectionDidChangeFrom:collectionCopy to:traitCollection];

  if ([(_BKBaseSceneController *)self sceneType]== 1)
  {
    keyWindow = [sceneCopy keyWindow];
    rootViewController = [keyWindow rootViewController];
    supportedInterfaceOrientations = [rootViewController supportedInterfaceOrientations];
    v15 = supportedInterfaceOrientations & (1 << [sceneCopy interfaceOrientation]);

    if (v15)
    {
      v16 = BCSceneLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "BKSceneController: UIKit rotated to the supported orientation", v19, 2u);
      }

      launchCoordinator = [(_BKBaseSceneController *)self launchCoordinator];
      [launchCoordinator signalConditionSatisfied:7];

      [(NSTimer *)self->_rotationToSupportedTimer invalidate];
      rotationToSupportedTimer = self->_rotationToSupportedTimer;
      self->_rotationToSupportedTimer = 0;
    }
  }
}

- (void)handleCreateSceneUserActivityWhenReady:(id)ready
{
  userInfo = [ready userInfo];
  v4 = +[NSMutableDictionary dictionary];
  objc_opt_class();
  v5 = BCContinuationActivityAssetIDKey;
  v6 = [userInfo objectForKeyedSubscript:BCContinuationActivityAssetIDKey];
  v7 = BUDynamicCast();

  if ([v7 length])
  {
    [(BKSceneController *)self setRequestAssetID:v7];
    [v4 setObject:v7 forKeyedSubscript:v5];
  }

  objc_opt_class();
  v8 = [userInfo objectForKeyedSubscript:BCBookDisplayTitle];
  v9 = BUDynamicCast();

  if ([v9 length])
  {
    [v4 setObject:v9 forKeyedSubscript:BCBookDisplayTitle];
  }

  [(BKSceneController *)self _handleOpenBookActivityWithAssetID:v7 isStateRestoration:0];
}

- (void)handleStateRestorationFromData:(id)data
{
  v4 = BCContinuationActivityAssetIDKey;
  dataCopy = data;
  v6 = [dataCopy objectForKeyedSubscript:v4];
  [(BKSceneController *)self setRequestAssetID:v6];

  v7.receiver = self;
  v7.super_class = BKSceneController;
  [(_BKBaseSceneController *)&v7 handleStateRestorationFromData:dataCopy];
}

- (id)_optionsForContinueOpenBookActivity:(BOOL)activity
{
  activityCopy = activity;
  v10.receiver = self;
  v10.super_class = BKSceneController;
  v5 = [(_BKBaseSceneController *)&v10 _optionsForContinueOpenBookActivity:?];
  v6 = [v5 mutableCopy];

  if (activityCopy)
  {
    rootBarCoordinator = [(BKSceneController *)self rootBarCoordinator];

    v8 = off_100A06B68;
    if (rootBarCoordinator)
    {
      v8 = off_100A06B50;
    }

    [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:*v8];
  }

  return v6;
}

- (void)_handleOpenBookActivityWithAssetID:(id)d isStateRestoration:(BOOL)restoration
{
  dCopy = d;
  launchCoordinator = [(_BKBaseSceneController *)self launchCoordinator];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10005AED8;
  v9[3] = &unk_100A039E8;
  restorationCopy = restoration;
  v10 = dCopy;
  selfCopy = self;
  v8 = dCopy;
  [launchCoordinator appLaunchCoordinatorOnConditionMask:65 blockID:@"_handleOpenBookActivityWithAssetID" performBlock:v9];
}

- (id)dataForStateRestoration
{
  v14.receiver = self;
  v14.super_class = BKSceneController;
  dataForStateRestoration = [(_BKBaseSceneController *)&v14 dataForStateRestoration];
  v4 = [dataForStateRestoration mutableCopy];

  rootBarCoordinator = [(BKSceneController *)self rootBarCoordinator];

  if (!rootBarCoordinator)
  {
    requestAssetID = [(BKSceneController *)self requestAssetID];
    if (requestAssetID)
    {
      v10 = requestAssetID;
      v11 = BCContinuationActivityAssetIDKey;
      v12 = [v4 objectForKeyedSubscript:BCContinuationActivityAssetIDKey];

      if (!v12)
      {
        requestAssetID2 = [(BKSceneController *)self requestAssetID];
        [v4 setObject:requestAssetID2 forKeyedSubscript:v11];
      }
    }
  }

  if ([(_BKBaseSceneController *)self sceneType]== 3)
  {
    userInfoForStateRestoration = [(BKSceneController *)self userInfoForStateRestoration];
    v7 = [userInfoForStateRestoration copy];

    v4 = v7;
  }

  return v4;
}

- (BOOL)isHostingRootBar
{
  rootBarCoordinator = [(BKSceneController *)self rootBarCoordinator];
  v3 = rootBarCoordinator != 0;

  return v3;
}

- (id)rootViewController
{
  bk_window = [(_BKBaseSceneController *)self bk_window];
  rootViewController = [bk_window rootViewController];

  return rootViewController;
}

- (id)flowControllerModalPresentingViewController
{
  rootViewController = [(BKSceneController *)self rootViewController];
  presentedViewController = [rootViewController presentedViewController];
  objc_opt_class();
  v4 = BUClassAndProtocolCast();

  if (v4)
  {
    v5 = v4;

    rootViewController = v5;
  }

  return rootViewController;
}

- (void)updateCloseTypeState:(int64_t)state
{
  bookFlowAssetPresenting = [(BKSceneController *)self bookFlowAssetPresenting];
  v4 = [bookFlowAssetPresenting presenterViewControllersConformingToProtocol:&OBJC_PROTOCOL___BKAssetPresenting];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) assetPresenterUpdateCloseTypeState];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)storeDidAttemptSignOut:(id)out
{
  if ([(_BKBaseSceneController *)self sceneType]== 2)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005B308;
    block[3] = &unk_100A033C8;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (BKMachineAuthorizationService)machineAuthorizationService
{
  selfCopy = self;
  v3 = sub_1007388CC();

  return v3;
}

@end