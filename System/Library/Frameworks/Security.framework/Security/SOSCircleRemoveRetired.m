@interface SOSCircleRemoveRetired
@end

@implementation SOSCircleRemoveRetired

const __CFDictionary *__SOSCircleRemoveRetired_block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  result = *(a2 + 16);
  if (result)
  {
    return (CFDictionaryGetValue(result, @"RetirementDate") != 0);
  }

  return result;
}

@end