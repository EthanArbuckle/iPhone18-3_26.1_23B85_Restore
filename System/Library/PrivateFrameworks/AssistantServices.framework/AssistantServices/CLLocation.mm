@interface CLLocation
- (BOOL)_af_isOlderThanAge:(id)a3;
- (BOOL)_af_isWithinAccuracy:(double)a3;
- (BOOL)ad_isNewerThan:(id)a3;
- (id)_af_age;
@end

@implementation CLLocation

- (BOOL)ad_isNewerThan:(id)a3
{
  v4 = a3;
  v5 = [(CLLocation *)self timestamp];
  v6 = [v4 timestamp];

  v7 = [v5 compare:v6];
  return v7 == 1;
}

- (BOOL)_af_isOlderThanAge:(id)a3
{
  v4 = a3;
  v5 = [(CLLocation *)self timestamp];
  v6 = v5;
  v7 = 0;
  if (v4 && v5)
  {
    [v5 timeIntervalSinceNow];
    v7 = v8 < -[v4 intValue];
  }

  return v7;
}

- (id)_af_age
{
  v2 = [(CLLocation *)self timestamp];
  v3 = v2;
  if (v2)
  {
    [v2 timeIntervalSinceNow];
    v5 = [NSNumber numberWithInt:-v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_af_isWithinAccuracy:(double)a3
{
  if (a3 <= 0.0)
  {
    return 0;
  }

  [(CLLocation *)self horizontalAccuracy];
  return v4 - a3 <= 2.22044605e-16;
}

@end