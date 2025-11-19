@interface MapsAppTestRotatingRoute
- (BOOL)runTest;
- (void)_performRotationTest;
- (void)directionsPlanDidSetup;
@end

@implementation MapsAppTestRotatingRoute

- (void)_performRotationTest
{
  [(MapsAppTest *)self startedTest];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100589B14;
  v3[3] = &unk_101661B18;
  v3[4] = self;
  [(MapsAppTest *)self rotateDeviceWithCompletion:v3];
}

- (void)directionsPlanDidSetup
{
  v3 = dispatch_time(0, 3000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100589BAC;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_after(v3, &_dispatch_main_q, block);
}

- (BOOL)runTest
{
  [(MapsAppTestRouteChrome *)self setChromeDelegate:self];
  v4.receiver = self;
  v4.super_class = MapsAppTestRotatingRoute;
  return [(MapsAppTestRouteChrome *)&v4 runTest];
}

@end