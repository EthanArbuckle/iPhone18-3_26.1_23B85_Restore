@interface LockScreenSceneDelegate
- (id)appSessionController;
- (void)mapsAppCoordinatorWillEndLockscreenSession;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidBecomeActive:(id)active;
- (void)sceneDidDisconnect:(id)disconnect;
@end

@implementation LockScreenSceneDelegate

- (void)mapsAppCoordinatorWillEndLockscreenSession
{
  v3 = sub_100005610();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[LockScreenSceneDelegate] screenshotting tearing down lockscreen content", buf, 2u);
  }

  lockScreenWindow = [(LockScreenSceneDelegate *)self lockScreenWindow];
  v5 = [lockScreenWindow snapshotViewAfterScreenUpdates:0];

  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_1007E1068;
  v12 = &unk_101661A90;
  selfCopy = self;
  v6 = [[FullscreenImageViewController alloc] initWithView:v5 scrollable:0];
  v14 = v6;
  [UIViewController _performWithoutDeferringTransitions:&v9];
  v7 = sub_100005610();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [(LockScreenSceneDelegate *)self lockScreenWindow:v9];
    *buf = 138412802;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    v20 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[LockScreenSceneDelegate] setup screenshot: %@ hosted by: %@ in window: %@", buf, 0x20u);
  }
}

- (id)appSessionController
{
  v2 = +[UIApplication sharedMapsDelegate];
  appSessionController = [v2 appSessionController];

  return appSessionController;
}

- (void)sceneDidBecomeActive:(id)active
{
  activeCopy = active;
  v4 = sub_100005610();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [activeCopy description];
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[LockScreenSceneDelegate] sceneDidBecomeActive: %@", &v6, 0xCu);
  }
}

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  v5 = sub_100005610();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [disconnectCopy description];
    *buf = 138412290;
    v31 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[LockScreenSceneDelegate] -sceneDidDisconnect: %@", buf, 0xCu);
  }

  lockScreenWindow = [(LockScreenSceneDelegate *)self lockScreenWindow];
  if (lockScreenWindow)
  {
    v8 = lockScreenWindow;
    screen = [disconnectCopy screen];
    displayIdentity = [screen displayIdentity];
    expectsSecureRendering = [displayIdentity expectsSecureRendering];

    if (expectsSecureRendering)
    {
      appSessionController = [(LockScreenSceneDelegate *)self appSessionController];
      activeiOSPlatformControllersToCoverSheetSceneAssociation = [appSessionController activeiOSPlatformControllersToCoverSheetSceneAssociation];
      platformController = [(LockScreenSceneDelegate *)self platformController];
      v15 = [activeiOSPlatformControllersToCoverSheetSceneAssociation objectForKey:platformController];

      mapsScene = [v15 mapsScene];
      delegate = [mapsScene delegate];

      chromeViewController = [delegate chromeViewController];
      [chromeViewController willMoveToOrFromSecureLockScreenUI:0];
      lockScreenWindow2 = [(LockScreenSceneDelegate *)self lockScreenWindow];
      [lockScreenWindow2 setHidden:1];

      v20 = sub_100005610();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Detaching from lock screen window", buf, 2u);
      }

      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_1007E14EC;
      v27[3] = &unk_101661A40;
      v27[4] = self;
      v21 = delegate;
      v28 = v21;
      v22 = chromeViewController;
      v29 = v22;
      [UIViewController _performWithoutDeferringTransitions:v27];
      window = [v21 window];
      [window makeKeyAndVisible];

      [v22 didMoveToOrFromSecureLockScreenUI:0];
      v24 = sub_100005610();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Disconnected from secure lock screen window", buf, 2u);
      }
    }
  }

  blsAssertion = self->_blsAssertion;
  if (blsAssertion)
  {
    [(BLSAssertion *)blsAssertion invalidate];
    v26 = self->_blsAssertion;
    self->_blsAssertion = 0;
  }
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  v11 = sceneCopy;
  v12 = sub_100005610();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [v11 description];
    *buf = 138412802;
    v51 = v13;
    v52 = 2112;
    v53 = sessionCopy;
    v54 = 2112;
    v55 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[LockScreenSceneDelegate] -scene:willConnectToSession:withOptions: %@, %@, %@", buf, 0x20u);
  }

  appSessionController = [(LockScreenSceneDelegate *)self appSessionController];
  currentlyNavigatingPlatformController = [appSessionController currentlyNavigatingPlatformController];

  if (currentlyNavigatingPlatformController)
  {
    appSessionController2 = [(LockScreenSceneDelegate *)self appSessionController];
    currentlyNavigatingPlatformController2 = [appSessionController2 currentlyNavigatingPlatformController];
    [(LockScreenSceneDelegate *)self setPlatformController:currentlyNavigatingPlatformController2];

    appSessionController3 = [(LockScreenSceneDelegate *)self appSessionController];
    activeiOSPlatformControllersToCoverSheetSceneAssociation = [appSessionController3 activeiOSPlatformControllersToCoverSheetSceneAssociation];
    platformController = [(LockScreenSceneDelegate *)self platformController];
    v21 = [activeiOSPlatformControllersToCoverSheetSceneAssociation objectForKey:platformController];

    [v21 setLockScreenScene:v11];
    mapsScene = [v21 mapsScene];
    delegate = [mapsScene delegate];

    chromeViewController = [delegate chromeViewController];
    if ([chromeViewController willMoveToOrFromSecureLockScreenUI:1])
    {
      lockScreenWindow = [(LockScreenSceneDelegate *)self lockScreenWindow];

      if (!lockScreenWindow)
      {
        v26 = sub_100005610();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v51 = v11;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Created lockScreenWindow for %@", buf, 0xCu);
        }

        v27 = [[LockScreenSecureWindow alloc] initWithWindowScene:v11];
        [(LockScreenSceneDelegate *)self setLockScreenWindow:v27];
      }

      v28 = sub_100005610();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "Attaching to lock screen window", buf, 2u);
      }

      v45[0] = _NSConcreteStackBlock;
      v45[1] = 3221225472;
      v45[2] = sub_1007E1AEC;
      v45[3] = &unk_101661A40;
      v46 = delegate;
      selfCopy = self;
      v29 = chromeViewController;
      v48 = v29;
      [UIViewController _performWithoutDeferringTransitions:v45];
      lockScreenWindow2 = [(LockScreenSceneDelegate *)self lockScreenWindow];
      [lockScreenWindow2 makeKeyAndVisible];

      [v29 didMoveToOrFromSecureLockScreenUI:1];
      platformController2 = [(LockScreenSceneDelegate *)self platformController];
      appSessionController4 = [(LockScreenSceneDelegate *)self appSessionController];
      primaryPlatformController = [appSessionController4 primaryPlatformController];

      if (platformController2 == primaryPlatformController)
      {
        platformController3 = [(LockScreenSceneDelegate *)self platformController];
        [platformController3 replaySessions];
      }

      if (!self->_blsAssertion)
      {
        _FBSScene = [v11 _FBSScene];
        v35 = [BLSRequestLiveUpdatingAttribute requestLiveUpdatingForFBSScene:_FBSScene];
        v49[0] = v35;
        v36 = +[BLSValidWhenBacklightInactiveAttribute ignoreWhenBacklightInactivates];
        v49[1] = v36;
        [NSArray arrayWithObjects:v49 count:2];
        v37 = optionsCopy;
        v39 = v38 = sessionCopy;
        v40 = [BLSAssertion acquireWithExplanation:@"Acquiring BLSAssertion for live updates" observer:0 attributes:v39];
        blsAssertion = self->_blsAssertion;
        self->_blsAssertion = v40;

        sessionCopy = v38;
        optionsCopy = v37;
      }

      v42 = sub_100005610();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "Connected to secure lock screen window", buf, 2u);
      }

      v43 = v46;
    }

    else
    {
      v43 = sub_100005610();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v51 = chromeViewController;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "Failed to prepare to run on the secure window: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v21 = sub_100005610();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failing to connect due to there not being a currently navigating platform controller", buf, 2u);
    }
  }
}

@end