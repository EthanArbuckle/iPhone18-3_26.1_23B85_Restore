@interface VisionCoreSceneNetInferenceNetworkDescriptor(VNInternalAdditions)
- (id)VNSceneprintFromData:()VNInternalAdditions labelsAndConfidences:originatingRequestSpecifier:error:;
@end

@implementation VisionCoreSceneNetInferenceNetworkDescriptor(VNInternalAdditions)

- (id)VNSceneprintFromData:()VNInternalAdditions labelsAndConfidences:originatingRequestSpecifier:error:
{
  v10 = a4;
  v11 = [self VNSceneprintFromData:a3 originatingRequestSpecifier:a5 error:a6];
  v12 = v11;
  if (v11)
  {
    if (v10)
    {
      [v11 setValue:v10 forKey:@"_labelsAndConfidence"];
    }

    v13 = v12;
  }

  return v12;
}

@end