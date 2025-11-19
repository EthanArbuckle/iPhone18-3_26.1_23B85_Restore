@interface UTEnumerateActiveTypes
@end

@implementation UTEnumerateActiveTypes

uint64_t ___UTEnumerateActiveTypes_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8))
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

@end