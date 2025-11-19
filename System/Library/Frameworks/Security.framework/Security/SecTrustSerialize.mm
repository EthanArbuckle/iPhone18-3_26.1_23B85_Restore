@interface SecTrustSerialize
@end

@implementation SecTrustSerialize

__CFDictionary *__SecTrustSerialize_block_invoke(uint64_t a1)
{
  result = _onQueue_SecTrustCopyPlist(*(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

@end