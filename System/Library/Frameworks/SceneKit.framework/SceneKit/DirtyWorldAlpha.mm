@interface DirtyWorldAlpha
@end

@implementation DirtyWorldAlpha

uint64_t ____DirtyWorldAlpha_block_invoke(uint64_t a1, _DWORD *a2)
{
  v2 = a2[55];
  if ((*(a1 + 40) & 1) == 0 && (v2 & 0x20) != 0)
  {
    return 1;
  }

  a2[55] = v2 | 0x20;
  if (*(a1 + 40) == 1)
  {
    C3DScenePostPipelineEvent(*(a1 + 32), 4, a2, 0);
  }

  return 0;
}

@end