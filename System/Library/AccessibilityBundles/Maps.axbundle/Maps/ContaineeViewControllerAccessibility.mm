@interface ContaineeViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)setContainerViewController:(id)controller;
- (void)willBecomeCurrent:(BOOL)current;
- (void)willResignCurrent:(BOOL)current;
@end

@implementation ContaineeViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ContaineeViewController" hasInstanceVariable:@"_cardPresentationController" withType:"CardPresentationController"];
  [validationsCopy validateClass:@"CardPresentationController" hasInstanceVariable:@"_cardView" withType:"CardView"];
  [validationsCopy validateClass:@"ContaineeViewController" hasInstanceMethod:@"willBecomeCurrent:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"ContaineeViewController" hasInstanceMethod:@"willResignCurrent:" withFullSignature:{"v", "B", 0}];
}

- (void)setContainerViewController:(id)controller
{
  v4.receiver = self;
  v4.super_class = ContaineeViewControllerAccessibility;
  [(ContaineeViewControllerAccessibility *)&v4 setContainerViewController:controller];
  [(ContaineeViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = ContaineeViewControllerAccessibility;
  [(ContaineeViewControllerAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  v3 = [(ContaineeViewControllerAccessibility *)self safeValueForKey:@"_cardPresentationController"];
  v4 = [v3 safeValueForKey:@"_cardView"];
  [v4 _accessibilityLoadAccessibilityInformation];

  v5 = [(ContaineeViewControllerAccessibility *)self safeUIViewForKey:@"view"];
  [v5 setAccessibilityElementsHidden:0];
}

- (void)willBecomeCurrent:(BOOL)current
{
  v3 = [(ContaineeViewControllerAccessibility *)self safeUIViewForKey:@"view"];
  [v3 setAccessibilityElementsHidden:0];
}

- (void)willResignCurrent:(BOOL)current
{
  v3 = [(ContaineeViewControllerAccessibility *)self safeUIViewForKey:@"view"];
  [v3 setAccessibilityElementsHidden:1];
}

@end