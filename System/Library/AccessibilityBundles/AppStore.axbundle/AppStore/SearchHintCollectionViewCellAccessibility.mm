@interface SearchHintCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation SearchHintCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AppStore.SearchHintCollectionViewCell" hasInstanceMethod:@"accessibilityHintView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AppStoreKit.DynamicTypeLabel"];
}

- (id)accessibilityLabel
{
  v2 = [(SearchHintCollectionViewCellAccessibility *)self safeValueForKey:@"accessibilityHintView"];
  v3 = [v2 _accessibilityDescendantOfType:MEMORY[0x29C2C8BD0](@"AppStoreKit.DynamicTypeLabel")];
  v4 = [v3 accessibilityLabel];

  return v4;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = SearchHintCollectionViewCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(SearchHintCollectionViewCellAccessibility *)&v3 accessibilityTraits];
}

@end