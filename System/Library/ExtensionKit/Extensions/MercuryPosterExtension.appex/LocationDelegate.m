@interface LocationDelegate
- (_TtC22MercuryPosterExtensionP33_6C370B8E95E1084F848401CE1CB3D33016LocationDelegate)init;
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
- (void)locationManagerDidChangeAuthorization:(id)a3;
@end

@implementation LocationDelegate

- (void)locationManagerDidChangeAuthorization:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100026BD0(v4);
}

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_10002903C();
}

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  sub_100012904(0, &qword_100130A48);
  v6 = sub_1000E9A94();
  v7 = a3;
  v8 = self;
  sub_1000292A8(v6);
}

- (_TtC22MercuryPosterExtensionP33_6C370B8E95E1084F848401CE1CB3D33016LocationDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end