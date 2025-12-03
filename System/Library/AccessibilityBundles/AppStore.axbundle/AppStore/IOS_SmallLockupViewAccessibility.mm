@interface IOS_SmallLockupViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityUserInputLabels;
@end

@implementation IOS_SmallLockupViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AppStore.BaseLockupView" hasInstanceMethod:@"accessibilityTitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AppStore.SmallLockupView" isKindOfClass:@"AppStore.BaseLockupView"];
}

- (id)accessibilityUserInputLabels
{
  v10 = 0;
  objc_opt_class();
  v3 = [(IOS_SmallLockupViewAccessibility *)self safeValueForKey:@"accessibilityTitleLabel"];
  v4 = __UIAccessibilityCastAsClass();

  accessibilityLabel = [v4 accessibilityLabel];
  if ([accessibilityLabel length])
  {
    accessibilityUserInputLabels = MEMORY[0x29C2C8BE0](accessibilityLabel);
  }

  else
  {
    v9.receiver = self;
    v9.super_class = IOS_SmallLockupViewAccessibility;
    accessibilityUserInputLabels = [(IOS_SmallLockupViewAccessibility *)&v9 accessibilityUserInputLabels];
  }

  v7 = accessibilityUserInputLabels;

  return v7;
}

@end