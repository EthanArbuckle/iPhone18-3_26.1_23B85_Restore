@interface WiFiToCellTransition.LocationEnvironmentReader
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
@end

@implementation WiFiToCellTransition.LocationEnvironmentReader

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  authorizationCopy = authorization;
  selfCopy = self;
  sub_100183324(authorizationCopy);
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  managerCopy = manager;
  errorCopy = error;
  selfCopy = self;
  sub_100183EC8();
}

@end