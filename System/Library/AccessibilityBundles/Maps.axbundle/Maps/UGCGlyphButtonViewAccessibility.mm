@interface UGCGlyphButtonViewAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation UGCGlyphButtonViewAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = UGCGlyphButtonViewAccessibility;
  [(UGCGlyphButtonViewAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 3221225472;
  v3[2] = __77__UGCGlyphButtonViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v3[3] = &unk_29F2CC4E0;
  objc_copyWeak(&v4, &location);
  [(UGCGlyphButtonViewAccessibility *)self _setAccessibilityAdditionalTraitsBlock:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

uint64_t __77__UGCGlyphButtonViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = *MEMORY[0x29EDC7FA0];
  v3 = [WeakRetained safeBoolForKey:@"isSelected"];
  v4 = *MEMORY[0x29EDC7F70];
  if (v3)
  {
    v5 = *MEMORY[0x29EDC7F70] | *MEMORY[0x29EDC7FC0];
  }

  else
  {
    v5 = 0;
  }

  return v5 | v2;
}

@end