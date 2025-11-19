@interface VisionCoreSceneNetInferenceNetworkDescriptor
@end

@implementation VisionCoreSceneNetInferenceNetworkDescriptor

BOOL __132__VisionCoreSceneNetInferenceNetworkDescriptor_VNPrivateAdditions__VNSceneprintFromOutputObjects_originatingRequestSpecifier_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) VNSceneprintFromData:v5 originatingRequestSpecifier:*(a1 + 40) error:a3];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(*(a1 + 48) + 8) + 40) != 0;
  return v9;
}

@end