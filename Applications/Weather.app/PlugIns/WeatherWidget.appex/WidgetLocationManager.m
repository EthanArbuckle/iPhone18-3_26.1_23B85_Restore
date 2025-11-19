@interface WidgetLocationManager
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
- (void)locationManagerDidChangeAuthorization:(id)a3;
@end

@implementation WidgetLocationManager

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  sub_100031CF8(0, &unk_1001304B0, CLLocation_ptr);
  sub_1000EBFF4();
  v6 = a3;
  v7 = self;
  sub_10002F93C();
}

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_10002FF70();
}

- (void)locationManagerDidChangeAuthorization:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000301F4();
}

@end