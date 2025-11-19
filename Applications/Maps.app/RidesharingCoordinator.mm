@interface RidesharingCoordinator
- (AppCoordinator)appCoordinator;
- (BOOL)_ridesharingIsCurrentMode;
- (BOOL)_wasPresentedFromProactiveTray;
- (RidesharingCoordinator)initWithContainerViewController:(id)a3;
- (void)presentConfirmedRideWithApplicationIdentifier:(id)a3;
- (void)presentDetailsPicking;
- (void)presentExpirationAlertControllerWithRequestRideStatus:(id)a3;
- (void)viewController:(id)a3 minimizeConfirmation:(id)a4;
- (void)viewController:(id)a3 presentErrorAlertIfNeeded:(id)a4;
- (void)viewControllerRideCompletionAction:(id)a3;
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
  v3 = [(RidesharingCoordinator *)self containerViewController];
  v4 = [v3 chromeContext];
  v5 = [(RidesharingCoordinator *)self containerViewController];
  v6 = [v5 chromeViewController];
  v7 = [v6 currentIOSBasedContext];
  v8 = [v4 isEqual:v7];

  return v8;
}

- (void)viewController:(id)a3 presentErrorAlertIfNeeded:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/RidesharingCoordinator.m");
    v10 = [[NSString alloc] initWithFormat:@"Presenting error alert: %@ on: %@", v7, v6];
    *buf = 136315394;
    v23 = v9;
    v24 = 2112;
    v25 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
  }

  if (!v6)
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

  if (self->_errorAlertProvider != v7)
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100BD8C6C;
    v19[3] = &unk_101661A40;
    v19[4] = self;
    v20 = v7;
    v21 = v6;
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
  v3 = [(RidesharingCoordinator *)self appCoordinator];
  [v3 dismissRidesharingSessionAndReturnToRoutePlanning:{-[RidesharingCoordinator _wasPresentedFromProactiveTray](self, "_wasPresentedFromProactiveTray") ^ 1}];

  v4 = [(RidesharingCoordinator *)self appCoordinator];
  v5 = [v4 baseActionCoordinator];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [v7 routePlanningDataCoordinator];
    [v8 refreshRidesharingOptionsIfVisible];
  }

  else
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/RidesharingCoordinator.m");
      v10 = [[NSString alloc] initWithFormat:@"Could not trigger a refresh of ride options after finishing sending feedback. Ride options list may have stale data"];
      v11 = 136315394;
      v12 = v9;
      v13 = 2112;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", &v11, 0x16u);
    }
  }
}

- (void)viewControllerRideCompletionAction:(id)a3
{
  v3 = [(RidesharingCoordinator *)self appCoordinator];
  [v3 dismissRidesharingSessionAndReturnToRoutePlanning:0];
}

- (void)viewController:(id)a3 minimizeConfirmation:(id)a4
{
  v12 = a3;
  v5 = [(RidesharingCoordinator *)self containerViewController];
  v6 = [v5 chromeViewController];
  v7 = [v6 ridesharingAnnotationsManager];
  [v7 removeCurrentRide];

  if ([(RidesharingCoordinator *)self _wasPresentedFromProactiveTray])
  {
    v8 = 0;
  }

  else
  {
    v9 = [v12 rideStatus];
    v8 = [v9 shouldShowFeedbackControls];
  }

  v10 = [(RidesharingCoordinator *)self appCoordinator];
  [v10 dismissRidesharingSessionAndReturnToRoutePlanning:v8];

  v11 = MapsSuggestionsEngineForMapsProcess();
  [v11 hintRefreshOfType:9];
}

- (void)presentConfirmedRideWithApplicationIdentifier:(id)a3
{
  v4 = a3;
  v11 = [[RidesharingConfirmedRideViewController alloc] initWithApplicationIdentifier:v4];
  v5 = [(RidesharingCoordinator *)self containerViewController];
  [v5 setDetailsPickingViewController:0];

  v6 = [(RidesharingCoordinator *)self containerViewController];
  [v6 setConfirmedRideViewController:v11];

  [(RidesharingConfirmedRideViewController *)v11 setCoordinator:self];
  v7 = [(RidesharingCoordinator *)self containerViewController];
  [v7 presentController:v11 animated:1 useDefaultContaineeLayout:1];

  v8 = [(RidesharingCoordinator *)self containerViewController];
  v9 = [v8 chromeViewController];
  v10 = [v9 ridesharingAnnotationsManager];
  [v10 addCurrentRideWithApplicationIdentifier:v4];
}

- (void)presentExpirationAlertControllerWithRequestRideStatus:(id)a3
{
  v4 = a3;
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

    v8 = [v4 expirationAlertTitle];
    v9 = [v4 expirationAlertMessage];
    v10 = [UIAlertController alertControllerWithTitle:v8 message:v9 preferredStyle:1];

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

    v14 = [(RidesharingCoordinator *)self containerViewController];
    [v14 presentViewController:v10 animated:1 completion:0];

    objc_destroyWeak(&v16);
    objc_destroyWeak(buf);
  }
}

- (void)presentDetailsPicking
{
  v5 = objc_alloc_init(RidesharingDetailsPickingViewController);
  v3 = [(RidesharingCoordinator *)self containerViewController];
  [v3 setDetailsPickingViewController:v5];

  [(RidesharingDetailsPickingViewController *)v5 setCoordinator:self];
  v4 = [(RidesharingCoordinator *)self containerViewController];
  [v4 presentController:v5 animated:1 useDefaultContaineeLayout:1];
}

- (BOOL)_wasPresentedFromProactiveTray
{
  v2 = [(RidesharingCoordinator *)self appCoordinator];
  v3 = [v2 baseActionCoordinator];
  v4 = [v3 currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (RidesharingCoordinator)initWithContainerViewController:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = RidesharingCoordinator;
  v6 = [(RidesharingCoordinator *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_containerViewController, a3);
    v8 = +[UIApplication sharedMapsDelegate];
    v9 = [v8 appCoordinator];
    objc_storeWeak(&v7->_appCoordinator, v9);
  }

  return v7;
}

@end