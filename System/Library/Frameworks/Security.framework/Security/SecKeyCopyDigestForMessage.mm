@interface SecKeyCopyDigestForMessage
@end

@implementation SecKeyCopyDigestForMessage

__CFData *__SecKeyCopyDigestForMessage_block_invoke(uint64_t a1, uint64_t a2, const __CFData *a3)
{
  v5 = *(a1 + 40);
  CFDataGetLength(*(a1 + 48));
  CFDataGetBytePtr(*(a1 + 48));
  ccdigest();
  result = SecKeyRunAlgorithmAndCopyResult(*(a1 + 56), a3, *(a1 + 64), *(a1 + 72));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

@end