@interface MapsAppTestRouteChrome
- (BOOL)runTest;
- (MapsAppTestRouteChromeDelegate)chromeDelegate;
- (void)_setupDirectionsPlan:(id)a3;
- (void)cleanup:(BOOL)a3;
@end

@implementation MapsAppTestRouteChrome

- (MapsAppTestRouteChromeDelegate)chromeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeDelegate);

  return WeakRetained;
}

- (void)_setupDirectionsPlan:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_100589308;
  v9 = &unk_10165FBE8;
  objc_copyWeak(&v10, &location);
  [PPTNotificationCenter addOnceObserverForName:@"MapsRoutePlanningShowingRoutesNotification" object:0 usingBlock:&v6];
  v5 = [(MapsAppTest *)self testCoordinator:v6];
  [v5 setPPTTestDirectionsPlan:v4];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (BOOL)runTest
{
  v3 = [(MapsAppTest *)self testCoordinator];
  [v3 pptTestResetForLaunchURL];

  [(MapsAppTest *)self setupForVKTest];
  v4 = [(MapsAppTest *)self options];
  v5 = [v4 _mapstest_directionsPlan];

  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10058952C;
  v8[3] = &unk_101661340;
  objc_copyWeak(&v10, &location);
  v6 = v5;
  v9 = v6;
  [(MapsAppTest *)self addFullyDrawnCallback:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return 1;
}

- (void)cleanup:(BOOL)a3
{
  v3 = a3;
  [(MapsAppTest *)self popToRootTrayWithCompletion:0];
  v5.receiver = self;
  v5.super_class = MapsAppTestRouteChrome;
  [(MapsAppTest *)&v5 cleanup:v3];
}

@end