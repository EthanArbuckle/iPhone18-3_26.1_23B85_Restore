@interface SBUIActionPlatterViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axHideKeylinesContainerView;
- (void)loadView;
@end

@implementation SBUIActionPlatterViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBUIActionPlatterViewController" hasInstanceMethod:@"loadView" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"SBUIActionPlatterViewController" hasInstanceVariable:@"_keylinesContainerView" withType:"UIView"];
}

- (void)_axHideKeylinesContainerView
{
  v2 = [(SBUIActionPlatterViewControllerAccessibility *)self safeValueForKey:@"_keylinesContainerView"];
  [v2 setAccessibilityElementsHidden:1];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = SBUIActionPlatterViewControllerAccessibility;
  [(SBUIActionPlatterViewControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(SBUIActionPlatterViewControllerAccessibility *)self _axHideKeylinesContainerView];
}

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = SBUIActionPlatterViewControllerAccessibility;
  [(SBUIActionPlatterViewControllerAccessibility *)&v3 loadView];
  [(SBUIActionPlatterViewControllerAccessibility *)self _axHideKeylinesContainerView];
}

@end