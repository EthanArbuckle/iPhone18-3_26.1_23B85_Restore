@interface VNGeneratePersonInstanceMaskRequestConfiguration
- (VNGeneratePersonInstanceMaskRequestConfiguration)initWithRequestClass:(Class)class;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation VNGeneratePersonInstanceMaskRequestConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = VNGeneratePersonInstanceMaskRequestConfiguration;
  return [(VNImageBasedRequestConfiguration *)&v4 copyWithZone:zone];
}

- (VNGeneratePersonInstanceMaskRequestConfiguration)initWithRequestClass:(Class)class
{
  v4.receiver = self;
  v4.super_class = VNGeneratePersonInstanceMaskRequestConfiguration;
  return [(VNImageBasedRequestConfiguration *)&v4 initWithRequestClass:class];
}

@end