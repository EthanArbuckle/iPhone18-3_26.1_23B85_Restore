@interface VNCoreSceneUnderstandingDetectorImageSaliencyAConfiguration
- (BOOL)isEqual:(id)a3;
@end

@implementation VNCoreSceneUnderstandingDetectorImageSaliencyAConfiguration

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7.receiver = self;
      v7.super_class = VNCoreSceneUnderstandingDetectorImageSaliencyAConfiguration;
      v5 = [(VNCoreSceneUnderstandingDetectorFeatureConfiguration *)&v7 isEqual:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

@end