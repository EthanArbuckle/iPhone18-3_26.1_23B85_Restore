@interface SearchHintCollectionViewCellAccessibility
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation SearchHintCollectionViewCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(SearchHintCollectionViewCellAccessibility *)self safeValueForKey:@"accessibilityHintView"];
  v3 = [v2 _accessibilityDescendantOfType:MEMORY[0x29C2C9570](@"AppStoreKit.DynamicTypeLabel")];
  accessibilityLabel = [v3 accessibilityLabel];

  return accessibilityLabel;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = SearchHintCollectionViewCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(SearchHintCollectionViewCellAccessibility *)&v3 accessibilityTraits];
}

@end