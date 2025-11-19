@interface CCUIFlashlightModuleViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation CCUIFlashlightModuleViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CCUIFlashlightModuleViewController" hasInstanceVariable:@"_sliderView" withType:"CCUIBaseSliderView"];
  [v3 validateClass:@"CCUIFlashlightModuleViewController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v8.receiver = self;
  v8.super_class = CCUIFlashlightModuleViewControllerAccessibility;
  [(CCUIFlashlightModuleViewControllerAccessibility *)&v8 _accessibilityLoadAccessibilityInformation];
  v3 = [(CCUIFlashlightModuleViewControllerAccessibility *)self safeUIViewForKey:@"_sliderView"];
  objc_initWeak(&location, v3);
  v4 = accessibilityLocalizedString(@"flashlight.slider.label");
  [v3 setAccessibilityLabel:v4];

  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __93__CCUIFlashlightModuleViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v5[3] = &unk_29F2BF010;
  objc_copyWeak(&v6, &location);
  [v3 _setAccessibilityValueBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

id __93__CCUIFlashlightModuleViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained safeUnsignedIntegerForKey:@"step"];

  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = [v4 safeUnsignedIntegerForKey:@"numberOfSteps"];

  if (v5 != 5)
  {
    _AXAssert();
  }

  if ((v3 - 1) > 3)
  {
    v6 = @"flashlight.level.very.bright";
  }

  else
  {
    v6 = off_29F2BF030[v3 - 1];
  }

  v7 = accessibilityLocalizedString(v6);

  return v7;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = CCUIFlashlightModuleViewControllerAccessibility;
  [(CCUIFlashlightModuleViewControllerAccessibility *)&v3 viewDidLoad];
  [(CCUIFlashlightModuleViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end