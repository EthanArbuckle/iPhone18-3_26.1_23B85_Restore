@interface FlyoverActionCoordinator
- (AppCoordinator)appCoordinator;
- (BOOL)isFlyoverUnificationEnabled;
- (FlyoverActionCoordinator)initWithContainerViewController:(id)a3;
- (FlyoverContainerViewController)containerViewController;
- (FlyoverTrayContaineeViewController)trayContaineeViewController;
- (int64_t)displayedViewMode;
- (void)flyoverTourCompleted;
- (void)flyoverTourPause;
- (void)flyoverTourPlay;
- (void)flyoverTourResume;
- (void)updateViewMode:(int64_t)a3 animated:(BOOL)a4;
- (void)viewControllerEndFlyover:(id)a3;
- (void)viewControllerPresentTray:(id)a3;
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
  v3 = +[UIDevice currentDevice];
  if ([v3 userInterfaceIdiom] != 5)
  {
    trayContaineeViewController = self->_trayContaineeViewController;

    if (trayContaineeViewController)
    {
      goto LABEL_5;
    }

    v5 = [FlyoverTrayContaineeViewController alloc];
    WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
    v7 = [WeakRetained mapItem];
    v8 = [(FlyoverTrayContaineeViewController *)v5 initWithMapItem:v7];
    v9 = self->_trayContaineeViewController;
    self->_trayContaineeViewController = v8;

    [(FlyoverTrayContaineeViewController *)self->_trayContaineeViewController setDelegate:self];
    v3 = [(FlyoverTrayContaineeViewController *)self->_trayContaineeViewController view];
    [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

LABEL_5:
  v10 = self->_trayContaineeViewController;

  return v10;
}

- (void)flyoverTourCompleted
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v4 = [WeakRetained chromeViewController];
  v5 = [v4 mapView];
  [v5 _stopFlyoverAnimation];

  v6 = objc_loadWeakRetained(&self->_containerViewController);
  v7 = 2 * ([v6 sessionInterruptedReason] != 0);

  v8 = objc_loadWeakRetained(&self->_containerViewController);
  v9 = [v8 chromeViewController];
  v10 = [v9 mapView];
  v11 = [v10 _mapLayer];
  [v11 setFlyoverMode:v7];

  trayContaineeViewController = self->_trayContaineeViewController;

  [(FlyoverTrayContaineeViewController *)trayContaineeViewController resetFlyoverTour];
}

- (void)flyoverTourResume
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v4 = [WeakRetained chromeViewController];
  v5 = [v4 mapView];
  v6 = [v5 _mapLayer];
  [v6 setFlyoverMode:1];

  v9 = objc_loadWeakRetained(&self->_containerViewController);
  v7 = [v9 chromeViewController];
  v8 = [v7 mapView];
  [v8 _resumeFlyoverAnimation];
}

- (void)flyoverTourPause
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v4 = [WeakRetained chromeViewController];
  v5 = [v4 mapView];
  [v5 _pauseFlyoverAnimation];

  v6 = objc_loadWeakRetained(&self->_containerViewController);
  v7 = 2 * ([v6 sessionInterruptedReason] != 0);

  v11 = objc_loadWeakRetained(&self->_containerViewController);
  v8 = [v11 chromeViewController];
  v9 = [v8 mapView];
  v10 = [v9 _mapLayer];
  [v10 setFlyoverMode:v7];
}

- (void)flyoverTourPlay
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v4 = [WeakRetained chromeViewController];
  v5 = [v4 mapView];
  v6 = [v5 _mapLayer];
  [v6 setFlyoverMode:1];

  v12 = objc_loadWeakRetained(&self->_containerViewController);
  v7 = [v12 chromeViewController];
  v8 = [v7 mapView];
  v9 = objc_loadWeakRetained(&self->_containerViewController);
  v10 = [v9 mapItem];
  v11 = [v10 _flyover];
  [v8 _performFlyoverAnimation:v11];
}

- (BOOL)isFlyoverUnificationEnabled
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v3 = [WeakRetained chromeViewController];
  v4 = [v3 mapView];
  v5 = [v4 _mapLayer];
  v6 = [v5 isFlyoverUnificationEnabled];

  return v6;
}

- (void)updateViewMode:(int64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = [(FlyoverActionCoordinator *)self containerViewController];
  v6 = [v7 chromeViewController];
  [v6 updateViewMode:a3 animated:v4];
}

- (int64_t)displayedViewMode
{
  v2 = [(FlyoverActionCoordinator *)self containerViewController];
  v3 = [v2 chromeViewController];
  v4 = [v3 displayedViewMode];

  return v4;
}

- (void)viewControllerPresentTray:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v5 = [WeakRetained topMostPresentedViewController];
  v6 = [v5 transitionCoordinator];

  v7 = objc_loadWeakRetained(&self->_containerViewController);
  v11 = v7;
  if (v6)
  {
    v8 = [v7 topMostPresentedViewController];
    v9 = [v8 transitionCoordinator];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100E83BD8;
    v12[3] = &unk_101661710;
    v12[4] = self;
    [v9 animateAlongsideTransition:0 completion:v12];
  }

  else
  {
    v10 = [(FlyoverActionCoordinator *)self trayContaineeViewController];
    [v11 presentController:v10 animated:0];
  }
}

- (void)viewControllerEndFlyover:(id)a3
{
  v4 = +[VKPlatform sharedPlatform];
  v5 = [v4 supportsARMode];

  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v6 = [WeakRetained chromeViewController];
  v7 = [v6 mapView];
  v8 = v7;
  if (v5)
  {
    [v7 _exitARMode];
  }

  else
  {
    [v7 setFlyoverMode:0xFFFFFFFFLL];
  }
}

- (FlyoverActionCoordinator)initWithContainerViewController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = FlyoverActionCoordinator;
  v5 = [(FlyoverActionCoordinator *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_containerViewController, v4);
  }

  return v6;
}

@end