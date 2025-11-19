@interface UTEnumerateTypesForTag
@end

@implementation UTEnumerateTypesForTag

uint64_t ___UTEnumerateTypesForTag_block_invoke(uint64_t result, uint64_t a2, int a3)
{
  if ((a3 & 3) == 0 && (a3 & 0xFFFFFFFC) != 0)
  {
    v3 = result;
    result = _UTTypeGet(*(result + 32));
    if (result)
    {
      v4 = *(*(v3 + 40) + 16);

      return v4();
    }
  }

  return result;
}

@end