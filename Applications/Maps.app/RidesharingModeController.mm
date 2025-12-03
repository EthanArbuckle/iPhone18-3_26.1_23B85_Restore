@interface RidesharingModeController
- (IOSChromeViewController)chromeViewController;
- (RidesharingModeController)init;
- (RidesharingModeController)initWithApplicationIdentifier:(id)identifier;
- (RidesharingModeController)initWithRideOption:(id)option;
- (UIView)passThroughView;
- (id)fullscreenViewControllerDismissalTransition;
- (id)fullscreenViewControllerPresentationTransition;
- (id)mapViewDelegate;
- (void)_setupMapView;
- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)resignTopContextInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)setChromeViewController:(id)controller;
@end

@implementation RidesharingModeController

- (IOSChromeViewController)chromeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  return WeakRetained;
}

- (id)mapViewDelegate
{
  currentViewController = [(ContainerViewController *)self->_containerViewController currentViewController];
  confirmedRideViewController = [(RidesharingContainerViewController *)self->_containerViewController confirmedRideViewController];
  v5 = [currentViewController isEqual:confirmedRideViewController];

  if (v5)
  {
    chromeViewController = [(RidesharingModeController *)self chromeViewController];
    ridesharingAnnotationsManager = [chromeViewController ridesharingAnnotationsManager];
  }

  else
  {
    ridesharingAnnotationsManager = self->_containerViewController;
  }

  return ridesharingAnnotationsManager;
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

- (void)resignTopContextInChromeViewController:(id)controller withAnimation:(id)animation
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

  chromeViewController = [(RidesharingModeController *)self chromeViewController];
  ridesharingAnnotationsManager = [chromeViewController ridesharingAnnotationsManager];
  [ridesharingAnnotationsManager removeCurrentRide];
}

- (void)_setupMapView
{
  chromeViewController = [(RidesharingModeController *)self chromeViewController];
  displayedViewMode = [chromeViewController displayedViewMode];

  if (displayedViewMode)
  {
    chromeViewController2 = [(RidesharingModeController *)self chromeViewController];
    [chromeViewController2 updateViewMode:0 animated:0];
  }
}

- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation
{
  controllerCopy = controller;
  animationCopy = animation;
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
  chromeViewController = [(RidesharingModeController *)self chromeViewController];
  passThroughView = [chromeViewController passThroughView];

  return passThroughView;
}

- (void)setChromeViewController:(id)controller
{
  obj = controller;
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_chromeViewController, obj);
    [(ContainerViewController *)self->_containerViewController setChromeViewController:obj];
  }
}

- (RidesharingModeController)initWithApplicationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(RidesharingModeController *)self init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    applicationIdentifier = v5->_applicationIdentifier;
    v5->_applicationIdentifier = v6;
  }

  return v5;
}

- (RidesharingModeController)initWithRideOption:(id)option
{
  optionCopy = option;
  v6 = [(RidesharingModeController *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rideOption, option);
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