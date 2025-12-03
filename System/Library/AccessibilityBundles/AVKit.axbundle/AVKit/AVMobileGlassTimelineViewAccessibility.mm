@interface AVMobileGlassTimelineViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation AVMobileGlassTimelineViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AVMobileGlassTimelineView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"AVMobileGlassTimelineView" hasInstanceVariable:@"_leadingLabel" withType:"AVLabel"];
  [validationsCopy validateClass:@"AVMobileGlassTimelineView" hasInstanceVariable:@"_trailingLabel" withType:"AVLabel"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v10.receiver = self;
  v10.super_class = AVMobileGlassTimelineViewAccessibility;
  [(AVMobileGlassTimelineViewAccessibility *)&v10 _accessibilityLoadAccessibilityInformation];
  objc_initWeak(&location, self);
  v3 = [(AVMobileGlassTimelineViewAccessibility *)self safeValueForKey:@"_leadingLabel"];
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __84__AVMobileGlassTimelineViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v7[3] = &unk_29F298F00;
  objc_copyWeak(&v8, &location);
  [v3 _setAccessibilityLabelBlock:v7];

  v4 = [(AVMobileGlassTimelineViewAccessibility *)self safeValueForKey:@"_trailingLabel"];
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __84__AVMobileGlassTimelineViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
  v5[3] = &unk_29F298F00;
  objc_copyWeak(&v6, &location);
  [v4 _setAccessibilityLabelBlock:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

id __84__AVMobileGlassTimelineViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_opt_class();
  v2 = [WeakRetained safeValueForKey:@"_leadingLabel"];
  v3 = __UIAccessibilityCastAsClass();

  if (v3)
  {
    v4 = MEMORY[0x29EDBA0F8];
    v5 = accessibilityLocalizedString(@"media.time.elapsed");
    v6 = [v3 text];
    v7 = [v4 localizedStringWithFormat:v5, v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id __84__AVMobileGlassTimelineViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_opt_class();
  v2 = [WeakRetained safeValueForKey:@"_trailingLabel"];
  v3 = __UIAccessibilityCastAsClass();

  if (v3)
  {
    v4 = MEMORY[0x29EDBA0F8];
    v5 = accessibilityLocalizedString(@"media.time.remaining");
    v6 = [v3 text];
    v7 = [v4 localizedStringWithFormat:v5, v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = AVMobileGlassTimelineViewAccessibility;
  [(AVMobileGlassTimelineViewAccessibility *)&v3 layoutSubviews];
  [(AVMobileGlassTimelineViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end