@interface MapsAppTestETA
- (BOOL)runTest;
- (void)doAfterStartedTestAtLocation:(CLLocationCoordinate2D)location;
- (void)startAtLocation:(CLLocationCoordinate2D)location;
@end

@implementation MapsAppTestETA

- (void)doAfterStartedTestAtLocation:(CLLocationCoordinate2D)location
{
  longitude = location.longitude;
  latitude = location.latitude;
  mainMKMapView = [(MapsAppTest *)self mainMKMapView];
  [mainMKMapView convertCoordinate:mainMKMapView toPointToView:{latitude, longitude}];
  [mainMKMapView _handleSelectionAtPoint:?];
}

- (void)startAtLocation:(CLLocationCoordinate2D)location
{
  longitude = location.longitude;
  latitude = location.latitude;
  v6 = [GEOMapRegion _mapstest_mapRegionWithCenterLatitude:location.latitude longitude:location.longitude size:0.01];
  mainVKMapView = [(MapsAppTest *)self mainVKMapView];
  [mainVKMapView setMapRegion:v6 pitch:0.0 yaw:0.0];

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
  options = [(MapsAppTest *)self options];
  testCoordinator = [(MapsAppTest *)self testCoordinator];
  [testCoordinator pptTestResetForLaunchURL];

  [options _mapstest_locationCoordinate2D];
  v6 = v5;
  v8 = v7;
  [(MapsAppTest *)self registerGEOManifestSubtests];
  v9 = +[NSNotificationCenter defaultCenter];
  [v9 addObserver:self selector:"finishedTest" name:MapsButtonETAUpdatedNotification object:0];

  -[MapsAppTest switchToMapType:](self, "switchToMapType:", [options _mapstest_mapTypeWithDefaultType:{-[MapsAppTestETA defaultMapType](self, "defaultMapType")}]);
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