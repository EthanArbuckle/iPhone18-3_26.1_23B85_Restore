@interface CopySortedOverridesForBaseKey
@end

@implementation CopySortedOverridesForBaseKey

void ___CopySortedOverridesForBaseKey_block_invoke(uint64_t a1, const void *a2)
{
  if (CFDictionaryGetValueIfPresent(*(a1 + 32), a2, 0))
  {
    v4 = *(a1 + 40);

    CFArrayAppendValue(v4, a2);
  }
}

@end