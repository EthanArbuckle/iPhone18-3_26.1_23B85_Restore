@interface SummaryContentSummaryViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)bookmarkButtonTapped;
@end

@implementation SummaryContentSummaryViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SeymourUI.SummaryContentSummaryView" hasSwiftField:@"bookmarkButton" withSwiftType:"UIButton"];
  [v3 validateClass:@"SeymourUI.SummaryContentSummaryView" hasInstanceMethod:@"bookmarkButtonTapped" withFullSignature:{"v", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = SummaryContentSummaryViewAccessibility;
  [(SummaryContentSummaryViewAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  v3 = [(SummaryContentSummaryViewAccessibility *)self safeSwiftValueForKey:@"bookmarkButton"];
  v4 = [v3 accessibilityTraits];
  if ((*MEMORY[0x29EDC7FA8] & ~v4) != 0)
  {
    v5 = @"add.button";
  }

  else
  {
    v5 = @"added.button";
  }

  v6 = accessibilityLocalizedString(v5);
  [v3 setAccessibilityLabel:v6];
}

- (void)bookmarkButtonTapped
{
  v2.receiver = self;
  v2.super_class = SummaryContentSummaryViewAccessibility;
  [(SummaryContentSummaryViewAccessibility *)&v2 bookmarkButtonTapped];
  AXPerformBlockOnMainThreadAfterDelay();
}

void __62__SummaryContentSummaryViewAccessibility_bookmarkButtonTapped__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _accessibilityLoadAccessibilityInformation];
  v2 = [*(a1 + 32) safeSwiftValueForKey:@"bookmarkButton"];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], v2);
}

@end