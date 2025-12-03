@interface MapsAppTestETAPin
- (void)doAfterStartedTestAtLocation:(CLLocationCoordinate2D)location;
@end

@implementation MapsAppTestETAPin

- (void)doAfterStartedTestAtLocation:(CLLocationCoordinate2D)location
{
  longitude = location.longitude;
  latitude = location.latitude;
  testCoordinator = [(MapsAppTest *)self testCoordinator];
  [testCoordinator pptTestCreateCustomSearchResultForDroppedPinAtPoint:1 animated:{latitude, longitude}];
}

@end