@interface CrossLinkLockupViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityLabel;
@end

@implementation CrossLinkLockupViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"Arcade.CrossLinkLockupView" hasInstanceMethod:@"accessibilityTitleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"Arcade.CrossLinkLockupView" hasInstanceMethod:@"accessibilitySubtitleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"Arcade.CrossLinkLockupView" hasInstanceMethod:@"accessibilityLockupView" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(CrossLinkLockupViewAccessibility *)self _axLockupView];
  v4 = [(CrossLinkLockupViewAccessibility *)self safeValueForKey:@"accessibilityTitleLabel"];
  v5 = [(CrossLinkLockupViewAccessibility *)self safeValueForKey:@"accessibilitySubtitleLabel"];
  v6 = [MEMORY[0x29EDB8DE8] array];
  if ([v3 _accessibilityViewIsVisible])
  {
    [v6 axSafelyAddObject:v3];
  }

  if ([v4 _accessibilityViewIsVisible])
  {
    [v6 axSafelyAddObject:v4];
  }

  if ([v5 _accessibilityViewIsVisible])
  {
    [v6 axSafelyAddObject:v5];
  }

  v7 = AXLabelForElements();

  return v7;
}

- (id)_accessibilitySupplementaryFooterViews
{
  v2 = [(CrossLinkLockupViewAccessibility *)self _axLockupView];
  v3 = [v2 _accessibilitySupplementaryFooterViews];

  return v3;
}

@end