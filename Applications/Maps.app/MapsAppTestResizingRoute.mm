@interface MapsAppTestResizingRoute
- (BOOL)runTest;
- (void)_performResizingTest;
@end

@implementation MapsAppTestResizingRoute

- (void)_performResizingTest
{
  canUpdateTrayLayout = [(MapsAppTest *)self canUpdateTrayLayout];
  [(MapsAppTest *)self startedTest];
  if (canUpdateTrayLayout)
  {
    testName = [(MapsAppTest *)self testName];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100589EA8;
    v5[3] = &unk_101661B18;
    v5[4] = self;
    [(MapsAppTest *)self resizingTestAndSubTestsWithPrefix:testName completion:v5];
  }

  else
  {

    [(MapsAppTest *)self failedTest];
  }
}

- (BOOL)runTest
{
  [(MapsAppTestRouteChrome *)self setChromeDelegate:self];
  v4.receiver = self;
  v4.super_class = MapsAppTestResizingRoute;
  return [(MapsAppTestRouteChrome *)&v4 runTest];
}

@end