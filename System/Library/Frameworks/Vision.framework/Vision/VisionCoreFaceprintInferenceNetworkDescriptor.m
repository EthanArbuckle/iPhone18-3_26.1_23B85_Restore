@interface VisionCoreFaceprintInferenceNetworkDescriptor
@end

@implementation VisionCoreFaceprintInferenceNetworkDescriptor

BOOL __132__VisionCoreFaceprintInferenceNetworkDescriptor_VNPrivateAdditions__VNFaceprintFromOutputObjects_originatingRequestSpecifier_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  LODWORD(v6) = *(a1 + 56);
  v7 = [*(a1 + 32) VNFaceprintFromData:v5 confidence:*(a1 + 40) originatingRequestSpecifier:a3 error:v6];
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = *(*(*(a1 + 48) + 8) + 40) != 0;
  return v10;
}

@end