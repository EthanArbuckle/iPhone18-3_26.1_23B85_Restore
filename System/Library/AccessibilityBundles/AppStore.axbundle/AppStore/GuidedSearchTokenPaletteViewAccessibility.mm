@interface GuidedSearchTokenPaletteViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityElements;
@end

@implementation GuidedSearchTokenPaletteViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AppStore.GuidedSearchTokenPaletteView" hasSwiftField:@"tokens" withSwiftType:"Array<Token>"];
  [validationsCopy validateClass:@"AppStore.GuidedSearchTokenPaletteView" hasSwiftField:@"collectionView" withSwiftType:"Optional<UICollectionView>"];
}

- (id)accessibilityElements
{
  array = [MEMORY[0x29EDB8DE8] array];
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

      [array axSafelyAddObject:v10];
    }
  }

  return array;
}

@end