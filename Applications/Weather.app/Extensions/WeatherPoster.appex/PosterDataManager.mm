@interface PosterDataManager
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
- (void)locationManagerDidPauseLocationUpdates:(id)updates;
- (void)locationManagerDidResumeLocationUpdates:(id)updates;
@end

@implementation PosterDataManager

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  sub_100013820(0, &qword_100065248, CLLocation_ptr);
  v6 = sub_10004AA5C();
  managerCopy = manager;
  selfCopy = self;
  sub_100044AE4(managerCopy, v6);
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  managerCopy = manager;
  errorCopy = error;
  selfCopy = self;
  sub_100045280();
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  authorizationCopy = authorization;
  selfCopy = self;
  sub_100045494(authorizationCopy);
}

- (void)locationManagerDidPauseLocationUpdates:(id)updates
{
  updatesCopy = updates;
  selfCopy = self;
  sub_10004581C();
}

- (void)locationManagerDidResumeLocationUpdates:(id)updates
{
  updatesCopy = updates;
  selfCopy = self;
  sub_100045934();
}

@end