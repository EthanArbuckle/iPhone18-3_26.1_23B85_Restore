@interface GeoLocationSource
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
- (void)locationManagerDidChangeAuthorization:(id)a3;
@end

@implementation GeoLocationSource

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  sub_10001D630(0, &unk_10035BB58);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  sub_1000AFFB4(v6);
}

- (void)locationManagerDidChangeAuthorization:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000AF8D0(v4);
}

@end