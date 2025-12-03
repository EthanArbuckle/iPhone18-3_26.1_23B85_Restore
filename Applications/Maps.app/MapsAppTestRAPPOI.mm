@interface MapsAppTestRAPPOI
- (BOOL)runTest;
- (void)_showRAPCallout:(id)callout;
- (void)_showRAPPlaceCard:(id)card;
- (void)_startCalloutRAPControllerPresentationTest;
- (void)_startRAPPlacecardTest;
@end

@implementation MapsAppTestRAPPOI

- (void)_showRAPPlaceCard:(id)card
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:MKPlaceViewControllerDidShowNotification object:0];
  [(MapsAppTest *)self failedTest];
}

- (void)_showRAPCallout:(id)callout
{
  v8 = +[NSNotificationCenter defaultCenter];
  [v8 removeObserver:self name:MKBalloonCalloutDidShowNotification object:0];
  [v8 addObserver:self selector:"_showRAPPlaceCard:" name:MKPlaceViewControllerDidShowNotification object:0];
  v4 = +[SearchSession currentSearchSession];
  currentResults = [v4 currentResults];
  firstObject = [currentResults firstObject];

  if (firstObject)
  {
    testCoordinator = [(MapsAppTest *)self testCoordinator];
    [testCoordinator pptTestPresentPlaceCardForSearchResult:firstObject animated:1];
  }

  else
  {
    [(MapsAppTest *)self failedTest];
  }
}

- (void)_startCalloutRAPControllerPresentationTest
{
  options = [(MapsAppTest *)self options];
  v6 = [options objectForKeyedSubscript:@"searchString"];

  v4 = objc_alloc_init(SearchFieldItem);
  [(SearchFieldItem *)v4 setSearchString:v6];
  testCoordinator = [(MapsAppTest *)self testCoordinator];
  [testCoordinator pptTestSearchForFieldItem:v4];
}

- (void)_startRAPPlacecardTest
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_showRAPCallout:" name:MKBalloonCalloutDidShowNotification object:0];

  [(MapsAppTestRAPPOI *)self performSelector:"_startCalloutRAPControllerPresentationTest" withObject:0 afterDelay:1.0];
}

- (BOOL)runTest
{
  testCoordinator = [(MapsAppTest *)self testCoordinator];
  [testCoordinator pptTestResetForLaunchURL];

  [(MapsAppTestRAP *)self overrideProblemSubmissionURL];
  [(MapsAppTestRAP *)self overridePrivacyConsent];
  [(MapsAppTest *)self setupForVKTest];
  options = [(MapsAppTest *)self options];
  [options _mapstest_jumpPoint];
  v6 = v5;
  v8 = v7;
  v10 = v9;

  options2 = [(MapsAppTest *)self options];
  [options2 _mapstest_pitch];
  v13 = v12;

  options3 = [(MapsAppTest *)self options];
  [options3 _mapstest_yaw];
  v16 = v15;

  options4 = [(MapsAppTest *)self options];
  _mapstest_mapType = [options4 _mapstest_mapType];

  [(MapsAppTest *)self switchToMapType:_mapstest_mapType];
  mainVKMapView = [(MapsAppTest *)self mainVKMapView];
  [mainVKMapView _mapstest_jumpToCoords:1 pitch:v6 yaw:v8 altitudeIsRegionSize:{v10, v13, v16}];

  objc_initWeak(&location, self);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100F2A448;
  v21[3] = &unk_101661B98;
  objc_copyWeak(&v22, &location);
  [(MapsAppTest *)self addFullyDrawnCallback:v21];
  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
  return 1;
}

@end