@interface ReportStartupTimeIncludingInterstitial
@end

@implementation ReportStartupTimeIncludingInterstitial

void __fpic_ReportStartupTimeIncludingInterstitial_block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 160))
  {
    OUTLINED_FUNCTION_158_3(a1);
    CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_2_166();
    if (v2)
    {
      if (!*(*(v1 + 32) + 1196) && fpic_GetFirstCurrentItem() == *(v1 + 56) && FigCFDictionaryGetValueIfPresent())
      {
        FigBaseObject = FigPlaybackItemGetFigBaseObject(*(*(v1 + 32) + 160));
        v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v4)
        {
          v4(FigBaseObject, @"TimestampInterstitialReadyToPlay", 0);
        }
      }
    }
  }
}

@end