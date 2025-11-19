@interface MapsAppTestDropPin
- ($1AB5FA073B851C12C2339EC22442E995)region;
- (BOOL)runTest;
- (CLLocationCoordinate2D)pinCoordinate;
- (MapsAppTestDropPin)initWithApplication:(id)a3 testName:(id)a4 options:(id)a5;
- (void)didFinishJumping;
- (void)didShowPlaceCard;
@end

@implementation MapsAppTestDropPin

- ($1AB5FA073B851C12C2339EC22442E995)region
{
  latitude = self->_region.latitude;
  longitude = self->_region.longitude;
  altitude = self->_region.altitude;
  result.var2 = altitude;
  result.var1 = longitude;
  result.var0 = latitude;
  return result;
}

- (CLLocationCoordinate2D)pinCoordinate
{
  latitude = self->_pinCoordinate.latitude;
  longitude = self->_pinCoordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (void)didShowPlaceCard
{
  [(MapsAppTest *)self finishedSubTest:@"showPin"];

  [(MapsAppTest *)self finishedTest];
}

- (void)didFinishJumping
{
  [(MapsAppTest *)self finishedSubTest:@"loadingScene"];
  [(MapsAppTest *)self startedSubTest:@"showPin"];
  v3 = [SearchResult customSearchResultWithCoordinate:0x7FFFFFFFLL floorOrdinal:self->_pinCoordinate.latitude, self->_pinCoordinate.longitude];
  [v3 setType:3];
  [v3 setHasIncompleteMetadata:1];
  objc_initWeak(&location, self);
  v4 = MKPlaceViewControllerDidShowNotification;
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_100D1E4F0;
  v9 = &unk_10165FBE8;
  objc_copyWeak(&v10, &location);
  [PPTNotificationCenter addOnceObserverForName:v4 object:0 usingBlock:&v6];
  v5 = [(MapsAppTest *)self testCoordinator:v6];
  [v5 pptTestPresentPlaceCardForSearchResult:v3 animated:1];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (BOOL)runTest
{
  [(MapsAppTest *)self startedTest];
  [(MapsAppTest *)self startedSubTest:@"loadingScene"];
  v3 = [(MapsAppTest *)self mainVKMapView];
  [v3 _mapstest_jumpToCoords:1 pitch:self->_region.latitude yaw:self->_region.longitude altitudeIsRegionSize:{self->_region.altitude, self->_pitch, self->_yaw}];
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100D1E654;
  v5[3] = &unk_101661B98;
  objc_copyWeak(&v6, &location);
  [(MapsAppTest *)self addFullyDrawnCallback:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return 1;
}

- (MapsAppTestDropPin)initWithApplication:(id)a3 testName:(id)a4 options:(id)a5
{
  v8 = a5;
  v22.receiver = self;
  v22.super_class = MapsAppTestDropPin;
  v9 = [(MapsAppTest *)&v22 initWithApplication:a3 testName:a4 options:v8];
  if (v9)
  {
    v10 = [v8 objectForKeyedSubscript:@"pin_latitude"];
    [v10 doubleValue];
    v12 = v11;

    v13 = [v8 objectForKeyedSubscript:@"pin_longitude"];
    [v13 doubleValue];
    v15 = v14;

    v9->_pinCoordinate = CLLocationCoordinate2DMake(v12, v15);
    [v8 _mapstest_pitch];
    v9->_pitch = v16;
    [v8 _mapstest_yaw];
    v9->_yaw = v17;
    [v8 _mapstest_jumpPoint];
    v9->_region.latitude = v18;
    v9->_region.longitude = v19;
    v9->_region.altitude = v20;
  }

  return v9;
}

@end