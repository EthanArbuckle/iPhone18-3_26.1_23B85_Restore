@interface NonSelectableCollectionViewListCellAccessibility
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation NonSelectableCollectionViewListCellAccessibility

- (id)accessibilityLabel
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  objc_opt_class();
  v3 = [v2 contentConfiguration];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 text];

  return v5;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = NonSelectableCollectionViewListCellAccessibility;
  return *MEMORY[0x29EDC7FE8] | [(NonSelectableCollectionViewListCellAccessibility *)&v3 accessibilityTraits];
}

@end