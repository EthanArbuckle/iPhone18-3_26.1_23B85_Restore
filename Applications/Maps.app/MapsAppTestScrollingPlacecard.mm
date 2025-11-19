@interface MapsAppTestScrollingPlacecard
- (BOOL)runTest;
- (void)_scrollingTest;
- (void)placecardDidPresent;
@end

@implementation MapsAppTestScrollingPlacecard

- (void)_scrollingTest
{
  v3 = [(MapsAppTest *)self testName];
  BOOL = GEOConfigGetBOOL();
  v5 = [(MapsAppTestPlacecardChrome *)self placeViewController];
  v6 = [v5 view];
  objc_opt_class();
  v7 = sub_1009F0B70(v6);

  if (BOOL)
  {
    RPTContentSizeInDirection();
    v9 = v8;
    RPTGetBoundsForView();
    v14 = [[RPTScrollViewTestParameters alloc] initWithTestName:v3 scrollBounds:1 scrollContentLength:&stru_1016318C8 direction:v10 completionHandler:{v11, v12, v13, v9}];
    v15 = [v7 window];
    v16 = [RPTCoordinateSpaceConverter converterFromWindow:v15];
    [v14 setConversion:v16];

    objc_initWeak(&location, self);
    v23 = v14;
    v17 = [NSArray arrayWithObjects:&v23 count:1];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1009F32C0;
    v19[3] = &unk_101661340;
    objc_copyWeak(&v21, &location);
    v20 = v3;
    v18 = [RPTGroupScrollTestParameters newWithTestName:v20 parameters:v17 completionHandler:v19];

    [RPTTestRunner runTestWithParameters:v18];
    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  else
  {
    [v7 _performScrollTest:v3 iterations:10 delta:20];
  }
}

- (void)placecardDidPresent
{
  v3 = dispatch_time(0, 2000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1009F33B0;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_after(v3, &_dispatch_main_q, block);
}

- (BOOL)runTest
{
  [(MapsAppTestPlacecardChrome *)self setPlacecardChromeDelegate:self];
  v4.receiver = self;
  v4.super_class = MapsAppTestScrollingPlacecard;
  return [(MapsAppTestPlacecardChrome *)&v4 runTest];
}

@end