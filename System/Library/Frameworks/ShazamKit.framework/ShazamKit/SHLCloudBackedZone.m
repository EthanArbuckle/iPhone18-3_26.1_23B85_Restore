@interface SHLCloudBackedZone
- (SHLCloudBackedZone)initWithZone:(id)a3;
@end

@implementation SHLCloudBackedZone

- (SHLCloudBackedZone)initWithZone:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SHLCloudBackedZone;
  v6 = [(SHLCloudBackedZone *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_zone, a3);
  }

  return v7;
}

@end