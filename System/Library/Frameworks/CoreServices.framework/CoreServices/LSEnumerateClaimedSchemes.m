@interface LSEnumerateClaimedSchemes
@end

@implementation LSEnumerateClaimedSchemes

void ___LSEnumerateClaimedSchemes_block_invoke(uint64_t a1)
{
  [(_LSDatabase *)**(a1 + 40) store];
  v2 = _CSStringCopyCFString();
  if (v2)
  {
    (*(*(a1 + 32) + 16))();
  }
}

@end