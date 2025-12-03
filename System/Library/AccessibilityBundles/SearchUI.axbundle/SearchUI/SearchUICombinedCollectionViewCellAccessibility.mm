@interface SearchUICombinedCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation SearchUICombinedCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SearchUICardSectionView"];
  [validationsCopy validateClass:@"SearchUICircleButtonItemView"];
}

- (id)accessibilityLabel
{
  v3 = [(SearchUICombinedCollectionViewCellAccessibility *)self safeValueForKey:@"rowModel"];

  if (v3)
  {
    accessibilityLabel = UIAXStringForAllChildren();
  }

  else
  {
    v6.receiver = self;
    v6.super_class = SearchUICombinedCollectionViewCellAccessibility;
    accessibilityLabel = [(SearchUICombinedCollectionViewCellAccessibility *)&v6 accessibilityLabel];
  }

  return accessibilityLabel;
}

- (unint64_t)accessibilityTraits
{
  v6.receiver = self;
  v6.super_class = SearchUICombinedCollectionViewCellAccessibility;
  accessibilityTraits = [(SearchUICombinedCollectionViewCellAccessibility *)&v6 accessibilityTraits];
  if ([(SearchUICombinedCollectionViewCellAccessibility *)self safeBoolForKey:@"isSelected"])
  {
    v4 = ~*MEMORY[0x29EDC7FC0];
  }

  else
  {
    v4 = -1;
  }

  return v4 & accessibilityTraits;
}

uint64_t __72__SearchUICombinedCollectionViewCellAccessibility_accessibilityElements__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Searchuicardse_0.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __89__SearchUICombinedCollectionViewCellAccessibility__accessibilitySupplementaryFooterViews__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Searchuicircle.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end