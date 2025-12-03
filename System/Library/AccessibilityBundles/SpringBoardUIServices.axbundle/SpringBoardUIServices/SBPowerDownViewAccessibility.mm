@interface SBPowerDownViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (SBPowerDownViewAccessibility)initWithFrame:(CGRect)frame;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation SBPowerDownViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBUIPowerDownView" hasInstanceVariable:@"_actionSlider" withType:"_UIActionSlider"];
  [validationsCopy validateClass:@"SBUIPowerDownView" hasInstanceVariable:@"_cancelButton" withType:"UIButton"];
  [validationsCopy validateClass:@"SBUIPowerDownView" hasInstanceVariable:@"_findMyButton" withType:"UIButton"];
}

- (SBPowerDownViewAccessibility)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = SBPowerDownViewAccessibility;
  v3 = [(SBPowerDownViewAccessibility *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(SBPowerDownViewAccessibility *)v3 _accessibilityLoadAccessibilityInformation];

  return v3;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v14.receiver = self;
  v14.super_class = SBPowerDownViewAccessibility;
  [(SBPowerDownViewAccessibility *)&v14 _accessibilityLoadAccessibilityInformation];
  v3 = [(SBPowerDownViewAccessibility *)self safeValueForKey:@"_actionSlider"];
  [v3 setAccessibilityIdentifier:@"actionSlider"];
  v4 = accessibilitySBLocalizedString(@"powerdown.lock");
  [v3 setAccessibilityLabel:v4];

  v5 = [(SBPowerDownViewAccessibility *)self safeValueForKey:@"_cancelButton"];
  [v5 setAccessibilityIdentifier:@"cancelButton"];
  objc_initWeak(&location, v5);
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 3221225472;
  v11[2] = __74__SBPowerDownViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v11[3] = &unk_29F302150;
  objc_copyWeak(&v12, &location);
  [v5 _setAccessibilityPathBlock:v11];
  LOBYTE(from) = 0;
  objc_opt_class();
  v6 = [(SBPowerDownViewAccessibility *)self safeUIViewForKey:@"_findMyButton"];
  v7 = __UIAccessibilityCastAsClass();

  objc_initWeak(&from, v7);
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __74__SBPowerDownViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
  v8[3] = &unk_29F302178;
  objc_copyWeak(&v9, &from);
  [v7 _setAccessibilityLabelBlock:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&from);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

id __74__SBPowerDownViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _accessibilityCirclePathBasedOnBoundsWidth];

  return v2;
}

id __74__SBPowerDownViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained attributedTitleForState:0];
  v3 = [v2 string];

  return v3;
}

@end