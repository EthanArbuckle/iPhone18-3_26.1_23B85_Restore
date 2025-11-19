@interface PosterDataManager
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
- (void)locationManagerDidChangeAuthorization:(id)a3;
- (void)locationManagerDidPauseLocationUpdates:(id)a3;
- (void)locationManagerDidResumeLocationUpdates:(id)a3;
@end

@implementation PosterDataManager

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  sub_100013820(0, &qword_100065248, CLLocation_ptr);
  v6 = sub_10004AA5C();
  v7 = a3;
  v8 = self;
  sub_100044AE4(v7, v6);
}

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_100045280();
}

- (void)locationManagerDidChangeAuthorization:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100045494(v4);
}

- (void)locationManagerDidPauseLocationUpdates:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10004581C();
}

- (void)locationManagerDidResumeLocationUpdates:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100045934();
}

@end