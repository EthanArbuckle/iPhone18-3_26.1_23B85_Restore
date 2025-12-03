@interface SHLCloudBackedZone
- (SHLCloudBackedZone)initWithZone:(id)zone;
@end

@implementation SHLCloudBackedZone

- (SHLCloudBackedZone)initWithZone:(id)zone
{
  zoneCopy = zone;
  v9.receiver = self;
  v9.super_class = SHLCloudBackedZone;
  v6 = [(SHLCloudBackedZone *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_zone, zone);
  }

  return v7;
}

@end