@interface NEIPSecDBCopyPolicy
@end

@implementation NEIPSecDBCopyPolicy

const __CFDictionary *__NEIPSecDBCopyPolicy_block_invoke(uint64_t a1)
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
    result = NEIPSecDBCreateQueuedRequest(*(a1 + 48), 16, *(a1 + 56));
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  return result;
}

@end