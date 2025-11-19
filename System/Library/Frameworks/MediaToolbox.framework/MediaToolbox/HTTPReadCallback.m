@interface HTTPReadCallback
@end

@implementation HTTPReadCallback

const void *__fpic_HTTPReadCallback_block_invoke(uint64_t a1)
{
  result = fpic_FindURLReq(*(a1 + 40), @"FPICURLR_HTTPRequest", *(a1 + 48));
  if (result != -1)
  {
    result = CFArrayGetValueAtIndex(*(*(a1 + 56) + 680), result);
    if (result)
    {
      result = CFRetain(result);
    }

    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

void __fpic_HTTPReadCallback_block_invoke_166(uint64_t a1)
{
  v2 = fpic_UnwrapEvent();
  FigPlayerInterstitialEventSetLastPlaybackError(v2);
  fpic_ClearAssetListResponseAfterAssetListReadFailure(*(a1 + 32), *(a1 + 40), *(a1 + 48));
  fpic_UpdateEventLastPlaybackFailed(*(a1 + 32), *(a1 + 40), 1);
  OUTLINED_FUNCTION_126_3();

  fpic_RemoveEvent(v3, v4, v5, v6, v7, v8);
}

@end