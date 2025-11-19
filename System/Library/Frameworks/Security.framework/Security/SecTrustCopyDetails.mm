@interface SecTrustCopyDetails
@end

@implementation SecTrustCopyDetails

void *___SecTrustCopyDetails_block_invoke(void *result)
{
  v1 = result;
  v2 = result[5];
  v3 = *(v2 + 88);
  if (v3)
  {
    result = CFRetain(*(v2 + 88));
  }

  *(*(v1[4] + 8) + 24) = v3;
  return result;
}

@end