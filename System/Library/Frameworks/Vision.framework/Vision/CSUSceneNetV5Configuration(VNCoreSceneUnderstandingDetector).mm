@interface CSUSceneNetV5Configuration(VNCoreSceneUnderstandingDetector)
- (uint64_t)VNNewInstanceWithError:()VNCoreSceneUnderstandingDetector;
@end

@implementation CSUSceneNetV5Configuration(VNCoreSceneUnderstandingDetector)

- (uint64_t)VNNewInstanceWithError:()VNCoreSceneUnderstandingDetector
{
  v5 = objc_opt_class();
  v6 = [a1 revision];

  return [v5 sceneNetV5ConfigurationForRevision:v6 error:a3];
}

@end