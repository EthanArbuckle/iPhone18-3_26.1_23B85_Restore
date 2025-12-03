@interface MapsAppTestFlyoverTour
- (BOOL)runTest;
- (void)cleanup:(BOOL)cleanup;
@end

@implementation MapsAppTestFlyoverTour

- (void)cleanup:(BOOL)cleanup
{
  cleanupCopy = cleanup;
  mainVKMapView = [(MapsAppTest *)self mainVKMapView];
  [mainVKMapView disableTestStatistics];
  [mainVKMapView clearScene];
  v6.receiver = self;
  v6.super_class = MapsAppTestFlyoverTour;
  [(MapsAppTest *)&v6 cleanup:cleanupCopy];
}

- (BOOL)runTest
{
  [(MapsAppTest *)self setupForVKTest];
  mainVKMapView = [(MapsAppTest *)self mainVKMapView];
  [mainVKMapView setMapType:3];
  [mainVKMapView enableTestStatistics];
  options = [(MapsAppTest *)self options];
  _mapstest_flyoverTourId = [options _mapstest_flyoverTourId];

  [(MapsAppTest *)self startedTest];
  mainMKMapView = [(MapsAppTest *)self mainMKMapView];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1005E66B0;
  v9[3] = &unk_101661570;
  v9[4] = self;
  v10 = mainVKMapView;
  v7 = mainVKMapView;
  [mainMKMapView _startFlyoverTourAnimation:_mapstest_flyoverTourId duration:v9 completion:0.0];

  return 1;
}

@end