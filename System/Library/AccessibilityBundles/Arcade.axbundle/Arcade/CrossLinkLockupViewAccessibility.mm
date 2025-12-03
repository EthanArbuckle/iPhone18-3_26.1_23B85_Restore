@interface CrossLinkLockupViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityLabel;
@end

@implementation CrossLinkLockupViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"Arcade.CrossLinkLockupView" hasInstanceMethod:@"accessibilityTitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"Arcade.CrossLinkLockupView" hasInstanceMethod:@"accessibilitySubtitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"Arcade.CrossLinkLockupView" hasInstanceMethod:@"accessibilityLockupView" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  _axLockupView = [(CrossLinkLockupViewAccessibility *)self _axLockupView];
  v4 = [(CrossLinkLockupViewAccessibility *)self safeValueForKey:@"accessibilityTitleLabel"];
  v5 = [(CrossLinkLockupViewAccessibility *)self safeValueForKey:@"accessibilitySubtitleLabel"];
  array = [MEMORY[0x29EDB8DE8] array];
  if ([_axLockupView _accessibilityViewIsVisible])
  {
    [array axSafelyAddObject:_axLockupView];
  }

  if ([v4 _accessibilityViewIsVisible])
  {
    [array axSafelyAddObject:v4];
  }

  if ([v5 _accessibilityViewIsVisible])
  {
    [array axSafelyAddObject:v5];
  }

  v7 = AXLabelForElements();

  return v7;
}

- (id)_accessibilitySupplementaryFooterViews
{
  _axLockupView = [(CrossLinkLockupViewAccessibility *)self _axLockupView];
  _accessibilitySupplementaryFooterViews = [_axLockupView _accessibilitySupplementaryFooterViews];

  return _accessibilitySupplementaryFooterViews;
}

@end