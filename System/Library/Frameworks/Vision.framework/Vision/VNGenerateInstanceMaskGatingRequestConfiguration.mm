@interface VNGenerateInstanceMaskGatingRequestConfiguration
- (VNGenerateInstanceMaskGatingRequestConfiguration)initWithRequestClass:(Class)class;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation VNGenerateInstanceMaskGatingRequestConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = VNGenerateInstanceMaskGatingRequestConfiguration;
  return [(VNImageBasedRequestConfiguration *)&v4 copyWithZone:zone];
}

- (VNGenerateInstanceMaskGatingRequestConfiguration)initWithRequestClass:(Class)class
{
  v4.receiver = self;
  v4.super_class = VNGenerateInstanceMaskGatingRequestConfiguration;
  return [(VNImageBasedRequestConfiguration *)&v4 initWithRequestClass:class];
}

@end