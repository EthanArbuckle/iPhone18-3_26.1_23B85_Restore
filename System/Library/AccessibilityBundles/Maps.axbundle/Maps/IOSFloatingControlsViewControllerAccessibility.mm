@interface IOSFloatingControlsViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axAnnotateButtons;
- (void)viewDidLoad;
@end

@implementation IOSFloatingControlsViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"FloatingControlsViewController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"IOSFloatingControlsViewController" hasInstanceVariable:@"_mode2DButton" withType:"UIButton"];
}

- (void)_axAnnotateButtons
{
  v3 = [(IOSFloatingControlsViewControllerAccessibility *)self safeValueForKey:@"_mode2DButton"];
  v2 = AXMapsLocString(@"2D_BUTTON");
  [v3 setAccessibilityLabel:v2];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = IOSFloatingControlsViewControllerAccessibility;
  [(IOSFloatingControlsViewControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(IOSFloatingControlsViewControllerAccessibility *)self _axAnnotateButtons];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = IOSFloatingControlsViewControllerAccessibility;
  [(IOSFloatingControlsViewControllerAccessibility *)&v3 viewDidLoad];
  [(IOSFloatingControlsViewControllerAccessibility *)self _axAnnotateButtons];
}

@end