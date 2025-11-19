@interface IsOpaqueDidChange
@end

@implementation IsOpaqueDidChange

uint64_t ____IsOpaqueDidChange_block_invoke(uint64_t a1, float *a2)
{
  if (a2[51] < 1.0)
  {
    return 1;
  }

  C3DScenePostPipelineEvent(*(a1 + 32), 4, a2, 0);
  return 0;
}

@end