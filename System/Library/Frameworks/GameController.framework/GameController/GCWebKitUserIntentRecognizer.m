@interface GCWebKitUserIntentRecognizer
@end

@implementation GCWebKitUserIntentRecognizer

void __68___GCWebKitUserIntentRecognizer_processChangedElements_atTimestamp___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = *(WeakRetained + 8);
    v5 = WeakRetained;
    v4 = objc_loadWeakRetained(WeakRetained + 1);
    (*(v3 + 16))(v3, v4, *(a1 + 32));

    [*(a1 + 40) removeAllObjects];
    WeakRetained = v5;
  }
}

@end