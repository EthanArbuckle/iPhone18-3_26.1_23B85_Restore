@interface HUGridSectionHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (HUGridSectionHeaderViewAccessibility)initWithFrame:(CGRect)a3;
- (unint64_t)accessibilityTraits;
@end

@implementation HUGridSectionHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HUGridSectionHeaderView" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [v3 validateClass:@"HUGridSectionHeaderView" hasInstanceMethod:@"chevronView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HUGridSectionHeaderView" isKindOfClass:@"UICollectionViewListCell"];
}

- (unint64_t)accessibilityTraits
{
  v9.receiver = self;
  v9.super_class = HUGridSectionHeaderViewAccessibility;
  v3 = [(HUGridSectionHeaderViewAccessibility *)&v9 accessibilityTraits];
  v4 = [(HUGridSectionHeaderViewAccessibility *)self safeValueForKey:@"chevronView"];
  objc_opt_class();
  v5 = __UIAccessibilityCastAsClass();
  v6 = *MEMORY[0x29EDC7F80] | v3;
  LODWORD(v3) = [v5 isHidden];

  if (v3)
  {
    v7 = 0;
  }

  else
  {
    v7 = *MEMORY[0x29EDC7F70];
  }

  return v6 | v7;
}

- (HUGridSectionHeaderViewAccessibility)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = HUGridSectionHeaderViewAccessibility;
  v3 = [(HUGridSectionHeaderViewAccessibility *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(HUGridSectionHeaderViewAccessibility *)v3 _accessibilityLoadAccessibilityInformation];

  return v3;
}

@end