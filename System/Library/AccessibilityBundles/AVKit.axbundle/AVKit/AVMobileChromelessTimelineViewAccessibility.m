@interface AVMobileChromelessTimelineViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (AVMobileChromelessTimelineViewAccessibility)initWithFrame:(CGRect)a3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation AVMobileChromelessTimelineViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AVMobileChromelessTimelineView" isKindOfClass:@"UIView"];
  [v3 validateClass:@"AVMobileChromelessTimelineView" hasInstanceVariable:@"_leadingLabel" withType:"AVLabel"];
  [v3 validateClass:@"AVMobileChromelessTimelineView" hasInstanceVariable:@"_trailingLabel" withType:"AVLabel"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v10.receiver = self;
  v10.super_class = AVMobileChromelessTimelineViewAccessibility;
  [(AVMobileChromelessTimelineViewAccessibility *)&v10 _accessibilityLoadAccessibilityInformation];
  objc_initWeak(&location, self);
  v3 = [(AVMobileChromelessTimelineViewAccessibility *)self safeValueForKey:@"leadingLabel"];
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __89__AVMobileChromelessTimelineViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v7[3] = &unk_29F298F00;
  objc_copyWeak(&v8, &location);
  [v3 _setAccessibilityLabelBlock:v7];

  v4 = [(AVMobileChromelessTimelineViewAccessibility *)self safeValueForKey:@"trailingLabel"];
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __89__AVMobileChromelessTimelineViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
  v5[3] = &unk_29F298F00;
  objc_copyWeak(&v6, &location);
  [v4 _setAccessibilityLabelBlock:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

id __89__AVMobileChromelessTimelineViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_opt_class();
  v2 = [WeakRetained safeValueForKey:@"leadingLabel"];
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

id __89__AVMobileChromelessTimelineViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_opt_class();
  v2 = [WeakRetained safeValueForKey:@"trailingLabel"];
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

- (AVMobileChromelessTimelineViewAccessibility)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = AVMobileChromelessTimelineViewAccessibility;
  v3 = [(AVMobileChromelessTimelineViewAccessibility *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(AVMobileChromelessTimelineViewAccessibility *)v3 _accessibilityLoadAccessibilityInformation];

  return v3;
}

@end