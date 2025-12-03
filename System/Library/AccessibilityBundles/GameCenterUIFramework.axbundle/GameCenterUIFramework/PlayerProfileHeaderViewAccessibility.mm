@interface PlayerProfileHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (PlayerProfileHeaderViewAccessibility)initWithFrame:(CGRect)frame;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation PlayerProfileHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"GameCenterUI.PlayerProfileHeaderView" hasInstanceMethod:@"accessibilityFriendStatusLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"GameCenterUI.PlayerProfileHeaderView" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = PlayerProfileHeaderViewAccessibility;
  [(PlayerProfileHeaderViewAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(PlayerProfileHeaderViewAccessibility *)self safeValueForKey:@"accessibilityFriendStatusLabel"];
  [v3 _setAccessibilityLabelBlock:&__block_literal_global_7];
}

- (PlayerProfileHeaderViewAccessibility)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = PlayerProfileHeaderViewAccessibility;
  v3 = [(PlayerProfileHeaderViewAccessibility *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(PlayerProfileHeaderViewAccessibility *)v3 _accessibilityLoadAccessibilityInformation];

  return v3;
}

@end