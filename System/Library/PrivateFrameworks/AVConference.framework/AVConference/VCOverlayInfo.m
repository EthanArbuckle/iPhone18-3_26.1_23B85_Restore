@interface VCOverlayInfo
@end

@implementation VCOverlayInfo

CFTypeRef ___VCOverlayInfo_copyOverlayInfoForToken_block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = CFDictionaryGetValue(**(a1 + 40), *(a1 + 48));
  result = *(*(*(a1 + 32) + 8) + 24);
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

@end