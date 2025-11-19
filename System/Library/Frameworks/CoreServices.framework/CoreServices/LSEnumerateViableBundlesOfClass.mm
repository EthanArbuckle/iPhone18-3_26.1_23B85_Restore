@interface LSEnumerateViableBundlesOfClass
@end

@implementation LSEnumerateViableBundlesOfClass

uint64_t ___LSEnumerateViableBundlesOfClass_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = *(result + 48);
  if (!v4 || *(a3 + 168) == v4)
  {
    v5 = *(a3 + 172);
    v6 = *(a3 + 4);
    result = _LSContainerGet(**(result + 40));
    if ((v5 & 0x1000000040) == 0)
    {
      v7 = *(*(v3 + 32) + 16);

      return v7();
    }
  }

  return result;
}

@end