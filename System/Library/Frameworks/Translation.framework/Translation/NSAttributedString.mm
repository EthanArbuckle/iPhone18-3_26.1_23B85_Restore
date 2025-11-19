@interface NSAttributedString
@end

@implementation NSAttributedString

void __96__NSAttributedString_LTParagraphs__lt_attributedStringByJoiningComponents_withAttributedString___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    [*(a1 + 32) appendAttributedString:*(a1 + 40)];
  }

  [*(a1 + 32) appendAttributedString:v5];
}

uint64_t __78__NSAttributedString_TranslationAdditions__lt_containsSubstringWithAttribute___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (a2)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    *a5 = 1;
  }

  return result;
}

@end