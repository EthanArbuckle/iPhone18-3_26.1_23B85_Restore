@interface ContaineeViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)setContainerViewController:(id)a3;
- (void)willBecomeCurrent:(BOOL)a3;
- (void)willResignCurrent:(BOOL)a3;
@end

@implementation ContaineeViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ContaineeViewController" hasInstanceVariable:@"_cardPresentationController" withType:"CardPresentationController"];
  [v3 validateClass:@"CardPresentationController" hasInstanceVariable:@"_cardView" withType:"CardView"];
  [v3 validateClass:@"ContaineeViewController" hasInstanceMethod:@"willBecomeCurrent:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"ContaineeViewController" hasInstanceMethod:@"willResignCurrent:" withFullSignature:{"v", "B", 0}];
}

- (void)setContainerViewController:(id)a3
{
  v4.receiver = self;
  v4.super_class = ContaineeViewControllerAccessibility;
  [(ContaineeViewControllerAccessibility *)&v4 setContainerViewController:a3];
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

- (void)willBecomeCurrent:(BOOL)a3
{
  v3 = [(ContaineeViewControllerAccessibility *)self safeUIViewForKey:@"view"];
  [v3 setAccessibilityElementsHidden:0];
}

- (void)willResignCurrent:(BOOL)a3
{
  v3 = [(ContaineeViewControllerAccessibility *)self safeUIViewForKey:@"view"];
  [v3 setAccessibilityElementsHidden:1];
}

@end