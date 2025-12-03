@interface GeoLocationSource
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
@end

@implementation GeoLocationSource

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  sub_10001D630(0, &unk_10035BB58);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  managerCopy = manager;
  selfCopy = self;
  sub_1000AFFB4(v6);
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  authorizationCopy = authorization;
  selfCopy = self;
  sub_1000AF8D0(authorizationCopy);
}

@end