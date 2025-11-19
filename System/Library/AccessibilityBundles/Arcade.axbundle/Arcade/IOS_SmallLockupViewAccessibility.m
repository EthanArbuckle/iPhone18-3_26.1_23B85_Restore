@interface IOS_SmallLockupViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityUserInputLabels;
@end

@implementation IOS_SmallLockupViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"Arcade.BaseLockupView" hasInstanceMethod:@"accessibilityTitleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"Arcade.SmallLockupView" isKindOfClass:@"Arcade.BaseLockupView"];
}

- (id)accessibilityUserInputLabels
{
  v10 = 0;
  objc_opt_class();
  v3 = [(IOS_SmallLockupViewAccessibility *)self safeValueForKey:@"accessibilityTitleLabel"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 accessibilityLabel];
  if ([v5 length])
  {
    v6 = MEMORY[0x29C2C9580](v5);
  }

  else
  {
    v9.receiver = self;
    v9.super_class = IOS_SmallLockupViewAccessibility;
    v6 = [(IOS_SmallLockupViewAccessibility *)&v9 accessibilityUserInputLabels];
  }

  v7 = v6;

  return v7;
}

@end