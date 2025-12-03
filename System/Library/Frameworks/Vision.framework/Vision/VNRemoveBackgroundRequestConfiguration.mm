@interface VNRemoveBackgroundRequestConfiguration
- (VNRemoveBackgroundRequestConfiguration)initWithRequestClass:(Class)class;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation VNRemoveBackgroundRequestConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = VNRemoveBackgroundRequestConfiguration;
  v4 = [(VNImageBasedRequestConfiguration *)&v6 copyWithZone:zone];
  [v4 setPerformInPlace:self->_performInPlace];
  [v4 setCropResult:self->_cropResult];
  [v4 setReturnMask:self->_returnMask];
  return v4;
}

- (VNRemoveBackgroundRequestConfiguration)initWithRequestClass:(Class)class
{
  v4.receiver = self;
  v4.super_class = VNRemoveBackgroundRequestConfiguration;
  result = [(VNImageBasedRequestConfiguration *)&v4 initWithRequestClass:class];
  if (result)
  {
    result->_performInPlace = 0;
    result->_cropResult = 0;
    result->_returnMask = 0;
  }

  return result;
}

@end