@interface RidesharingCoordinator
- (AppCoordinator)appCoordinator;
- (BOOL)_ridesharingIsCurrentMode;
- (BOOL)_wasPresentedFromProactiveTray;
- (RidesharingCoordinator)initWithContainerViewController:(id)controller;
- (void)presentConfirmedRideWithApplicationIdentifier:(id)identifier;
- (void)presentDetailsPicking;
- (void)presentExpirationAlertControllerWithRequestRideStatus:(id)status;
- (void)viewController:(id)controller minimizeConfirmation:(id)confirmation;
- (void)viewController:(id)controller presentErrorAlertIfNeeded:(id)needed;
- (void)viewControllerRideCompletionAction:(id)action;
- (void)viewControllerSendFeedbackAction;
@end

@implementation RidesharingCoordinator

- (AppCoordinator)appCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_appCoordinator);

  return WeakRetained;
}

- (BOOL)_ridesharingIsCurrentMode
{
  containerViewController = [(RidesharingCoordinator *)self containerViewController];
  chromeContext = [containerViewController chromeContext];
  containerViewController2 = [(RidesharingCoordinator *)self containerViewController];
  chromeViewController = [containerViewController2 chromeViewController];
  currentIOSBasedContext = [chromeViewController currentIOSBasedContext];
  v8 = [chromeContext isEqual:currentIOSBasedContext];

  return v8;
}

- (void)viewController:(id)controller presentErrorAlertIfNeeded:(id)needed
{
  controllerCopy = controller;
  neededCopy = needed;
  v8 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/RidesharingCoordinator.m");
    controllerCopy = [[NSString alloc] initWithFormat:@"Presenting error alert: %@ on: %@", neededCopy, controllerCopy];
    *buf = 136315394;
    v23 = v9;
    v24 = 2112;
    v25 = controllerCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
  }

  if (!controllerCopy)
  {
    v14 = sub_10006D178();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v23 = "[RidesharingCoordinator viewController:presentErrorAlertIfNeeded:]";
      v24 = 2080;
      v25 = "RidesharingCoordinator.m";
      v26 = 1024;
      v27 = 118;
      v28 = 2080;
      v29 = "viewController";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v15 = sub_10006D178();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v23 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  if (self->_errorAlertProvider != neededCopy)
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100BD8C6C;
    v19[3] = &unk_101661A40;
    v19[4] = self;
    v20 = neededCopy;
    v21 = controllerCopy;
    v11 = objc_retainBlock(v19);
    v12 = v11;
    errorAlert = self->_errorAlert;
    if (errorAlert)
    {
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100BD8F70;
      v17[3] = &unk_101661760;
      v18 = v11;
      [(UIAlertController *)errorAlert dismissViewControllerAnimated:1 completion:v17];
    }

    else
    {
      (v11[2])(v11);
    }
  }
}

- (void)viewControllerSendFeedbackAction
{
  appCoordinator = [(RidesharingCoordinator *)self appCoordinator];
  [appCoordinator dismissRidesharingSessionAndReturnToRoutePlanning:{-[RidesharingCoordinator _wasPresentedFromProactiveTray](self, "_wasPresentedFromProactiveTray") ^ 1}];

  appCoordinator2 = [(RidesharingCoordinator *)self appCoordinator];
  baseActionCoordinator = [appCoordinator2 baseActionCoordinator];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = baseActionCoordinator;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    routePlanningDataCoordinator = [v7 routePlanningDataCoordinator];
    [routePlanningDataCoordinator refreshRidesharingOptionsIfVisible];
  }

  else
  {
    routePlanningDataCoordinator = GEOFindOrCreateLog();
    if (os_log_type_enabled(routePlanningDataCoordinator, OS_LOG_TYPE_INFO))
    {
      v9 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/RidesharingCoordinator.m");
      v10 = [[NSString alloc] initWithFormat:@"Could not trigger a refresh of ride options after finishing sending feedback. Ride options list may have stale data"];
      v11 = 136315394;
      v12 = v9;
      v13 = 2112;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, routePlanningDataCoordinator, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", &v11, 0x16u);
    }
  }
}

- (void)viewControllerRideCompletionAction:(id)action
{
  appCoordinator = [(RidesharingCoordinator *)self appCoordinator];
  [appCoordinator dismissRidesharingSessionAndReturnToRoutePlanning:0];
}

- (void)viewController:(id)controller minimizeConfirmation:(id)confirmation
{
  controllerCopy = controller;
  containerViewController = [(RidesharingCoordinator *)self containerViewController];
  chromeViewController = [containerViewController chromeViewController];
  ridesharingAnnotationsManager = [chromeViewController ridesharingAnnotationsManager];
  [ridesharingAnnotationsManager removeCurrentRide];

  if ([(RidesharingCoordinator *)self _wasPresentedFromProactiveTray])
  {
    shouldShowFeedbackControls = 0;
  }

  else
  {
    rideStatus = [controllerCopy rideStatus];
    shouldShowFeedbackControls = [rideStatus shouldShowFeedbackControls];
  }

  appCoordinator = [(RidesharingCoordinator *)self appCoordinator];
  [appCoordinator dismissRidesharingSessionAndReturnToRoutePlanning:shouldShowFeedbackControls];

  v11 = MapsSuggestionsEngineForMapsProcess();
  [v11 hintRefreshOfType:9];
}

- (void)presentConfirmedRideWithApplicationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11 = [[RidesharingConfirmedRideViewController alloc] initWithApplicationIdentifier:identifierCopy];
  containerViewController = [(RidesharingCoordinator *)self containerViewController];
  [containerViewController setDetailsPickingViewController:0];

  containerViewController2 = [(RidesharingCoordinator *)self containerViewController];
  [containerViewController2 setConfirmedRideViewController:v11];

  [(RidesharingConfirmedRideViewController *)v11 setCoordinator:self];
  containerViewController3 = [(RidesharingCoordinator *)self containerViewController];
  [containerViewController3 presentController:v11 animated:1 useDefaultContaineeLayout:1];

  containerViewController4 = [(RidesharingCoordinator *)self containerViewController];
  chromeViewController = [containerViewController4 chromeViewController];
  ridesharingAnnotationsManager = [chromeViewController ridesharingAnnotationsManager];
  [ridesharingAnnotationsManager addCurrentRideWithApplicationIdentifier:identifierCopy];
}

- (void)presentExpirationAlertControllerWithRequestRideStatus:(id)status
{
  statusCopy = status;
  if ([(RidesharingCoordinator *)self _ridesharingIsCurrentMode])
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/RidesharingCoordinator.m");
      v7 = [[NSString alloc] initWithFormat:@"Ride option expired, showing expiration alert"];
      *buf = 136315394;
      v18 = v6;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "{RBError}{%s}: %@", buf, 0x16u);
    }

    expirationAlertTitle = [statusCopy expirationAlertTitle];
    expirationAlertMessage = [statusCopy expirationAlertMessage];
    v10 = [UIAlertController alertControllerWithTitle:expirationAlertTitle message:expirationAlertMessage preferredStyle:1];

    objc_initWeak(buf, self);
    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"OK" value:@"localized string not found" table:0];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100BD9770;
    v15[3] = &unk_101658AF0;
    objc_copyWeak(&v16, buf);
    v13 = [UIAlertAction actionWithTitle:v12 style:1 handler:v15];
    [v10 addAction:v13];

    containerViewController = [(RidesharingCoordinator *)self containerViewController];
    [containerViewController presentViewController:v10 animated:1 completion:0];

    objc_destroyWeak(&v16);
    objc_destroyWeak(buf);
  }
}

- (void)presentDetailsPicking
{
  v5 = objc_alloc_init(RidesharingDetailsPickingViewController);
  containerViewController = [(RidesharingCoordinator *)self containerViewController];
  [containerViewController setDetailsPickingViewController:v5];

  [(RidesharingDetailsPickingViewController *)v5 setCoordinator:self];
  containerViewController2 = [(RidesharingCoordinator *)self containerViewController];
  [containerViewController2 presentController:v5 animated:1 useDefaultContaineeLayout:1];
}

- (BOOL)_wasPresentedFromProactiveTray
{
  appCoordinator = [(RidesharingCoordinator *)self appCoordinator];
  baseActionCoordinator = [appCoordinator baseActionCoordinator];
  currentViewController = [baseActionCoordinator currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (RidesharingCoordinator)initWithContainerViewController:(id)controller
{
  controllerCopy = controller;
  v11.receiver = self;
  v11.super_class = RidesharingCoordinator;
  v6 = [(RidesharingCoordinator *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_containerViewController, controller);
    v8 = +[UIApplication sharedMapsDelegate];
    appCoordinator = [v8 appCoordinator];
    objc_storeWeak(&v7->_appCoordinator, appCoordinator);
  }

  return v7;
}

@end