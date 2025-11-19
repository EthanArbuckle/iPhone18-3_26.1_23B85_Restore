@interface VNGenerateInstanceMaskGatingRequestConfiguration
- (VNGenerateInstanceMaskGatingRequestConfiguration)initWithRequestClass:(Class)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation VNGenerateInstanceMaskGatingRequestConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v4.receiver = self;
  v4.super_class = VNGenerateInstanceMaskGatingRequestConfiguration;
  return [(VNImageBasedRequestConfiguration *)&v4 copyWithZone:a3];
}

- (VNGenerateInstanceMaskGatingRequestConfiguration)initWithRequestClass:(Class)a3
{
  v4.receiver = self;
  v4.super_class = VNGenerateInstanceMaskGatingRequestConfiguration;
  return [(VNImageBasedRequestConfiguration *)&v4 initWithRequestClass:a3];
}

@end