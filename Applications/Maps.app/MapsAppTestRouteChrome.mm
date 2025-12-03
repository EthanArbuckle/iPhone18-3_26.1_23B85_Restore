@interface MapsAppTestRouteChrome
- (BOOL)runTest;
- (MapsAppTestRouteChromeDelegate)chromeDelegate;
- (void)_setupDirectionsPlan:(id)plan;
- (void)cleanup:(BOOL)cleanup;
@end

@implementation MapsAppTestRouteChrome

- (MapsAppTestRouteChromeDelegate)chromeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeDelegate);

  return WeakRetained;
}

- (void)_setupDirectionsPlan:(id)plan
{
  planCopy = plan;
  objc_initWeak(&location, self);
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_100589308;
  v9 = &unk_10165FBE8;
  objc_copyWeak(&v10, &location);
  [PPTNotificationCenter addOnceObserverForName:@"MapsRoutePlanningShowingRoutesNotification" object:0 usingBlock:&v6];
  v5 = [(MapsAppTest *)self testCoordinator:v6];
  [v5 setPPTTestDirectionsPlan:planCopy];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (BOOL)runTest
{
  testCoordinator = [(MapsAppTest *)self testCoordinator];
  [testCoordinator pptTestResetForLaunchURL];

  [(MapsAppTest *)self setupForVKTest];
  options = [(MapsAppTest *)self options];
  _mapstest_directionsPlan = [options _mapstest_directionsPlan];

  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10058952C;
  v8[3] = &unk_101661340;
  objc_copyWeak(&v10, &location);
  v6 = _mapstest_directionsPlan;
  v9 = v6;
  [(MapsAppTest *)self addFullyDrawnCallback:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return 1;
}

- (void)cleanup:(BOOL)cleanup
{
  cleanupCopy = cleanup;
  [(MapsAppTest *)self popToRootTrayWithCompletion:0];
  v5.receiver = self;
  v5.super_class = MapsAppTestRouteChrome;
  [(MapsAppTest *)&v5 cleanup:cleanupCopy];
}

@end