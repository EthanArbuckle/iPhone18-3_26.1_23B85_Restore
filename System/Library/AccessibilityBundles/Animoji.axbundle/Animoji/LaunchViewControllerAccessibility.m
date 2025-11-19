@interface LaunchViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation LaunchViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"LaunchViewController" hasInstanceMethod:@"videoController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"LaunchViewController" hasInstanceMethod:@"bottomVideoController" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v12.receiver = self;
  v12.super_class = LaunchViewControllerAccessibility;
  [(LaunchViewControllerAccessibility *)&v12 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v3 = [(LaunchViewControllerAccessibility *)self safeValueForKey:@"videoController"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 view];

  [v5 setIsAccessibilityElement:1];
  v6 = accessibilityJellyfishLocalizedString(@"splash.video");
  [v5 setAccessibilityLabel:v6];

  objc_opt_class();
  v7 = [(LaunchViewControllerAccessibility *)self safeValueForKey:@"bottomVideoController"];
  v8 = __UIAccessibilityCastAsClass();

  v9 = [v8 view];

  [v9 setIsAccessibilityElement:1];
  v10 = accessibilityJellyfishLocalizedString(@"splash.bottom.video");
  [v9 setAccessibilityLabel:v10];

  v11 = [(LaunchViewControllerAccessibility *)self safeUIViewForKey:@"view"];
  [v11 setAccessibilityViewIsModal:1];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = LaunchViewControllerAccessibility;
  [(LaunchViewControllerAccessibility *)&v3 viewDidLoad];
  [(LaunchViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end