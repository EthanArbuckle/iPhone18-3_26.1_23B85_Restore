@interface AegirLocationManager
- (_TtC11AegirPoster20AegirLocationManager)init;
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
- (void)locationManagerDidChangeAuthorization:(id)a3;
@end

@implementation AegirLocationManager

- (_TtC11AegirPoster20AegirLocationManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  sub_10000A83C(0, &qword_1000470C0, CLLocation_ptr);
  v6 = sub_100034AC4();
  v7 = a3;
  v8 = self;
  sub_1000230F8(v6);
}

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_1000232A4();
}

- (void)locationManagerDidChangeAuthorization:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100022A28(v4);
}

@end