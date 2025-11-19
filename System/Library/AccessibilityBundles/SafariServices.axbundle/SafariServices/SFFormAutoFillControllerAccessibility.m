@interface SFFormAutoFillControllerAccessibility
@end

@implementation SFFormAutoFillControllerAccessibility

void __73___SFFormAutoFillControllerAccessibility_fieldWillFocusWithInputSession___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) safeUIViewForKey:@"_autoFillInputView"];
  argument = [v1 _accessibilityFindDescendant:&__block_literal_global_2];

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], argument);
}

@end