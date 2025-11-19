@interface SecCertificateGetSHA1Digest
@end

@implementation SecCertificateGetSHA1Digest

__CFData *__SecCertificateGetSHA1Digest_block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  v3 = *(result + 76);
  if (!v3)
  {
    v4 = CFGetAllocator(result);
    result = SecSHA1DigestCreate(v4, *(*(a1 + 40) + 16), *(*(a1 + 40) + 24));
    *(*(a1 + 40) + 608) = result;
    v3 = *(*(a1 + 40) + 608);
  }

  *(*(*(a1 + 32) + 8) + 24) = v3;
  return result;
}

@end