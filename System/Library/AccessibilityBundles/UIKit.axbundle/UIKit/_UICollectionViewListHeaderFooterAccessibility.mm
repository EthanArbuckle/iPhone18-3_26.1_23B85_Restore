@interface _UICollectionViewListHeaderFooterAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation _UICollectionViewListHeaderFooterAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"_UICollectionViewListHeaderFooter" hasInstanceMethod:@"_contentViewConfiguration" withFullSignature:{"@", 0}];
  objc_storeStrong(v4, obj);
}

- (id)accessibilityLabel
{
  selfCopy = self;
  v8[1] = a2;
  v7.receiver = self;
  v7.super_class = _UICollectionViewListHeaderFooterAccessibility;
  v8[0] = [(_UICollectionViewListHeaderFooterAccessibility *)&v7 accessibilityLabel];
  if (![v8[0] length])
  {
    v6 = [(_UICollectionViewListHeaderFooterAccessibility *)selfCopy safeValueForKey:@"_contentViewConfiguration"];
    accessibilityLabel = [v6 accessibilityLabel];
    v3 = v8[0];
    v8[0] = accessibilityLabel;
    MEMORY[0x29EDC9740](v3);
    MEMORY[0x29EDC9740](v6);
  }

  v5 = MEMORY[0x29EDC9748](v8[0]);
  objc_storeStrong(v8, 0);

  return v5;
}

- (BOOL)isAccessibilityElement
{
  accessibilityLabel = [(_UICollectionViewListHeaderFooterAccessibility *)self accessibilityLabel];
  v4 = [accessibilityLabel length] != 0;
  MEMORY[0x29EDC9740](accessibilityLabel);
  return v4;
}

- (unint64_t)accessibilityTraits
{
  selfCopy = self;
  v7 = a2;
  v6.receiver = self;
  v6.super_class = _UICollectionViewListHeaderFooterAccessibility;
  accessibilityTraits = [(_UICollectionViewListHeaderFooterAccessibility *)&v6 accessibilityTraits];
  v4 = [(_UICollectionViewListHeaderFooterAccessibility *)selfCopy safeValueForKey:@"_contentViewConfiguration"];
  v5 = accessibilityTraits | [v4 accessibilityTraits];
  MEMORY[0x29EDC9740](v4);
  return v5;
}

@end