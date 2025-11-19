@interface BFFProximityVisualPairingViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation BFFProximityVisualPairingViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"BFFProximityVisualPairingViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"BFFProximityVisualPairingViewController" hasInstanceMethod:@"visualPairingView" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = BFFProximityVisualPairingViewControllerAccessibility;
  [(BFFProximityVisualPairingViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(BFFProximityVisualPairingViewControllerAccessibility *)self safeUIViewForKey:@"visualPairingView"];
  [v3 setIsAccessibilityElement:1];
  v4 = accessibilityLocalizedString(@"pairing.video.description");
  [v3 setAccessibilityLabel:v4];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = BFFProximityVisualPairingViewControllerAccessibility;
  [(BFFProximityVisualPairingViewControllerAccessibility *)&v3 viewDidLoad];
  [(BFFProximityVisualPairingViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end