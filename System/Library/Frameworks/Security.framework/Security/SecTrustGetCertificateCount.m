@interface SecTrustGetCertificateCount
@end

@implementation SecTrustGetCertificateCount

const __CFArray *__SecTrustGetCertificateCount_block_invoke(uint64_t a1)
{
  result = *(*(a1 + 40) + 72);
  if (result)
  {
    result = CFArrayGetCount(result);
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

@end