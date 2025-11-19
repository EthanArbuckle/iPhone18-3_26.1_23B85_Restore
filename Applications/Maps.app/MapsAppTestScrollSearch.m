@interface MapsAppTestScrollSearch
- (BOOL)runTest;
- (void)_scrollingTest;
- (void)addFullyDrawnCallback:(id)a3;
- (void)cleanup:(BOOL)a3;
- (void)searchForSearchString;
- (void)searchResultsDidAppear;
@end

@implementation MapsAppTestScrollSearch

- (void)addFullyDrawnCallback:(id)a3
{
  v4 = a3;
  v5 = [(MapsAppTest *)self fullyDrawnCallbacks];
  v6 = [v4 copy];

  v7 = objc_retainBlock(v6);
  [v5 addObject:v7];

  [(MapsAppTest *)self setupFullyDrawnNotification:"onFullyDrawn:"];
  v8 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007BD25C;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_after(v8, &_dispatch_main_q, block);
}

- (void)_scrollingTest
{
  v3 = [(MapsAppTest *)self testCoordinator];
  v4 = [v3 pptTestScrollView];

  RPTContentSizeInDirection();
  v6 = v5;
  RPTGetBoundsForView();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [RPTScrollViewTestParameters alloc];
  v16 = [(MapsAppTest *)self testName];
  v17 = [v15 initWithTestName:v16 scrollBounds:1 scrollContentLength:&stru_10162A140 direction:v8 completionHandler:{v10, v12, v14, v6}];

  v18 = [(MapsAppTest *)self testName];
  v22 = v17;
  v19 = [NSArray arrayWithObjects:&v22 count:1];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1007BD49C;
  v21[3] = &unk_101661B18;
  v21[4] = self;
  v20 = [RPTGroupScrollTestParameters newWithTestName:v18 parameters:v19 completionHandler:v21];

  [RPTTestRunner runTestWithParameters:v20];
}

- (void)searchResultsDidAppear
{
  if ([(MapsAppTest *)self canUpdateTrayLayout])
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1007BD558;
    v3[3] = &unk_101661B18;
    v3[4] = self;
    [(MapsAppTest *)self updateTrayLayout:2 animated:1 completion:v3];
  }

  else
  {

    [(MapsAppTestScrollSearch *)self _scrollingTest];
  }
}

- (void)searchForSearchString
{
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3032000000;
  v9[3] = sub_1007BD724;
  v9[4] = sub_1007BD734;
  v10 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1007BD73C;
  v8[3] = &unk_1016318A8;
  v8[4] = self;
  v8[5] = v9;
  [PPTNotificationCenter addOnceObserverForName:@"SearchSessionDidChangeSearchResultsNotification" object:0 usingBlock:v8];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1007BD808;
  v7[3] = &unk_1016318A8;
  v7[4] = self;
  v7[5] = v9;
  [PPTNotificationCenter addOnceObserverForName:@"MapsPinsDroppedForSearchResultsNotification" object:0 usingBlock:v7];
  v3 = [(MapsAppTest *)self options];
  v4 = [v3 objectForKeyedSubscript:@"searchString"];

  v5 = objc_alloc_init(SearchFieldItem);
  [(SearchFieldItem *)v5 setSearchString:v4];

  v6 = [(MapsAppTest *)self testCoordinator];
  [v6 pptTestSearchForFieldItem:v5];

  _Block_object_dispose(v9, 8);
}

- (void)cleanup:(BOOL)a3
{
  v3 = a3;
  [(MapsAppTest *)self dismissTrayWithAssertTrayType:2 completion:0];
  v5.receiver = self;
  v5.super_class = MapsAppTestScrollSearch;
  [(MapsAppTest *)&v5 cleanup:v3];
}

- (BOOL)runTest
{
  [(MapsAppTest *)self setupForVKTest];
  v3 = [(MapsAppTest *)self options];
  [v3 _mapstest_jumpPoint];
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = [(MapsAppTest *)self options];
  [v10 _mapstest_pitch];
  v12 = v11;

  v13 = [(MapsAppTest *)self options];
  [v13 _mapstest_yaw];
  v15 = v14;

  v16 = [(MapsAppTest *)self options];
  v17 = [v16 _mapstest_mapType];

  [(MapsAppTest *)self switchToMapType:v17];
  v18 = [(MapsAppTest *)self mainVKMapView];
  [v18 _mapstest_jumpToCoords:1 pitch:v5 yaw:v7 altitudeIsRegionSize:{v9, v12, v15}];

  objc_initWeak(&location, self);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1007BDAF8;
  v20[3] = &unk_101661B98;
  objc_copyWeak(&v21, &location);
  [(MapsAppTestScrollSearch *)self addFullyDrawnCallback:v20];
  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
  return 1;
}

@end