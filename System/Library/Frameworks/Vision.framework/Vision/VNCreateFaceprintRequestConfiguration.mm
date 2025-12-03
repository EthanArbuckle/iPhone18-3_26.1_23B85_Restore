@interface VNCreateFaceprintRequestConfiguration
- (VNCreateFaceprintRequestConfiguration)initWithRequestClass:(Class)class;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation VNCreateFaceprintRequestConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = VNCreateFaceprintRequestConfiguration;
  v4 = [(VNImageBasedRequestConfiguration *)&v7 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    [v4 setForceFaceprintCreation:self->_forceFaceprintCreation];
  }

  return v5;
}

- (VNCreateFaceprintRequestConfiguration)initWithRequestClass:(Class)class
{
  v4.receiver = self;
  v4.super_class = VNCreateFaceprintRequestConfiguration;
  result = [(VNImageBasedRequestConfiguration *)&v4 initWithRequestClass:class];
  if (result)
  {
    result->_forceFaceprintCreation = 0;
  }

  return result;
}

@end