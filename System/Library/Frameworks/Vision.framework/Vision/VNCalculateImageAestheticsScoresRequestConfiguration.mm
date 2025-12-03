@interface VNCalculateImageAestheticsScoresRequestConfiguration
- (VNCalculateImageAestheticsScoresRequestConfiguration)initWithRequestClass:(Class)class;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation VNCalculateImageAestheticsScoresRequestConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = VNCalculateImageAestheticsScoresRequestConfiguration;
  return [(VNImageBasedRequestConfiguration *)&v4 copyWithZone:zone];
}

- (VNCalculateImageAestheticsScoresRequestConfiguration)initWithRequestClass:(Class)class
{
  v4.receiver = self;
  v4.super_class = VNCalculateImageAestheticsScoresRequestConfiguration;
  return [(VNImageBasedRequestConfiguration *)&v4 initWithRequestClass:class];
}

@end