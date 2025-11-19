@interface PUITrackerOnboardingCellAccessibility
- (PUITrackerOnboardingCellAccessibility)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)accessibilityElements;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation PUITrackerOnboardingCellAccessibility

- (PUITrackerOnboardingCellAccessibility)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v6.receiver = self;
  v6.super_class = PUITrackerOnboardingCellAccessibility;
  v4 = [(PUITrackerOnboardingCellAccessibility *)&v6 initWithStyle:a3 reuseIdentifier:a4];
  [(PUITrackerOnboardingCellAccessibility *)v4 _accessibilityLoadAccessibilityInformation];

  return v4;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = PUITrackerOnboardingCellAccessibility;
  [(PUITrackerOnboardingCellAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(PUITrackerOnboardingCellAccessibility *)self safeUIViewForKey:@"contentView"];
  v4 = [v3 _accessibilityFindDescendant:&__block_literal_global];
}

uint64_t __83__PUITrackerOnboardingCellAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v2 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];
  }

  return 0;
}

- (id)accessibilityElements
{
  v2 = [(PUITrackerOnboardingCellAccessibility *)self safeUIViewForKey:@"contentView"];
  v3 = [v2 subviews];

  return v3;
}

@end