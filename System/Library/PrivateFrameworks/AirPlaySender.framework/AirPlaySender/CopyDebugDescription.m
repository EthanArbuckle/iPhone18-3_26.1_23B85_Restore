@interface CopyDebugDescription
@end

@implementation CopyDebugDescription

void __carEndpoint_CopyDebugDescription_block_invoke(void *a1)
{
  CFStringAppendFormat(*(*(a1[4] + 8) + 24), 0, @"<APEndpointCarPlay %p>\n", a1[6]);
  v2 = a1[6];
  v3 = CFGetAllocator(v2);
  carEndpoint_copyShowInfoDictionary(v2, v3, (*(a1[5] + 8) + 24));
  ASPrintF();
  v4 = strlen(0);
  if (v4 && *(v4 - 1) == 10)
  {
    *(v4 - 1) = 0;
  }

  CFStringAppendFormat(*(*(a1[4] + 8) + 24), 0, @"%s", 0);
  free(0);
}

@end