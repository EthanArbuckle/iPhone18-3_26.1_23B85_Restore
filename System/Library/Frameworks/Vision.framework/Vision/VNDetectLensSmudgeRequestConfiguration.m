@interface VNDetectLensSmudgeRequestConfiguration
- (VNDetectLensSmudgeRequestConfiguration)initWithRequestClass:(Class)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation VNDetectLensSmudgeRequestConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v4.receiver = self;
  v4.super_class = VNDetectLensSmudgeRequestConfiguration;
  return [(VNImageBasedRequestConfiguration *)&v4 copyWithZone:a3];
}

- (VNDetectLensSmudgeRequestConfiguration)initWithRequestClass:(Class)a3
{
  v4.receiver = self;
  v4.super_class = VNDetectLensSmudgeRequestConfiguration;
  return [(VNImageBasedRequestConfiguration *)&v4 initWithRequestClass:a3];
}

@end