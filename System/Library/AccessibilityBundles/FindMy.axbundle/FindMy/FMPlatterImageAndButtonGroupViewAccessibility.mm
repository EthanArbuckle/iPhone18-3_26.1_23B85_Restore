@interface FMPlatterImageAndButtonGroupViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)setupSubviews;
@end

@implementation FMPlatterImageAndButtonGroupViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"FindMy.FMPlatterImageAndButtonGroupView" hasInstanceMethod:@"setupSubviews" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"FindMy.FMPlatterImageAndButtonGroupView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = FMPlatterImageAndButtonGroupViewAccessibility;
  [(FMPlatterImageAndButtonGroupViewAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(FMPlatterImageAndButtonGroupViewAccessibility *)self safeValueForKey:@"titleLabel"];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];
}

- (void)setupSubviews
{
  v3.receiver = self;
  v3.super_class = FMPlatterImageAndButtonGroupViewAccessibility;
  [(FMPlatterImageAndButtonGroupViewAccessibility *)&v3 setupSubviews];
  [(FMPlatterImageAndButtonGroupViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end