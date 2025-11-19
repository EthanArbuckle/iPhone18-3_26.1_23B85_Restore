@interface MonogramPosterViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation MonogramPosterViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MonogramPosterExtension.MonogramPosterViewController" hasSwiftField:@"simulationView" withSwiftType:"Optional<MonogramSimulationView>"];
  [v3 validateClass:@"MonogramPosterExtension.MonogramPosterViewController" hasSwiftField:@"monogramString" withSwiftType:"String"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v10.receiver = self;
  v10.super_class = MonogramPosterViewControllerAccessibility;
  [(MonogramPosterViewControllerAccessibility *)&v10 _accessibilityLoadAccessibilityInformation];
  LOBYTE(location) = 0;
  objc_opt_class();
  v3 = [(MonogramPosterViewControllerAccessibility *)self safeSwiftValueForKey:@"simulationView"];
  v4 = __UIAccessibilityCastAsClass();

  if (v4)
  {
    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x29EDCA5F8];
    v7[1] = 3221225472;
    v7[2] = __87__MonogramPosterViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
    v7[3] = &unk_29F2DBED0;
    objc_copyWeak(&v8, &location);
    [v4 setIsAccessibilityElementBlock:v7];
    v5[0] = MEMORY[0x29EDCA5F8];
    v5[1] = 3221225472;
    v5[2] = __87__MonogramPosterViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
    v5[3] = &unk_29F2DBEF8;
    objc_copyWeak(&v6, &location);
    [v4 setAccessibilityLabelBlock:v5];
    objc_destroyWeak(&v6);
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

BOOL __87__MonogramPosterViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeSwiftStringForKey:@"monogramString"];
  v3 = [v2 length] != 0;

  return v3;
}

id __87__MonogramPosterViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeSwiftStringForKey:@"monogramString"];

  return v2;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = MonogramPosterViewControllerAccessibility;
  [(MonogramPosterViewControllerAccessibility *)&v3 viewDidLoad];
  [(MonogramPosterViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end