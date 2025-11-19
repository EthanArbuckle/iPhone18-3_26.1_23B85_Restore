@interface CopyAvailableEndpoints
@end

@implementation CopyAvailableEndpoints

size_t __remoteXPCEndpointManager_CopyAvailableEndpoints_block_invoke(uint64_t a1)
{
  v2 = 32;
  if (*(a1 + 72) == 1635149176)
  {
    v2 = 40;
  }

  v3 = *(*(a1 + 48) + v2);
  result = FigEndpointRPCCacheApplyObjectDeltas(v3, *(a1 + 56), *(a1 + 64));
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = FigEndpointRPCCacheCopyAvailableObjects(v3, (*(*(a1 + 40) + 8) + 24));
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

@end