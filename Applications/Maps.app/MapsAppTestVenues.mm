@interface MapsAppTestVenues
- (BOOL)runTest;
- (void)displayCategoryResultsWithMapItem:(id)a3 searchCategory:(id)a4 completion:(id)a5;
- (void)displayPlacecardWithWillDisplayBlock:(id)a3 didDisplayBlock:(id)a4;
- (void)jumpToWestfieldSF:(id)a3;
- (void)performScrollTestOnScrollView:(id)a3;
- (void)runBrowseTest;
- (void)runScrollCategoryResultsTest;
- (void)runScrollSearchResultPlacecardTest;
- (void)selectSearchResult:(id)a3 completion:(id)a4;
- (void)selectSubCategory:(id)a3 venueCategoryViewController:(id)a4 completion:(id)a5;
@end

@implementation MapsAppTestVenues

- (void)runScrollSearchResultPlacecardTest
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100B29D84;
  v2[3] = &unk_101638808;
  v2[4] = self;
  [(MapsAppTestVenues *)self displayPlacecardWithWillDisplayBlock:0 didDisplayBlock:v2];
}

- (void)runScrollCategoryResultsTest
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100B2A138;
  v2[3] = &unk_101638808;
  v2[4] = self;
  [(MapsAppTestVenues *)self displayPlacecardWithWillDisplayBlock:0 didDisplayBlock:v2];
}

- (void)runBrowseTest
{
  [(MapsAppTest *)self startedTest];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100B2A4CC;
  v4[3] = &unk_101661B18;
  v4[4] = self;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100B2A4DC;
  v3[3] = &unk_101638808;
  v3[4] = self;
  [(MapsAppTestVenues *)self displayPlacecardWithWillDisplayBlock:v4 didDisplayBlock:v3];
}

- (void)selectSubCategory:(id)a3 venueCategoryViewController:(id)a4 completion:(id)a5
{
  v8 = a5;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100B2AA38;
  v17[3] = &unk_101650D20;
  v17[4] = self;
  v9 = a4;
  v10 = a3;
  [PPTNotificationCenter addOnceObserverForName:@"VenueBrowseDidFailToSelectSubcategory" object:0 usingBlock:v17];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100B2AA40;
  v15 = &unk_10164FAC0;
  v16 = v8;
  v11 = v8;
  [PPTNotificationCenter addOnceObserverForName:@"VenueBrowseDidDisplayCategoryResults" object:0 usingBlock:&v12];
  [v9 selectSubcategory:{v10, v12, v13, v14, v15}];
}

- (void)selectSearchResult:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = MKPlaceViewControllerDidShowNotification;
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_100B2AB44;
  v14 = &unk_101638770;
  v15 = self;
  v16 = v6;
  v8 = v6;
  v9 = a3;
  [PPTNotificationCenter addOnceObserverForName:v7 object:0 usingBlock:&v11];
  v10 = [(MapsAppTest *)self testCoordinator:v11];
  [v10 pptTestSelectVenueSearchResult:v9];
}

- (void)performScrollTestOnScrollView:(id)a3
{
  v4 = a3;
  v5 = [(MapsAppTest *)self testName];
  v6 = [v5 stringByAppendingString:@" - scroll"];

  [(MapsAppTest *)self startedSubTest:v6];
  objc_initWeak(&location, self);
  RPTContentSizeInDirection();
  v8 = v7;
  RPTGetBoundsForView();
  v13 = [[RPTScrollViewTestParameters alloc] initWithTestName:v6 scrollBounds:1 scrollContentLength:&stru_101638790 direction:v9 completionHandler:{v10, v11, v12, v8}];
  v21 = v13;
  v14 = [NSArray arrayWithObjects:&v21 count:1];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100B2AE00;
  v17[3] = &unk_101661340;
  objc_copyWeak(&v19, &location);
  v15 = v6;
  v18 = v15;
  v16 = [RPTGroupScrollTestParameters newWithTestName:v15 parameters:v14 completionHandler:v17];

  [RPTTestRunner runTestWithParameters:v16];
  objc_destroyWeak(&v19);

  objc_destroyWeak(&location);
}

- (void)displayCategoryResultsWithMapItem:(id)a3 searchCategory:(id)a4 completion:(id)a5
{
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100B2AF58;
  v15 = &unk_101638770;
  v16 = self;
  v17 = a5;
  v8 = v17;
  v9 = a4;
  v10 = a3;
  [PPTNotificationCenter addOnceObserverForName:@"VenueBrowseDidDisplayCategoryResults" object:0 usingBlock:&v12];
  v11 = [(MapsAppTest *)self testCoordinator:v12];
  [v11 pptTestPresentVenueForMapItem:v10 searchCategory:v9];
}

- (void)displayPlacecardWithWillDisplayBlock:(id)a3 didDisplayBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MKMapItemIdentifier alloc];
  v9 = [v8 initWithMUID:0xCB37502B5BA58FCCLL resultProviderID:0 coordinate:{MKCoordinateInvalid[0], MKCoordinateInvalid[1]}];
  if (v9)
  {
    v10 = +[MKMapService sharedService];
    v16 = v9;
    v11 = [NSArray arrayWithObjects:&v16 count:1];
    v12 = [v10 ticketForIdentifiers:v11 traits:0];

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100B2B170;
    v13[3] = &unk_101638748;
    v13[4] = self;
    v14 = v6;
    v15 = v7;
    [v12 submitWithHandler:v13 networkActivity:0];
  }

  else
  {
    [(MapsAppTest *)self failedTest];
  }
}

- (void)jumpToWestfieldSF:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v6 = objc_alloc_init(GEOMapRegion);
    [v6 setWestLng:-122.409078];
    [v6 setEastLng:-122.403764];
    [v6 setSouthLat:37.7806008];
    [v6 setNorthLat:37.7871745];
    v5 = [(MapsAppTest *)self mainVKMapView];
    [v5 setMapRegion:v6 pitch:0.0 yaw:0.0];

    [(MapsAppTest *)self addFullyDrawnCallback:v4];
  }
}

- (BOOL)runTest
{
  v3 = [(MapsAppTest *)self testCoordinator];
  [v3 pptTestResetForLaunchURL];

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100B2B570;
  v5[3] = &unk_101661B18;
  v5[4] = self;
  [(MapsAppTestVenues *)self jumpToWestfieldSF:v5];
  return 1;
}

@end