@interface TUIPredictionView
@end

@implementation TUIPredictionView

void __49__TUIPredictionView_TFExtras__handleAXLongPress___block_invoke_2(uint64_t a1)
{
  v4 = [*(a1 + 32) objectAtIndex:*(a1 + 48)];
  v2 = [*(a1 + 40) safeValueForKey:@"delegate"];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v4 safeValueForKey:@"candidate"];
    [v2 predictionView:*(a1 + 40) didSelectCandidate:v3];
  }
}

@end