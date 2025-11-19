@interface WKSelectSinglePickerAccessibility
- (void)controlBeginEditing;
@end

@implementation WKSelectSinglePickerAccessibility

- (void)controlBeginEditing
{
  v2.receiver = self;
  v2.super_class = WKSelectSinglePickerAccessibility;
  [(WKSelectSinglePickerAccessibility *)&v2 controlBeginEditing];
  AXPerformBlockOnMainThreadAfterDelay();
}

void __56__WKSelectSinglePickerAccessibility_controlBeginEditing__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _accessibilityFindDescendant:&__block_literal_global_1];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], v1);
}

@end