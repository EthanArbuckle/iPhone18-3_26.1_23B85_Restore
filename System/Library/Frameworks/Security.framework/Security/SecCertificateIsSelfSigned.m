@interface SecCertificateIsSelfSigned
@end

@implementation SecCertificateIsSelfSigned

uint64_t ___SecCertificateIsSelfSigned_block_invoke(void *a1)
{
  result = a1[5];
  if (!*(result + 624))
  {
    *(result + 624) = 1;
    v3 = _SecCertificateCopyKey_onqueue(result);
    result = a1[5];
    if (v3)
    {
      v4 = *(result + 584);
      if (*(result + 576))
      {
        v5 = v4 == 0;
      }

      else
      {
        v5 = 1;
      }

      if (!v5)
      {
        if (CFEqual(*(result + 576), v4))
        {
          v6 = a1[6];
          if ((!v6 || (v7 = a1[7]) != 0 && CFEqual(v7, v6)) && !SecCertificateIsSignedBy(a1[5], v3))
          {
            *(a1[5] + 624) = 2;
          }
        }
      }

      CFRelease(v3);
      result = a1[5];
    }
  }

  *(*(a1[4] + 8) + 24) = *(result + 624) == 2;
  return result;
}

@end