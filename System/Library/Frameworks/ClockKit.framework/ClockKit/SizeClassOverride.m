@interface SizeClassOverride
@end

@implementation SizeClassOverride

uint64_t ___SizeClassOverride_block_invoke(uint64_t result, uint64_t a2, _BYTE *a3)
{
  if (*(result + 40) == a2)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

@end