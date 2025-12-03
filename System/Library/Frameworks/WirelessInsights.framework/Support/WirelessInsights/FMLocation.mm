@interface FMLocation
- (id)description;
- (id)init:(id)init latitude:(double)latitude longitude:(double)longitude accuracy:(double)accuracy;
@end

@implementation FMLocation

- (id)init:(id)init latitude:(double)latitude longitude:(double)longitude accuracy:(double)accuracy
{
  initCopy = init;
  v16.receiver = self;
  v16.super_class = FMLocation;
  v12 = [(FMLocation *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_timestamp, init);
    v13[2] = latitude;
    v13[3] = longitude;
    v13[4] = accuracy;
    v14 = v13;
  }

  return v13;
}

- (id)description
{
  timestamp = [(FMLocation *)self timestamp];
  [(FMLocation *)self accuracy];
  v5 = [NSString stringWithFormat:@"timestamp %@, accuracy %lf", timestamp, v4];

  return v5;
}

@end