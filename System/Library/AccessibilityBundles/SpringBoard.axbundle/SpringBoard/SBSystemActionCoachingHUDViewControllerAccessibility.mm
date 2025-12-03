@interface SBSystemActionCoachingHUDViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation SBSystemActionCoachingHUDViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBSystemActionCoachingHUDViewController" hasInstanceVariable:@"_coachingLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"SBSystemActionCoachingHUDViewController" hasInstanceVariable:@"_contentView" withType:"UIView"];
  [validationsCopy validateClass:@"SBSystemActionCoachingHUDViewController" hasInstanceVariable:@"_dimmingView" withType:"UIView"];
  [validationsCopy validateClass:@"SBSystemActionCoachingHUDViewController" hasInstanceVariable:@"_coachingLabelWrapperView" withType:"UIView"];
  [validationsCopy validateClass:@"SBSystemActionCoachingHUDViewController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3 = [(SBSystemActionCoachingHUDViewControllerAccessibility *)self safeValueForKey:@"_coachingLabel"];
  [v3 setIsAccessibilityElement:0];
  v4 = [(SBSystemActionCoachingHUDViewControllerAccessibility *)self safeValueForKey:@"_contentView"];
  [v4 setAccessibilityViewIsModal:0];
  v5 = [(SBSystemActionCoachingHUDViewControllerAccessibility *)self safeValueForKey:@"_dimmingView"];
  [v5 setAccessibilityViewIsModal:0];
  v6 = [(SBSystemActionCoachingHUDViewControllerAccessibility *)self safeValueForKey:@"_coachingLabelWrapperView"];
  [v6 setAccessibilityViewIsModal:0];
  v7.receiver = self;
  v7.super_class = SBSystemActionCoachingHUDViewControllerAccessibility;
  [(SBSystemActionCoachingHUDViewControllerAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = SBSystemActionCoachingHUDViewControllerAccessibility;
  [(SBSystemActionCoachingHUDViewControllerAccessibility *)&v3 viewDidLoad];
  [(SBSystemActionCoachingHUDViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end