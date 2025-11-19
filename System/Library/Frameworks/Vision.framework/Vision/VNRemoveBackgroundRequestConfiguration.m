@interface VNRemoveBackgroundRequestConfiguration
- (VNRemoveBackgroundRequestConfiguration)initWithRequestClass:(Class)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation VNRemoveBackgroundRequestConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = VNRemoveBackgroundRequestConfiguration;
  v4 = [(VNImageBasedRequestConfiguration *)&v6 copyWithZone:a3];
  [v4 setPerformInPlace:self->_performInPlace];
  [v4 setCropResult:self->_cropResult];
  [v4 setReturnMask:self->_returnMask];
  return v4;
}

- (VNRemoveBackgroundRequestConfiguration)initWithRequestClass:(Class)a3
{
  v4.receiver = self;
  v4.super_class = VNRemoveBackgroundRequestConfiguration;
  result = [(VNImageBasedRequestConfiguration *)&v4 initWithRequestClass:a3];
  if (result)
  {
    result->_performInPlace = 0;
    result->_cropResult = 0;
    result->_returnMask = 0;
  }

  return result;
}

@end