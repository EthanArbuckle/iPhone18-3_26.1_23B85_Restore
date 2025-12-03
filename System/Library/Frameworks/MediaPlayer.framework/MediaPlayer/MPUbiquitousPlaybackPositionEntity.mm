@interface MPUbiquitousPlaybackPositionEntity
- (MPUbiquitousPlaybackPositionEntity)initWithUbiquitousIdentifier:(id)identifier;
@end

@implementation MPUbiquitousPlaybackPositionEntity

- (MPUbiquitousPlaybackPositionEntity)initWithUbiquitousIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = MPUbiquitousPlaybackPositionEntity;
  v6 = [(MPUbiquitousPlaybackPositionEntity *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_ubiquitousIdentifier, identifier);
    propertyMonitor_0 = 0;
  }

  return v7;
}

@end