@interface NEIPSecDBCopySA
@end

@implementation NEIPSecDBCopySA

const __CFDictionary *__NEIPSecDBCopySA_block_invoke(uint64_t a1)
{
  result = *(*(a1 + 48) + 80);
  if (result)
  {
    v3 = NEGetValueFromIntKeyedDictionary(result, *(a1 + 56));
    if (v3)
    {
      v3 = CFRetain(v3);
    }

    *(*(*(a1 + 32) + 8) + 24) = v3;
    result = NEIPSecDBCreateQueuedRequest(*(a1 + 48), 5, *(a1 + 56));
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  return result;
}

@end