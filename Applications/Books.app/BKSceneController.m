@interface BKSceneController
- (BAAnalyticsController)ba_analyticsController;
- (BCEngagementProvider)bc_engagementProvider;
- (BKMachineAuthorizationService)machineAuthorizationService;
- (BKMainFlowController)mainFlowController;
- (BKRootBarCoordinating)rootBarCoordinator;
- (BKSceneController)initWithSceneType:(unint64_t)a3 launchCoordinator:(id)a4 criticalAlertCoordinator:(id)a5;
- (BOOL)isHostingRootBar;
- (BOOL)sceneSupportsMinifiedPresenting;
- (BSUINativeFeedCardsPresenting)feedCardPresenting;
- (CGSize)preferredContentSizeForNavigationController:(id)a3;
- (id)_mainViewControllerForModalPresenting;
- (id)_optionsForContinueOpenBookActivity:(BOOL)a3;
- (id)analyticsManagerLibrary:(id)a3;
- (id)dataForStateRestoration;
- (id)flowControllerModalPresentingViewController;
- (id)flowControllers;
- (id)rootViewController;
- (id)screen;
- (id)ubiquityStatusMonitor;
- (void)_finishWindowSetup:(id)a3;
- (void)_handleOpenBookActivityWithAssetID:(id)a3 isStateRestoration:(BOOL)a4;
- (void)_setupWithWindow:(id)a3;
- (void)_showWelcomeScreen:(id)a3 completion:(id)a4;
- (void)analyticsManagerDidRestoreSession:(id)a3;
- (void)analyticsManagerForceEndSession:(id)a3 reason:(int64_t)a4;
- (void)handleCreateSceneUserActivityWhenReady:(id)a3;
- (void)handleStateRestorationFromData:(id)a3;
- (void)saveStateClosing:(BOOL)a3;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidBecomeActive:(id)a3;
- (void)sceneDidDisconnect:(id)a3;
- (void)sceneDidEnterBackground:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
- (void)setBk_window:(id)a3;
- (void)setRootBarCoordinator:(id)a3;
- (void)setupPlaceholderWindow;
- (void)setupRootViewController;
- (void)storeDidAttemptSignOut:(id)a3;
- (void)updateCloseTypeState:(int64_t)a3;
- (void)welcomePresenterFinishOngoingModalTransitionAnimations:(id)a3;
- (void)windowScene:(id)a3 didUpdateCoordinateSpace:(id)a4 interfaceOrientation:(int64_t)a5 traitCollection:(id)a6;
@end

@implementation BKSceneController

- (BAAnalyticsController)ba_analyticsController
{
  v2 = [(BKSceneController *)self analyticsManager];
  v3 = [v2 analyticsController];

  v4 = [v3 delegate];

  if (!v4)
  {
    sub_100789178();
  }

  v5 = [v3 applicationTracker];

  if (!v5)
  {
    sub_1007891B0();
  }

  return v3;
}

- (void)setRootBarCoordinator:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_100022E50(a3);

  swift_unknownObjectRelease();
}

- (BKRootBarCoordinating)rootBarCoordinator
{
  v2 = self;
  v3 = BKSceneController.rootBarCoordinator.getter();

  return v3;
}

- (void)setupRootViewController
{
  objc_opt_class();
  v3 = [(_BKBaseSceneController *)self bk_window];
  v4 = [v3 rootViewController];
  v7 = BUDynamicCast();

  v5 = [(BKSceneController *)self rootBarCoordinator];
  v6 = [v5 rootViewController];
  [v7 setRootViewController:v6];
}

- (BKSceneController)initWithSceneType:(unint64_t)a3 launchCoordinator:(id)a4 criticalAlertCoordinator:(id)a5
{
  v8 = a4;
  v9 = a5;
  v22.receiver = self;
  v22.super_class = BKSceneController;
  v10 = [(_BKBaseSceneController *)&v22 initWithSceneType:a3];
  v11 = v10;
  if (v10)
  {
    [(_BKBaseSceneController *)v10 setLaunchCoordinator:v8];
    [(_BKBaseSceneController *)v11 setCriticalAlertCoordinator:v9];
    v12 = objc_alloc_init(BKAppAnalyticsManager);
    [(BKSceneController *)v11 setAnalyticsManager:v12];

    v13 = [(BKSceneController *)v11 analyticsManager];
    [v13 setDelegate:v11];

    v14 = [(BKSceneController *)v11 analyticsManager];
    [v14 analyticsSetupTracking];

    v15 = [BKAnalyticsSessionHost alloc];
    v16 = [(BKSceneController *)v11 analyticsManager];
    v17 = [(BKAnalyticsSessionHost *)v15 initWithAnalyticsManager:v16];
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
    v8 = [(BKSceneController *)self rootBarCoordinator];
    [(BKMainFlowController *)self->_mainFlowController setRootBarCoordinator:v8];

    mainFlowController = self->_mainFlowController;
  }

  return mainFlowController;
}

- (id)flowControllers
{
  v2 = [(BKSceneController *)self mainFlowController];
  v5 = v2;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (void)saveStateClosing:(BOOL)a3
{
  v3 = a3;
  v4 = [(BKSceneController *)self mainFlowController];
  [v4 saveStateClosing:v3];
}

- (id)_mainViewControllerForModalPresenting
{
  v3 = [(BKSceneController *)self rootBarCoordinator];
  v4 = [v3 rootViewController];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(_BKBaseSceneController *)self bk_window];
    v6 = [v7 rootViewController];
  }

  return v6;
}

- (BSUINativeFeedCardsPresenting)feedCardPresenting
{
  v3 = [(BKSceneController *)self rootBarCoordinator];
  if (v3)
  {
    v4 = [(BKSceneController *)self rootBarCoordinator];
    v5 = [v4 selectedNavigationController];
    v6 = [v5 topViewController];
  }

  else
  {
    v6 = [(BKSceneController *)self flowControllerModalPresentingViewController];
  }

  return v6;
}

- (void)setBk_window:(id)a3
{
  v6.receiver = self;
  v6.super_class = BKSceneController;
  v4 = a3;
  [(_BKBaseSceneController *)&v6 setBk_window:v4];
  v5 = [(BKSceneController *)self interactionCoordinator:v6.receiver];
  [v5 setWindow:v4];
}

- (id)screen
{
  v3 = [(_BKBaseSceneController *)self scene];
  if (v3)
  {
    v4 = [(_BKBaseSceneController *)self scene];
    v5 = [v4 screen];
  }

  else
  {
    v5 = +[UIScreen mainScreen];
  }

  return v5;
}

- (void)_setupWithWindow:(id)a3
{
  v7 = a3;
  [(BKSceneController *)self setBk_window:v7];
  v4 = objc_alloc_init(BKUpgradeViewController);
  [(BKSceneController *)self setUpgradeViewController:v4];

  v5 = [(BKSceneController *)self upgradeViewController];
  [v5 _bk_setSceneController:self];

  v6 = [(BKSceneController *)self upgradeViewController];
  [v7 setRootViewController:v6];

  [v7 makeKeyAndVisible];
  [(BKSceneController *)self _finishWindowSetup:v7];
}

- (void)_finishWindowSetup:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(BKRootViewController);
  [(BKRootViewController *)v5 _bk_setSceneController:self];
  [v4 setRootViewController:v5];
  v6 = [v4 rootViewController];
  v7 = [v6 view];
  v8 = [(BKSceneController *)self upgradeViewController];
  v9 = [v8 view];
  [v7 addSubview:v9];

  v10 = [(BKSceneController *)self ba_analyticsController];
  v11 = [v10 applicationTracker];
  v12 = [v4 rootViewController];
  [v12 ba_setAnalyticsTracker:v11];

  v13 = [v4 rootViewController];
  [v13 setBc_engagementProviderSource:self];

  if ([(_BKBaseSceneController *)self sceneType]== 1)
  {
    v14 = [(BKSceneController *)self _sceneManager];
    v15 = [v14 rootBarCoordinatorForSceneController:self];
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
    v16 = [v4 rootViewController];
    v17 = [v16 supportedInterfaceOrientations];
    v18 = [v4 windowScene];
    v19 = [v18 interfaceOrientation];

    if ((v17 & (1 << v19)) != 0)
    {
      v20 = [(_BKBaseSceneController *)self launchCoordinator];
      [v20 signalConditionSatisfied:7];
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
        v24 = [v4 windowScene];
        v25 = [v24 interfaceOrientation];
        *buf = 134217984;
        v34 = v25;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "BKSceneController: Waiting for UIKit to rotate to the supported orientation from current orientation: %li", buf, 0xCu);
      }

      objc_destroyWeak(v29);
      objc_destroyWeak(&location);
    }

    v26 = [(BKSceneController *)self _sceneManager];
    v27 = [(_BKBaseSceneController *)self welcomePresenter];
    [v26 _setupWelcomeScreenWithPresenterIfNeeded:v27];
  }
}

- (void)welcomePresenterFinishOngoingModalTransitionAnimations:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000595F0;
  v5[3] = &unk_100A03788;
  v6 = self;
  v7 = a3;
  v4.receiver = v6;
  v4.super_class = BKSceneController;
  v3 = v7;
  [(_BKBaseSceneController *)&v4 welcomePresenterFinishOngoingModalTransitionAnimations:v5];
}

- (id)ubiquityStatusMonitor
{
  v2 = +[BKAppDelegate delegate];
  v3 = [v2 ubiquityStatusMonitor];

  return v3;
}

- (void)_showWelcomeScreen:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BKSceneController *)self genericPresenting];
  v9 = [v8 presenterModalPresentingViewController];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v12 = [(BKSceneController *)self rootBarCoordinator];
    v11 = [v12 rootViewController];
  }

  v13 = [v11 presentedViewController];

  if (v13)
  {
    do
    {
      v14 = [v11 presentedViewController];

      v15 = [v14 presentedViewController];

      v11 = v14;
    }

    while (v15);
  }

  else
  {
    v14 = v11;
  }

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100059A18;
  v28[3] = &unk_100A03948;
  v16 = v14;
  v29 = v16;
  v17 = v7;
  v31 = v17;
  v18 = v6;
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
  v22 = [(BKWelcomeNavigationController *)v21 navigationBar];
  [v22 setHidden:1];

  [(BKWelcomeNavigationController *)v21 setModalPresentationStyle:2];
  [(BKWelcomeNavigationController *)v21 setModalTransitionStyle:2];
  v23 = [(BKWelcomeNavigationController *)v21 presentationController];
  [v23 setDelegate:self];

  [(BKWelcomeNavigationController *)v21 setBkDelegate:self];
  v24 = [v16 transitionCoordinator];
  if (v24)
  {
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100059B14;
    v25[3] = &unk_100A03970;
    v26 = v16;
    v27 = v21;
    [v24 animateAlongsideTransition:0 completion:v25];
  }

  else
  {
    [v16 presentViewController:v21 withTransition:0 completion:0];
  }
}

- (CGSize)preferredContentSizeForNavigationController:(id)a3
{
  v3 = [a3 viewControllers];
  v4 = [v3 firstObject];

  [v4 preferredContentSize];
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
  v3 = [v2 engagementManager];

  return v3;
}

- (id)analyticsManagerLibrary:(id)a3
{
  v3 = +[BKAppDelegate delegate];
  v4 = [v3 mainLibrary];

  return v4;
}

- (void)analyticsManagerForceEndSession:(id)a3 reason:(int64_t)a4
{
  v6 = a3;
  objc_initWeak(&location, self);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100059DCC;
  v11[3] = &unk_100A03998;
  objc_copyWeak(v13, &location);
  v7 = v6;
  v12 = v7;
  v13[1] = a4;
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

- (void)analyticsManagerDidRestoreSession:(id)a3
{
  v3 = +[BKAppDelegate sceneManager];
  [v3 analyticsVisibilityUpdate];
}

- (BOOL)sceneSupportsMinifiedPresenting
{
  v2 = [(BKSceneController *)self rootBarCoordinator];
  v3 = v2 != 0;

  return v3;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v15 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [(_BKBaseSceneController *)self scene];

  if (v10)
  {
    sub_10078929C();
  }

  objc_opt_class();
  v11 = BUDynamicCast();

  [(_BKBaseSceneController *)self setScene:v11];
  [v11 setController:self];
  v12 = [(_BKBaseSceneController *)self bk_window];
  v13 = v12;
  if (v12)
  {
    [v12 setWindowScene:v11];
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
        [(BKSceneController *)self _setupEndOfBookSceneForWindow:v14 withSession:v15 options:v8];
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
  v3 = [(_BKBaseSceneController *)self bk_window];

  if (!v3)
  {
    v4 = +[BKAppDelegate anySceneController];
    v7 = [v4 scene];

    v5 = [(BKSceneController *)self screen];
    [v5 setWantsSoftwareDimming:1];

    v6 = [(_BKBaseSceneController *)self _windowWithScene:v7 sceneType:[(_BKBaseSceneController *)self sceneType]];
    [(BKSceneController *)self _setupWithWindow:v6];
    [v6 setHidden:1];
  }
}

- (void)sceneDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = [(_BKBaseSceneController *)self bk_window];
  v6 = [v5 rootViewController];
  v29 = [v6 im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL___BKSceneHosting];

  v7 = [(_BKBaseSceneController *)self bk_window];
  v8 = [v7 rootViewController];
  v9 = [v8 im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL___BKBookPresenting];

  v10 = [(_BKBaseSceneController *)self newShowAssetTransaction];
  v11 = [v9 currentAssetPresentersForSingleSceneWithTransaction:v10];
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

  [v5 setHidden:1];
  v16 = [(BKSceneController *)self _sceneManager];
  v17 = [(_BKBaseSceneController *)self welcomePresenter];
  [v16 _welcomePresenterDidDisconnect:v17];

  if ([(_BKBaseSceneController *)self sceneType]== 2)
  {
    v18 = v29;
    [v29 didDisconnectScene:v4];
    [(BKSceneController *)self setBk_window:0];
LABEL_14:
    [(_BKBaseSceneController *)self setScene:0];
    goto LABEL_15;
  }

  v19 = [(BKSceneController *)self rootBarCoordinator];
  v18 = v29;
  if (v19)
  {

LABEL_13:
    [v29 didDisconnectScene:v4];
    goto LABEL_14;
  }

  if ([(_BKBaseSceneController *)self sceneType]== 3)
  {
    goto LABEL_13;
  }

  v27 = v5;
  v28 = v4;
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
        v26 = [v25 assetPresenterAssetID];
        [v9 requestOpenBookMinified:v26 transaction:v10 force:1];

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
  v4 = v28;
  v33 = v28;
  v5 = v27;
  v34 = v27;
  v35 = self;
  [v9 closeAllPresentersForSingleSceneWithTransaction:v10 animated:0 completion:v30];

LABEL_15:
}

- (void)sceneDidBecomeActive:(id)a3
{
  v3 = [(_BKBaseSceneController *)self bk_window];
  [v3 makeKeyAndVisible];
}

- (void)sceneWillEnterForeground:(id)a3
{
  v4 = [(BKSceneController *)self analyticsManager];
  [v4 analyticsStartSession];

  [(_BKBaseSceneController *)self _interruptReadAloud:0];
  v5 = [(BKSceneController *)self _sceneManager];
  v6 = [(_BKBaseSceneController *)self welcomePresenter];
  [v5 _setCurrentWelcomePresenterIfNeeded:v6];

  v7 = [(_BKBaseSceneController *)self launchCoordinator];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10005A828;
  v8[3] = &unk_100A038D0;
  v8[4] = self;
  [v7 appLaunchCoordinatorOnConditionMask:32 blockID:@"sceneWillEnterForeground" performBlock:v8];
}

- (void)sceneDidEnterBackground:(id)a3
{
  [(_BKBaseSceneController *)self _interruptReadAloud:1];
  v4 = [(BKSceneController *)self analyticsManager];
  [(BKSceneController *)self analyticsManagerForceEndSession:v4 reason:1];

  v5 = [(_BKBaseSceneController *)self launchCoordinator];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10005A980;
  v6[3] = &unk_100A038D0;
  v6[4] = self;
  [v5 appLaunchCoordinatorOnConditionMask:32 blockID:@"sceneDidEnterBackground" performBlock:v6];
}

- (void)windowScene:(id)a3 didUpdateCoordinateSpace:(id)a4 interfaceOrientation:(int64_t)a5 traitCollection:(id)a6
{
  v8 = a3;
  v9 = a6;
  v10 = [(BKSceneController *)self rootBarCoordinator];
  v11 = [v8 traitCollection];
  [v10 windowSceneTraitCollectionDidChangeFrom:v9 to:v11];

  if ([(_BKBaseSceneController *)self sceneType]== 1)
  {
    v12 = [v8 keyWindow];
    v13 = [v12 rootViewController];
    v14 = [v13 supportedInterfaceOrientations];
    v15 = v14 & (1 << [v8 interfaceOrientation]);

    if (v15)
    {
      v16 = BCSceneLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "BKSceneController: UIKit rotated to the supported orientation", v19, 2u);
      }

      v17 = [(_BKBaseSceneController *)self launchCoordinator];
      [v17 signalConditionSatisfied:7];

      [(NSTimer *)self->_rotationToSupportedTimer invalidate];
      rotationToSupportedTimer = self->_rotationToSupportedTimer;
      self->_rotationToSupportedTimer = 0;
    }
  }
}

- (void)handleCreateSceneUserActivityWhenReady:(id)a3
{
  v10 = [a3 userInfo];
  v4 = +[NSMutableDictionary dictionary];
  objc_opt_class();
  v5 = BCContinuationActivityAssetIDKey;
  v6 = [v10 objectForKeyedSubscript:BCContinuationActivityAssetIDKey];
  v7 = BUDynamicCast();

  if ([v7 length])
  {
    [(BKSceneController *)self setRequestAssetID:v7];
    [v4 setObject:v7 forKeyedSubscript:v5];
  }

  objc_opt_class();
  v8 = [v10 objectForKeyedSubscript:BCBookDisplayTitle];
  v9 = BUDynamicCast();

  if ([v9 length])
  {
    [v4 setObject:v9 forKeyedSubscript:BCBookDisplayTitle];
  }

  [(BKSceneController *)self _handleOpenBookActivityWithAssetID:v7 isStateRestoration:0];
}

- (void)handleStateRestorationFromData:(id)a3
{
  v4 = BCContinuationActivityAssetIDKey;
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:v4];
  [(BKSceneController *)self setRequestAssetID:v6];

  v7.receiver = self;
  v7.super_class = BKSceneController;
  [(_BKBaseSceneController *)&v7 handleStateRestorationFromData:v5];
}

- (id)_optionsForContinueOpenBookActivity:(BOOL)a3
{
  v3 = a3;
  v10.receiver = self;
  v10.super_class = BKSceneController;
  v5 = [(_BKBaseSceneController *)&v10 _optionsForContinueOpenBookActivity:?];
  v6 = [v5 mutableCopy];

  if (v3)
  {
    v7 = [(BKSceneController *)self rootBarCoordinator];

    v8 = off_100A06B68;
    if (v7)
    {
      v8 = off_100A06B50;
    }

    [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:*v8];
  }

  return v6;
}

- (void)_handleOpenBookActivityWithAssetID:(id)a3 isStateRestoration:(BOOL)a4
{
  v6 = a3;
  v7 = [(_BKBaseSceneController *)self launchCoordinator];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10005AED8;
  v9[3] = &unk_100A039E8;
  v12 = a4;
  v10 = v6;
  v11 = self;
  v8 = v6;
  [v7 appLaunchCoordinatorOnConditionMask:65 blockID:@"_handleOpenBookActivityWithAssetID" performBlock:v9];
}

- (id)dataForStateRestoration
{
  v14.receiver = self;
  v14.super_class = BKSceneController;
  v3 = [(_BKBaseSceneController *)&v14 dataForStateRestoration];
  v4 = [v3 mutableCopy];

  v5 = [(BKSceneController *)self rootBarCoordinator];

  if (!v5)
  {
    v9 = [(BKSceneController *)self requestAssetID];
    if (v9)
    {
      v10 = v9;
      v11 = BCContinuationActivityAssetIDKey;
      v12 = [v4 objectForKeyedSubscript:BCContinuationActivityAssetIDKey];

      if (!v12)
      {
        v13 = [(BKSceneController *)self requestAssetID];
        [v4 setObject:v13 forKeyedSubscript:v11];
      }
    }
  }

  if ([(_BKBaseSceneController *)self sceneType]== 3)
  {
    v6 = [(BKSceneController *)self userInfoForStateRestoration];
    v7 = [v6 copy];

    v4 = v7;
  }

  return v4;
}

- (BOOL)isHostingRootBar
{
  v2 = [(BKSceneController *)self rootBarCoordinator];
  v3 = v2 != 0;

  return v3;
}

- (id)rootViewController
{
  v2 = [(_BKBaseSceneController *)self bk_window];
  v3 = [v2 rootViewController];

  return v3;
}

- (id)flowControllerModalPresentingViewController
{
  v2 = [(BKSceneController *)self rootViewController];
  v3 = [v2 presentedViewController];
  objc_opt_class();
  v4 = BUClassAndProtocolCast();

  if (v4)
  {
    v5 = v4;

    v2 = v5;
  }

  return v2;
}

- (void)updateCloseTypeState:(int64_t)a3
{
  v3 = [(BKSceneController *)self bookFlowAssetPresenting];
  v4 = [v3 presenterViewControllersConformingToProtocol:&OBJC_PROTOCOL___BKAssetPresenting];

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

- (void)storeDidAttemptSignOut:(id)a3
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
  v2 = self;
  v3 = sub_1007388CC();

  return v3;
}

@end