@interface BaseSmallFriendLockupViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (unint64_t)accessibilityTraits;
@end

@implementation BaseSmallFriendLockupViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"GameCenterUI.BaseSmallFriendLockupView" hasInstanceMethod:@"accessibilityTitleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"GameCenterUI.BaseSmallFriendLockupView" hasInstanceMethod:@"accessibilitySubtitleLabel" withFullSignature:{"@", 0}];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = BaseSmallFriendLockupViewAccessibility;
  return *MEMORY[0x29EDC7F70] | [(BaseSmallFriendLockupViewAccessibility *)&v3 accessibilityTraits];
}

@end