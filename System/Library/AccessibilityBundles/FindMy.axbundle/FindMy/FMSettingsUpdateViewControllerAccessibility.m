@interface FMSettingsUpdateViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)viewDidLoad;
@end

@implementation FMSettingsUpdateViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"FindMy.FMSettingsUpdateViewController" hasInstanceMethod:@"accessibilityButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"FindMy.FMSettingsUpdateViewController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = FMSettingsUpdateViewControllerAccessibility;
  [(FMSettingsUpdateViewControllerAccessibility *)&v6 viewDidLoad];
  objc_opt_class();
  v3 = [(FMSettingsUpdateViewControllerAccessibility *)self safeValueForKey:@"accessibilityButton"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 accessibilityTraits];
  [v4 setAccessibilityTraits:*MEMORY[0x29EDC7500] | v5];
}

@end