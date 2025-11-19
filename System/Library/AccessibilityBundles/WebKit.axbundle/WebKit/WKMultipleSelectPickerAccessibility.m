@interface WKMultipleSelectPickerAccessibility
- (void)controlBeginEditing;
@end

@implementation WKMultipleSelectPickerAccessibility

- (void)controlBeginEditing
{
  v2.receiver = self;
  v2.super_class = WKMultipleSelectPickerAccessibility;
  [(WKMultipleSelectPickerAccessibility *)&v2 controlBeginEditing];
  AXPerformBlockOnMainThreadAfterDelay();
}

void __58__WKMultipleSelectPickerAccessibility_controlBeginEditing__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _accessibilityFindDescendant:&__block_literal_global_0];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], v1);
}

@end