@interface NEIPSecDBDeletePolicy
@end

@implementation NEIPSecDBDeletePolicy

const __CFDictionary *__NEIPSecDBDeletePolicy_block_invoke(uint64_t a1)
{
  result = *(*(a1 + 48) + 88);
  if (result)
  {
    v3 = NEGetValueFromIntKeyedDictionary(result, *(a1 + 56));
    if (v3)
    {
      v3 = CFRetain(v3);
    }

    *(*(*(a1 + 32) + 8) + 24) = v3;
    result = NEIPSecDBCreateQueuedRequest(*(a1 + 48), 22, *(a1 + 56));
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  return result;
}

@end