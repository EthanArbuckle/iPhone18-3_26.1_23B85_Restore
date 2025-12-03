@interface CHFriendInboxBarButtonViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation CHFriendInboxBarButtonViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CHFriendInboxBarButtonView" hasInstanceVariable:@"_badgeView" withType:"CHFriendInboxBadgeView"];
  [validationsCopy validateClass:@"CHFriendInboxBadgeView" hasInstanceMethod:@"badgeText" withFullSignature:{"@", 0}];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CHFriendInboxBarButtonViewAccessibility;
  return UIAccessibilityTraitButton | [(CHFriendInboxBarButtonViewAccessibility *)&v3 accessibilityTraits];
}

- (id)accessibilityValue
{
  v2 = [(CHFriendInboxBarButtonViewAccessibility *)self safeValueForKey:@"_badgeView"];
  v3 = [v2 safeStringForKey:@"badgeText"];

  v4 = objc_opt_new();
  v5 = [v4 numberFromString:v3];
  intValue = [v5 intValue];

  if (intValue < 1)
  {
    v8 = 0;
  }

  else
  {
    v7 = accessibilityLocalizedString(@"badge.format");
    v8 = [NSString stringWithFormat:v7, intValue];
  }

  return v8;
}

@end