@interface FlyoverActionCoordinator
- (AppCoordinator)appCoordinator;
- (BOOL)isFlyoverUnificationEnabled;
- (FlyoverActionCoordinator)initWithContainerViewController:(id)controller;
- (FlyoverContainerViewController)containerViewController;
- (FlyoverTrayContaineeViewController)trayContaineeViewController;
- (int64_t)displayedViewMode;
- (void)flyoverTourCompleted;
- (void)flyoverTourPause;
- (void)flyoverTourPlay;
- (void)flyoverTourResume;
- (void)updateViewMode:(int64_t)mode animated:(BOOL)animated;
- (void)viewControllerEndFlyover:(id)flyover;
- (void)viewControllerPresentTray:(id)tray;
@end

@implementation FlyoverActionCoordinator

- (FlyoverContainerViewController)containerViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);

  return WeakRetained;
}

- (AppCoordinator)appCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_appCoordinator);

  return WeakRetained;
}

- (FlyoverTrayContaineeViewController)trayContaineeViewController
{
  view = +[UIDevice currentDevice];
  if ([view userInterfaceIdiom] != 5)
  {
    trayContaineeViewController = self->_trayContaineeViewController;

    if (trayContaineeViewController)
    {
      goto LABEL_5;
    }

    v5 = [FlyoverTrayContaineeViewController alloc];
    WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
    mapItem = [WeakRetained mapItem];
    v8 = [(FlyoverTrayContaineeViewController *)v5 initWithMapItem:mapItem];
    v9 = self->_trayContaineeViewController;
    self->_trayContaineeViewController = v8;

    [(FlyoverTrayContaineeViewController *)self->_trayContaineeViewController setDelegate:self];
    view = [(FlyoverTrayContaineeViewController *)self->_trayContaineeViewController view];
    [view setTranslatesAutoresizingMaskIntoConstraints:0];
  }

LABEL_5:
  v10 = self->_trayContaineeViewController;

  return v10;
}

- (void)flyoverTourCompleted
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  chromeViewController = [WeakRetained chromeViewController];
  mapView = [chromeViewController mapView];
  [mapView _stopFlyoverAnimation];

  v6 = objc_loadWeakRetained(&self->_containerViewController);
  v7 = 2 * ([v6 sessionInterruptedReason] != 0);

  v8 = objc_loadWeakRetained(&self->_containerViewController);
  chromeViewController2 = [v8 chromeViewController];
  mapView2 = [chromeViewController2 mapView];
  _mapLayer = [mapView2 _mapLayer];
  [_mapLayer setFlyoverMode:v7];

  trayContaineeViewController = self->_trayContaineeViewController;

  [(FlyoverTrayContaineeViewController *)trayContaineeViewController resetFlyoverTour];
}

- (void)flyoverTourResume
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  chromeViewController = [WeakRetained chromeViewController];
  mapView = [chromeViewController mapView];
  _mapLayer = [mapView _mapLayer];
  [_mapLayer setFlyoverMode:1];

  v9 = objc_loadWeakRetained(&self->_containerViewController);
  chromeViewController2 = [v9 chromeViewController];
  mapView2 = [chromeViewController2 mapView];
  [mapView2 _resumeFlyoverAnimation];
}

- (void)flyoverTourPause
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  chromeViewController = [WeakRetained chromeViewController];
  mapView = [chromeViewController mapView];
  [mapView _pauseFlyoverAnimation];

  v6 = objc_loadWeakRetained(&self->_containerViewController);
  v7 = 2 * ([v6 sessionInterruptedReason] != 0);

  v11 = objc_loadWeakRetained(&self->_containerViewController);
  chromeViewController2 = [v11 chromeViewController];
  mapView2 = [chromeViewController2 mapView];
  _mapLayer = [mapView2 _mapLayer];
  [_mapLayer setFlyoverMode:v7];
}

- (void)flyoverTourPlay
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  chromeViewController = [WeakRetained chromeViewController];
  mapView = [chromeViewController mapView];
  _mapLayer = [mapView _mapLayer];
  [_mapLayer setFlyoverMode:1];

  v12 = objc_loadWeakRetained(&self->_containerViewController);
  chromeViewController2 = [v12 chromeViewController];
  mapView2 = [chromeViewController2 mapView];
  v9 = objc_loadWeakRetained(&self->_containerViewController);
  mapItem = [v9 mapItem];
  _flyover = [mapItem _flyover];
  [mapView2 _performFlyoverAnimation:_flyover];
}

- (BOOL)isFlyoverUnificationEnabled
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  chromeViewController = [WeakRetained chromeViewController];
  mapView = [chromeViewController mapView];
  _mapLayer = [mapView _mapLayer];
  isFlyoverUnificationEnabled = [_mapLayer isFlyoverUnificationEnabled];

  return isFlyoverUnificationEnabled;
}

- (void)updateViewMode:(int64_t)mode animated:(BOOL)animated
{
  animatedCopy = animated;
  containerViewController = [(FlyoverActionCoordinator *)self containerViewController];
  chromeViewController = [containerViewController chromeViewController];
  [chromeViewController updateViewMode:mode animated:animatedCopy];
}

- (int64_t)displayedViewMode
{
  containerViewController = [(FlyoverActionCoordinator *)self containerViewController];
  chromeViewController = [containerViewController chromeViewController];
  displayedViewMode = [chromeViewController displayedViewMode];

  return displayedViewMode;
}

- (void)viewControllerPresentTray:(id)tray
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  topMostPresentedViewController = [WeakRetained topMostPresentedViewController];
  transitionCoordinator = [topMostPresentedViewController transitionCoordinator];

  v7 = objc_loadWeakRetained(&self->_containerViewController);
  v11 = v7;
  if (transitionCoordinator)
  {
    topMostPresentedViewController2 = [v7 topMostPresentedViewController];
    transitionCoordinator2 = [topMostPresentedViewController2 transitionCoordinator];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100E83BD8;
    v12[3] = &unk_101661710;
    v12[4] = self;
    [transitionCoordinator2 animateAlongsideTransition:0 completion:v12];
  }

  else
  {
    trayContaineeViewController = [(FlyoverActionCoordinator *)self trayContaineeViewController];
    [v11 presentController:trayContaineeViewController animated:0];
  }
}

- (void)viewControllerEndFlyover:(id)flyover
{
  v4 = +[VKPlatform sharedPlatform];
  supportsARMode = [v4 supportsARMode];

  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  chromeViewController = [WeakRetained chromeViewController];
  mapView = [chromeViewController mapView];
  v8 = mapView;
  if (supportsARMode)
  {
    [mapView _exitARMode];
  }

  else
  {
    [mapView setFlyoverMode:0xFFFFFFFFLL];
  }
}

- (FlyoverActionCoordinator)initWithContainerViewController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = FlyoverActionCoordinator;
  v5 = [(FlyoverActionCoordinator *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_containerViewController, controllerCopy);
  }

  return v6;
}

@end