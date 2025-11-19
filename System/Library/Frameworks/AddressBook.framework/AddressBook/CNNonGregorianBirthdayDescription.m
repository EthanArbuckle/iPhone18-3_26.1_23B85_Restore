@interface CNNonGregorianBirthdayDescription
@end

@implementation CNNonGregorianBirthdayDescription

void __72__CNNonGregorianBirthdayDescription_ABSExtentions__ABSValueFromCNValue___block_invoke(uint64_t a1, uint64_t a2, const void *a3)
{
  if (a2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = *(a1 + 32);
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
    CFDictionarySetValue(v5, a3, v6);
  }
}

uint64_t __72__CNNonGregorianBirthdayDescription_ABSExtentions__CNValueFromABSValue___block_invoke(uint64_t a1, const void *a2)
{
  Value = CFDictionaryGetValue(*(a1 + 32), a2);
  if (!Value)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return [Value integerValue];
}

@end