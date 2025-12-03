@interface MediaControlsRoutingViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation MediaControlsRoutingViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MPAVRoutingViewController" hasInstanceMethod:@"_tableView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MediaControlsRoutingViewController" isKindOfClass:@"MPAVRoutingViewController"];
  [validationsCopy validateClass:@"MPAVRoutingViewController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = MediaControlsRoutingViewControllerAccessibility;
  [(MediaControlsRoutingViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v3 = [(MediaControlsRoutingViewControllerAccessibility *)self safeValueForKey:@"_tableView"];
  v4 = __UIAccessibilityCastAsClass();

  [v4 setAccessibilityContainerType:0];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = MediaControlsRoutingViewControllerAccessibility;
  [(MediaControlsRoutingViewControllerAccessibility *)&v3 viewDidLoad];
  [(MediaControlsRoutingViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end