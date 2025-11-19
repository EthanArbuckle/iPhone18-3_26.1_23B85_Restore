@interface MapsAppTestScrollingRouteDetails
- (BOOL)runTest;
- (void)_performScrollTest;
- (void)directionsPlanDidSetup;
@end

@implementation MapsAppTestScrollingRouteDetails

- (void)_performScrollTest
{
  v3 = [(MapsAppTest *)self testCoordinator];
  v4 = [v3 pptTestScrollViewForDirectionsDetails];

  if (v4)
  {
    objc_initWeak(&location, self);
    v5 = [(MapsAppTest *)self testName];
    RPTGetBoundsForView();
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [RPTScrollViewTestParameters alloc];
    [v4 contentSize];
    v16 = [v14 initWithTestName:v5 scrollBounds:1 scrollContentLength:&stru_101622480 direction:v7 completionHandler:{v9, v11, v13, v15}];
    v24 = v16;
    v17 = [NSArray arrayWithObjects:&v24 count:1];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100589974;
    v20[3] = &unk_101661340;
    objc_copyWeak(&v22, &location);
    v18 = v5;
    v21 = v18;
    v19 = [RPTGroupScrollTestParameters newWithTestName:v18 parameters:v17 completionHandler:v20];

    [RPTTestRunner runTestWithParameters:v19];
    objc_destroyWeak(&v22);

    objc_destroyWeak(&location);
  }

  else
  {
    [(MapsAppTest *)self failedTest];
  }
}

- (void)directionsPlanDidSetup
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100589A40;
  v2[3] = &unk_101661B18;
  v2[4] = self;
  [(MapsAppTest *)self _presentDirectionDetailsWithCompletion:v2];
}

- (BOOL)runTest
{
  [(MapsAppTestRouteChrome *)self setChromeDelegate:self];
  v4.receiver = self;
  v4.super_class = MapsAppTestScrollingRouteDetails;
  return [(MapsAppTestRouteChrome *)&v4 runTest];
}

@end