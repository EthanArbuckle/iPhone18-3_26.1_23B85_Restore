@interface ARSession
@end

@implementation ARSession

BOOL __85__ARSession_SmartRaycast__smartRaycastResultForImagePoint_assetPosition_maxDistance___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 target] != 2)
  {
    __85__ARSession_SmartRaycast__smartRaycastResultForImagePoint_assetPosition_maxDistance___block_invoke_cold_1(a1, v3);
  }

  [*(a1 + 32) raycastResultDistanceFromCamera:v3];
  v5 = v4 < *(a1 + 48);

  return v5;
}

void __85__ARSession_SmartRaycast__smartRaycastResultForImagePoint_assetPosition_maxDistance___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"ARSession+SmartRaycast.m" lineNumber:35 description:{@"Expected ARRaycastResult.target == ARRaycastTargetEstimatedPlane, but got %ld", objc_msgSend(a2, "target")}];
}

@end