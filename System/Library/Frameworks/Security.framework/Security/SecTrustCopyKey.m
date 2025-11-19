@interface SecTrustCopyKey
@end

@implementation SecTrustCopyKey

const __CFArray *__SecTrustCopyKey_block_invoke_2(uint64_t a1)
{
  result = *(*(a1 + 40) + 72);
  if (result)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(result, 0);
    result = SecCertificateCopyKey(ValueAtIndex);
    *(*(a1 + 40) + 80) = result;
    v4 = *(a1 + 40);
    v5 = *(v4 + 80);
    if (v5)
    {
      result = CFRetain(*(v4 + 80));
    }

    *(*(*(a1 + 32) + 8) + 24) = v5;
  }

  return result;
}

@end