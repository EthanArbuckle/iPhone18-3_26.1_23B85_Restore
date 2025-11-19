@interface SecTrustGetCertificateAtIndex
@end

@implementation SecTrustGetCertificateAtIndex

const __CFArray *__SecTrustGetCertificateAtIndex_block_invoke_2(void *a1)
{
  result = *(a1[5] + 72);
  if (result)
  {
    result = CFArrayGetValueAtIndex(result, a1[6]);
    *(*(a1[4] + 8) + 24) = result;
  }

  return result;
}

@end