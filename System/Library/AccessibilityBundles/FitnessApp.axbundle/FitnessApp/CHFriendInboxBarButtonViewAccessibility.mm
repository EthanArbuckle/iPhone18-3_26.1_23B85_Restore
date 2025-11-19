@interface CHFriendInboxBarButtonViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation CHFriendInboxBarButtonViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CHFriendInboxBarButtonView" hasInstanceVariable:@"_badgeView" withType:"CHFriendInboxBadgeView"];
  [v3 validateClass:@"CHFriendInboxBadgeView" hasInstanceMethod:@"badgeText" withFullSignature:{"@", 0}];
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
  v6 = [v5 intValue];

  if (v6 < 1)
  {
    v8 = 0;
  }

  else
  {
    v7 = accessibilityLocalizedString(@"badge.format");
    v8 = [NSString stringWithFormat:v7, v6];
  }

  return v8;
}

@end