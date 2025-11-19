@interface MFComposeStyleSelectorViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)changeFontSizeAction:(id)a3;
@end

@implementation MFComposeStyleSelectorViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MFComposeStyleSelectorViewController" hasInstanceMethod:@"changeFontSizeAction:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"MFComposeStyleSelectorViewController" hasInstanceMethod:@"currentFontSize" withFullSignature:{"q", 0}];
}

- (void)changeFontSizeAction:(id)a3
{
  v3.receiver = self;
  v3.super_class = MFComposeStyleSelectorViewControllerAccessibility;
  [(MFComposeStyleSelectorViewControllerAccessibility *)&v3 changeFontSizeAction:a3];
  AXPerformBlockOnMainThreadAfterDelay();
}

void __74__MFComposeStyleSelectorViewControllerAccessibility_changeFontSizeAction___block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x29EDC7EA8];
  v2 = [MEMORY[0x29EDBA0F8] localizedStringWithFormat:@"%ld", objc_msgSend(*(a1 + 32), "safeIntegerForKey:", @"currentFontSize"];
  UIAccessibilityPostNotification(v1, v2);
}

@end