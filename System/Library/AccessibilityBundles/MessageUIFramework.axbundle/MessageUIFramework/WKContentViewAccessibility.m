@interface WKContentViewAccessibility
@end

@implementation WKContentViewAccessibility

void __91__WKContentViewAccessibility__MessageUI__WebKit__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (*MEMORY[0x29EDC7448] == a2)
  {
    v5 = a4;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v7 = _axuiElementForNotificationData();
    v8 = [v7 isEqual:v5];

    if (v8)
    {
      v9 = objc_loadWeakRetained((a1 + 32));
      v10 = [MEMORY[0x29EDBA070] numberWithDouble:CFAbsoluteTimeGetCurrent()];
      [v9 _axSetFirstResponderStartRepost:v10];

      v11 = objc_loadWeakRetained((a1 + 32));
      [v11 _axRepostFirstResponderWhenReady];
    }
  }
}

@end