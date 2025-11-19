@interface VNCalculateImageAestheticsScoresRequestConfiguration
- (VNCalculateImageAestheticsScoresRequestConfiguration)initWithRequestClass:(Class)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation VNCalculateImageAestheticsScoresRequestConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v4.receiver = self;
  v4.super_class = VNCalculateImageAestheticsScoresRequestConfiguration;
  return [(VNImageBasedRequestConfiguration *)&v4 copyWithZone:a3];
}

- (VNCalculateImageAestheticsScoresRequestConfiguration)initWithRequestClass:(Class)a3
{
  v4.receiver = self;
  v4.super_class = VNCalculateImageAestheticsScoresRequestConfiguration;
  return [(VNImageBasedRequestConfiguration *)&v4 initWithRequestClass:a3];
}

@end