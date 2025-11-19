@interface UIPasteboard
@end

@implementation UIPasteboard

uint64_t __81__UIPasteboard_QSExtras__accessibilityShouldSwapReceiverWithQuickSpeakPasteboard__block_invoke(uint64_t a1)
{
  result = [objc_opt_class() _accessibilityUseQuickSpeakPasteBoard];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

@end