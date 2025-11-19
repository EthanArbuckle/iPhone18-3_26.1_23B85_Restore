@interface UpdateCullingSystemFlags
@end

@implementation UpdateCullingSystemFlags

uint64_t ____UpdateCullingSystemFlags_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 216);
  if (v2 != -1)
  {
    C3DCullingSystemUpdateFlags(*(a1 + 32), v2);
  }

  return 0;
}

@end