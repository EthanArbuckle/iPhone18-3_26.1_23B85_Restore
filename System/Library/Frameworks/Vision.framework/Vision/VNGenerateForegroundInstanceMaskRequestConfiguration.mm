@interface VNGenerateForegroundInstanceMaskRequestConfiguration
- (VNGenerateForegroundInstanceMaskRequestConfiguration)initWithRequestClass:(Class)class;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation VNGenerateForegroundInstanceMaskRequestConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = VNGenerateForegroundInstanceMaskRequestConfiguration;
  return [(VNImageBasedRequestConfiguration *)&v4 copyWithZone:zone];
}

- (VNGenerateForegroundInstanceMaskRequestConfiguration)initWithRequestClass:(Class)class
{
  v4.receiver = self;
  v4.super_class = VNGenerateForegroundInstanceMaskRequestConfiguration;
  return [(VNImageBasedRequestConfiguration *)&v4 initWithRequestClass:class];
}

@end