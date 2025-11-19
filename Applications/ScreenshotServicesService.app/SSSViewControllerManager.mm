@interface SSSViewControllerManager
- (SSSViewControllerManager)init;
- (void)_actuallyMoveFromRemoteViewControllerToRemoteAlertViewController;
- (void)_moveDittoRootViewControllerFromViewController:(id)a3 toViewController:(id)a4;
- (void)_observeRemoteAlertViewControllerNotification:(id)a3;
- (void)_observeRemoteViewControllerNotification:(id)a3;
- (void)_prepareRootViewControllerIfNecessary;
- (void)_screenshotManagerHasNoScreenshotsBeingTracked:(id)a3;
- (void)dealloc;
- (void)dismissScreenshots;
- (void)dittoRemoteAlertViewControllerViewWillAppear:(id)a3;
- (void)moveFromRemoteAlertViewControllerToRemoteViewController;
- (void)moveFromRemoteViewControllerToRemoteAlertViewControllerExecutingChangeBlockWhenReady:(id)a3;
- (void)receiveEnvironmentDescription:(id)a3 completion:(id)a4;
- (void)registerRemoteAlertViewController:(id)a3;
- (void)registerRemoteViewController:(id)a3;
- (void)remoteAlertHandleProviderDidDeactivate:(id)a3;
- (void)screenshotsDismissed;
- (void)unregisterRemoteAlertViewController:(id)a3;
- (void)unregisterRemoteViewController:(id)a3;
@end

@implementation SSSViewControllerManager

- (SSSViewControllerManager)init
{
  v13.receiver = self;
  v13.super_class = SSSViewControllerManager;
  v2 = [(SSSViewControllerManager *)&v13 init];
  v3 = +[NSMutableSet set];
  receivedSessionIdentifiers = v2->_receivedSessionIdentifiers;
  v2->_receivedSessionIdentifiers = v3;

  v5 = +[NSMutableArray array];
  pendingScreenshotRecordsForRootViewController = v2->_pendingScreenshotRecordsForRootViewController;
  v2->_pendingScreenshotRecordsForRootViewController = v5;

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 addObserver:v2 selector:"_observeRemoteViewControllerNotification:" name:@"SSSDittoRemoteViewControllerIsReadyForViewControllerManagerNotificationName" object:0];

  v8 = +[NSNotificationCenter defaultCenter];
  [v8 addObserver:v2 selector:"_observeRemoteAlertViewControllerNotification:" name:@"SSSDittoRemoteAlertViewControllerIsReadyForViewControllerManagerNotificationName" object:0];

  v9 = objc_alloc_init(SSRemoteAlertHandleProvider);
  remoteAlertHandleProvider = v2->_remoteAlertHandleProvider;
  v2->_remoteAlertHandleProvider = v9;

  [(SSRemoteAlertHandleProvider *)v2->_remoteAlertHandleProvider setDelegate:v2];
  [(SSSViewControllerManager *)v2 _prepareRootViewControllerIfNecessary];
  v11 = +[NSNotificationCenter defaultCenter];
  [v11 addObserver:v2 selector:"_screenshotManagerHasNoScreenshotsBeingTracked:" name:@"SSSScreenshotManagerStoppedTrackingScreenshots" object:0];

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SSSViewControllerManager;
  [(SSSViewControllerManager *)&v4 dealloc];
}

- (void)_prepareRootViewControllerIfNecessary
{
  if (!self->_rootViewController)
  {
    v4 = objc_alloc_init(SSSDittoRootViewController);
    rootViewController = self->_rootViewController;
    self->_rootViewController = v4;

    v6 = self->_rootViewController;

    [(SSSDittoRootViewController *)v6 setViewControllerManager:self];
  }
}

- (void)receiveEnvironmentDescription:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[SSSScreenshotManager sharedScreenshotManager];
  v9 = [v8 createScreenshotWithEnvironmentDescription:v6];

  [(SSSViewControllerManager *)self _prepareRootViewControllerIfNecessary];
  v10 = [v6 loggableDescription];
  v11 = os_log_create("com.apple.screenshotservices", "XPC");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Service received environment description %@", &v17, 0xCu);
  }

  v12 = [v6 sessionIdentifier];
  if (([(NSMutableSet *)self->_receivedSessionIdentifiers containsObject:v12]& 1) == 0)
  {
    [(NSMutableSet *)self->_receivedSessionIdentifiers addObject:v12];
    if (([v6 skipShutterSound] & 1) == 0)
    {
      +[SSScreenCapturer playScreenshotSound];
    }
  }

  if ([v9 saveLocation] == 3)
  {
    [v9 insertIntoQuickNoteWithCompletion:v7];
  }

  else
  {
    v13 = [(SSSDittoRootViewController *)self->_rootViewController hostingViewController];

    if (v13)
    {
      [(SSSDittoRootViewController *)self->_rootViewController screenshotReceived:v9 completion:v7];
    }

    else
    {
      v14 = os_log_create("com.apple.screenshotservices", "ViewControllerManager");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138412290;
        v18 = v10;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "No hosting view controller to deliver environment description, waiting for remote view controller to deliver %@", &v17, 0xCu);
      }

      v15 = [[SSSPendingScreenshotRecord alloc] initWithScreenshot:v9 deliveryCompletionBlock:v7];
      [(NSMutableArray *)self->_pendingScreenshotRecordsForRootViewController addObject:v15];
      if (self->_remoteViewController)
      {
        v16 = os_log_create("com.apple.screenshotservices", "ViewControllerManager");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_100074A84(v16);
        }

        exit(0);
      }
    }
  }
}

- (void)_observeRemoteViewControllerNotification:(id)a3
{
  v4 = [a3 object];
  [(SSSViewControllerManager *)self registerRemoteViewController:v4];
}

- (void)_observeRemoteAlertViewControllerNotification:(id)a3
{
  v4 = [a3 object];
  [(SSSViewControllerManager *)self registerRemoteAlertViewController:v4];
}

- (void)remoteAlertHandleProviderDidDeactivate:(id)a3
{
  v6 = a3;
  v4 = [(SSSDittoRootViewController *)self->_rootViewController hostingViewController];
  remoteAlertViewController = self->_remoteAlertViewController;

  if (v4 == remoteAlertViewController)
  {
    [(SSSViewControllerManager *)self dismissScreenshots];
  }

  [v6 invalidate];
}

- (void)registerRemoteViewController:(id)a3
{
  v5 = a3;
  if (self->_remoteViewController != v5)
  {
    v6 = os_log_create("com.apple.screenshotservices", "ViewControllerManager");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      remoteViewController = self->_remoteViewController;
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138413058;
      v26 = v8;
      v27 = 2048;
      v28 = remoteViewController;
      v29 = 2112;
      v30 = v11;
      v31 = 2048;
      v32 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Registered new remote view controller old: <%@: %p>, new: <%@: %p>", buf, 0x2Au);
    }

    objc_storeStrong(&self->_remoteViewController, a3);
    [(SSSDittoRemoteViewController *)self->_remoteViewController setViewControllerManager:self];
    [(SSSViewControllerManager *)self _moveDittoRootViewControllerFromViewController:0 toViewController:v5];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v12 = self->_pendingScreenshotRecordsForRootViewController;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v21;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v20 + 1) + 8 * i);
          v18 = [v17 screenshot];
          v19 = [v17 deliveryCompletionBlock];
          [(SSSDittoRootViewController *)self->_rootViewController screenshotReceived:v18 completion:v19];
        }

        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v14);
    }

    [(NSMutableArray *)self->_pendingScreenshotRecordsForRootViewController removeAllObjects];
  }
}

- (void)unregisterRemoteViewController:(id)a3
{
  v4 = os_log_create("com.apple.screenshotservices", "ViewControllerManager");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Unregistered remote view controller", v6, 2u);
  }

  [(SSRemoteAlertHandleProvider *)self->_remoteAlertHandleProvider invalidate];
  [(SSSDittoRemoteViewController *)self->_remoteViewController setViewControllerManager:0];
  remoteViewController = self->_remoteViewController;
  self->_remoteViewController = 0;
}

- (void)registerRemoteAlertViewController:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.screenshotservices", "ViewControllerManager");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Registered new remote alert view controller", v8, 2u);
  }

  remoteAlertViewController = self->_remoteAlertViewController;
  self->_remoteAlertViewController = v4;
  v7 = v4;

  [(SSSDittoRemoteAlertViewController *)self->_remoteAlertViewController setViewControllerManager:self];
  [(SSSDittoRemoteAlertViewController *)self->_remoteAlertViewController setDittoRemoteAlertDelegate:self];
}

- (void)unregisterRemoteAlertViewController:(id)a3
{
  v4 = os_log_create("com.apple.screenshotservices", "ViewControllerManager");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Unregistered remote alert view controller", v6, 2u);
  }

  [(SSSDittoRemoteAlertViewController *)self->_remoteAlertViewController setViewControllerManager:0];
  [(SSSDittoRemoteAlertViewController *)self->_remoteAlertViewController setDittoRemoteAlertDelegate:0];
  remoteAlertViewController = self->_remoteAlertViewController;
  self->_remoteAlertViewController = 0;
}

- (void)_moveDittoRootViewControllerFromViewController:(id)a3 toViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(SSSViewControllerManager *)self _prepareRootViewControllerIfNecessary];
  if (v7)
  {
    [v6 cleanupRootViewController];
    [v7 becomeParentOfDittoRootViewController:self->_rootViewController];
  }

  else
  {
    v8 = os_log_create("com.apple.screenshotservices", "ViewControllerManager");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Moving to a nil view controller", v9, 2u);
    }

    [v6 stopBeingParentOfDittoRootViewController:self->_rootViewController];
    [v6 cleanupRootViewController];
  }

  [(SSSDittoRootViewController *)self->_rootViewController setHostingViewController:v7];
}

- (void)_actuallyMoveFromRemoteViewControllerToRemoteAlertViewController
{
  v3 = os_log_create("com.apple.screenshotservices", "ViewControllerManager");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Moving from remote view controller to remote alert view controller", v4, 2u);
  }

  [(SSSViewControllerManager *)self _moveDittoRootViewControllerFromViewController:self->_remoteViewController toViewController:self->_remoteAlertViewController];
  [(SSSDittoRemoteViewController *)self->_remoteViewController setWillSoonUnparentChildDittoRootViewController:0];
}

- (void)moveFromRemoteViewControllerToRemoteAlertViewControllerExecutingChangeBlockWhenReady:(id)a3
{
  v4 = [a3 copy];
  changeBlockForWhenAlertWillAppear = self->_changeBlockForWhenAlertWillAppear;
  self->_changeBlockForWhenAlertWillAppear = v4;

  [(SSSDittoRemoteViewController *)self->_remoteViewController setWillSoonUnparentChildDittoRootViewController:1];
  remoteAlertHandleProvider = self->_remoteAlertHandleProvider;

  [(SSRemoteAlertHandleProvider *)remoteAlertHandleProvider activate];
}

- (void)moveFromRemoteAlertViewControllerToRemoteViewController
{
  v3 = os_log_create("com.apple.screenshotservices", "ViewControllerManager");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Moving from remote alert view controller to remote view controller", v4, 2u);
  }

  [(SSSViewControllerManager *)self _moveDittoRootViewControllerFromViewController:self->_remoteAlertViewController toViewController:self->_remoteViewController];
  [(SSRemoteAlertHandleProvider *)self->_remoteAlertHandleProvider invalidate];
  [(SSRemoteAlertHandleProvider *)self->_remoteAlertHandleProvider prepare];
}

- (void)dismissScreenshots
{
  v3 = os_log_create("com.apple.screenshotservices", "XPC");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Service asked to dismiss screenshots from the host", buf, 2u);
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000323E8;
  v4[3] = &unk_1000BA068;
  v4[4] = self;
  [UIView performWithoutAnimation:v4];
  [(SSRemoteAlertHandleProvider *)self->_remoteAlertHandleProvider invalidate];
}

- (void)screenshotsDismissed
{
  v3 = [(SSSDittoRootViewController *)self->_rootViewController hostingViewController];
  [(SSSViewControllerManager *)self _moveDittoRootViewControllerFromViewController:v3 toViewController:0];

  rootViewController = self->_rootViewController;
  self->_rootViewController = 0;

  [(SSSDittoRemoteViewController *)self->_remoteViewController informHostThatScreenshotsHaveDismissed];
  [(SSRemoteAlertHandleProvider *)self->_remoteAlertHandleProvider invalidate];

  [(SSSViewControllerManager *)self unregisterRemoteViewController:0];
}

- (void)_screenshotManagerHasNoScreenshotsBeingTracked:(id)a3
{
  v4 = os_log_create("com.apple.screenshotservices", "XPC");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "screenshot manager has no screenshots being tracked", v5, 2u);
  }

  [(SSSViewControllerManager *)self screenshotsDismissed];
}

- (void)dittoRemoteAlertViewControllerViewWillAppear:(id)a3
{
  if (self->_changeBlockForWhenAlertWillAppear)
  {
    [(SSSViewControllerManager *)self _actuallyMoveFromRemoteViewControllerToRemoteAlertViewController];
    (*(self->_changeBlockForWhenAlertWillAppear + 2))();
    changeBlockForWhenAlertWillAppear = self->_changeBlockForWhenAlertWillAppear;
    self->_changeBlockForWhenAlertWillAppear = 0;
  }
}

@end