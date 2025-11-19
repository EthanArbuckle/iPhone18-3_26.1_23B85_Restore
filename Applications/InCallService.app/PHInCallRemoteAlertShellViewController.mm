@interface PHInCallRemoteAlertShellViewController
- (BOOL)isMicIndicatorVisible;
- (BOOL)isShowingHUD;
- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)a3;
- (BOOL)transitionFromBannerToDismissedIfNecessary;
- (PHInCallContainerControllerProtocol)containerController;
- (PHInCallRemoteAlertShellViewController)initWithCallDisplayStyleManager:(id)a3;
- (PHPIPController)pipController;
- (id)_childViewController;
- (id)makeVideoMessageViewControllerWithURL:(id)a3;
- (id)requestFromAlertActivationContextUserInfo:(id)a3;
- (unint64_t)supportedInterfaceOrientations;
- (void)_createRootViewController;
- (void)_handlePiPEndedAndShouldBePresentedFullScreen:(BOOL)a3 transitionIsComplete:(BOOL)a4 viewControllerToSteal:(id)a5;
- (void)_stealViewControllerFromPIP;
- (void)_willAppearInRemoteViewController:(id)a3;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)constrainPIPPlaceholderFullScreen;
- (void)dealloc;
- (void)handleButtonActions:(id)a3;
- (void)handleDeviceLockEventWithSourceType:(int64_t)a3 resultHandler:(id)a4;
- (void)handleDoubleHeightStatusBarTap;
- (void)handleHeadsetButtonLongPressed;
- (void)handleHeadsetButtonPressed;
- (void)handleLockButtonPressed;
- (void)handleVolumeDownButtonPressed;
- (void)handleVolumeUpButtonPressed;
- (void)noteActivatedForActivityContinuationWithIdentifier:(id)a3;
- (void)noteActivatedForCustomReason:(id)a3 withUserInfo:(id)a4;
- (void)pipControllerDidRequestReturnToFullScreenNotification:(id)a3;
- (void)pipControllerStateDidChange:(id)a3;
- (void)pipDidCancelNotification:(id)a3;
- (void)pipWillCancelNotification:(id)a3;
- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4;
- (void)removePIPPlaceholderView;
- (void)requestScreenTimeShieldIfNecessary;
- (void)sceneSessionDidChange;
- (void)showKeypadIfPossible;
- (void)showPIPPlaceholderView;
- (void)stopPIPAndStealViewController;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewWillAppear:(BOOL)a3;
- (void)willAnimateRotationToInterfaceOrientation:(int64_t)a3 duration:(double)a4;
@end

@implementation PHInCallRemoteAlertShellViewController

- (id)_childViewController
{
  v3 = [(PHInCallRemoteAlertShellViewController *)self childViewControllers];
  v4 = [v3 count];

  if (v4)
  {
    if (v4 != 1)
    {
      NSLog(@"InCall view controller shell expects to only have one child view controller, but it has found more than one...");
    }

    v5 = [(PHInCallRemoteAlertShellViewController *)self childViewControllers];
    v6 = [v5 lastObject];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (PHInCallRemoteAlertShellViewController)initWithCallDisplayStyleManager:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = PHInCallRemoteAlertShellViewController;
  v6 = [(PHInCallRemoteAlertShellViewController *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_callDisplayStyleManager, a3);
    v8 = +[NSNotificationCenter defaultCenter];
    v9 = [(PHInCallRemoteAlertShellViewController *)v7 pipController];
    [v8 addObserver:v7 selector:"pipDidCancelNotification:" name:@"PHPIPControllerDidCancelNotification" object:v9];

    v10 = +[NSNotificationCenter defaultCenter];
    v11 = [(PHInCallRemoteAlertShellViewController *)v7 pipController];
    [v10 addObserver:v7 selector:"pipWillCancelNotification:" name:@"PHPIPControllerWillCancelNotification" object:v11];

    v12 = +[NSNotificationCenter defaultCenter];
    v13 = [(PHInCallRemoteAlertShellViewController *)v7 pipController];
    [v12 addObserver:v7 selector:"pipControllerDidRequestReturnToFullScreenNotification:" name:@"PHPIPControllerDidRequestReturnToFullScreenNotification" object:v13];

    v14 = +[NSNotificationCenter defaultCenter];
    v15 = [(PHInCallRemoteAlertShellViewController *)v7 pipController];
    [v14 addObserver:v7 selector:"pipControllerStateDidChange:" name:@"PHPIPControllerStateDidChangeNotification" object:v15];
  }

  return v7;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PHInCallRemoteAlertShellViewController;
  [(PHInCallRemoteAlertShellViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v21.receiver = self;
  v21.super_class = PHInCallRemoteAlertShellViewController;
  [(PHInCallRemoteAlertShellViewController *)&v21 viewDidLoad];
  v3 = +[UIColor clearColor];
  v4 = [(PHInCallRemoteAlertShellViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [(PHInCallRemoteAlertShellViewController *)self view];
  [v5 setOpaque:0];

  v6 = [(PHInCallRemoteAlertShellViewController *)self view];
  v7 = [v6 layer];
  [v7 setAllowsGroupBlending:0];

  v8 = [(PHInCallRemoteAlertShellViewController *)self view];
  v9 = [v8 layer];
  [v9 setAllowsGroupOpacity:0];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100104860;
  v20[3] = &unk_100356988;
  v20[4] = self;
  v10 = objc_retainBlock(v20);
  v11 = [(PHInCallRemoteAlertShellViewController *)self pipController];
  if ([v11 pipState] == 2)
  {
    v12 = [(ICSCallDisplayStyleManager *)self->_callDisplayStyleManager callDisplayStyle];

    if (v12 != 4)
    {
      v13 = sub_10000B2A0();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100256A40();
      }

LABEL_10:
      [(PHInCallRemoteAlertShellViewController *)self setPipFinishedTransitionBlock:v10];
      goto LABEL_14;
    }
  }

  else
  {
  }

  v14 = [(PHInCallRemoteAlertShellViewController *)self pipController];
  v15 = [v14 pipState];

  v16 = sub_100004F84();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (v15 == 3)
  {
    if (v17)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "loadView: Appeared without a root view controller, but the PIP was animating so we'll create a new after a delay", buf, 2u);
    }

    goto LABEL_10;
  }

  if (v17)
  {
    v18 = [(PHInCallRemoteAlertShellViewController *)self pipController];
    v19 = [v18 pipState];
    *buf = 134217984;
    v23 = v19;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "loadView: Appeared without a root view controller so we'll create a new one (%ld)", buf, 0xCu);
  }

  (v10[2])(v10);
LABEL_14:
}

- (void)viewWillAppear:(BOOL)a3
{
  v13.receiver = self;
  v13.super_class = PHInCallRemoteAlertShellViewController;
  [(PHInCallRemoteAlertShellViewController *)&v13 viewWillAppear:a3];
  v4 = +[PHInCallUtilities sharedInstance];
  if ([v4 requestedVCPresentationWithStatusBar])
  {

LABEL_8:
    v9 = sub_100004F84();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = @"PHSuppressInCallStatusBarForFullscreenUIReason";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "requestedVCPresentationWithStatusBar, do not add status bar suppression %@", buf, 0xCu);
    }

    goto LABEL_11;
  }

  v5 = [(PHInCallRemoteAlertShellViewController *)self callDisplayStyleManager];
  v6 = [v5 callDisplayStyle];

  if (!v6)
  {
    goto LABEL_8;
  }

  if (![(PHInCallRemoteAlertShellViewController *)self hasStartedInitialSuppressionOfInCallStatusBarForFullscreenUIReason])
  {
    v7 = sub_100004F84();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = @"PHSuppressInCallStatusBarForFullscreenUIReason";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "add status bar suppression %@", buf, 0xCu);
    }

    v8 = +[PHInCallUtilities sharedInstance];
    [v8 startSuppressingInCallStatusBarForReason:@"PHSuppressInCallStatusBarForFullscreenUIReason"];

    [(PHInCallRemoteAlertShellViewController *)self setHasStartedInitialSuppressionOfInCallStatusBarForFullscreenUIReason:1];
  }

LABEL_11:
  if (CPIsInternalDevice())
  {
    v10 = [(PHInCallRemoteAlertShellViewController *)self hidEventMonitor];

    if (!v10)
    {
      v11 = +[PHHIDEventMonitor HIDEventMonitor];
      [(PHInCallRemoteAlertShellViewController *)self setHidEventMonitor:v11];
    }

    v12 = [(PHInCallRemoteAlertShellViewController *)self hidEventMonitor];
    [v12 start];
  }
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v8.receiver = self;
  v8.super_class = PHInCallRemoteAlertShellViewController;
  [(PHInCallRemoteAlertShellViewController *)&v8 viewDidMoveToWindow:v6 shouldAppearOrDisappear:v4];
  v7 = sub_100004F84();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v10 = v6;
    v11 = 1024;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "window: %@, shouldAppearOrDisappear: %d", buf, 0x12u);
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v14.receiver = self;
  v14.super_class = PHInCallRemoteAlertShellViewController;
  [(PHInCallRemoteAlertShellViewController *)&v14 viewDidAppear:a3];
  v4 = sub_100004F84();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(PHInCallRemoteAlertShellViewController *)self isViewLoaded];
    v6 = [(PHInCallRemoteAlertShellViewController *)self view];
    v7 = [v6 window];
    *buf = 67109378;
    v16 = v5;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "self.isViewLoaded: %d, self.view.window: %@", buf, 0x12u);
  }

  [ICSAriadne trace:4];
  v8 = [(PHInCallRemoteAlertShellViewController *)self view];
  v9 = [v8 window];
  v10 = [v9 _rootSheetPresentationController];
  [v10 _setShouldScaleDownBehindDescendantSheets:0];

  v11 = dispatch_time(0, 500000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100104D44;
  block[3] = &unk_100356988;
  block[4] = self;
  dispatch_after(v11, &_dispatch_main_q, block);
  v12 = +[PHInCallUtilities sharedInstance];
  [v12 startAllowingRingingCallStatusIndicator];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v13.receiver = self;
  v13.super_class = PHInCallRemoteAlertShellViewController;
  [(PHInCallRemoteAlertShellViewController *)&v13 viewDidDisappear:a3];
  v4 = sub_100004F84();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = @"PHSuppressInCallStatusBarForFullscreenUIReason";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "remove status bar suppression %@", buf, 0xCu);
  }

  v5 = +[PHInCallUtilities sharedInstance];
  [v5 stopSuppressingInCallStatusBarForReason:@"PHSuppressInCallStatusBarForFullscreenUIReason"];

  v6 = [(PHInCallRemoteAlertShellViewController *)self hidEventMonitor];
  [v6 stop];

  v7 = +[TUCallCenter sharedInstance];
  v8 = [v7 audioOrVideoCallWithStatus:4];

  if (v8)
  {
    v9 = [(PHInCallRemoteAlertShellViewController *)self callDisplayStyleManager];
    v10 = [v9 callDisplayStyle];

    if (v10 != 3)
    {
      v11 = +[UIApplication sharedApplication];
      v12 = [v11 delegate];

      [v12 requestPresentationForCall:v8 dialRequest:0];
    }
  }
}

- (PHInCallContainerControllerProtocol)containerController
{
  v3 = [(PHInCallRemoteAlertShellViewController *)self inCallRootViewController];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(PHInCallRemoteAlertShellViewController *)self screenSharingContainerViewController];
  }

  v6 = v5;

  return v6;
}

- (PHPIPController)pipController
{
  pipController = self->_pipController;
  if (!pipController)
  {
    v4 = [(PHInCallRemoteAlertShellViewController *)self callDisplayStyleManager];
    v5 = [v4 sceneType];

    if (v5)
    {
      v6 = +[PHPIPController newScreenSharingPIPController];
    }

    else
    {
      v6 = +[PHPIPController defaultPIPController];
    }

    v7 = self->_pipController;
    self->_pipController = v6;

    pipController = self->_pipController;
  }

  v8 = pipController;

  return v8;
}

- (void)sceneSessionDidChange
{
  v3 = [(PHInCallRemoteAlertShellViewController *)self pipController];
  [v3 sceneDidUpdate];

  v4 = [(PHInCallRemoteAlertShellViewController *)self inCallRootViewController];
  [v4 sceneDidConnect];
}

- (void)_createRootViewController
{
  v3 = [(ICSCallDisplayStyleManager *)self->_callDisplayStyleManager rootViewController];

  if (!v3)
  {
    v6 = [(PHInCallRemoteAlertShellViewController *)self callDisplayStyleManager];

    if (!v6)
    {
      v7 = objc_alloc_init(ICSCallDisplayStyleManager);
      [(ICSCallDisplayStyleManager *)v7 setCallDisplayStyle:+[ICSCallDisplayStyleManager callDisplayStyleToRequestForCurrentState]];
      v8 = +[UIApplication sharedApplication];
      v9 = [v8 delegate];
      v10 = [v9 currentInCallScene];
      v11 = [v10 session];
      v12 = [v11 persistentIdentifier];
      [(ICSCallDisplayStyleManager *)v7 setSceneSessionIdentifier:v12];

      [(PHInCallRemoteAlertShellViewController *)self setCallDisplayStyleManager:v7];
    }

    v13 = [(PHInCallRemoteAlertShellViewController *)self callDisplayStyleManager];
    v14 = [v13 sceneType];

    v5 = 0;
    if (v14 > 3)
    {
      if (v14 == 4)
      {
        if (self->_videoMessageRootViewController)
        {
          goto LABEL_22;
        }

        v24 = +[UIApplication sharedApplication];
        v25 = [v24 delegate];
        v26 = [v25 activationContext];
        v27 = [v26 videoMessageURL];

        v28 = +[UIApplication sharedApplication];
        v29 = [v28 delegate];
        [v29 setActivationContext:0];

        if (v27)
        {
          v30 = [(PHInCallRemoteAlertShellViewController *)self makeVideoMessageViewControllerWithURL:v27];
          [(PHInCallRemoteAlertShellViewController *)self setVideoMessageRootViewController:v30];

          v5 = [(PHInCallRemoteAlertShellViewController *)self videoMessageRootViewController];
        }

        else
        {
          v40 = sub_100004F84();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            sub_100256A80();
          }

          v41 = +[UIApplication sharedApplication];
          v42 = [v41 delegate];
          [v42 dismissVideoMessageSceneSession];

          v5 = 0;
        }

        goto LABEL_31;
      }

      if (v14 == 6)
      {
        v20 = objc_alloc_init(UIViewController);
        goto LABEL_24;
      }

      if (v14 != 5)
      {
        goto LABEL_32;
      }
    }

    else if (v14)
    {
      if (v14 != 1)
      {
        if (v14 == 2)
        {
          v15 = +[UIApplication sharedApplication];
          v16 = [v15 delegate];
          v17 = [v16 featureFlags];
          v18 = [v17 screenSharingDrawToHighlightEnabled];

          if (v18)
          {
            v19 = objc_alloc_init(ICSScreenSharingBroadcasterRootViewController);
            [(PHInCallRemoteAlertShellViewController *)self setScreenSharingBroadcasterViewController:v19];

            v20 = [(PHInCallRemoteAlertShellViewController *)self screenSharingBroadcasterViewController];
LABEL_24:
            v5 = v20;
            goto LABEL_32;
          }

          goto LABEL_22;
        }

LABEL_32:
        v4 = [(PHInCallRemoteAlertShellViewController *)self callDisplayStyleManager];
        [v4 setRootViewController:v5];
        goto LABEL_33;
      }

      if (self->_screenSharingContainerViewController)
      {
LABEL_22:
        v5 = 0;
        goto LABEL_32;
      }

      v31 = +[UIApplication sharedApplication];
      v32 = [v31 delegate];
      v33 = [v32 featureFlags];
      v34 = [v33 screenSharingDrawToHighlightEnabled];

      v35 = off_1003531D0;
      if (!v34)
      {
        v35 = off_100353248;
      }

      v36 = objc_alloc(*v35);
      v37 = [(PHInCallRemoteAlertShellViewController *)self callDisplayStyleManager];
      v38 = [v36 initWithCallDisplayStyleManager:v37];
      [(PHInCallRemoteAlertShellViewController *)self setScreenSharingContainerViewController:v38];

      v5 = [(PHInCallRemoteAlertShellViewController *)self screenSharingContainerViewController];
      v27 = [(PHInCallRemoteAlertShellViewController *)self pipController];
      v39 = [(PHInCallRemoteAlertShellViewController *)self screenSharingContainerViewController];
      [v39 setPipController:v27];

LABEL_31:
      goto LABEL_32;
    }

    if (!self->_inCallRootViewController)
    {
      v21 = [PHInCallRootViewController alloc];
      v22 = [(PHInCallRemoteAlertShellViewController *)self callDisplayStyleManager];
      v23 = [(PHInCallRootViewController *)v21 initWithCallDisplayStyleManager:v22];
      [(PHInCallRemoteAlertShellViewController *)self setInCallRootViewController:v23];

      v20 = [(PHInCallRemoteAlertShellViewController *)self inCallRootViewController];
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  v4 = sub_100004F84();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v59 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Not creating a new root view controller because one already exists", v59, 2u);
  }

  v5 = 0;
LABEL_33:

  v43 = [(PHInCallRemoteAlertShellViewController *)self view];
  [v43 bounds];
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v52 = [v5 view];
  [v52 setFrame:{v45, v47, v49, v51}];

  v53 = [v5 view];
  [v53 setAutoresizingMask:18];

  [v5 willMoveToParentViewController:self];
  v54 = [(PHInCallRemoteAlertShellViewController *)self view];
  v55 = [v5 view];
  [v54 addSubview:v55];

  [(PHInCallRemoteAlertShellViewController *)self addChildViewController:v5];
  [v5 didMoveToParentViewController:self];
  v56 = [(PHInCallRemoteAlertShellViewController *)self containerController];
  v57 = [v56 pipSourceProvider];
  v58 = [(PHInCallRemoteAlertShellViewController *)self pipController];
  [v58 setSourceProvider:v57];
}

- (void)stopPIPAndStealViewController
{
  v3 = sub_100004F84();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Stopping PIP and restoring its view controller", buf, 2u);
  }

  v4 = [(PHInCallRemoteAlertShellViewController *)self pipController];
  v5 = [v4 isPreparedToAnimateToFullScreen];

  if (v5)
  {
    [(PHInCallRemoteAlertShellViewController *)self _stealViewControllerFromPIP];
  }

  else
  {
    objc_initWeak(buf, self);
    v6 = [(PHInCallRemoteAlertShellViewController *)self pipController];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100105904;
    v7[3] = &unk_100356F60;
    objc_copyWeak(&v8, buf);
    [v6 manuallyStopPIPWithCompletion:v7];

    objc_destroyWeak(&v8);
    objc_destroyWeak(buf);
  }
}

- (void)_stealViewControllerFromPIP
{
  objc_initWeak(&location, self);
  v3 = [(PHInCallRemoteAlertShellViewController *)self pipController];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100105A20;
  v4[3] = &unk_1003598A8;
  objc_copyWeak(&v5, &location);
  [v3 stopPIPAndStealViewController:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_handlePiPEndedAndShouldBePresentedFullScreen:(BOOL)a3 transitionIsComplete:(BOOL)a4 viewControllerToSteal:(id)a5
{
  v5 = a3;
  v7 = a5;
  if (!v7)
  {
    goto LABEL_22;
  }

  v8 = [(PHInCallRemoteAlertShellViewController *)self inCallRootViewController];
  if (v8)
  {

    goto LABEL_6;
  }

  if (![v7 conformsToProtocol:&OBJC_PROTOCOL___PHInCallRootViewControllerProtocol])
  {
LABEL_6:
    v9 = sub_10000B2A0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "View controller stolen from PIP is not an InCallRootViewController: %@", buf, 0xCu);
    }

    goto LABEL_8;
  }

  [(PHInCallRemoteAlertShellViewController *)self setInCallRootViewController:v7];
LABEL_8:
  v10 = [(PHInCallRemoteAlertShellViewController *)self containerController];
  v11 = [v10 parentViewControllerForRestoringPiP];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = self;
  }

  v14 = v13;

  [v7 willMoveToParentViewController:v14];
  [(PHInCallRemoteAlertShellViewController *)v14 addChildViewController:v7];
  v15 = [(PHInCallRemoteAlertShellViewController *)v14 view];
  v16 = [v7 view];
  [v15 addSubview:v16];

  [v7 didMoveToParentViewController:v14];
  v17 = [(PHInCallRemoteAlertShellViewController *)self containerController];
  [v17 handlePIPViewControllerRestoredAfterPIPStopped:v7];

  [v7 viewWillAppear:1];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v18 = [v7 childViewControllers];
  v19 = [v18 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v27;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [*(*(&v26 + 1) + 8 * i) viewWillAppear:1];
      }

      v20 = [v18 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v20);
  }

  v23 = [(PHInCallRemoteAlertShellViewController *)self _remoteViewControllerProxy];
  [v23 setWhitePointAdaptivityStyle:{-[PHInCallRemoteAlertShellViewController preferredWhitePointAdaptivityStyle](self, "preferredWhitePointAdaptivityStyle")}];

  [(PHInCallRemoteAlertShellViewController *)self requestScreenTimeShieldIfNecessary];
  [(PHInCallRemoteAlertShellViewController *)self setNeedsStatusBarAppearanceUpdate];
  [(PHInCallRemoteAlertShellViewController *)self setNeedsUpdateOfHomeIndicatorAutoHidden];
  if (v5)
  {
    v24 = [(PHInCallRemoteAlertShellViewController *)self callDisplayStyleManager];
    v25 = [v24 callDisplayStyle];

    if (v25 == 4)
    {
      TUDispatchMainIfNecessary();
    }
  }

LABEL_22:
}

- (void)_willAppearInRemoteViewController:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PHInCallRemoteAlertShellViewController;
  [(PHInCallRemoteAlertShellViewController *)&v12 _willAppearInRemoteViewController:v4];
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [NSNumber numberWithInteger:[(PHInCallRemoteAlertShellViewController *)self preferredWhitePointAdaptivityStyle]];
    *buf = 138412290;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting WhitePointAdaptivityStyle to : %@", buf, 0xCu);
  }

  v7 = [(PHInCallRemoteAlertShellViewController *)self _remoteViewControllerProxy];
  [v7 setWhitePointAdaptivityStyle:{-[PHInCallRemoteAlertShellViewController preferredWhitePointAdaptivityStyle](self, "preferredWhitePointAdaptivityStyle")}];

  v8 = [(PHInCallRemoteAlertShellViewController *)self _remoteViewControllerProxy];
  [v8 setAllowsControlCenter:1];

  v9 = [(PHInCallRemoteAlertShellViewController *)self _childViewController];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(PHInCallRemoteAlertShellViewController *)self _childViewController];
    [v11 _willAppearInRemoteViewController:v4];
  }
}

- (void)requestScreenTimeShieldIfNecessary
{
  v3 = [(PHInCallRemoteAlertShellViewController *)self pendingRestrictedScreenTimeRequest];
  if (v3 && (v4 = v3, [(PHInCallRemoteAlertShellViewController *)self inCallRootViewController], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = sub_10010D80C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = [(PHInCallRemoteAlertShellViewController *)self pendingRestrictedScreenTimeRequest];
      v14 = 138412290;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Will request screen time alert for request %@", &v14, 0xCu);
    }

    [PHInCallRootViewController obtainDismissalAssertionForReason:@"PHScreenTimeAlertAssertionReason"];
    v9 = [(PHInCallRemoteAlertShellViewController *)self inCallRootViewController];
    v10 = [(PHInCallRemoteAlertShellViewController *)self pendingRestrictedScreenTimeRequest];
    [v9 forceUpdateCallControllerForFilteredRequest:v10];

    [(PHInCallRemoteAlertShellViewController *)self setPendingRestrictedScreenTimeRequest:0];
  }

  else
  {
    v11 = sub_10010D80C();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = [(PHInCallRemoteAlertShellViewController *)self pendingRestrictedScreenTimeRequest];
      v14 = 138412290;
      v15 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Not requesting screen time shield for filtered request: %@", &v14, 0xCu);
    }
  }
}

- (void)noteActivatedForCustomReason:(id)a3 withUserInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100004F84();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412546;
    v22 = v6;
    v23 = 2112;
    v24 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Activated for reason: %@, userInfo: %@", &v21, 0x16u);
  }

  if (![v6 isEqualToString:SBUIRemoteAlertActivationReasonActivatingForUILock])
  {
    if ([v6 isEqualToString:SOSRemoteAlertActivationReasonActivatingForSOSWithClicks])
    {
      v13 = SOSRemoteAlertActivationReasonActivatingForSOSAlertRestingScreen;
    }

    else
    {
      v14 = [v6 isEqualToString:SOSRemoteAlertActivationReasonActivatingForSOSWithKappa];
      v13 = SOSRemoteAlertActivationReasonActivatingForSOSAlertRestingScreen;
      if ((v14 & 1) == 0 && ([v6 isEqualToString:SOSRemoteAlertActivationReasonActivatingForSOSAlertRestingScreen] & 1) == 0 && !objc_msgSend(v6, "isEqualToString:", SOSRemoteAlertActivationReasonActivatingForSOSWithVolumeLockHold))
      {
        if ([v6 isEqualToString:SOSRemoteAlertActivationReasonActivatingForScreenTime])
        {
          v20 = [(PHInCallRemoteAlertShellViewController *)self requestFromAlertActivationContextUserInfo:v7];
          [(PHInCallRemoteAlertShellViewController *)self setPendingRestrictedScreenTimeRequest:v20];

          [(PHInCallRemoteAlertShellViewController *)self requestScreenTimeShieldIfNecessary];
        }

        goto LABEL_17;
      }
    }

    v15 = +[TUCallCenter sharedInstance];
    [v15 disconnectAllCalls];

    v16 = [v6 isEqualToString:v13];
    v17 = off_100359460;
    if (!v16)
    {
      v17 = off_100359418;
    }

    [PHInCallRootViewController obtainDismissalAssertionForReason:*v17];
    v18 = [(PHInCallRemoteAlertShellViewController *)self inCallRootViewController];
    [v18 setCurrentAlertButtonAction:0];

    v19 = [(PHInCallRemoteAlertShellViewController *)self inCallRootViewController];
    [v19 forceUpdateCallControllerForSOS];

    v12 = [(PHInCallRemoteAlertShellViewController *)self inCallRootViewController];
    [v12 dismissScreenTimeAlertHostIfNeeded];
    goto LABEL_16;
  }

  v9 = sub_100004F84();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v21) = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Notified that we were activated for ending all calls and locking", &v21, 2u);
  }

  v10 = [(PHInCallRemoteAlertShellViewController *)self _childViewController];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(PHInCallRemoteAlertShellViewController *)self _childViewController];
    [v12 handleActivationForEndAndLock];
LABEL_16:
  }

LABEL_17:
}

- (id)requestFromAlertActivationContextUserInfo:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:SOSRemoteAlertActivationContextUserInfoRequestURLStringKey];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [NSURL URLWithString:v3];
    if (v4)
    {
      v5 = [[TUDialRequest alloc] initWithURL:v4];
      if (!v5)
      {
        v6 = [[TUJoinConversationRequest alloc] initWithURL:v4];
        v7 = +[TUCallCenter sharedInstance];
        v8 = [v7 conversationManager];
        v9 = [v6 remoteMembers];
        v10 = [v6 conversationLink];
        v11 = [v8 activeConversationWithRemoteMembers:v9 andLink:v10];

        v12 = [v11 activeRemoteParticipants];
        if ([v12 count])
        {
          v13 = v11;
        }

        else
        {
          v13 = v6;
        }

        v5 = v13;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)noteActivatedForActivityContinuationWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = sub_100004F84();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Activated for activity continuation with identifier: %@", buf, 0xCu);
  }

  [PHInCallRootViewController obtainDismissalAssertionForReason:@"PHDismissalReasonWaitingForHandoff"];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100106718;
  v6[3] = &unk_1003598D0;
  v7 = v3;
  v5 = v3;
  [NSUserActivity _fetchUserActivityWithUUID:v5 completionHandler:v6];
}

- (void)handleDeviceLockEventWithSourceType:(int64_t)a3 resultHandler:(id)a4
{
  v6 = a4;
  v7 = [(PHInCallRemoteAlertShellViewController *)self _childViewController];
  v8 = [v7 conformsToProtocol:&OBJC_PROTOCOL___PHInCallHardwareButtonEventHandlerProtocol];

  if (v8)
  {
    v10 = [(PHInCallRemoteAlertShellViewController *)self _childViewController];
    [v10 handleDeviceLockEventWithSourceType:a3 resultHandler:v6];
  }

  else
  {
    v9 = sub_100009960();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "PHInCallRemoteAlertShellViewController does not have a child VC that can handle button events", buf, 2u);
    }

    (*(v6 + 2))(v6, 0);
  }
}

- (void)handleLockButtonPressed
{
  v3 = [(PHInCallRemoteAlertShellViewController *)self _childViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(PHInCallRemoteAlertShellViewController *)self _childViewController];
    [v5 handleLockButtonPressed];
  }
}

- (void)handleVolumeUpButtonPressed
{
  v3 = [(PHInCallRemoteAlertShellViewController *)self _childViewController];
  v4 = [v3 conformsToProtocol:&OBJC_PROTOCOL___PHInCallHardwareButtonEventHandlerProtocol];

  if (v4)
  {
    v5 = [(PHInCallRemoteAlertShellViewController *)self _childViewController];
    [v5 handleVolumeUpButtonPressed];
  }
}

- (void)handleVolumeDownButtonPressed
{
  v3 = [(PHInCallRemoteAlertShellViewController *)self _childViewController];
  v4 = [v3 conformsToProtocol:&OBJC_PROTOCOL___PHInCallHardwareButtonEventHandlerProtocol];

  if (v4)
  {
    v5 = [(PHInCallRemoteAlertShellViewController *)self _childViewController];
    [v5 handleVolumeDownButtonPressed];
  }
}

- (void)handleHeadsetButtonPressed
{
  v3 = [(PHInCallRemoteAlertShellViewController *)self _childViewController];
  v4 = [v3 conformsToProtocol:&OBJC_PROTOCOL___PHInCallHardwareButtonEventHandlerProtocol];

  if (v4)
  {
    v5 = [(PHInCallRemoteAlertShellViewController *)self _childViewController];
    [v5 handleHeadsetButtonPressed];
  }
}

- (void)handleHeadsetButtonLongPressed
{
  v3 = [(PHInCallRemoteAlertShellViewController *)self _childViewController];
  v4 = [v3 conformsToProtocol:&OBJC_PROTOCOL___PHInCallHardwareButtonEventHandlerProtocol];

  if (v4)
  {
    v5 = [(PHInCallRemoteAlertShellViewController *)self _childViewController];
    [v5 handleHeadsetButtonLongPressed];
  }
}

- (void)handleDoubleHeightStatusBarTap
{
  v3 = [(PHInCallRemoteAlertShellViewController *)self _childViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(PHInCallRemoteAlertShellViewController *)self _childViewController];
    [v5 handleDoubleHeightStatusBarTap];
  }
}

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = sub_100004F84();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [NSNumber numberWithInteger:[(PHInCallRemoteAlertShellViewController *)self preferredWhitePointAdaptivityStyle]];
    *buf = 138412290;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Setting WhitePointAdaptivityStyle to : %@", buf, 0xCu);
  }

  v10 = [(PHInCallRemoteAlertShellViewController *)self _remoteViewControllerProxy];
  [v10 setWhitePointAdaptivityStyle:{-[PHInCallRemoteAlertShellViewController preferredWhitePointAdaptivityStyle](self, "preferredWhitePointAdaptivityStyle")}];

  v11.receiver = self;
  v11.super_class = PHInCallRemoteAlertShellViewController;
  [(PHInCallRemoteAlertShellViewController *)&v11 configureWithContext:v7 completion:v6];
}

- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100004F84();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "context: %@", &v14, 0xCu);
  }

  v9 = [v6 actions];
  [(PHInCallRemoteAlertShellViewController *)self handleButtonActions:v9];

  v10 = [v6 reason];
  v11 = [v6 userInfo];
  [(PHInCallRemoteAlertShellViewController *)self noteActivatedForCustomReason:v10 withUserInfo:v11];

  if (+[PHInCallUIUtilities isSpringBoardPasscodeLocked])
  {
    v12 = [(PHInCallRemoteAlertShellViewController *)self inCallRootViewController];
    [v12 prepareForDeviceLock];
  }

  if (v7)
  {
    v13 = sub_100004F84();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Calling completion block", &v14, 2u);
    }

    v7[2](v7);
  }
}

- (void)handleButtonActions:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38[0] = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "buttonActions: %@", buf, 0xCu);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = &_s16CommunicationsUI29CallTranslationLanguagePickerV05SwiftB04ViewAAMc_ptr;
    v10 = *v34;
    *&v7 = 67109378;
    v31 = v7;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v34 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v33 + 1) + 8 * i);
        v13 = sub_100004F84();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v38[0] = v12;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Handling current SBUIRemoteAlertButtonAction: %@", buf, 0xCu);
        }

        v14 = [(PHInCallRemoteAlertShellViewController *)self inCallRootViewController];
        [v14 setCurrentAlertButtonAction:v12];

        v15 = [v9[391] sharedInstance];
        v16 = [v15 incomingCall];
        v17 = v16;
        if (v16)
        {
          v18 = v16;
        }

        else
        {
          v19 = [v9[391] sharedInstance];
          v18 = [v19 incomingVideoCall];
        }

        v20 = +[PHSOSViewController isSOSDismissalAssertionActive];
        if ((v20 & 1) != 0 || v18 && ([v18 shouldSuppressRingtone] & 1) == 0)
        {
          v21 = sub_100004F84();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v31;
            LODWORD(v38[0]) = v20;
            WORD2(v38[0]) = 2112;
            *(v38 + 6) = v18;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "dismissalAssertions contains PHSOSCallAssertionReason: %d; incomingCall = %@\nSending response that we have handled all events", buf, 0x12u);
          }

          v22 = [(PHInCallRemoteAlertShellViewController *)self inCallRootViewController];
          [v22 setCurrentAlertButtonAction:0];
        }

        v23 = [v12 events];
        v24 = sub_100004F84();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v38[0] = v23;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[alertAction events]: %ld", buf, 0xCu);
        }

        if (v23)
        {
          v25 = sub_100004F84();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "alertAction events contained SBUIRemoteAlertServiceButtonEventLockButton", buf, 2u);
          }

          [(PHInCallRemoteAlertShellViewController *)self handleLockButtonPressed];
          if ((v23 & 2) == 0)
          {
LABEL_23:
            if ((v23 & 4) == 0)
            {
              goto LABEL_24;
            }

            goto LABEL_34;
          }
        }

        else if ((v23 & 2) == 0)
        {
          goto LABEL_23;
        }

        v26 = sub_100004F84();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "alertAction events contained SBUIRemoteAlertServiceButtonEventVolumeUpButton", buf, 2u);
        }

        [(PHInCallRemoteAlertShellViewController *)self handleVolumeUpButtonPressed];
        if ((v23 & 4) == 0)
        {
LABEL_24:
          if ((v23 & 8) == 0)
          {
            goto LABEL_25;
          }

          goto LABEL_37;
        }

LABEL_34:
        v27 = sub_100004F84();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "alertAction events contained SBUIRemoteAlertServiceButtonEventVolumeDownButton", buf, 2u);
        }

        [(PHInCallRemoteAlertShellViewController *)self handleVolumeDownButtonPressed];
        if ((v23 & 8) == 0)
        {
LABEL_25:
          if ((v23 & 0x20) == 0)
          {
            goto LABEL_26;
          }

          goto LABEL_40;
        }

LABEL_37:
        v28 = sub_100004F84();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "alertAction events contained SBUIRemoteAlertServiceButtonEventHeadsetButton", buf, 2u);
        }

        [(PHInCallRemoteAlertShellViewController *)self handleHeadsetButtonPressed];
        if ((v23 & 0x20) == 0)
        {
LABEL_26:
          if ((v23 & 0x10) == 0)
          {
            goto LABEL_46;
          }

LABEL_43:
          v30 = sub_100004F84();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "alertAction events contained SBUIRemoteAlertServiceButtonEventHomeButton", buf, 2u);
          }

          [(PHInCallRemoteAlertShellViewController *)self handleHomeButtonPressed];
          goto LABEL_46;
        }

LABEL_40:
        v29 = sub_100004F84();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "alertAction events contained SBUIRemoteAlertServiceButtonEventHeadsetButtonLongPress", buf, 2u);
        }

        [(PHInCallRemoteAlertShellViewController *)self handleHeadsetButtonLongPressed];
        if ((v23 & 0x10) != 0)
        {
          goto LABEL_43;
        }

LABEL_46:

        v9 = &_s16CommunicationsUI29CallTranslationLanguagePickerV05SwiftB04ViewAAMc_ptr;
      }

      v8 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v8);
  }
}

- (void)willAnimateRotationToInterfaceOrientation:(int64_t)a3 duration:(double)a4
{
  v6 = [(PHInCallRemoteAlertShellViewController *)self childViewControllers];
  v7 = [v6 lastObject];

  if (objc_opt_respondsToSelector())
  {
    [v7 willAnimateRotationToInterfaceOrientation:a3 duration:a4];
  }
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)a3
{
  v4 = [(PHInCallRemoteAlertShellViewController *)self childViewControllers];
  v5 = [v4 lastObject];

  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 shouldAutorotateToInterfaceOrientation:a3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)supportedInterfaceOrientations
{
  if (+[PHUIConfiguration canAutoRotateInCallUIForFaceTimeAudio](PHUIConfiguration, "canAutoRotateInCallUIForFaceTimeAudio") && (+[PHUIConfiguration canAutoRotateInCallUIForFaceTime]& 1) != 0)
  {
    return 30;
  }

  v4 = [(PHInCallRemoteAlertShellViewController *)self callDisplayStyleManager];
  v5 = [v4 sceneType];

  if (v5 != 1)
  {
    goto LABEL_9;
  }

  v6 = +[UIApplication sharedApplication];
  v7 = [v6 delegate];
  v8 = [v7 featureFlags];
  v9 = [v8 screenSharingDrawToHighlightEnabled];

  if (v9)
  {
    v10 = [(PHInCallRemoteAlertShellViewController *)self childViewControllers];
    v11 = [v10 lastObject];

    v12 = [v11 supportedInterfaceOrientations];
    return v12;
  }

  v13 = +[UIApplication sharedApplication];
  v14 = [v13 delegate];
  v15 = [v14 featureFlags];
  v16 = [v15 supportsScreenSharing];

  if (v16)
  {
    return 26;
  }

LABEL_9:
  v17 = [(PHInCallRemoteAlertShellViewController *)self callDisplayStyleManager];
  v18 = [v17 callDisplayStyle];

  if (v18 == 3)
  {
    return 24;
  }

  else
  {
    return 2;
  }
}

- (void)pipWillCancelNotification:(id)a3
{
  v4 = a3;
  v5 = sub_10000B2A0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(PHInCallRemoteAlertShellViewController *)self pipController];
    *buf = 138543362;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PiP will cancel: %{public}@", buf, 0xCu);
  }

  v8 = [(PHInCallRemoteAlertShellViewController *)self pipFinishedCancellationBlock];

  if (v8)
  {
    v9 = sub_10000B2A0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100256BB0();
    }
  }

  else
  {
    objc_initWeak(buf, self);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100107AD8;
    v10[3] = &unk_100356F60;
    objc_copyWeak(&v11, buf);
    [(PHInCallRemoteAlertShellViewController *)self setPipFinishedCancellationBlock:v10];
    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }
}

- (void)pipDidCancelNotification:(id)a3
{
  v4 = sub_10000B2A0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = [(PHInCallRemoteAlertShellViewController *)self pipController];
    v13 = 138412290;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PiP did cancel: %@", &v13, 0xCu);
  }

  v7 = [(PHInCallRemoteAlertShellViewController *)self pipController];
  if ([v7 pipState])
  {

    goto LABEL_5;
  }

  v10 = [(PHInCallRemoteAlertShellViewController *)self pipFinishedTransitionBlock];

  if (!v10)
  {
LABEL_5:
    v8 = [(PHInCallRemoteAlertShellViewController *)self pipFinishedCancellationBlock];

    if (v8)
    {
      v9 = [(PHInCallRemoteAlertShellViewController *)self pipFinishedCancellationBlock];
      v9[2]();

      [(PHInCallRemoteAlertShellViewController *)self setPipFinishedCancellationBlock:0];
    }

    return;
  }

  v11 = sub_10000B2A0();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "PIP state did change and we have a pending transition block - we'll run that block now", &v13, 2u);
  }

  v12 = [(PHInCallRemoteAlertShellViewController *)self pipFinishedTransitionBlock];
  v12[2]();

  [(PHInCallRemoteAlertShellViewController *)self setPipFinishedTransitionBlock:0];
}

- (void)pipControllerDidRequestReturnToFullScreenNotification:(id)a3
{
  v4 = a3;
  v5 = sub_10000B2A0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    v13 = self;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ is handling notification %@", &v12, 0x16u);
  }

  v6 = [(PHInCallRemoteAlertShellViewController *)self pipController];
  v7 = [v6 windowForTransitionAnimation];
  v8 = [(PHInCallRemoteAlertShellViewController *)self view];
  v9 = [v8 window];
  v10 = [v7 isEqual:v9];

  if (v10)
  {
    [(PHInCallRemoteAlertShellViewController *)self stopPIPAndStealViewController];
  }

  else
  {
    v11 = sub_10000B2A0();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100256BF0();
    }
  }
}

- (void)pipControllerStateDidChange:(id)a3
{
  v4 = [(PHInCallRemoteAlertShellViewController *)self pipController];
  v5 = [v4 pipState];

  if (v5 == 2)
  {

    [(PHInCallRemoteAlertShellViewController *)self showPIPPlaceholderView];
  }

  else
  {
    v6 = [(PHInCallRemoteAlertShellViewController *)self pipController];
    v7 = [v6 pipState];

    if (v7 == 3)
    {

      [(PHInCallRemoteAlertShellViewController *)self removePIPPlaceholderView];
    }
  }
}

- (void)showPIPPlaceholderView
{
  v3 = [(PHInCallRemoteAlertShellViewController *)self pipPlaceholderView];
  if (!v3 || (v4 = v3, -[PHInCallRemoteAlertShellViewController pipPlaceholderView](self, "pipPlaceholderView"), v5 = objc_claimAutoreleasedReturnValue(), [v5 superview], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v4, !v6))
  {
    v7 = sub_10000B2A0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Setting up PIP placeholder view to show in app switcher while calls is PIPped", v16, 2u);
    }

    v8 = objc_alloc_init(AVPictureInPictureIndicatorView);
    [(PHInCallRemoteAlertShellViewController *)self setPipPlaceholderView:v8];

    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"PIP_PLACEHOLDER_MESSAGE" value:&stru_100361FD0 table:@"InCallService"];
    v11 = [(PHInCallRemoteAlertShellViewController *)self pipPlaceholderView];
    [v11 setCustomMessage:v10];

    v12 = +[UIColor blackColor];
    v13 = [(PHInCallRemoteAlertShellViewController *)self pipPlaceholderView];
    [v13 setBackgroundColor:v12];

    v14 = [(PHInCallRemoteAlertShellViewController *)self view];
    v15 = [(PHInCallRemoteAlertShellViewController *)self pipPlaceholderView];
    [v14 addSubview:v15];

    [(PHInCallRemoteAlertShellViewController *)self constrainPIPPlaceholderFullScreen];
  }
}

- (void)constrainPIPPlaceholderFullScreen
{
  v3 = [(PHInCallRemoteAlertShellViewController *)self pipPlaceholderView];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v24 = [(PHInCallRemoteAlertShellViewController *)self pipPlaceholderView];
  v22 = [v24 topAnchor];
  v23 = [(PHInCallRemoteAlertShellViewController *)self view];
  v21 = [v23 topAnchor];
  v20 = [v22 constraintEqualToAnchor:v21];
  v25[0] = v20;
  v19 = [(PHInCallRemoteAlertShellViewController *)self pipPlaceholderView];
  v17 = [v19 bottomAnchor];
  v18 = [(PHInCallRemoteAlertShellViewController *)self view];
  v16 = [v18 bottomAnchor];
  v15 = [v17 constraintEqualToAnchor:v16];
  v25[1] = v15;
  v14 = [(PHInCallRemoteAlertShellViewController *)self pipPlaceholderView];
  v4 = [v14 leadingAnchor];
  v5 = [(PHInCallRemoteAlertShellViewController *)self view];
  v6 = [v5 leadingAnchor];
  v7 = [v4 constraintEqualToAnchor:v6];
  v25[2] = v7;
  v8 = [(PHInCallRemoteAlertShellViewController *)self pipPlaceholderView];
  v9 = [v8 trailingAnchor];
  v10 = [(PHInCallRemoteAlertShellViewController *)self view];
  v11 = [v10 trailingAnchor];
  v12 = [v9 constraintEqualToAnchor:v11];
  v25[3] = v12;
  v13 = [NSArray arrayWithObjects:v25 count:4];
  [NSLayoutConstraint activateConstraints:v13];
}

- (void)removePIPPlaceholderView
{
  v3 = sub_10000B2A0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Removing PIP placeholder view", v5, 2u);
  }

  v4 = [(PHInCallRemoteAlertShellViewController *)self pipPlaceholderView];
  [v4 removeFromSuperview];

  [(PHInCallRemoteAlertShellViewController *)self setPipPlaceholderView:0];
}

- (void)showKeypadIfPossible
{
  v3 = [(PHInCallRemoteAlertShellViewController *)self inCallRootViewController];

  if (v3)
  {
    v4 = [(PHInCallRemoteAlertShellViewController *)self inCallRootViewController];
    [v4 showKeypadIfPossible];
  }
}

- (BOOL)transitionFromBannerToDismissedIfNecessary
{
  v3 = [(PHInCallRemoteAlertShellViewController *)self inCallRootViewController];

  if (!v3)
  {
    return 0;
  }

  v4 = [(PHInCallRemoteAlertShellViewController *)self inCallRootViewController];
  v5 = [v4 transitionFromBannerToDismissedIfNecessary];

  return v5;
}

- (BOOL)isShowingHUD
{
  v2 = [(PHInCallRemoteAlertShellViewController *)self inCallRootViewController];
  v3 = [v2 isShowingHUD];

  return v3;
}

- (BOOL)isMicIndicatorVisible
{
  if ([(PHInCallRemoteAlertShellViewController *)self isShowingHUD])
  {
    return 1;
  }

  v4 = [(PHInCallRemoteAlertShellViewController *)self inCallRootViewController];
  v5 = [v4 isShowing6UP];

  return v5;
}

- (id)makeVideoMessageViewControllerWithURL:(id)a3
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  v10 = sub_1001A8370(v8);

  (*(v5 + 8))(v8, v4);

  return v10;
}

@end