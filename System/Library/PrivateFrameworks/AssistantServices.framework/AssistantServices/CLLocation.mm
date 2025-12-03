@interface CLLocation
- (BOOL)_af_isOlderThanAge:(id)age;
- (BOOL)_af_isWithinAccuracy:(double)accuracy;
- (BOOL)ad_isNewerThan:(id)than;
- (id)_af_age;
@end

@implementation CLLocation

- (BOOL)ad_isNewerThan:(id)than
{
  thanCopy = than;
  timestamp = [(CLLocation *)self timestamp];
  timestamp2 = [thanCopy timestamp];

  v7 = [timestamp compare:timestamp2];
  return v7 == 1;
}

- (BOOL)_af_isOlderThanAge:(id)age
{
  ageCopy = age;
  timestamp = [(CLLocation *)self timestamp];
  v6 = timestamp;
  v7 = 0;
  if (ageCopy && timestamp)
  {
    [timestamp timeIntervalSinceNow];
    v7 = v8 < -[ageCopy intValue];
  }

  return v7;
}

- (id)_af_age
{
  timestamp = [(CLLocation *)self timestamp];
  v3 = timestamp;
  if (timestamp)
  {
    [timestamp timeIntervalSinceNow];
    v5 = [NSNumber numberWithInt:-v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_af_isWithinAccuracy:(double)accuracy
{
  if (accuracy <= 0.0)
  {
    return 0;
  }

  [(CLLocation *)self horizontalAccuracy];
  return v4 - accuracy <= 2.22044605e-16;
}

@end