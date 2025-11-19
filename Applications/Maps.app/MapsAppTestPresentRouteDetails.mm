@interface MapsAppTestPresentRouteDetails
- (BOOL)runTest;
- (void)directionsPlanDidSetup;
@end

@implementation MapsAppTestPresentRouteDetails

- (void)directionsPlanDidSetup
{
  [(MapsAppTest *)self startedTest];
  v3 = [(MapsAppTest *)self testName];
  v4[4] = self;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1005896A0;
  v5[3] = &unk_101661B18;
  v5[4] = self;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1005896E4;
  v4[3] = &unk_101661B18;
  [(MapsAppTest *)self presentDismissTrayTestAndSubTestsWithPrefix:v3 presenter:v5 completion:v4];
}

- (BOOL)runTest
{
  [(MapsAppTestRouteChrome *)self setChromeDelegate:self];
  v4.receiver = self;
  v4.super_class = MapsAppTestPresentRouteDetails;
  return [(MapsAppTestRouteChrome *)&v4 runTest];
}

@end