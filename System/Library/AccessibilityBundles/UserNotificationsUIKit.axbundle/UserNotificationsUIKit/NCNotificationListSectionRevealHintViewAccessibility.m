@interface NCNotificationListSectionRevealHintViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityIsHintTitleVisible;
- (id)accessibilityLabel;
@end

@implementation NCNotificationListSectionRevealHintViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"NCNotificationListSectionRevealHintView" isKindOfClass:@"UIView"];
  [v3 validateClass:@"NCNotificationListSectionRevealHintView" hasInstanceMethod:@"revealHintTitle" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(NCNotificationListSectionRevealHintViewAccessibility *)self safeValueForKey:@"revealHintTitle"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (BOOL)_accessibilityIsHintTitleVisible
{
  v2 = [(NCNotificationListSectionRevealHintViewAccessibility *)self safeUIViewForKey:@"revealHintTitle"];
  v3 = [v2 _accessibilityViewIsVisible];

  return v3;
}

@end