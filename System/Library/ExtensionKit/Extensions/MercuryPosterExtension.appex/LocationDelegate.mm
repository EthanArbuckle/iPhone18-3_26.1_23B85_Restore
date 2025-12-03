@interface LocationDelegate
- (_TtC22MercuryPosterExtensionP33_6C370B8E95E1084F848401CE1CB3D33016LocationDelegate)init;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
@end

@implementation LocationDelegate

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  authorizationCopy = authorization;
  selfCopy = self;
  sub_100026BD0(authorizationCopy);
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  managerCopy = manager;
  errorCopy = error;
  selfCopy = self;
  sub_10002903C();
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  sub_100012904(0, &qword_100130A48);
  v6 = sub_1000E9A94();
  managerCopy = manager;
  selfCopy = self;
  sub_1000292A8(v6);
}

- (_TtC22MercuryPosterExtensionP33_6C370B8E95E1084F848401CE1CB3D33016LocationDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end