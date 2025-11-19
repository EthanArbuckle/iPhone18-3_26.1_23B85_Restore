@interface FMLocation
- (id)description;
- (id)init:(id)a3 latitude:(double)a4 longitude:(double)a5 accuracy:(double)a6;
@end

@implementation FMLocation

- (id)init:(id)a3 latitude:(double)a4 longitude:(double)a5 accuracy:(double)a6
{
  v11 = a3;
  v16.receiver = self;
  v16.super_class = FMLocation;
  v12 = [(FMLocation *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_timestamp, a3);
    v13[2] = a4;
    v13[3] = a5;
    v13[4] = a6;
    v14 = v13;
  }

  return v13;
}

- (id)description
{
  v3 = [(FMLocation *)self timestamp];
  [(FMLocation *)self accuracy];
  v5 = [NSString stringWithFormat:@"timestamp %@, accuracy %lf", v3, v4];

  return v5;
}

@end