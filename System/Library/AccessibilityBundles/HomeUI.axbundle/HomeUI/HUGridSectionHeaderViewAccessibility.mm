@interface HUGridSectionHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (HUGridSectionHeaderViewAccessibility)initWithFrame:(CGRect)frame;
- (unint64_t)accessibilityTraits;
@end

@implementation HUGridSectionHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HUGridSectionHeaderView" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [validationsCopy validateClass:@"HUGridSectionHeaderView" hasInstanceMethod:@"chevronView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HUGridSectionHeaderView" isKindOfClass:@"UICollectionViewListCell"];
}

- (unint64_t)accessibilityTraits
{
  v9.receiver = self;
  v9.super_class = HUGridSectionHeaderViewAccessibility;
  accessibilityTraits = [(HUGridSectionHeaderViewAccessibility *)&v9 accessibilityTraits];
  v4 = [(HUGridSectionHeaderViewAccessibility *)self safeValueForKey:@"chevronView"];
  objc_opt_class();
  v5 = __UIAccessibilityCastAsClass();
  v6 = *MEMORY[0x29EDC7F80] | accessibilityTraits;
  LODWORD(accessibilityTraits) = [v5 isHidden];

  if (accessibilityTraits)
  {
    v7 = 0;
  }

  else
  {
    v7 = *MEMORY[0x29EDC7F70];
  }

  return v6 | v7;
}

- (HUGridSectionHeaderViewAccessibility)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = HUGridSectionHeaderViewAccessibility;
  v3 = [(HUGridSectionHeaderViewAccessibility *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(HUGridSectionHeaderViewAccessibility *)v3 _accessibilityLoadAccessibilityInformation];

  return v3;
}

@end