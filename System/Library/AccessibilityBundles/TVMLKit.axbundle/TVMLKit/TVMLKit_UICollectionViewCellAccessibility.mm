@interface TVMLKit_UICollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (_NSRange)accessibilityRowRange;
@end

@implementation TVMLKit_UICollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"TVCarouselView"];
  [v3 validateClass:@"TVCarouselView" hasInstanceVariable:@"_numberOfRealItemsForDataSource" withType:"Q"];
}

- (_NSRange)accessibilityRowRange
{
  if (accessibilityRowRange_onceToken != -1)
  {
    [TVMLKit_UICollectionViewCellAccessibility accessibilityRowRange];
  }

  v13.receiver = self;
  v13.super_class = TVMLKit_UICollectionViewCellAccessibility;
  v3 = [(TVMLKit_UICollectionViewCellAccessibility *)&v13 accessibilityRowRange];
  v5 = v4;
  objc_opt_class();
  v6 = [(TVMLKit_UICollectionViewCellAccessibility *)self _accessibilityAncestorIsKindOf:objc_opt_class()];
  v7 = __UIAccessibilityCastAsClass();

  v8 = [v7 _accessibilityAncestorIsKindOf:accessibilityRowRange_TVCarouselViewClass];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 safeUnsignedIntegerForKey:@"_numberOfRealItemsForDataSource"];
    if (v10)
    {
      v3 %= v10;
      v5 = v10;
    }
  }

  v11 = v3;
  v12 = v5;
  result.length = v12;
  result.location = v11;
  return result;
}

@end