@interface MapsAppTestFlyoverTour
- (BOOL)runTest;
- (void)cleanup:(BOOL)a3;
@end

@implementation MapsAppTestFlyoverTour

- (void)cleanup:(BOOL)a3
{
  v3 = a3;
  v5 = [(MapsAppTest *)self mainVKMapView];
  [v5 disableTestStatistics];
  [v5 clearScene];
  v6.receiver = self;
  v6.super_class = MapsAppTestFlyoverTour;
  [(MapsAppTest *)&v6 cleanup:v3];
}

- (BOOL)runTest
{
  [(MapsAppTest *)self setupForVKTest];
  v3 = [(MapsAppTest *)self mainVKMapView];
  [v3 setMapType:3];
  [v3 enableTestStatistics];
  v4 = [(MapsAppTest *)self options];
  v5 = [v4 _mapstest_flyoverTourId];

  [(MapsAppTest *)self startedTest];
  v6 = [(MapsAppTest *)self mainMKMapView];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1005E66B0;
  v9[3] = &unk_101661570;
  v9[4] = self;
  v10 = v3;
  v7 = v3;
  [v6 _startFlyoverTourAnimation:v5 duration:v9 completion:0.0];

  return 1;
}

@end