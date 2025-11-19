@interface GuidedSearchTokenPaletteViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityElements;
@end

@implementation GuidedSearchTokenPaletteViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ProductPageExtension.GuidedSearchTokenPaletteView" hasSwiftField:@"tokens" withSwiftType:"Array<Token>"];
  [v3 validateClass:@"ProductPageExtension.GuidedSearchTokenPaletteView" hasSwiftField:@"collectionView" withSwiftType:"Optional<UICollectionView>"];
}

- (id)accessibilityElements
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  v4 = [(GuidedSearchTokenPaletteViewAccessibility *)self safeSwiftArrayForKey:@"tokens"];
  v5 = [v4 count];
  objc_opt_class();
  v6 = [(GuidedSearchTokenPaletteViewAccessibility *)self safeSwiftValueForKey:@"collectionView"];
  v7 = __UIAccessibilityCastAsClass();

  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v9 = [MEMORY[0x29EDB9FE0] indexPathForRow:i inSection:0];
      v10 = [v7 cellForItemAtIndexPath:v9];

      [v3 axSafelyAddObject:v10];
    }
  }

  return v3;
}

@end