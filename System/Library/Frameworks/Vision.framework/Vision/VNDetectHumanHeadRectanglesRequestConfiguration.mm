@interface VNDetectHumanHeadRectanglesRequestConfiguration
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation VNDetectHumanHeadRectanglesRequestConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = VNDetectHumanHeadRectanglesRequestConfiguration;
  v4 = [(VNImageBasedRequestConfiguration *)&v7 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    [v4 setPrecisionRecallThresholdOverride:self->_precisionRecallThresholdOverride];
  }

  return v5;
}

@end