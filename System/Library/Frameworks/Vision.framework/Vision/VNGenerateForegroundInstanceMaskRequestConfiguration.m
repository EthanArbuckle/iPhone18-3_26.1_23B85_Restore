@interface VNGenerateForegroundInstanceMaskRequestConfiguration
- (VNGenerateForegroundInstanceMaskRequestConfiguration)initWithRequestClass:(Class)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation VNGenerateForegroundInstanceMaskRequestConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v4.receiver = self;
  v4.super_class = VNGenerateForegroundInstanceMaskRequestConfiguration;
  return [(VNImageBasedRequestConfiguration *)&v4 copyWithZone:a3];
}

- (VNGenerateForegroundInstanceMaskRequestConfiguration)initWithRequestClass:(Class)a3
{
  v4.receiver = self;
  v4.super_class = VNGenerateForegroundInstanceMaskRequestConfiguration;
  return [(VNImageBasedRequestConfiguration *)&v4 initWithRequestClass:a3];
}

@end