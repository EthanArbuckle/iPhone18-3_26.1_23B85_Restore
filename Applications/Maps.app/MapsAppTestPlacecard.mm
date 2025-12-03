@interface MapsAppTestPlacecard
- (BOOL)runTest;
- (void)_maxiumizePlaceCard;
- (void)_mediumizePlaceCard;
- (void)_mediumizePlaceCardFromBig;
- (void)_minimizePlaceCard;
- (void)_performNextTestAfterShowingPlacecard;
- (void)_placeCardDidShowForWarmLaunch:(id)launch;
- (void)_placeCardDidUpdatePosition:(id)position;
- (void)_postNotificationForScrollingTest:(int64_t)test testName:(id)name;
- (void)_repositionTestDidFinish;
- (void)_repositionTestWillStart;
- (void)_runScrollTest;
- (void)_scrollTest:(id)test;
- (void)_searchResultDidShow:(id)show;
- (void)_showCallout:(id)callout;
- (void)_showPlaceCard:(id)card;
- (void)_testWarmLaunch;
- (void)_testWithLoadedPlacecard;
- (void)_webContentLoadHandler:(id)handler;
- (void)addWebPlacecardMetrics:(id)metrics;
- (void)cleanup:(BOOL)cleanup;
- (void)finishedSubTest:(id)test checkAllFinished:(BOOL)finished;
- (void)searchSessionDidChangeSearchResults:(id)results;
- (void)startPlacecardTest;
- (void)startedSubTest:(id)test;
@end

@implementation MapsAppTestPlacecard

- (void)finishedSubTest:(id)test checkAllFinished:(BOOL)finished
{
  finishedCopy = finished;
  v7.receiver = self;
  v7.super_class = MapsAppTestPlacecard;
  [(MapsAppTest *)&v7 finishedSubTest:test];
  v6 = self->_waitingTests - 1;
  self->_waitingTests = v6;
  if (finishedCopy && !v6)
  {
    [(MapsAppTest *)self finishedTest];
  }
}

- (void)startedSubTest:(id)test
{
  ++self->_waitingTests;
  v3.receiver = self;
  v3.super_class = MapsAppTestPlacecard;
  [(MapsAppTest *)&v3 startedSubTest:test];
}

- (void)_postNotificationForScrollingTest:(int64_t)test testName:(id)name
{
  nameCopy = name;
  v7 = +[NSNotificationCenter defaultCenter];
  v8 = MUWebBasedPlacecardScrollTestNotification;
  v11[0] = @"event";
  v9 = [NSNumber numberWithInteger:test];
  v11[1] = @"testName";
  v12[0] = v9;
  v12[1] = nameCopy;
  v10 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];

  [v7 postNotificationName:v8 object:self userInfo:v10];
}

- (void)_scrollTest:(id)test
{
  testCopy = test;
  v5 = testCopy;
  scrollTestState = self->_scrollTestState;
  switch(scrollTestState)
  {
    case 2uLL:
      v16 = +[NSNotificationCenter defaultCenter];
      object = [v5 object];
      [v16 removeObserver:self name:@"ScrollingFinishedNotification" object:object];
      originalDelegate = [(ScrollViewDelegateForwarder *)self->_scrollViewDelegate originalDelegate];
      [object setDelegate:originalDelegate];

      scrollViewDelegate = self->_scrollViewDelegate;
      self->_scrollViewDelegate = 0;

      v20 = dispatch_time(0, 20000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1009F0C5C;
      block[3] = &unk_101661B18;
      block[4] = self;
      dispatch_after(v20, &_dispatch_main_q, block);

      goto LABEL_11;
    case 1uLL:
      object2 = [testCopy object];
      [object2 setContentOffset:1 animated:{CGPointZero.x, CGPointZero.y}];
LABEL_8:

      scrollTestState = self->_scrollTestState;
      break;
    case 0uLL:
      if (self->_canResizePlacecard)
      {
        [(MapsAppTestPlacecard *)self finishedScrollingSubTest:@"expand" checkAllFinished:0];
      }

      object2 = +[NSNotificationCenter defaultCenter];
      [object2 removeObserver:self name:@"PPTTestTrayLayoutDidUpdateNotification" object:0];
      WeakRetained = objc_loadWeakRetained(&self->_placeViewController);
      view = [WeakRetained view];
      objc_opt_class();
      v10 = sub_1009F0B70(view);

      [object2 addObserver:self selector:"_scrollTest:" name:@"ScrollingFinishedNotification" object:v10];
      v11 = objc_alloc_init(ScrollViewDelegateForwarder);
      v12 = self->_scrollViewDelegate;
      self->_scrollViewDelegate = v11;

      delegate = [v10 delegate];
      [(ScrollViewDelegateForwarder *)self->_scrollViewDelegate setOriginalDelegate:delegate];

      [v10 setDelegate:self->_scrollViewDelegate];
      [(MapsAppTestPlacecard *)self startedSubTest:@"scrolling"];
      [v10 contentSize];
      v15 = v14;
      [v10 frame];
      [v10 setContentOffset:1 animated:{CGPointZero.x, v15 - CGRectGetHeight(v22)}];

      goto LABEL_8;
  }

  self->_scrollTestState = scrollTestState + 1;
LABEL_11:
}

- (void)_runScrollTest
{
  if (self->_isScrollTest && !self->_waitingTests)
  {
    if (self->_canResizePlacecard)
    {
      v4 = +[NSNotificationCenter defaultCenter];
      [v4 addObserver:self selector:"_scrollTest:" name:@"PPTTestTrayLayoutDidUpdateNotification" object:0];
      self->_scrollTestState = 0;
      [(MapsAppTestPlacecard *)self startedScrollingSubTest:@"expand"];
      testCoordinator = [(MapsAppTest *)self testCoordinator];
      [testCoordinator pptTestMaximizePlaceCardAnimated:1];
    }

    else
    {
      self->_scrollTestState = 0;

      [(MapsAppTestPlacecard *)self _scrollTest:0];
    }
  }
}

- (void)_repositionTestDidFinish
{
  [(MapsAppTestPlacecard *)self finishedSubTest:@"PlaceCardReposition" checkAllFinished:!self->_isScrollTest];

  [(MapsAppTestPlacecard *)self _runScrollTest];
}

- (void)_placeCardDidUpdatePosition:(id)position
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:@"PPTTestTrayLayoutDidUpdateNotification" object:0];

  [(MapsAppTestPlacecard *)self finishedScrollingSubTest:@"PlaceCardReposition big to medium" checkAllFinished:0];

  [(MapsAppTestPlacecard *)self _repositionTestDidFinish];
}

- (void)_mediumizePlaceCardFromBig
{
  if (self->_notifcationToken)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 removeObserver:self->_notifcationToken];
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"_placeCardDidUpdatePosition:" name:@"PPTTestTrayLayoutDidUpdateNotification" object:0];

  [(MapsAppTestPlacecard *)self startedScrollingSubTest:@"PlaceCardReposition big to medium"];
  testCoordinator = [(MapsAppTest *)self testCoordinator];
  [testCoordinator pptTestMediumizePlaceCardAnimated:1];
}

- (void)_maxiumizePlaceCard
{
  if (self->_notifcationToken)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 removeObserver:self->_notifcationToken];
  }

  objc_initWeak(&location, self);
  v4 = +[NSNotificationCenter defaultCenter];
  v5 = +[NSOperationQueue mainQueue];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_1009F110C;
  v12 = &unk_10165FBE8;
  objc_copyWeak(&v13, &location);
  v6 = [v4 addObserverForName:@"PPTTestTrayLayoutDidUpdateNotification" object:0 queue:v5 usingBlock:&v9];
  notifcationToken = self->_notifcationToken;
  self->_notifcationToken = v6;

  [(MapsAppTestPlacecard *)self startedScrollingSubTest:@"PlaceCardReposition medium to big", v9, v10, v11, v12];
  testCoordinator = [(MapsAppTest *)self testCoordinator];
  [testCoordinator pptTestMaximizePlaceCardAnimated:1];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)_mediumizePlaceCard
{
  if (self->_notifcationToken)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 removeObserver:self->_notifcationToken];
  }

  objc_initWeak(&location, self);
  v4 = +[NSNotificationCenter defaultCenter];
  v5 = +[NSOperationQueue mainQueue];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_1009F1320;
  v12 = &unk_10165FBE8;
  objc_copyWeak(&v13, &location);
  v6 = [v4 addObserverForName:@"PPTTestTrayLayoutDidUpdateNotification" object:0 queue:v5 usingBlock:&v9];
  notifcationToken = self->_notifcationToken;
  self->_notifcationToken = v6;

  [(MapsAppTestPlacecard *)self startedScrollingSubTest:@"PlaceCardReposition small to medium", v9, v10, v11, v12];
  testCoordinator = [(MapsAppTest *)self testCoordinator];
  [testCoordinator pptTestMediumizePlaceCardAnimated:1];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)_minimizePlaceCard
{
  [(MapsAppTestPlacecard *)self startedScrollingSubTest:@"PlaceCardReposition medium to small"];
  testCoordinator = [(MapsAppTest *)self testCoordinator];
  [testCoordinator pptTestMinimizePlaceCardAnimated:1];
}

- (void)_repositionTestWillStart
{
  if (!self->_waitingTests)
  {
    objc_initWeak(&location, self);
    v3 = +[NSNotificationCenter defaultCenter];
    v4 = +[NSOperationQueue mainQueue];
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_1009F153C;
    v10 = &unk_10165FBE8;
    objc_copyWeak(&v11, &location);
    v5 = [v3 addObserverForName:@"PPTTestTrayLayoutDidUpdateNotification" object:0 queue:v4 usingBlock:&v7];
    notifcationToken = self->_notifcationToken;
    self->_notifcationToken = v5;

    [(MapsAppTestPlacecard *)self startedSubTest:@"PlaceCardReposition", v7, v8, v9, v10];
    [(MapsAppTestPlacecard *)self _minimizePlaceCard];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

- (void)_performNextTestAfterShowingPlacecard
{
  testCoordinator = [(MapsAppTest *)self testCoordinator];
  self->_canResizePlacecard = [testCoordinator pptTestCanResizePlacecard];

  if (self->_canResizePlacecard)
  {

    [(MapsAppTestPlacecard *)self _repositionTestWillStart];
  }

  else
  {

    [(MapsAppTestPlacecard *)self _runScrollTest];
  }
}

- (void)addWebPlacecardMetrics:(id)metrics
{
  metricsCopy = metrics;
  results = [(MapsAppTest *)self results];
  [results addEntriesFromDictionary:metricsCopy];
}

- (void)_webContentLoadHandler:(id)handler
{
  userInfo = [handler userInfo];
  v4 = [userInfo objectForKey:@"event"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    integerValue = [v4 integerValue];
    if (integerValue == 3)
    {
      v7 = +[NSNotificationCenter defaultCenter];
      [v7 removeObserver:self name:MUWebBasedPlacecardContentLoadNotification object:0];
      [(MapsAppTestPlacecard *)self finishedSubTest:@"bridge context init to web content loaded" checkAllFinished:0];
    }

    else
    {
      if (integerValue == 2)
      {
        [(MapsAppTestPlacecard *)self finishedSubTest:@"web init to bridge context init" checkAllFinished:0];
        v6 = @"bridge context init to web content loaded";
      }

      else
      {
        if (integerValue != 1)
        {
          goto LABEL_9;
        }

        v6 = @"web init to bridge context init";
      }

      [(MapsAppTestPlacecard *)self startedSubTest:v6];
    }
  }

LABEL_9:
}

- (void)_placeCardDidShowForWarmLaunch:(id)launch
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:MKPlaceViewControllerDidShowNotification object:0];
  [(MapsAppTestPlacecard *)self finishedSubTest:@"showPlaceCardWarmLaunch" checkAllFinished:0];
  v5 = dispatch_time(0, 100000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1009F1884;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_after(v5, &_dispatch_main_q, block);
}

- (void)_showPlaceCard:(id)card
{
  cardCopy = card;
  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:self name:MKPlaceViewControllerDidShowNotification object:0];
  [(MapsAppTestPlacecard *)self finishedSubTest:@"showPlaceCard" checkAllFinished:0];
  object = [cardCopy object];

  objc_storeWeak(&self->_placeViewController, object);
  [(MapsAppTestPlacecard *)self _performNextTestAfterShowingPlacecard];
}

- (void)_showCallout:(id)callout
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:MKBalloonCalloutDidShowNotification object:0];
  [(MapsAppTestPlacecard *)self finishedSubTest:@"showCallout" checkAllFinished:0];
  [(MapsAppTestPlacecard *)self _performNextTestAfterShowingPlacecard];
}

- (void)_searchResultDidShow:(id)show
{
  [(MapsAppTestPlacecard *)self finishedSubTest:@"showSearchResults" checkAllFinished:0];
  v7 = +[NSNotificationCenter defaultCenter];
  [v7 removeObserver:self name:@"MapsPinsDroppedForSearchResultsNotification" object:0];
  results = [(SearchInfo *)self->_searchInfo results];
  firstObject = [results firstObject];

  if (firstObject)
  {
    [v7 addObserver:self selector:"_showPlaceCard:" name:MKPlaceViewControllerDidShowNotification object:0];
    [(MapsAppTestPlacecard *)self startedSubTest:@"showPlaceCard"];
    testCoordinator = [(MapsAppTest *)self testCoordinator];
    [testCoordinator pptTestPresentPlaceCardForSearchResult:firstObject animated:!self->_isScrollTest];
  }

  else
  {
    [(MapsAppTest *)self failedTest];
  }
}

- (void)searchSessionDidChangeSearchResults:(id)results
{
  resultsCopy = results;
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:@"SearchSessionDidChangeSearchResultsNotification" object:0];

  object = [resultsCopy object];

  if (!object)
  {
    [(MapsAppTest *)self failedTest];
    goto LABEL_9;
  }

  searchInfo = [object searchInfo];
  searchInfo = self->_searchInfo;
  self->_searchInfo = searchInfo;

  [(MapsAppTestPlacecard *)self finishedSubTest:@"searchResultReceived" checkAllFinished:0];
  searchInfo2 = [object searchInfo];
  results = [searchInfo2 results];
  v10 = [results count];

  if (v10 >= 2)
  {
    v11 = @"showSearchResults";
LABEL_7:
    [(MapsAppTestPlacecard *)self startedSubTest:v11];
    goto LABEL_9;
  }

  if (v10 == 1)
  {
    [(MapsAppTestPlacecard *)self startedSubTest:@"showCallout"];
    v11 = @"showPlaceCard";
    goto LABEL_7;
  }

  [(MapsAppTest *)self finishedTest];
LABEL_9:
}

- (void)_testWarmLaunch
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_placeCardDidShowForWarmLaunch:" name:MKPlaceViewControllerDidShowNotification object:0];
  options = [(MapsAppTest *)self options];
  v5 = [options objectForKeyedSubscript:@"mapItem"];

  v6 = [[NSData alloc] initWithBase64EncodedString:v5 options:0];
  v7 = [MKMapItem mapItemWithSerializedPlaceData:v6];
  v8 = [[SearchResult alloc] initWithMapItem:v7];
  testCoordinator = [(MapsAppTest *)self testCoordinator];
  [testCoordinator pptTestDismissPlaceCardAnimated:1];

  v10 = dispatch_time(0, 1000000000);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1009F1DE0;
  v12[3] = &unk_101661A90;
  v12[4] = self;
  v13 = v8;
  v11 = v8;
  dispatch_after(v10, &_dispatch_main_q, v12);
}

- (void)_testWithLoadedPlacecard
{
  self->_testWarmLaunch = 1;
  options = [(MapsAppTest *)self options];
  v8 = [options objectForKeyedSubscript:@"mapItem"];

  v4 = [[NSData alloc] initWithBase64EncodedString:v8 options:0];
  v5 = [MKMapItem mapItemWithSerializedPlaceData:v4];
  v6 = [[SearchResult alloc] initWithMapItem:v5];
  [(MapsAppTest *)self startedTest];
  [(MapsAppTestPlacecard *)self startedSubTest:@"showPlaceCard"];
  testCoordinator = [(MapsAppTest *)self testCoordinator];
  [testCoordinator pptTestPresentPlaceCardForSearchResult:v6 animated:!self->_isScrollTest];
}

- (void)startPlacecardTest
{
  self->_waitingTests = 0;
  testName = [(MapsAppTest *)self testName];
  self->_thruSearchResultsList = [testName hasPrefix:@"placecardThruSearchResultsList"];

  searchInfo = self->_searchInfo;
  self->_searchInfo = 0;

  v12 = +[NSNotificationCenter defaultCenter];
  [v12 addObserver:self selector:"_showCallout:" name:MKBalloonCalloutDidShowNotification object:0];
  [v12 addObserver:self selector:"_showPlaceCard:" name:MKPlaceViewControllerDidShowNotification object:0];
  [v12 addObserver:self selector:"_searchResultDidShow:" name:@"MapsPinsDroppedForSearchResultsNotification" object:0];
  options = [(MapsAppTest *)self options];
  v6 = [options objectForKeyedSubscript:@"mapItem"];

  if (v6)
  {
    [(MapsAppTestPlacecard *)self _testWithLoadedPlacecard];
  }

  else
  {
    options2 = [(MapsAppTest *)self options];
    v8 = [options2 objectForKeyedSubscript:@"searchString"];

    [(MapsAppTest *)self startedTest];
    v9 = objc_alloc_init(SearchFieldItem);
    [(SearchFieldItem *)v9 setSearchString:v8];
    testCoordinator = [(MapsAppTest *)self testCoordinator];
    [testCoordinator pptTestSearchForFieldItem:v9];

    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:self selector:"searchSessionDidChangeSearchResults:" name:@"SearchSessionDidChangeSearchResultsNotification" object:0];

    [(MapsAppTestPlacecard *)self startedSubTest:@"searchResultReceived"];
  }
}

- (void)cleanup:(BOOL)cleanup
{
  cleanupCopy = cleanup;
  [(MapsAppTest *)self dismissTrayWithAssertTrayType:1 completion:0];
  v5.receiver = self;
  v5.super_class = MapsAppTestPlacecard;
  [(MapsAppTest *)&v5 cleanup:cleanupCopy];
}

- (BOOL)runTest
{
  testName = [(MapsAppTest *)self testName];
  self->_isScrollTest = [testName containsString:@"Scroll_"];

  testName2 = [(MapsAppTest *)self testName];
  if ([testName2 hasPrefix:@"placecardThruCallout"])
  {
    goto LABEL_4;
  }

  testName3 = [(MapsAppTest *)self testName];
  if ([testName3 hasPrefix:@"placecardThruSearchResultsList"])
  {

LABEL_4:
LABEL_5:
    [(MapsAppTest *)self setupForVKTest];
    options = [(MapsAppTest *)self options];
    [options _mapstest_jumpPoint];
    v8 = v7;
    v10 = v9;
    v12 = v11;

    options2 = [(MapsAppTest *)self options];
    [options2 _mapstest_pitch];
    v15 = v14;

    options3 = [(MapsAppTest *)self options];
    [options3 _mapstest_yaw];
    v18 = v17;

    options4 = [(MapsAppTest *)self options];
    _mapstest_mapType = [options4 _mapstest_mapType];

    [(MapsAppTest *)self switchToMapType:_mapstest_mapType];
    mainVKMapView = [(MapsAppTest *)self mainVKMapView];
    [mainVKMapView _mapstest_jumpToCoords:1 pitch:v8 yaw:v10 altitudeIsRegionSize:{v12, v15, v18}];

    objc_initWeak(&location, self);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1009F23D4;
    v24[3] = &unk_101661B98;
    objc_copyWeak(&v25, &location);
    [(MapsAppTest *)self addFullyDrawnCallback:v24];
    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
    return 1;
  }

  isScrollTest = self->_isScrollTest;

  if (isScrollTest)
  {
    goto LABEL_5;
  }

  return 0;
}

@end