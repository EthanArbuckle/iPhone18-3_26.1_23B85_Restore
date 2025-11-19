@interface MapsAppTestRotatingRouteDetails
- (BOOL)runTest;
- (void)_performRotationTest;
- (void)directionsPlanDidSetup;
@end

@implementation MapsAppTestRotatingRouteDetails

- (void)_performRotationTest
{
  [(MapsAppTest *)self startedTest];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100589C80;
  v3[3] = &unk_101661B18;
  v3[4] = self;
  [(MapsAppTest *)self rotateDeviceWithCompletion:v3];
}

- (void)directionsPlanDidSetup
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100589CF4;
  v2[3] = &unk_101661B18;
  v2[4] = self;
  [(MapsAppTest *)self _presentDirectionDetailsWithCompletion:v2];
}

- (BOOL)runTest
{
  [(MapsAppTestRouteChrome *)self setChromeDelegate:self];
  v4.receiver = self;
  v4.super_class = MapsAppTestRotatingRouteDetails;
  return [(MapsAppTestRouteChrome *)&v4 runTest];
}

@end