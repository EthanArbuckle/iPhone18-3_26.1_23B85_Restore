@interface _UICollectionViewListHeaderFooterAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation _UICollectionViewListHeaderFooterAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"_UICollectionViewListHeaderFooter" hasInstanceMethod:@"_contentViewConfiguration" withFullSignature:{"@", 0}];
  objc_storeStrong(v4, obj);
}

- (id)accessibilityLabel
{
  v9 = self;
  v8[1] = a2;
  v7.receiver = self;
  v7.super_class = _UICollectionViewListHeaderFooterAccessibility;
  v8[0] = [(_UICollectionViewListHeaderFooterAccessibility *)&v7 accessibilityLabel];
  if (![v8[0] length])
  {
    v6 = [(_UICollectionViewListHeaderFooterAccessibility *)v9 safeValueForKey:@"_contentViewConfiguration"];
    v2 = [v6 accessibilityLabel];
    v3 = v8[0];
    v8[0] = v2;
    MEMORY[0x29EDC9740](v3);
    MEMORY[0x29EDC9740](v6);
  }

  v5 = MEMORY[0x29EDC9748](v8[0]);
  objc_storeStrong(v8, 0);

  return v5;
}

- (BOOL)isAccessibilityElement
{
  v3 = [(_UICollectionViewListHeaderFooterAccessibility *)self accessibilityLabel];
  v4 = [v3 length] != 0;
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (unint64_t)accessibilityTraits
{
  v8 = self;
  v7 = a2;
  v6.receiver = self;
  v6.super_class = _UICollectionViewListHeaderFooterAccessibility;
  v3 = [(_UICollectionViewListHeaderFooterAccessibility *)&v6 accessibilityTraits];
  v4 = [(_UICollectionViewListHeaderFooterAccessibility *)v8 safeValueForKey:@"_contentViewConfiguration"];
  v5 = v3 | [v4 accessibilityTraits];
  MEMORY[0x29EDC9740](v4);
  return v5;
}

@end