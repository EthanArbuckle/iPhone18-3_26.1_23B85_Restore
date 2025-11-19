@interface FMLocationProvider
- (void)locationManager:(id)a3 didChangeAuthorizationStatus:(int)a4;
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManager:(id)a3 didUpdateHeading:(id)a4;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
@end

@implementation FMLocationProvider

- (void)locationManager:(id)a3 didChangeAuthorizationStatus:(int)a4
{
  v6 = a3;
  v7 = self;
  sub_100053608(a4);
}

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  sub_10000905C(0, &qword_1006BBCB0);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  sub_10005624C(v6);
}

- (void)locationManager:(id)a3 didUpdateHeading:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100059400(v7);
}

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_10052A334();
}

@end