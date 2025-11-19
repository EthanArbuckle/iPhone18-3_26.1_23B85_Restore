@interface LSBundleDisplayNameContextGetIndex
@end

@implementation LSBundleDisplayNameContextGetIndex

uint64_t ___LSBundleDisplayNameContextGetIndex_block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, _BYTE *a5)
{
  result = [a3 isEqual:*(a1 + 32)];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
    *a5 = 1;
  }

  return result;
}

@end