@interface WidgetLocationManager
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
@end

@implementation WidgetLocationManager

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  sub_100031CF8(0, &unk_1001304B0, CLLocation_ptr);
  sub_1000EBFF4();
  managerCopy = manager;
  selfCopy = self;
  sub_10002F93C();
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  managerCopy = manager;
  errorCopy = error;
  selfCopy = self;
  sub_10002FF70();
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  authorizationCopy = authorization;
  selfCopy = self;
  sub_1000301F4();
}

@end