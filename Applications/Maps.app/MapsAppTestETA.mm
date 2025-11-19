@interface MapsAppTestETA
- (BOOL)runTest;
- (void)doAfterStartedTestAtLocation:(CLLocationCoordinate2D)a3;
- (void)startAtLocation:(CLLocationCoordinate2D)a3;
@end

@implementation MapsAppTestETA

- (void)doAfterStartedTestAtLocation:(CLLocationCoordinate2D)a3
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v5 = [(MapsAppTest *)self mainMKMapView];
  [v5 convertCoordinate:v5 toPointToView:{latitude, longitude}];
  [v5 _handleSelectionAtPoint:?];
}

- (void)startAtLocation:(CLLocationCoordinate2D)a3
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v6 = [GEOMapRegion _mapstest_mapRegionWithCenterLatitude:a3.latitude longitude:a3.longitude size:0.01];
  v7 = [(MapsAppTest *)self mainVKMapView];
  [v7 setMapRegion:v6 pitch:0.0 yaw:0.0];

  v8 = dispatch_time(0, 3000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100DD65A0;
  block[3] = &unk_1016575B0;
  block[4] = self;
  *&block[5] = latitude;
  *&block[6] = longitude;
  dispatch_after(v8, &_dispatch_main_q, block);
}

- (BOOL)runTest
{
  v3 = [(MapsAppTest *)self options];
  v4 = [(MapsAppTest *)self testCoordinator];
  [v4 pptTestResetForLaunchURL];

  [v3 _mapstest_locationCoordinate2D];
  v6 = v5;
  v8 = v7;
  [(MapsAppTest *)self registerGEOManifestSubtests];
  v9 = +[NSNotificationCenter defaultCenter];
  [v9 addObserver:self selector:"finishedTest" name:MapsButtonETAUpdatedNotification object:0];

  -[MapsAppTest switchToMapType:](self, "switchToMapType:", [v3 _mapstest_mapTypeWithDefaultType:{-[MapsAppTestETA defaultMapType](self, "defaultMapType")}]);
  v10 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100DD6720;
  block[3] = &unk_1016575B0;
  block[4] = self;
  block[5] = v6;
  block[6] = v8;
  dispatch_after(v10, &_dispatch_main_q, block);

  return 1;
}

@end