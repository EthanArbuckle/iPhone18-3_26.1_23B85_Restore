@interface RidesharingModeController
- (IOSChromeViewController)chromeViewController;
- (RidesharingModeController)init;
- (RidesharingModeController)initWithApplicationIdentifier:(id)a3;
- (RidesharingModeController)initWithRideOption:(id)a3;
- (UIView)passThroughView;
- (id)fullscreenViewControllerDismissalTransition;
- (id)fullscreenViewControllerPresentationTransition;
- (id)mapViewDelegate;
- (void)_setupMapView;
- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)resignTopContextInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)setChromeViewController:(id)a3;
@end

@implementation RidesharingModeController

- (IOSChromeViewController)chromeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  return WeakRetained;
}

- (id)mapViewDelegate
{
  v3 = [(ContainerViewController *)self->_containerViewController currentViewController];
  v4 = [(RidesharingContainerViewController *)self->_containerViewController confirmedRideViewController];
  v5 = [v3 isEqual:v4];

  if (v5)
  {
    v6 = [(RidesharingModeController *)self chromeViewController];
    v7 = [v6 ridesharingAnnotationsManager];
  }

  else
  {
    v7 = self->_containerViewController;
  }

  return v7;
}

- (id)fullscreenViewControllerDismissalTransition
{
  v2 = objc_opt_new();

  return v2;
}

- (id)fullscreenViewControllerPresentationTransition
{
  v2 = objc_opt_new();

  return v2;
}

- (void)resignTopContextInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/RidesharingModeController.m");
    v7 = [[NSString alloc] initWithFormat:@"Resigning ridesharing mode"];
    v11 = 136315394;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", &v11, 0x16u);
  }

  applicationIdentifier = self->_applicationIdentifier;
  self->_applicationIdentifier = 0;

  v9 = [(RidesharingModeController *)self chromeViewController];
  v10 = [v9 ridesharingAnnotationsManager];
  [v10 removeCurrentRide];
}

- (void)_setupMapView
{
  v3 = [(RidesharingModeController *)self chromeViewController];
  v4 = [v3 displayedViewMode];

  if (v4)
  {
    v5 = [(RidesharingModeController *)self chromeViewController];
    [v5 updateViewMode:0 animated:0];
  }
}

- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (self->_rideOption)
  {
    [(RidesharingCoordination *)self->_ridebookingCoordinator presentDetailsPicking];
  }

  if (self->_applicationIdentifier)
  {
    [(RidesharingCoordination *)self->_ridebookingCoordinator presentConfirmedRideWithApplicationIdentifier:?];
  }

  [(RidesharingModeController *)self _setupMapView];
}

- (UIView)passThroughView
{
  v2 = [(RidesharingModeController *)self chromeViewController];
  v3 = [v2 passThroughView];

  return v3;
}

- (void)setChromeViewController:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_chromeViewController, obj);
    [(ContainerViewController *)self->_containerViewController setChromeViewController:obj];
  }
}

- (RidesharingModeController)initWithApplicationIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(RidesharingModeController *)self init];
  if (v5)
  {
    v6 = [v4 copy];
    applicationIdentifier = v5->_applicationIdentifier;
    v5->_applicationIdentifier = v6;
  }

  return v5;
}

- (RidesharingModeController)initWithRideOption:(id)a3
{
  v5 = a3;
  v6 = [(RidesharingModeController *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rideOption, a3);
  }

  return v7;
}

- (RidesharingModeController)init
{
  v8.receiver = self;
  v8.super_class = RidesharingModeController;
  v2 = [(RidesharingModeController *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(RidesharingContainerViewController);
    containerViewController = v2->_containerViewController;
    v2->_containerViewController = v3;

    [(ContainerViewController *)v2->_containerViewController setChromeContext:v2];
    [(ContainerViewController *)v2->_containerViewController setAllowOnlyStandardStyle:0];
    v5 = [[RidesharingCoordinator alloc] initWithContainerViewController:v2->_containerViewController];
    ridebookingCoordinator = v2->_ridebookingCoordinator;
    v2->_ridebookingCoordinator = v5;
  }

  return v2;
}

@end