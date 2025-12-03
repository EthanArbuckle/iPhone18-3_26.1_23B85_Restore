@interface CSUSceneNetV5Configuration(VNCoreSceneUnderstandingDetector)
- (uint64_t)VNNewInstanceWithError:()VNCoreSceneUnderstandingDetector;
@end

@implementation CSUSceneNetV5Configuration(VNCoreSceneUnderstandingDetector)

- (uint64_t)VNNewInstanceWithError:()VNCoreSceneUnderstandingDetector
{
  v5 = objc_opt_class();
  revision = [self revision];

  return [v5 sceneNetV5ConfigurationForRevision:revision error:a3];
}

@end