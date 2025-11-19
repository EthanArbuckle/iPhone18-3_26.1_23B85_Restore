@interface HKCalendarScrollViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation HKCalendarScrollViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HKCalendarScrollViewController" hasInstanceMethod:@"viewDidAppear:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"HKCalendarScrollViewController" hasInstanceMethod:@"scrollView" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = HKCalendarScrollViewControllerAccessibility;
  [(HKCalendarScrollViewControllerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(HKCalendarScrollViewControllerAccessibility *)self safeValueForKey:@"scrollView"];
  [v3 setIsAccessibilityOpaqueElementProvider:1];
}

@end