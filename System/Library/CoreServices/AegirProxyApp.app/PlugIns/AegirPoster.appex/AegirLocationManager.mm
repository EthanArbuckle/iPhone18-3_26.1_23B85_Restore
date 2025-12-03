@interface AegirLocationManager
- (_TtC11AegirPoster20AegirLocationManager)init;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
@end

@implementation AegirLocationManager

- (_TtC11AegirPoster20AegirLocationManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  sub_10000A83C(0, &qword_1000470C0, CLLocation_ptr);
  v6 = sub_100034AC4();
  managerCopy = manager;
  selfCopy = self;
  sub_1000230F8(v6);
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  managerCopy = manager;
  errorCopy = error;
  selfCopy = self;
  sub_1000232A4();
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  authorizationCopy = authorization;
  selfCopy = self;
  sub_100022A28(authorizationCopy);
}

@end