@interface MPUbiquitousPlaybackPositionEntity
- (MPUbiquitousPlaybackPositionEntity)initWithUbiquitousIdentifier:(id)a3;
@end

@implementation MPUbiquitousPlaybackPositionEntity

- (MPUbiquitousPlaybackPositionEntity)initWithUbiquitousIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MPUbiquitousPlaybackPositionEntity;
  v6 = [(MPUbiquitousPlaybackPositionEntity *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_ubiquitousIdentifier, a3);
    propertyMonitor_0 = 0;
  }

  return v7;
}

@end