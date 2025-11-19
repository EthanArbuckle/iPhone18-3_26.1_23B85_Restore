@interface CarBasicMapBrowsingModeController
- (CarMapTrackingController)trackingController;
- (ChromeViewController)chromeViewController;
- (id)mapView;
- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)configureNavigationDisplay:(id)a3;
- (void)mapView:(id)a3 didUpdateUserLocation:(id)a4;
- (void)resignTopContextInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)setInitialTrackingIfNeededAndPossible;
- (void)setMapCamera:(id)a3 animated:(BOOL)a4;
- (void)setVisibleMapRegion:(id *)a3 animated:(BOOL)a4;
@end

@implementation CarBasicMapBrowsingModeController

- (ChromeViewController)chromeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  return WeakRetained;
}

- (void)setInitialTrackingIfNeededAndPossible
{
  v3 = [(CarBasicMapBrowsingModeController *)self chromeViewController];
  v4 = [v3 _maps_mapsSceneDelegate];
  v5 = [v4 entryPointsCoordinator];
  v6 = [v5 didLaunchWithExplicitIntent];

  if (!self->_didSetInitialTracking && (v6 & 1) == 0)
  {
    v7 = [(CarBasicMapBrowsingModeController *)self carChromeViewController];
    v8 = [v7 isRunningNavigationDisplay];

    if ((v8 & 1) == 0)
    {
      v9 = [(CarBasicMapBrowsingModeController *)self chromeViewController];
      v14 = [v9 mapView];

      v10 = [v14 userLocation];
      v11 = [v10 location];

      if (v11)
      {
        self->_didSetInitialTracking = 1;
        v12 = [(CarBasicMapBrowsingModeController *)self carChromeViewController];
        v13 = [v12 defaultMapSettings];
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_100DF1690;
        v15[3] = &unk_101661738;
        v15[4] = self;
        [v13 applyToMapViewAnimated:0 duration:v15 completion:0.0];
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

- (void)resignTopContextInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100DF116C;
  v4[3] = &unk_101661B18;
  v4[4] = self;
  [a4 addPreparation:v4];
}

- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100DF1224;
  v4[3] = &unk_101661B18;
  v4[4] = self;
  [a4 addPreparation:v4];
}

- (void)configureNavigationDisplay:(id)a3
{
  v3 = a3;
  [v3 setCameraStyle:4];
  [v3 setRouteGeniusEntry:0];
  [v3 setCameraPaused:0];
}

- (void)setMapCamera:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  if (v6)
  {
    self->_didSetInitialTracking = 1;
    v7 = [(CarBasicMapBrowsingModeController *)self chromeViewController];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100DF14A0;
    v8[3] = &unk_101656010;
    v8[4] = self;
    v9 = v6;
    v10 = a4;
    [v7 whenContextNextBecomesCurrent:self performAction:@"SetMapRegion" withBlock:v8];
  }
}

- (void)setVisibleMapRegion:(id *)a3 animated:(BOOL)a4
{
  v8 = a3;
  v9 = v7;
  v10 = v6;
  v11 = v5;
  v12 = v4;
  self->_didSetInitialTracking = 1;
  v14 = [(CarBasicMapBrowsingModeController *)self chromeViewController:a3];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100DF15E0;
  v15[3] = &unk_101655338;
  v15[4] = self;
  v15[5] = v12;
  v15[6] = v11;
  v15[7] = v10;
  v15[8] = v9;
  v16 = v8;
  [v14 whenContextNextBecomesCurrent:self performAction:@"SetMapRegion" withBlock:v15];
}

- (id)mapView
{
  v2 = [(CarBasicMapBrowsingModeController *)self chromeViewController];
  v3 = [v2 mapView];

  return v3;
}

- (void)mapView:(id)a3 didUpdateUserLocation:(id)a4
{
  v5 = [(CarBasicMapBrowsingModeController *)self chromeViewController:a3];
  v6 = [v5 isCurrentContext:self];

  if (v6)
  {

    [(CarBasicMapBrowsingModeController *)self setInitialTrackingIfNeededAndPossible];
  }
}

@end