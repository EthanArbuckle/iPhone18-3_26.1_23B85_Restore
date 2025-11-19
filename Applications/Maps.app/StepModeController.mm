@interface StepModeController
- (BOOL)prefersStatusBarHidden;
- (BOOL)updateRouteAnnotationsConfiguration:(id)a3;
- (IOSBasedChromeViewController)chromeViewController;
- (StatusBarBackgroundViewStyle)statusBarBackgroundViewStyle;
- (StatusBarSupplementaryView)statusBarSupplementaryView;
- (StepActionCoordination)actionCoordinator;
- (StepContainerViewController)containerViewController;
- (StepModeController)initWithRoute:(id)a3 initialStepIndex:(unint64_t)a4 desiredUserTrackingMode:(id)a5;
- (id)personalizedItemSources;
- (id)transitionControllerForPopToMode:(id)a3;
- (id)transitionControllerForPushFromMode:(id)a3;
- (int64_t)preferredStatusBarStyle;
- (void)_becomeTopContextInChromeViewController:(id)a3;
- (void)_locationManagerApprovalDidChange:(id)a3;
- (void)_resignTopContextInChromeViewController:(id)a3;
- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)getCurrentSceneTitleWithCompletion:(id)a3;
- (void)resignTopContextInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)setChromeViewController:(id)a3;
- (void)setDesiredInitialCamera:(id)a3;
- (void)updateWithDisplayedStep:(id)a3;
- (void)willBeginDisplayingInSecureLockScreen;
@end

@implementation StepModeController

- (IOSBasedChromeViewController)chromeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  return WeakRetained;
}

- (StatusBarSupplementaryView)statusBarSupplementaryView
{
  v2 = [(StepModeController *)self containerViewController];
  v3 = [v2 statusBarSupplementaryView];

  return v3;
}

- (StatusBarBackgroundViewStyle)statusBarBackgroundViewStyle
{
  v2 = [(StepModeController *)self containerViewController];
  v3 = [v2 statusBarBackgroundViewStyle];

  return v3;
}

- (int64_t)preferredStatusBarStyle
{
  v2 = [(StepModeController *)self containerViewController];
  v3 = [v2 preferredStatusBarStyle];

  return v3;
}

- (BOOL)prefersStatusBarHidden
{
  v2 = [(StepModeController *)self containerViewController];
  v3 = [v2 prefersStatusBarHidden];

  return v3;
}

- (void)willBeginDisplayingInSecureLockScreen
{
  v2 = [(StepModeController *)self containerViewController];
  [v2 willBeginDisplayingInSecureLockScreen];
}

- (void)_locationManagerApprovalDidChange:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100F2B58C;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)getCurrentSceneTitleWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(StepModeController *)self route];
  v6 = [v5 destination];
  v7 = [v6 name];

  v8 = +[NSBundle mainBundle];
  if (v7)
  {
    v9 = [v8 localizedStringForKey:@"[App switcher title] Directions to <destination>" value:@"localized string not found" table:0];
    v10 = [(StepModeController *)self route];
    v11 = [v10 destination];
    v12 = [v11 name];
    v13 = [NSString stringWithFormat:v9, v12];
  }

  else
  {
    v13 = [v8 localizedStringForKey:@"[App switcher title] Directions" value:@"localized string not found" table:0];
  }

  v4[2](v4, v13);
}

- (void)_resignTopContextInChromeViewController:(id)a3
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:MKLocationManagerApprovalDidChangeNotification object:0];

  v5 = [(StepModeController *)self chromeViewController];
  v6 = [v5 mapView];

  [v6 _setLocationPropagationEnabled:1];
  [v6 _setShouldAnimatePositionWithRouteMatch:1];
  [v6 _setClearUserLocationOnLocationReset:1];
  v10 = *VKAnnotationTrackingBehaviorDefault;
  v11 = VKAnnotationTrackingBehaviorDefault[2];
  [v6 _setUserTrackingBehavior:&v10];
  [v6 _setAlwaysShowHeadingIndicatorIfSupported:1];
  [v6 _setShowHeadingIndicatorForStepping:0];
  [v6 _setApplicationState:0];
  [v6 _clearRouteContext];
  if ([v6 userTrackingMode])
  {
    v7 = +[UIApplication sharedMapsDelegate];
    [v7 setTrackingMode:0 monitorBatteryState:0];
  }

  v8 = [(StepModeController *)self chromeViewController];
  v9 = [v8 userLocationView];

  [v9 setHeadingIndicatorStyle:self->_previousHeadingIndicatorStyle];
  [v9 setEnabled:self->_previousEnabledStatus];
  [v6 _setShouldSplitRouteLine:0];
  [(GEOComposedRoute *)self->_route setManeuverDisplayEnabled:0];
  [(NavigationPowerLogger *)self->_powerLogger stopLogging];
}

- (void)resignTopContextInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100F2BA00;
  v9[3] = &unk_101661340;
  objc_copyWeak(&v11, &location);
  v8 = v6;
  v10 = v8;
  [v7 addPreparation:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)_becomeTopContextInChromeViewController:(id)a3
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"_locationManagerApprovalDidChange:" name:MKLocationManagerApprovalDidChangeNotification object:0];

  v5 = [(StepModeController *)self chromeViewController];
  v6 = [v5 mapView];

  [v6 setCompassEnabled:1];
  [v6 setScaleEnabled:0];
  [v6 _setLocationPropagationEnabled:0];
  [v6 _setShouldAnimatePositionWithRouteMatch:0];
  *&v14[1] = *(VKAnnotationTrackingBehaviorDefault + 1);
  *&v14[16] = VKAnnotationTrackingBehaviorDefault[2];
  v14[0] = 0;
  [v6 _setUserTrackingBehavior:v14];
  [v6 _setAlwaysShowHeadingIndicatorIfSupported:0];
  v7 = [(StepModeController *)self actionCoordinator];
  [v6 _setShowHeadingIndicatorForStepping:{objc_msgSend(v7, "isAuthorizedForPreciseLocation")}];

  [v6 _setApplicationState:3];
  if ([(GEOComposedRoute *)self->_route transportType]== 1)
  {
    v11 = sub_10006D178();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v14 = 136315906;
      *&v14[4] = "[StepModeController _becomeTopContextInChromeViewController:]";
      *&v14[12] = 2080;
      *&v14[14] = "StepModeController.m";
      *&v14[22] = 1024;
      v15 = 198;
      v16 = 2080;
      v17 = "_route.transportType != GEOTransportType_TRANSIT";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", v14, 0x26u);
    }

    if (sub_100E03634())
    {
      v12 = sub_10006D178();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = +[NSThread callStackSymbols];
        *v14 = 138412290;
        *&v14[4] = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@", v14, 0xCu);
      }
    }
  }

  [(GEOComposedRoute *)self->_route setManeuverDisplayEnabled:1];
  v8 = [(StepModeController *)self chromeViewController];
  [v8 updateViewMode:0 animated:0];

  v9 = [(StepModeController *)self chromeViewController];
  v10 = [v9 userLocationView];

  [v10 setMode:0 animated:1];
  self->_previousHeadingIndicatorStyle = [v10 headingIndicatorStyle];
  [v10 setHeadingIndicatorStyle:0];
  self->_previousEnabledStatus = [v10 isEnabled];
  [v10 setEnabled:0];
  if ([(GEOComposedRoute *)self->_route transportType])
  {
    [v6 setShowsTraffic:0];
  }

  if (self->_desiredInitialCamera)
  {
    [v6 setCamera:?];
  }
}

- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100F2BE58;
  v9[3] = &unk_101661340;
  objc_copyWeak(&v11, &location);
  v8 = v6;
  v10 = v8;
  [v7 addPreparation:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (BOOL)updateRouteAnnotationsConfiguration:(id)a3
{
  if (self->_route)
  {
    route = self->_route;
    v3 = a3;
    v4 = [NSArray arrayWithObjects:&route count:1];
    [v3 setRoutes:{v4, route}];
  }

  else
  {
    v4 = a3;
    [v4 setRoutes:0];
  }

  return 1;
}

- (id)personalizedItemSources
{
  v3 = [(StepModeController *)self chromeViewController];
  v4 = [v3 searchPinsManager];

  if (v4)
  {
    v5 = [(StepModeController *)self chromeViewController];
    v6 = [v5 searchPinsManager];
    v7 = [v6 routeStartEndItemSource];
    v10 = v7;
    v8 = [NSArray arrayWithObjects:&v10 count:1];
  }

  else
  {
    v8 = &__NSArray0__struct;
  }

  return v8;
}

- (id)transitionControllerForPopToMode:(id)a3
{
  v3 = objc_opt_new();

  return v3;
}

- (id)transitionControllerForPushFromMode:(id)a3
{
  v3 = objc_opt_new();

  return v3;
}

- (StepContainerViewController)containerViewController
{
  containerViewController = self->_containerViewController;
  if (!containerViewController)
  {
    initializedWithUserTrackingMode = self->_initializedWithUserTrackingMode;
    v5 = [StepContainerViewController alloc];
    route = self->_route;
    initialStepIndex = self->_initialStepIndex;
    if (initializedWithUserTrackingMode)
    {
      v8 = [(StepContainerViewController *)v5 initWithRoute:route initialStepIndex:initialStepIndex desiredTrackingMode:self->_desiredTrackingMode];
    }

    else
    {
      v8 = [(StepContainerViewController *)v5 initWithRoute:route initialStepIndex:initialStepIndex];
    }

    v9 = self->_containerViewController;
    self->_containerViewController = v8;

    [(ContainerViewController *)self->_containerViewController setChromeContext:self];
    v10 = [(StepModeController *)self chromeViewController];
    [(ContainerViewController *)self->_containerViewController setChromeViewController:v10];

    containerViewController = self->_containerViewController;
  }

  return containerViewController;
}

- (void)setChromeViewController:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_chromeViewController, v4);
  [(ContainerViewController *)self->_containerViewController setChromeViewController:v4];
}

- (StepActionCoordination)actionCoordinator
{
  v2 = [(StepModeController *)self containerViewController];
  v3 = [v2 stepActionCoordinator];

  return v3;
}

- (void)updateWithDisplayedStep:(id)a3
{
  v4 = a3;
  v5 = [(StepModeController *)self containerViewController];
  [v5 updateWithDisplayedStep:v4];
}

- (void)setDesiredInitialCamera:(id)a3
{
  v4 = [a3 copy];
  desiredInitialCamera = self->_desiredInitialCamera;
  self->_desiredInitialCamera = v4;
}

- (StepModeController)initWithRoute:(id)a3 initialStepIndex:(unint64_t)a4 desiredUserTrackingMode:(id)a5
{
  v9 = a3;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = StepModeController;
  v11 = [(StepModeController *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_route, a3);
    v12->_initialStepIndex = a4;
    if (v10)
    {
      v12->_initializedWithUserTrackingMode = 1;
      v12->_desiredTrackingMode = [v10 integerValue];
    }

    if ([(GEOComposedRoute *)v12->_route transportType]== 1)
    {
      v13 = objc_alloc_init(NavigationPowerLogger);
      powerLogger = v12->_powerLogger;
      v12->_powerLogger = v13;

      [(NavigationPowerLogger *)v12->_powerLogger startLogging];
    }
  }

  return v12;
}

@end