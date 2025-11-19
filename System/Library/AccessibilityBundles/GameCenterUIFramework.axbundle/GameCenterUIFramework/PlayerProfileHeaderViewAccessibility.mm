@interface PlayerProfileHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (PlayerProfileHeaderViewAccessibility)initWithFrame:(CGRect)a3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation PlayerProfileHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"GameCenterUI.PlayerProfileHeaderView" hasInstanceMethod:@"accessibilityFriendStatusLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"GameCenterUI.PlayerProfileHeaderView" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = PlayerProfileHeaderViewAccessibility;
  [(PlayerProfileHeaderViewAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(PlayerProfileHeaderViewAccessibility *)self safeValueForKey:@"accessibilityFriendStatusLabel"];
  [v3 _setAccessibilityLabelBlock:&__block_literal_global_7];
}

- (PlayerProfileHeaderViewAccessibility)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = PlayerProfileHeaderViewAccessibility;
  v3 = [(PlayerProfileHeaderViewAccessibility *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(PlayerProfileHeaderViewAccessibility *)v3 _accessibilityLoadAccessibilityInformation];

  return v3;
}

@end