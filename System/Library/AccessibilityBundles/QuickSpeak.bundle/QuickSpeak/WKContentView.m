@interface WKContentView
@end

@implementation WKContentView

uint64_t __103__WKContentView_QSExtras__axWaitForSpeakSelectionRectResultsForGuanularity_atSelectionOffset_wordText___block_invoke(void *a1)
{
  v2 = a1[6];
  v3 = a1[4];
  if (v2 == 1)
  {
    [v3 accessibilitySetQSWordRects:0];
    v4 = a1[7];
    v5 = a1[4];
    v6 = a1[5];

    return [v5 _accessibilityRetrieveRectsAtSelectionOffset:v4 withText:v6];
  }

  else
  {
    v8 = a1[7];

    return [v3 _accessibilityRetrieveRectsEnclosingSelectionOffset:v8 withGranularity:?];
  }
}

@end