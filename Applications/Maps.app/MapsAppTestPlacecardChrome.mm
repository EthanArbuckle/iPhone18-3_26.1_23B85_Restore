@interface MapsAppTestPlacecardChrome
- (BOOL)runTest;
- (MUPlaceViewController)placeViewController;
- (MapsAppTestPlacecardChromeDelegate)placecardChromeDelegate;
- (void)cleanup:(BOOL)a3;
- (void)startPlacecardTest;
@end

@implementation MapsAppTestPlacecardChrome

- (MUPlaceViewController)placeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_placeViewController);

  return WeakRetained;
}

- (MapsAppTestPlacecardChromeDelegate)placecardChromeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_placecardChromeDelegate);

  return WeakRetained;
}

- (void)startPlacecardTest
{
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = sub_1009F2778;
  v11[4] = sub_1009F2788;
  v12 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1009F2790;
  v10[3] = &unk_1016318A8;
  v10[4] = self;
  v10[5] = v11;
  [PPTNotificationCenter addOnceObserverForName:@"SearchSessionDidChangeSearchResultsNotification" object:0 usingBlock:v10];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1009F285C;
  v9[3] = &unk_1016318A8;
  v9[4] = self;
  v9[5] = v11;
  [PPTNotificationCenter addOnceObserverForName:@"MapsPinsDroppedForSearchResultsNotification" object:0 usingBlock:v9];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1009F29A0;
  v8[3] = &unk_1016318A8;
  v8[4] = self;
  v8[5] = v11;
  [PPTNotificationCenter addOnceObserverForName:MKBalloonCalloutDidShowNotification object:0 usingBlock:v8];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1009F2A94;
  v7[3] = &unk_1016318A8;
  v7[4] = self;
  v7[5] = v11;
  [PPTNotificationCenter addOnceObserverForName:MKPlaceViewControllerDidShowNotification object:0 usingBlock:v7];
  v3 = [(MapsAppTest *)self options];
  v4 = [v3 objectForKeyedSubscript:@"searchString"];

  v5 = objc_alloc_init(SearchFieldItem);
  [(SearchFieldItem *)v5 setSearchString:v4];

  v6 = [(MapsAppTest *)self testCoordinator];
  [v6 pptTestSearchForFieldItem:v5];

  _Block_object_dispose(v11, 8);
}

- (void)cleanup:(BOOL)a3
{
  v3 = a3;
  [(MapsAppTest *)self dismissTrayWithAssertTrayType:1 completion:0];
  v5.receiver = self;
  v5.super_class = MapsAppTestPlacecardChrome;
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
  v20[2] = sub_1009F2DF8;
  v20[3] = &unk_101661B98;
  objc_copyWeak(&v21, &location);
  [(MapsAppTest *)self addFullyDrawnCallback:v20];
  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
  return 1;
}

@end