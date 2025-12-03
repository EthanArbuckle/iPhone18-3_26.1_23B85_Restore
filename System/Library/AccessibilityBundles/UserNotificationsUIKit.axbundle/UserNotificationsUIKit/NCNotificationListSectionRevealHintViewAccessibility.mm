@interface NCNotificationListSectionRevealHintViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityIsHintTitleVisible;
- (id)accessibilityLabel;
@end

@implementation NCNotificationListSectionRevealHintViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NCNotificationListSectionRevealHintView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"NCNotificationListSectionRevealHintView" hasInstanceMethod:@"revealHintTitle" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(NCNotificationListSectionRevealHintViewAccessibility *)self safeValueForKey:@"revealHintTitle"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (BOOL)_accessibilityIsHintTitleVisible
{
  v2 = [(NCNotificationListSectionRevealHintViewAccessibility *)self safeUIViewForKey:@"revealHintTitle"];
  _accessibilityViewIsVisible = [v2 _accessibilityViewIsVisible];

  return _accessibilityViewIsVisible;
}

@end