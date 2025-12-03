@interface LaunchViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation LaunchViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"LaunchViewController" hasInstanceMethod:@"videoController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"LaunchViewController" hasInstanceMethod:@"bottomVideoController" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v12.receiver = self;
  v12.super_class = LaunchViewControllerAccessibility;
  [(LaunchViewControllerAccessibility *)&v12 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v3 = [(LaunchViewControllerAccessibility *)self safeValueForKey:@"videoController"];
  v4 = __UIAccessibilityCastAsClass();

  view = [v4 view];

  [view setIsAccessibilityElement:1];
  v6 = accessibilityJellyfishLocalizedString(@"splash.video");
  [view setAccessibilityLabel:v6];

  objc_opt_class();
  v7 = [(LaunchViewControllerAccessibility *)self safeValueForKey:@"bottomVideoController"];
  v8 = __UIAccessibilityCastAsClass();

  view2 = [v8 view];

  [view2 setIsAccessibilityElement:1];
  v10 = accessibilityJellyfishLocalizedString(@"splash.bottom.video");
  [view2 setAccessibilityLabel:v10];

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