@interface ContentConfigurationCollectionViewListCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (unint64_t)accessibilityTraits;
@end

@implementation ContentConfigurationCollectionViewListCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HealthExperienceUI.ContentConfigurationCollectionViewListCell" isKindOfClass:@"UIView"];
  [v3 validateClass:@"_UICollectionViewListAccessoryCheckmark"];
}

- (unint64_t)accessibilityTraits
{
  v3 = *MEMORY[0x29EDC7F70];
  v4 = [(ContentConfigurationCollectionViewListCellAccessibility *)self safeValueForKey:@"userInteractionEnabled"];

  v5 = *MEMORY[0x29EDC7520];
  if (v4)
  {
    v5 = 0;
  }

  v6 = v5 | v3;
  v7 = [(ContentConfigurationCollectionViewListCellAccessibility *)self _accessibilityFindSubviewDescendant:&__block_literal_global_0];
  v8 = v7;
  if (v7 && ([v7 accessibilityElementsHidden] & 1) == 0)
  {
    v6 |= *MEMORY[0x29EDC7FC0];
  }

  return v6;
}

uint64_t __78__ContentConfigurationCollectionViewListCellAccessibility_accessibilityTraits__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29C2D8570](@"_UICollectionViewListAccessoryCheckmark");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end