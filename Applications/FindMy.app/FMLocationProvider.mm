@interface FMLocationProvider
- (void)locationManager:(id)manager didChangeAuthorizationStatus:(int)status;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateHeading:(id)heading;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
@end

@implementation FMLocationProvider

- (void)locationManager:(id)manager didChangeAuthorizationStatus:(int)status
{
  managerCopy = manager;
  selfCopy = self;
  sub_100053608(status);
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  sub_10000905C(0, &qword_1006BBCB0);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  managerCopy = manager;
  selfCopy = self;
  sub_10005624C(v6);
}

- (void)locationManager:(id)manager didUpdateHeading:(id)heading
{
  managerCopy = manager;
  headingCopy = heading;
  selfCopy = self;
  sub_100059400(headingCopy);
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  managerCopy = manager;
  errorCopy = error;
  selfCopy = self;
  sub_10052A334();
}

@end