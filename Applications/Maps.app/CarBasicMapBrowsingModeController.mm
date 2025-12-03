@interface CarBasicMapBrowsingModeController
- (CarMapTrackingController)trackingController;
- (ChromeViewController)chromeViewController;
- (id)mapView;
- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)configureNavigationDisplay:(id)display;
- (void)mapView:(id)view didUpdateUserLocation:(id)location;
- (void)resignTopContextInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)setInitialTrackingIfNeededAndPossible;
- (void)setMapCamera:(id)camera animated:(BOOL)animated;
- (void)setVisibleMapRegion:(id *)region animated:(BOOL)animated;
@end

@implementation CarBasicMapBrowsingModeController

- (ChromeViewController)chromeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  return WeakRetained;
}

- (void)setInitialTrackingIfNeededAndPossible
{
  chromeViewController = [(CarBasicMapBrowsingModeController *)self chromeViewController];
  _maps_mapsSceneDelegate = [chromeViewController _maps_mapsSceneDelegate];
  entryPointsCoordinator = [_maps_mapsSceneDelegate entryPointsCoordinator];
  didLaunchWithExplicitIntent = [entryPointsCoordinator didLaunchWithExplicitIntent];

  if (!self->_didSetInitialTracking && (didLaunchWithExplicitIntent & 1) == 0)
  {
    carChromeViewController = [(CarBasicMapBrowsingModeController *)self carChromeViewController];
    isRunningNavigationDisplay = [carChromeViewController isRunningNavigationDisplay];

    if ((isRunningNavigationDisplay & 1) == 0)
    {
      chromeViewController2 = [(CarBasicMapBrowsingModeController *)self chromeViewController];
      mapView = [chromeViewController2 mapView];

      userLocation = [mapView userLocation];
      location = [userLocation location];

      if (location)
      {
        self->_didSetInitialTracking = 1;
        carChromeViewController2 = [(CarBasicMapBrowsingModeController *)self carChromeViewController];
        defaultMapSettings = [carChromeViewController2 defaultMapSettings];
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_100DF1690;
        v15[3] = &unk_101661738;
        v15[4] = self;
        [defaultMapSettings applyToMapViewAnimated:0 duration:v15 completion:0.0];
      }

      else
      {
      }
    }
  }
}

- (CarMapTrackingController)trackingController
{
  trackingController = self->_trackingController;
  if (!trackingController)
  {
    v4 = objc_alloc_init(CarMapTrackingController);
    v5 = self->_trackingController;
    self->_trackingController = v4;

    trackingController = self->_trackingController;
  }

  return trackingController;
}

- (void)resignTopContextInChromeViewController:(id)controller withAnimation:(id)animation
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100DF116C;
  v4[3] = &unk_101661B18;
  v4[4] = self;
  [animation addPreparation:v4];
}

- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100DF1224;
  v4[3] = &unk_101661B18;
  v4[4] = self;
  [animation addPreparation:v4];
}

- (void)configureNavigationDisplay:(id)display
{
  displayCopy = display;
  [displayCopy setCameraStyle:4];
  [displayCopy setRouteGeniusEntry:0];
  [displayCopy setCameraPaused:0];
}

- (void)setMapCamera:(id)camera animated:(BOOL)animated
{
  cameraCopy = camera;
  if (cameraCopy)
  {
    self->_didSetInitialTracking = 1;
    chromeViewController = [(CarBasicMapBrowsingModeController *)self chromeViewController];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100DF14A0;
    v8[3] = &unk_101656010;
    v8[4] = self;
    v9 = cameraCopy;
    animatedCopy = animated;
    [chromeViewController whenContextNextBecomesCurrent:self performAction:@"SetMapRegion" withBlock:v8];
  }
}

- (void)setVisibleMapRegion:(id *)region animated:(BOOL)animated
{
  regionCopy = region;
  v9 = v7;
  v10 = v6;
  v11 = v5;
  v12 = v4;
  self->_didSetInitialTracking = 1;
  v14 = [(CarBasicMapBrowsingModeController *)self chromeViewController:region];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100DF15E0;
  v15[3] = &unk_101655338;
  v15[4] = self;
  v15[5] = v12;
  v15[6] = v11;
  v15[7] = v10;
  v15[8] = v9;
  v16 = regionCopy;
  [v14 whenContextNextBecomesCurrent:self performAction:@"SetMapRegion" withBlock:v15];
}

- (id)mapView
{
  chromeViewController = [(CarBasicMapBrowsingModeController *)self chromeViewController];
  mapView = [chromeViewController mapView];

  return mapView;
}

- (void)mapView:(id)view didUpdateUserLocation:(id)location
{
  v5 = [(CarBasicMapBrowsingModeController *)self chromeViewController:view];
  v6 = [v5 isCurrentContext:self];

  if (v6)
  {

    [(CarBasicMapBrowsingModeController *)self setInitialTrackingIfNeededAndPossible];
  }
}

@end