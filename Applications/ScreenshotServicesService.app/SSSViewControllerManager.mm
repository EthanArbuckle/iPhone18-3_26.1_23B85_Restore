@interface SSSViewControllerManager
- (SSSViewControllerManager)init;
- (void)_actuallyMoveFromRemoteViewControllerToRemoteAlertViewController;
- (void)_moveDittoRootViewControllerFromViewController:(id)controller toViewController:(id)viewController;
- (void)_observeRemoteAlertViewControllerNotification:(id)notification;
- (void)_observeRemoteViewControllerNotification:(id)notification;
- (void)_prepareRootViewControllerIfNecessary;
- (void)_screenshotManagerHasNoScreenshotsBeingTracked:(id)tracked;
- (void)dealloc;
- (void)dismissScreenshots;
- (void)dittoRemoteAlertViewControllerViewWillAppear:(id)appear;
- (void)moveFromRemoteAlertViewControllerToRemoteViewController;
- (void)moveFromRemoteViewControllerToRemoteAlertViewControllerExecutingChangeBlockWhenReady:(id)ready;
- (void)receiveEnvironmentDescription:(id)description completion:(id)completion;
- (void)registerRemoteAlertViewController:(id)controller;
- (void)registerRemoteViewController:(id)controller;
- (void)remoteAlertHandleProviderDidDeactivate:(id)deactivate;
- (void)screenshotsDismissed;
- (void)unregisterRemoteAlertViewController:(id)controller;
- (void)unregisterRemoteViewController:(id)controller;
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

- (void)receiveEnvironmentDescription:(id)description completion:(id)completion
{
  descriptionCopy = description;
  completionCopy = completion;
  v8 = +[SSSScreenshotManager sharedScreenshotManager];
  v9 = [v8 createScreenshotWithEnvironmentDescription:descriptionCopy];

  [(SSSViewControllerManager *)self _prepareRootViewControllerIfNecessary];
  loggableDescription = [descriptionCopy loggableDescription];
  v11 = os_log_create("com.apple.screenshotservices", "XPC");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = loggableDescription;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Service received environment description %@", &v17, 0xCu);
  }

  sessionIdentifier = [descriptionCopy sessionIdentifier];
  if (([(NSMutableSet *)self->_receivedSessionIdentifiers containsObject:sessionIdentifier]& 1) == 0)
  {
    [(NSMutableSet *)self->_receivedSessionIdentifiers addObject:sessionIdentifier];
    if (([descriptionCopy skipShutterSound] & 1) == 0)
    {
      +[SSScreenCapturer playScreenshotSound];
    }
  }

  if ([v9 saveLocation] == 3)
  {
    [v9 insertIntoQuickNoteWithCompletion:completionCopy];
  }

  else
  {
    hostingViewController = [(SSSDittoRootViewController *)self->_rootViewController hostingViewController];

    if (hostingViewController)
    {
      [(SSSDittoRootViewController *)self->_rootViewController screenshotReceived:v9 completion:completionCopy];
    }

    else
    {
      v14 = os_log_create("com.apple.screenshotservices", "ViewControllerManager");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138412290;
        v18 = loggableDescription;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "No hosting view controller to deliver environment description, waiting for remote view controller to deliver %@", &v17, 0xCu);
      }

      v15 = [[SSSPendingScreenshotRecord alloc] initWithScreenshot:v9 deliveryCompletionBlock:completionCopy];
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

- (void)_observeRemoteViewControllerNotification:(id)notification
{
  object = [notification object];
  [(SSSViewControllerManager *)self registerRemoteViewController:object];
}

- (void)_observeRemoteAlertViewControllerNotification:(id)notification
{
  object = [notification object];
  [(SSSViewControllerManager *)self registerRemoteAlertViewController:object];
}

- (void)remoteAlertHandleProviderDidDeactivate:(id)deactivate
{
  deactivateCopy = deactivate;
  hostingViewController = [(SSSDittoRootViewController *)self->_rootViewController hostingViewController];
  remoteAlertViewController = self->_remoteAlertViewController;

  if (hostingViewController == remoteAlertViewController)
  {
    [(SSSViewControllerManager *)self dismissScreenshots];
  }

  [deactivateCopy invalidate];
}

- (void)registerRemoteViewController:(id)controller
{
  controllerCopy = controller;
  if (self->_remoteViewController != controllerCopy)
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
      v32 = controllerCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Registered new remote view controller old: <%@: %p>, new: <%@: %p>", buf, 0x2Au);
    }

    objc_storeStrong(&self->_remoteViewController, controller);
    [(SSSDittoRemoteViewController *)self->_remoteViewController setViewControllerManager:self];
    [(SSSViewControllerManager *)self _moveDittoRootViewControllerFromViewController:0 toViewController:controllerCopy];
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
          screenshot = [v17 screenshot];
          deliveryCompletionBlock = [v17 deliveryCompletionBlock];
          [(SSSDittoRootViewController *)self->_rootViewController screenshotReceived:screenshot completion:deliveryCompletionBlock];
        }

        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v14);
    }

    [(NSMutableArray *)self->_pendingScreenshotRecordsForRootViewController removeAllObjects];
  }
}

- (void)unregisterRemoteViewController:(id)controller
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

- (void)registerRemoteAlertViewController:(id)controller
{
  controllerCopy = controller;
  v5 = os_log_create("com.apple.screenshotservices", "ViewControllerManager");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Registered new remote alert view controller", v8, 2u);
  }

  remoteAlertViewController = self->_remoteAlertViewController;
  self->_remoteAlertViewController = controllerCopy;
  v7 = controllerCopy;

  [(SSSDittoRemoteAlertViewController *)self->_remoteAlertViewController setViewControllerManager:self];
  [(SSSDittoRemoteAlertViewController *)self->_remoteAlertViewController setDittoRemoteAlertDelegate:self];
}

- (void)unregisterRemoteAlertViewController:(id)controller
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

- (void)_moveDittoRootViewControllerFromViewController:(id)controller toViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  [(SSSViewControllerManager *)self _prepareRootViewControllerIfNecessary];
  if (viewControllerCopy)
  {
    [controllerCopy cleanupRootViewController];
    [viewControllerCopy becomeParentOfDittoRootViewController:self->_rootViewController];
  }

  else
  {
    v8 = os_log_create("com.apple.screenshotservices", "ViewControllerManager");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Moving to a nil view controller", v9, 2u);
    }

    [controllerCopy stopBeingParentOfDittoRootViewController:self->_rootViewController];
    [controllerCopy cleanupRootViewController];
  }

  [(SSSDittoRootViewController *)self->_rootViewController setHostingViewController:viewControllerCopy];
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

- (void)moveFromRemoteViewControllerToRemoteAlertViewControllerExecutingChangeBlockWhenReady:(id)ready
{
  v4 = [ready copy];
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
  hostingViewController = [(SSSDittoRootViewController *)self->_rootViewController hostingViewController];
  [(SSSViewControllerManager *)self _moveDittoRootViewControllerFromViewController:hostingViewController toViewController:0];

  rootViewController = self->_rootViewController;
  self->_rootViewController = 0;

  [(SSSDittoRemoteViewController *)self->_remoteViewController informHostThatScreenshotsHaveDismissed];
  [(SSRemoteAlertHandleProvider *)self->_remoteAlertHandleProvider invalidate];

  [(SSSViewControllerManager *)self unregisterRemoteViewController:0];
}

- (void)_screenshotManagerHasNoScreenshotsBeingTracked:(id)tracked
{
  v4 = os_log_create("com.apple.screenshotservices", "XPC");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "screenshot manager has no screenshots being tracked", v5, 2u);
  }

  [(SSSViewControllerManager *)self screenshotsDismissed];
}

- (void)dittoRemoteAlertViewControllerViewWillAppear:(id)appear
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