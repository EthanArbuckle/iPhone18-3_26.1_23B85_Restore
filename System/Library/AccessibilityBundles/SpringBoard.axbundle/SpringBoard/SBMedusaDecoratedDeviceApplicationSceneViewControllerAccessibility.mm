@interface SBMedusaDecoratedDeviceApplicationSceneViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (SBMedusaDecoratedDeviceApplicationSceneViewControllerAccessibility)initWithDeviceApplicationSceneHandle:(id)handle layoutRole:(int64_t)role;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axSetUpAffordanceViewController;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation SBMedusaDecoratedDeviceApplicationSceneViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBMedusaDecoratedDeviceApplicationSceneViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"SBMedusaDecoratedDeviceApplicationSceneViewController" hasInstanceVariable:@"_deviceApplicationSceneHandle" withType:"SBDeviceApplicationSceneHandle"];
  [validationsCopy validateClass:@"SBMedusaDecoratedDeviceApplicationSceneViewController" hasInstanceMethod:@"initWithDeviceApplicationSceneHandle:layoutRole:" withFullSignature:{"@", "@", "q", 0}];
  [validationsCopy validateClass:@"SBMedusaDecoratedDeviceApplicationSceneViewController" hasInstanceVariable:@"_topAffordanceViewController" withType:"SBTopAffordanceViewController"];
  [validationsCopy validateClass:@"SBTopAffordanceViewController" hasInstanceMethod:@"dotsView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBDeviceApplicationSceneHandle"];
  [validationsCopy validateClass:@"SBDeviceApplicationSceneHandle" isKindOfClass:@"SBApplicationSceneHandle"];
  [validationsCopy validateClass:@"SBApplicationSceneHandle" hasInstanceMethod:@"application" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBApplication"];
  [validationsCopy validateClass:@"SBApplication" hasInstanceMethod:@"displayName" withFullSignature:{"@", 0}];
}

- (SBMedusaDecoratedDeviceApplicationSceneViewControllerAccessibility)initWithDeviceApplicationSceneHandle:(id)handle layoutRole:(int64_t)role
{
  v6.receiver = self;
  v6.super_class = SBMedusaDecoratedDeviceApplicationSceneViewControllerAccessibility;
  v4 = [(SBMedusaDecoratedDeviceApplicationSceneViewControllerAccessibility *)&v6 initWithDeviceApplicationSceneHandle:handle layoutRole:role];
  [(SBMedusaDecoratedDeviceApplicationSceneViewControllerAccessibility *)v4 _accessibilityLoadAccessibilityInformation];
  return v4;
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SBMedusaDecoratedDeviceApplicationSceneViewControllerAccessibility;
  [(SBMedusaDecoratedDeviceApplicationSceneViewControllerAccessibility *)&v4 viewDidAppear:appear];
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