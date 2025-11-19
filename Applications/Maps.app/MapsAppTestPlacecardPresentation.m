@interface MapsAppTestPlacecardPresentation
- (BOOL)runTest;
- (void)cleanup:(BOOL)a3;
- (void)startPlaceViewControllerPresentationTest;
@end

@implementation MapsAppTestPlacecardPresentation

- (void)startPlaceViewControllerPresentationTest
{
  v3 = [(MapsAppTest *)self options];
  v7 = [v3 _mapstest_location];

  v4 = [[MKMapItem alloc] initWithCLLocation:v7];
  v5 = [[SearchResult alloc] initWithMapItem:v4];
  [(MapsAppTest *)self startedTest];
  v6 = [(MapsAppTest *)self testCoordinator];
  [v6 pptTestPresentPlaceCardForSearchResult:v5 animated:1];
}

- (void)cleanup:(BOOL)a3
{
  v3 = a3;
  [(MapsAppTest *)self dismissTrayWithAssertTrayType:1 completion:0];
  v5.receiver = self;
  v5.super_class = MapsAppTestPlacecardPresentation;
  [(MapsAppTest *)&v5 cleanup:v3];
}

- (BOOL)runTest
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"finishedTest" name:MKPlaceViewControllerDidShowNotification object:0];

  [(MapsAppTestPlacecardPresentation *)self performSelector:"startPlaceViewControllerPresentationTest" withObject:0 afterDelay:1.0];
  return 1;
}

@end