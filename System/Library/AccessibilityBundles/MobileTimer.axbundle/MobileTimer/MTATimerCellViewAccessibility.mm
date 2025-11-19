@interface MTATimerCellViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilitySetup;
- (void)localSetup;
@end

@implementation MTATimerCellViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MTATimerCellView" hasInstanceMethod:@"localSetup" withFullSignature:{"v", 0}];
  [v3 validateClass:@"MTATimerCellView" hasInstanceMethod:@"controlButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MTATimerCellView" hasInstanceMethod:@"state" withFullSignature:{"Q", 0}];
}

- (void)_accessibilitySetup
{
  LOBYTE(location) = 0;
  objc_opt_class();
  v3 = [(MTATimerCellViewAccessibility *)self safeUIViewForKey:@"controlButton"];
  v4 = __UIAccessibilityCastAsClass();

  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __52__MTATimerCellViewAccessibility__accessibilitySetup__block_invoke;
  v5[3] = &unk_29F2DAAB0;
  objc_copyWeak(&v6, &location);
  [v4 setAccessibilityLabelBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

id __52__MTATimerCellViewAccessibility__accessibilitySetup__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained _accessibilityIsTimerRunning])
  {
    v2 = @"timer.pause";
  }

  else
  {
    v2 = @"timer.resume";
  }

  v3 = accessibilityLocalizedString(v2);

  return v3;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = MTATimerCellViewAccessibility;
  [(MTATimerCellViewAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(MTATimerCellViewAccessibility *)self _accessibilitySetup];
}

- (void)localSetup
{
  v3.receiver = self;
  v3.super_class = MTATimerCellViewAccessibility;
  [(MTATimerCellViewAccessibility *)&v3 localSetup];
  [(MTATimerCellViewAccessibility *)self _accessibilitySetup];
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = MTATimerCellViewAccessibility;
  v3 = [(MTATimerCellViewAccessibility *)&v7 accessibilityTraits];
  v4 = [(MTATimerCellViewAccessibility *)self _accessibilityIsTimerRunning];
  v5 = *MEMORY[0x29EDC7FF0];
  if (!v4)
  {
    v5 = 0;
  }

  return v5 | v3;
}

@end