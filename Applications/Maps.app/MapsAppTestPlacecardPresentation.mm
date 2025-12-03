@interface MapsAppTestPlacecardPresentation
- (BOOL)runTest;
- (void)cleanup:(BOOL)cleanup;
- (void)startPlaceViewControllerPresentationTest;
@end

@implementation MapsAppTestPlacecardPresentation

- (void)startPlaceViewControllerPresentationTest
{
  options = [(MapsAppTest *)self options];
  _mapstest_location = [options _mapstest_location];

  v4 = [[MKMapItem alloc] initWithCLLocation:_mapstest_location];
  v5 = [[SearchResult alloc] initWithMapItem:v4];
  [(MapsAppTest *)self startedTest];
  testCoordinator = [(MapsAppTest *)self testCoordinator];
  [testCoordinator pptTestPresentPlaceCardForSearchResult:v5 animated:1];
}

- (void)cleanup:(BOOL)cleanup
{
  cleanupCopy = cleanup;
  [(MapsAppTest *)self dismissTrayWithAssertTrayType:1 completion:0];
  v5.receiver = self;
  v5.super_class = MapsAppTestPlacecardPresentation;
  [(MapsAppTest *)&v5 cleanup:cleanupCopy];
}

- (BOOL)runTest
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"finishedTest" name:MKPlaceViewControllerDidShowNotification object:0];

  [(MapsAppTestPlacecardPresentation *)self performSelector:"startPlaceViewControllerPresentationTest" withObject:0 afterDelay:1.0];
  return 1;
}

@end