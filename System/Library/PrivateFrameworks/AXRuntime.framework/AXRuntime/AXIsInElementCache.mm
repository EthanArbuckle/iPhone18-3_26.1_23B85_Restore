@interface AXIsInElementCache
@end

@implementation AXIsInElementCache

void ___AXIsInElementCache_block_invoke(uint64_t a1)
{
  v2 = NSMapGet(qword_1ED6551A0, ~*(a1 + 40));
  if (v2)
  {
    *(*(*(a1 + 32) + 8) + 24) = v2[2];
  }
}

@end