@interface MapsAppTestETAPin
- (void)doAfterStartedTestAtLocation:(CLLocationCoordinate2D)a3;
@end

@implementation MapsAppTestETAPin

- (void)doAfterStartedTestAtLocation:(CLLocationCoordinate2D)a3
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v5 = [(MapsAppTest *)self testCoordinator];
  [v5 pptTestCreateCustomSearchResultForDroppedPinAtPoint:1 animated:{latitude, longitude}];
}

@end