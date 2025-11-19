@interface NEIPSecDBGetSPIForSA
@end

@implementation NEIPSecDBGetSPIForSA

const __CFDictionary *__NEIPSecDBGetSPIForSA_block_invoke(uint64_t a1)
{
  result = NEGetValueFromIntKeyedDictionary(*(*(a1 + 40) + 80), *(a1 + 48));
  if (result)
  {
    result = NEGetIntFromDictionary(result, @"SPIValue", 0);
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

@end