@interface StepModeController
- (BOOL)prefersStatusBarHidden;
- (BOOL)updateRouteAnnotationsConfiguration:(id)configuration;
- (IOSBasedChromeViewController)chromeViewController;
- (StatusBarBackgroundViewStyle)statusBarBackgroundViewStyle;
- (StatusBarSupplementaryView)statusBarSupplementaryView;
- (StepActionCoordination)actionCoordinator;
- (StepContainerViewController)containerViewController;
- (StepModeController)initWithRoute:(id)route initialStepIndex:(unint64_t)index desiredUserTrackingMode:(id)mode;
- (id)personalizedItemSources;
- (id)transitionControllerForPopToMode:(id)mode;
- (id)transitionControllerForPushFromMode:(id)mode;
- (int64_t)preferredStatusBarStyle;
- (void)_becomeTopContextInChromeViewController:(id)controller;
- (void)_locationManagerApprovalDidChange:(id)change;
- (void)_resignTopContextInChromeViewController:(id)controller;
- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)getCurrentSceneTitleWithCompletion:(id)completion;
- (void)resignTopContextInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)setChromeViewController:(id)controller;
- (void)setDesiredInitialCamera:(id)camera;
- (void)updateWithDisplayedStep:(id)step;
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
  containerViewController = [(StepModeController *)self containerViewController];
  statusBarSupplementaryView = [containerViewController statusBarSupplementaryView];

  return statusBarSupplementaryView;
}

- (StatusBarBackgroundViewStyle)statusBarBackgroundViewStyle
{
  containerViewController = [(StepModeController *)self containerViewController];
  statusBarBackgroundViewStyle = [containerViewController statusBarBackgroundViewStyle];

  return statusBarBackgroundViewStyle;
}

- (int64_t)preferredStatusBarStyle
{
  containerViewController = [(StepModeController *)self containerViewController];
  preferredStatusBarStyle = [containerViewController preferredStatusBarStyle];

  return preferredStatusBarStyle;
}

- (BOOL)prefersStatusBarHidden
{
  containerViewController = [(StepModeController *)self containerViewController];
  prefersStatusBarHidden = [containerViewController prefersStatusBarHidden];

  return prefersStatusBarHidden;
}

- (void)willBeginDisplayingInSecureLockScreen
{
  containerViewController = [(StepModeController *)self containerViewController];
  [containerViewController willBeginDisplayingInSecureLockScreen];
}

- (void)_locationManagerApprovalDidChange:(id)change
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100F2B58C;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)getCurrentSceneTitleWithCompletion:(id)completion
{
  completionCopy = completion;
  route = [(StepModeController *)self route];
  destination = [route destination];
  name = [destination name];

  v8 = +[NSBundle mainBundle];
  if (name)
  {
    v9 = [v8 localizedStringForKey:@"[App switcher title] Directions to <destination>" value:@"localized string not found" table:0];
    route2 = [(StepModeController *)self route];
    destination2 = [route2 destination];
    name2 = [destination2 name];
    v13 = [NSString stringWithFormat:v9, name2];
  }

  else
  {
    v13 = [v8 localizedStringForKey:@"[App switcher title] Directions" value:@"localized string not found" table:0];
  }

  completionCopy[2](completionCopy, v13);
}

- (void)_resignTopContextInChromeViewController:(id)controller
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:MKLocationManagerApprovalDidChangeNotification object:0];

  chromeViewController = [(StepModeController *)self chromeViewController];
  mapView = [chromeViewController mapView];

  [mapView _setLocationPropagationEnabled:1];
  [mapView _setShouldAnimatePositionWithRouteMatch:1];
  [mapView _setClearUserLocationOnLocationReset:1];
  v10 = *VKAnnotationTrackingBehaviorDefault;
  v11 = VKAnnotationTrackingBehaviorDefault[2];
  [mapView _setUserTrackingBehavior:&v10];
  [mapView _setAlwaysShowHeadingIndicatorIfSupported:1];
  [mapView _setShowHeadingIndicatorForStepping:0];
  [mapView _setApplicationState:0];
  [mapView _clearRouteContext];
  if ([mapView userTrackingMode])
  {
    v7 = +[UIApplication sharedMapsDelegate];
    [v7 setTrackingMode:0 monitorBatteryState:0];
  }

  chromeViewController2 = [(StepModeController *)self chromeViewController];
  userLocationView = [chromeViewController2 userLocationView];

  [userLocationView setHeadingIndicatorStyle:self->_previousHeadingIndicatorStyle];
  [userLocationView setEnabled:self->_previousEnabledStatus];
  [mapView _setShouldSplitRouteLine:0];
  [(GEOComposedRoute *)self->_route setManeuverDisplayEnabled:0];
  [(NavigationPowerLogger *)self->_powerLogger stopLogging];
}

- (void)resignTopContextInChromeViewController:(id)controller withAnimation:(id)animation
{
  controllerCopy = controller;
  animationCopy = animation;
  objc_initWeak(&location, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100F2BA00;
  v9[3] = &unk_101661340;
  objc_copyWeak(&v11, &location);
  v8 = controllerCopy;
  v10 = v8;
  [animationCopy addPreparation:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)_becomeTopContextInChromeViewController:(id)controller
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"_locationManagerApprovalDidChange:" name:MKLocationManagerApprovalDidChangeNotification object:0];

  chromeViewController = [(StepModeController *)self chromeViewController];
  mapView = [chromeViewController mapView];

  [mapView setCompassEnabled:1];
  [mapView setScaleEnabled:0];
  [mapView _setLocationPropagationEnabled:0];
  [mapView _setShouldAnimatePositionWithRouteMatch:0];
  *&v14[1] = *(VKAnnotationTrackingBehaviorDefault + 1);
  *&v14[16] = VKAnnotationTrackingBehaviorDefault[2];
  v14[0] = 0;
  [mapView _setUserTrackingBehavior:v14];
  [mapView _setAlwaysShowHeadingIndicatorIfSupported:0];
  actionCoordinator = [(StepModeController *)self actionCoordinator];
  [mapView _setShowHeadingIndicatorForStepping:{objc_msgSend(actionCoordinator, "isAuthorizedForPreciseLocation")}];

  [mapView _setApplicationState:3];
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
  chromeViewController2 = [(StepModeController *)self chromeViewController];
  [chromeViewController2 updateViewMode:0 animated:0];

  chromeViewController3 = [(StepModeController *)self chromeViewController];
  userLocationView = [chromeViewController3 userLocationView];

  [userLocationView setMode:0 animated:1];
  self->_previousHeadingIndicatorStyle = [userLocationView headingIndicatorStyle];
  [userLocationView setHeadingIndicatorStyle:0];
  self->_previousEnabledStatus = [userLocationView isEnabled];
  [userLocationView setEnabled:0];
  if ([(GEOComposedRoute *)self->_route transportType])
  {
    [mapView setShowsTraffic:0];
  }

  if (self->_desiredInitialCamera)
  {
    [mapView setCamera:?];
  }
}

- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation
{
  controllerCopy = controller;
  animationCopy = animation;
  objc_initWeak(&location, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100F2BE58;
  v9[3] = &unk_101661340;
  objc_copyWeak(&v11, &location);
  v8 = controllerCopy;
  v10 = v8;
  [animationCopy addPreparation:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (BOOL)updateRouteAnnotationsConfiguration:(id)configuration
{
  if (self->_route)
  {
    route = self->_route;
    configurationCopy = configuration;
    configurationCopy2 = [NSArray arrayWithObjects:&route count:1];
    [configurationCopy setRoutes:{configurationCopy2, route}];
  }

  else
  {
    configurationCopy2 = configuration;
    [configurationCopy2 setRoutes:0];
  }

  return 1;
}

- (id)personalizedItemSources
{
  chromeViewController = [(StepModeController *)self chromeViewController];
  searchPinsManager = [chromeViewController searchPinsManager];

  if (searchPinsManager)
  {
    chromeViewController2 = [(StepModeController *)self chromeViewController];
    searchPinsManager2 = [chromeViewController2 searchPinsManager];
    routeStartEndItemSource = [searchPinsManager2 routeStartEndItemSource];
    v10 = routeStartEndItemSource;
    v8 = [NSArray arrayWithObjects:&v10 count:1];
  }

  else
  {
    v8 = &__NSArray0__struct;
  }

  return v8;
}

- (id)transitionControllerForPopToMode:(id)mode
{
  v3 = objc_opt_new();

  return v3;
}

- (id)transitionControllerForPushFromMode:(id)mode
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
    chromeViewController = [(StepModeController *)self chromeViewController];
    [(ContainerViewController *)self->_containerViewController setChromeViewController:chromeViewController];

    containerViewController = self->_containerViewController;
  }

  return containerViewController;
}

- (void)setChromeViewController:(id)controller
{
  controllerCopy = controller;
  objc_storeWeak(&self->_chromeViewController, controllerCopy);
  [(ContainerViewController *)self->_containerViewController setChromeViewController:controllerCopy];
}

- (StepActionCoordination)actionCoordinator
{
  containerViewController = [(StepModeController *)self containerViewController];
  stepActionCoordinator = [containerViewController stepActionCoordinator];

  return stepActionCoordinator;
}

- (void)updateWithDisplayedStep:(id)step
{
  stepCopy = step;
  containerViewController = [(StepModeController *)self containerViewController];
  [containerViewController updateWithDisplayedStep:stepCopy];
}

- (void)setDesiredInitialCamera:(id)camera
{
  v4 = [camera copy];
  desiredInitialCamera = self->_desiredInitialCamera;
  self->_desiredInitialCamera = v4;
}

- (StepModeController)initWithRoute:(id)route initialStepIndex:(unint64_t)index desiredUserTrackingMode:(id)mode
{
  routeCopy = route;
  modeCopy = mode;
  v16.receiver = self;
  v16.super_class = StepModeController;
  v11 = [(StepModeController *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_route, route);
    v12->_initialStepIndex = index;
    if (modeCopy)
    {
      v12->_initializedWithUserTrackingMode = 1;
      v12->_desiredTrackingMode = [modeCopy integerValue];
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