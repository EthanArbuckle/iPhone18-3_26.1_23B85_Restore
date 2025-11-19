@interface OnboardingHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation OnboardingHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HealthExposureNotificationUI.OnboardingHeaderView" hasInstanceMethod:@"header" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HealthExposureNotificationUI.OnboardingHeaderView" hasInstanceMethod:@"imageView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HealthExposureNotificationUI.ENUIPublicHealthHeader" hasInstanceMethod:@"style" withFullSignature:{"q", 0}];
  [v3 validateClass:@"HealthExposureNotificationUI.ENUIPublicHealthHeader" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = OnboardingHeaderViewAccessibility;
  [(OnboardingHeaderViewAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  v3 = [(OnboardingHeaderViewAccessibility *)self safeValueForKey:@"header"];
  v4 = [(OnboardingHeaderViewAccessibility *)self safeValueForKey:@"imageView"];
  if ([v3 safeIntegerForKey:@"style"])
  {
    [v4 setIsAccessibilityElement:1];
    v5 = [v3 safeStringForKey:@"title"];
    [v4 setAccessibilityLabel:v5];
  }
}

@end