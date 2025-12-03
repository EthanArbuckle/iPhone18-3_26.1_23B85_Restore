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
  contentConfiguration = [v2 contentConfiguration];
  v4 = __UIAccessibilityCastAsClass();

  text = [v4 text];

  return text;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = NonSelectableCollectionViewListCellAccessibility;
  return *MEMORY[0x29EDC7FE8] | [(NonSelectableCollectionViewListCellAccessibility *)&v3 accessibilityTraits];
}

@end