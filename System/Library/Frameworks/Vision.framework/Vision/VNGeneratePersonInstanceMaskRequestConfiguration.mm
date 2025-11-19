@interface VNGeneratePersonInstanceMaskRequestConfiguration
- (VNGeneratePersonInstanceMaskRequestConfiguration)initWithRequestClass:(Class)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation VNGeneratePersonInstanceMaskRequestConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v4.receiver = self;
  v4.super_class = VNGeneratePersonInstanceMaskRequestConfiguration;
  return [(VNImageBasedRequestConfiguration *)&v4 copyWithZone:a3];
}

- (VNGeneratePersonInstanceMaskRequestConfiguration)initWithRequestClass:(Class)a3
{
  v4.receiver = self;
  v4.super_class = VNGeneratePersonInstanceMaskRequestConfiguration;
  return [(VNImageBasedRequestConfiguration *)&v4 initWithRequestClass:a3];
}

@end