@interface SFApplicationExtensionActivity
@end

@implementation SFApplicationExtensionActivity

void __65___SFApplicationExtensionActivity_activityDidFinish_items_error___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _cleanup];
  v2 = [*(a1 + 32) customCompletionHandler];
  (*(v2 + 2))(v2, *(a1 + 56), *(a1 + 40), *(a1 + 48));
}

@end