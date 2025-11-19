@interface BPSSetupPageViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)updateTitleLabel;
- (void)viewDidLoad;
@end

@implementation BPSSetupPageViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"BPSSetupPageViewController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
  [v3 validateClass:@"BPSSetupPageViewController" hasInstanceMethod:@"updateTitleLabel" withFullSignature:{"v", 0}];
  [v3 validateClass:@"BPSSetupPageViewController" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = BPSSetupPageViewControllerAccessibility;
  [(BPSSetupPageViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(BPSSetupPageViewControllerAccessibility *)self safeValueForKey:@"_titleLabel"];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];

  v4 = [(BPSSetupPageViewControllerAccessibility *)self safeValueForKey:@"_titleLabel"];
  [v4 _setAccessibilityServesAsFirstElement:1];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = BPSSetupPageViewControllerAccessibility;
  [(BPSSetupPageViewControllerAccessibility *)&v3 viewDidLoad];
  [(BPSSetupPageViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)updateTitleLabel
{
  v3.receiver = self;
  v3.super_class = BPSSetupPageViewControllerAccessibility;
  [(BPSSetupPageViewControllerAccessibility *)&v3 updateTitleLabel];
  [(BPSSetupPageViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end