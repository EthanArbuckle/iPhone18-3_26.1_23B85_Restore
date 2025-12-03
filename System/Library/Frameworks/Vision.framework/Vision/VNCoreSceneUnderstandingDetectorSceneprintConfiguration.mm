@interface VNCoreSceneUnderstandingDetectorSceneprintConfiguration
- (BOOL)isEqual:(id)equal;
@end

@implementation VNCoreSceneUnderstandingDetectorSceneprintConfiguration

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7.receiver = self;
      v7.super_class = VNCoreSceneUnderstandingDetectorSceneprintConfiguration;
      v5 = [(VNCoreSceneUnderstandingDetectorFeatureConfiguration *)&v7 isEqual:equalCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

@end