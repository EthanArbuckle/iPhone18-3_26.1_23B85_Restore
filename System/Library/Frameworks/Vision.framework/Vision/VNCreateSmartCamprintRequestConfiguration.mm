@interface VNCreateSmartCamprintRequestConfiguration
- (VNCreateSmartCamprintRequestConfiguration)initWithRequestClass:(Class)class;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation VNCreateSmartCamprintRequestConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = VNCreateSmartCamprintRequestConfiguration;
  v4 = [(VNImageBasedRequestConfiguration *)&v7 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    [v4 setReturnAllResults:self->_returnAllResults];
  }

  return v5;
}

- (VNCreateSmartCamprintRequestConfiguration)initWithRequestClass:(Class)class
{
  v4.receiver = self;
  v4.super_class = VNCreateSmartCamprintRequestConfiguration;
  result = [(VNImageBasedRequestConfiguration *)&v4 initWithRequestClass:class];
  if (result)
  {
    result->_returnAllResults = 0;
  }

  return result;
}

@end