@interface VNDetectLensSmudgeRequestConfiguration
- (VNDetectLensSmudgeRequestConfiguration)initWithRequestClass:(Class)class;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation VNDetectLensSmudgeRequestConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = VNDetectLensSmudgeRequestConfiguration;
  return [(VNImageBasedRequestConfiguration *)&v4 copyWithZone:zone];
}

- (VNDetectLensSmudgeRequestConfiguration)initWithRequestClass:(Class)class
{
  v4.receiver = self;
  v4.super_class = VNDetectLensSmudgeRequestConfiguration;
  return [(VNImageBasedRequestConfiguration *)&v4 initWithRequestClass:class];
}

@end