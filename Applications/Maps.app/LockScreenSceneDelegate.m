@interface LockScreenSceneDelegate
- (id)appSessionController;
- (void)mapsAppCoordinatorWillEndLockscreenSession;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidBecomeActive:(id)a3;
- (void)sceneDidDisconnect:(id)a3;
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

  v4 = [(LockScreenSceneDelegate *)self lockScreenWindow];
  v5 = [v4 snapshotViewAfterScreenUpdates:0];

  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_1007E1068;
  v12 = &unk_101661A90;
  v13 = self;
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
  v3 = [v2 appSessionController];

  return v3;
}

- (void)sceneDidBecomeActive:(id)a3
{
  v3 = a3;
  v4 = sub_100005610();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [v3 description];
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[LockScreenSceneDelegate] sceneDidBecomeActive: %@", &v6, 0xCu);
  }
}

- (void)sceneDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = sub_100005610();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 description];
    *buf = 138412290;
    v31 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[LockScreenSceneDelegate] -sceneDidDisconnect: %@", buf, 0xCu);
  }

  v7 = [(LockScreenSceneDelegate *)self lockScreenWindow];
  if (v7)
  {
    v8 = v7;
    v9 = [v4 screen];
    v10 = [v9 displayIdentity];
    v11 = [v10 expectsSecureRendering];

    if (v11)
    {
      v12 = [(LockScreenSceneDelegate *)self appSessionController];
      v13 = [v12 activeiOSPlatformControllersToCoverSheetSceneAssociation];
      v14 = [(LockScreenSceneDelegate *)self platformController];
      v15 = [v13 objectForKey:v14];

      v16 = [v15 mapsScene];
      v17 = [v16 delegate];

      v18 = [v17 chromeViewController];
      [v18 willMoveToOrFromSecureLockScreenUI:0];
      v19 = [(LockScreenSceneDelegate *)self lockScreenWindow];
      [v19 setHidden:1];

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
      v21 = v17;
      v28 = v21;
      v22 = v18;
      v29 = v22;
      [UIViewController _performWithoutDeferringTransitions:v27];
      v23 = [v21 window];
      [v23 makeKeyAndVisible];

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

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v8;
  v12 = sub_100005610();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [v11 description];
    *buf = 138412802;
    v51 = v13;
    v52 = 2112;
    v53 = v9;
    v54 = 2112;
    v55 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[LockScreenSceneDelegate] -scene:willConnectToSession:withOptions: %@, %@, %@", buf, 0x20u);
  }

  v14 = [(LockScreenSceneDelegate *)self appSessionController];
  v15 = [v14 currentlyNavigatingPlatformController];

  if (v15)
  {
    v16 = [(LockScreenSceneDelegate *)self appSessionController];
    v17 = [v16 currentlyNavigatingPlatformController];
    [(LockScreenSceneDelegate *)self setPlatformController:v17];

    v18 = [(LockScreenSceneDelegate *)self appSessionController];
    v19 = [v18 activeiOSPlatformControllersToCoverSheetSceneAssociation];
    v20 = [(LockScreenSceneDelegate *)self platformController];
    v21 = [v19 objectForKey:v20];

    [v21 setLockScreenScene:v11];
    v22 = [v21 mapsScene];
    v23 = [v22 delegate];

    v24 = [v23 chromeViewController];
    if ([v24 willMoveToOrFromSecureLockScreenUI:1])
    {
      v25 = [(LockScreenSceneDelegate *)self lockScreenWindow];

      if (!v25)
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
      v46 = v23;
      v47 = self;
      v29 = v24;
      v48 = v29;
      [UIViewController _performWithoutDeferringTransitions:v45];
      v30 = [(LockScreenSceneDelegate *)self lockScreenWindow];
      [v30 makeKeyAndVisible];

      [v29 didMoveToOrFromSecureLockScreenUI:1];
      v31 = [(LockScreenSceneDelegate *)self platformController];
      v32 = [(LockScreenSceneDelegate *)self appSessionController];
      v33 = [v32 primaryPlatformController];

      if (v31 == v33)
      {
        v34 = [(LockScreenSceneDelegate *)self platformController];
        [v34 replaySessions];
      }

      if (!self->_blsAssertion)
      {
        v44 = [v11 _FBSScene];
        v35 = [BLSRequestLiveUpdatingAttribute requestLiveUpdatingForFBSScene:v44];
        v49[0] = v35;
        v36 = +[BLSValidWhenBacklightInactiveAttribute ignoreWhenBacklightInactivates];
        v49[1] = v36;
        [NSArray arrayWithObjects:v49 count:2];
        v37 = v10;
        v39 = v38 = v9;
        v40 = [BLSAssertion acquireWithExplanation:@"Acquiring BLSAssertion for live updates" observer:0 attributes:v39];
        blsAssertion = self->_blsAssertion;
        self->_blsAssertion = v40;

        v9 = v38;
        v10 = v37;
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
        v51 = v24;
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