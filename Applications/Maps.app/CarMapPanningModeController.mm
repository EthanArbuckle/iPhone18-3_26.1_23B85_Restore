@interface CarMapPanningModeController
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)mapControlsConfiguration;
- (CarMapPanningModeController)init;
- (ChromeViewController)chromeViewController;
- (NSArray)carFocusOrderSequences;
- (id)mapView;
- (id)personalizedItemSources;
- (void)_doneButtonPressed;
- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)carMapPanningViewControllerDidPan:(id)pan inDirection:(int64_t)direction;
- (void)configureNavigationDisplay:(id)display;
- (void)mapView:(id)view willStartRespondingToGesture:(int64_t)gesture animated:(BOOL)animated;
- (void)resignTopContextInChromeViewController:(id)controller withAnimation:(id)animation;
@end

@implementation CarMapPanningModeController

- (ChromeViewController)chromeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  return WeakRetained;
}

- (void)carMapPanningViewControllerDidPan:(id)pan inDirection:(int64_t)direction
{
  chromeViewController = [(CarMapPanningModeController *)self chromeViewController];
  [chromeViewController captureUserActionPannedInDirection:direction];

  self->_mapWasPanned = 1;
}

- (void)mapView:(id)view willStartRespondingToGesture:(int64_t)gesture animated:(BOOL)animated
{
  if (!gesture)
  {
    self->_mapWasPanned = 1;
  }
}

- (void)_doneButtonPressed
{
  v3 = +[CarDisplayController sharedInstance];
  isCarAppSceneHostingNavigation = [v3 isCarAppSceneHostingNavigation];

  chromeViewController = [(CarMapPanningModeController *)self chromeViewController];
  v6 = chromeViewController;
  if (isCarAppSceneHostingNavigation)
  {
    v7 = 3051;
  }

  else
  {
    v7 = 4;
  }

  [chromeViewController captureUserAction:v7];

  v8 = +[CarChromeModeCoordinator sharedInstance];
  [v8 popFromContext:self];
}

- (void)configureNavigationDisplay:(id)display
{
  displayCopy = display;
  [displayCopy setCameraStyle:0];
  [displayCopy setCameraPaused:&__kCFBooleanTrue];
}

- (void)resignTopContextInChromeViewController:(id)controller withAnimation:(id)animation
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100E92F48;
  v7[3] = &unk_101661B18;
  v7[4] = self;
  animationCopy = animation;
  [animationCopy addPreparation:v7];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100E92FE4;
  v6[3] = &unk_101661738;
  v6[4] = self;
  [animationCopy addCompletion:v6];
}

- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation
{
  animationCopy = animation;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100E93084;
  v6[3] = &unk_101661AE0;
  v6[4] = self;
  isAnimated = [animationCopy isAnimated];
  [animationCopy addPreparation:v6];
}

- (NSArray)carFocusOrderSequences
{
  fullscreenViewController = [(CarMapPanningModeController *)self fullscreenViewController];
  carFocusOrderSequences = [fullscreenViewController carFocusOrderSequences];

  return carFocusOrderSequences;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)mapControlsConfiguration
{
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 4;
  return self;
}

- (id)personalizedItemSources
{
  chromeViewController = [(CarMapPanningModeController *)self chromeViewController];
  searchPinsManager = [chromeViewController searchPinsManager];

  if (searchPinsManager)
  {
    searchResultsItemSource = [searchPinsManager searchResultsItemSource];
    v7 = searchResultsItemSource;
    v5 = [NSArray arrayWithObjects:&v7 count:1];
  }

  else
  {
    v5 = &__NSArray0__struct;
  }

  return v5;
}

- (id)mapView
{
  chromeViewController = [(CarMapPanningModeController *)self chromeViewController];
  mapView = [chromeViewController mapView];

  return mapView;
}

- (CarMapPanningModeController)init
{
  v6.receiver = self;
  v6.super_class = CarMapPanningModeController;
  v2 = [(CarMapPanningModeController *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(CarMapPanningViewController);
    viewController = v2->_viewController;
    v2->_viewController = v3;

    [(CarMapPanningViewController *)v2->_viewController setPanDelegate:v2];
  }

  return v2;
}

@end