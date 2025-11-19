@interface CFCopyLogicalKeysMappedToProcessedValues
@end

@implementation CFCopyLogicalKeysMappedToProcessedValues

void ___CFCopyLogicalKeysMappedToProcessedValues_block_invoke(CFDictionaryRef *a1, const void *a2)
{
  Value = CFDictionaryGetValue(a1[4], a2);
  if (Value)
  {
    v5 = CFDictionaryGetValue(a1[5], Value);
    if (v5)
    {
      v6 = v5;
      v7 = a1[6];

      CFDictionarySetValue(v7, a2, v6);
    }
  }
}

@end