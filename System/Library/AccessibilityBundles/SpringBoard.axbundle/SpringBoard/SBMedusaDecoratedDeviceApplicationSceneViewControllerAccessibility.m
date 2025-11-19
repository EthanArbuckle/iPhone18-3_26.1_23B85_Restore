@interface SBMedusaDecoratedDeviceApplicationSceneViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (SBMedusaDecoratedDeviceApplicationSceneViewControllerAccessibility)initWithDeviceApplicationSceneHandle:(id)a3 layoutRole:(int64_t)a4;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axSetUpAffordanceViewController;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation SBMedusaDecoratedDeviceApplicationSceneViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBMedusaDecoratedDeviceApplicationSceneViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"SBMedusaDecoratedDeviceApplicationSceneViewController" hasInstanceVariable:@"_deviceApplicationSceneHandle" withType:"SBDeviceApplicationSceneHandle"];
  [v3 validateClass:@"SBMedusaDecoratedDeviceApplicationSceneViewController" hasInstanceMethod:@"initWithDeviceApplicationSceneHandle:layoutRole:" withFullSignature:{"@", "@", "q", 0}];
  [v3 validateClass:@"SBMedusaDecoratedDeviceApplicationSceneViewController" hasInstanceVariable:@"_topAffordanceViewController" withType:"SBTopAffordanceViewController"];
  [v3 validateClass:@"SBTopAffordanceViewController" hasInstanceMethod:@"dotsView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBDeviceApplicationSceneHandle"];
  [v3 validateClass:@"SBDeviceApplicationSceneHandle" isKindOfClass:@"SBApplicationSceneHandle"];
  [v3 validateClass:@"SBApplicationSceneHandle" hasInstanceMethod:@"application" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBApplication"];
  [v3 validateClass:@"SBApplication" hasInstanceMethod:@"displayName" withFullSignature:{"@", 0}];
}

- (SBMedusaDecoratedDeviceApplicationSceneViewControllerAccessibility)initWithDeviceApplicationSceneHandle:(id)a3 layoutRole:(int64_t)a4
{
  v6.receiver = self;
  v6.super_class = SBMedusaDecoratedDeviceApplicationSceneViewControllerAccessibility;
  v4 = [(SBMedusaDecoratedDeviceApplicationSceneViewControllerAccessibility *)&v6 initWithDeviceApplicationSceneHandle:a3 layoutRole:a4];
  [(SBMedusaDecoratedDeviceApplicationSceneViewControllerAccessibility *)v4 _accessibilityLoadAccessibilityInformation];
  return v4;
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SBMedusaDecoratedDeviceApplicationSceneViewControllerAccessibility;
  [(SBMedusaDecoratedDeviceApplicationSceneViewControllerAccessibility *)&v4 viewDidAppear:a3];
  [(SBMedusaDecoratedDeviceApplicationSceneViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = SBMedusaDecoratedDeviceApplicationSceneViewControllerAccessibility;
  [(SBMedusaDecoratedDeviceApplicationSceneViewControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(SBMedusaDecoratedDeviceApplicationSceneViewControllerAccessibility *)self _axSetUpAffordanceViewController];
}

- (void)_axSetUpAffordanceViewController
{
  objc_opt_class();
  v3 = [(SBMedusaDecoratedDeviceApplicationSceneViewControllerAccessibility *)self safeValueForKey:@"topAffordanceViewController"];
  v4 = [v3 safeValueForKey:@"dotsView"];
  v5 = __UIAccessibilityCastAsSafeCategory();

  if (v5)
  {
    v6 = [(SBMedusaDecoratedDeviceApplicationSceneViewControllerAccessibility *)self safeValueForKeyPath:@"_deviceApplicationSceneHandle.application"];
    v7 = [v6 safeStringForKey:@"displayName"];
    [v5 _axSetApplicationDisplayName:v7];
  }
}

@end