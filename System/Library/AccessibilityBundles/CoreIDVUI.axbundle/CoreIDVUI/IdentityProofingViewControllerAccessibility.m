@interface IdentityProofingViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation IdentityProofingViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CoreIDVUI.IdentityProofingViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"CoreIDVUI.IdentityProofingViewController" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = IdentityProofingViewControllerAccessibility;
  [(IdentityProofingViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = *MEMORY[0x29EDC7F80];
  v4 = [(IdentityProofingViewControllerAccessibility *)self safeUIViewForKey:@"titleLabel"];
  [v4 setAccessibilityTraits:v3];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = IdentityProofingViewControllerAccessibility;
  [(IdentityProofingViewControllerAccessibility *)&v3 viewDidLoad];
  [(IdentityProofingViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end