@interface EditorialSearchResultCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (unint64_t)accessibilityTraits;
@end

@implementation EditorialSearchResultCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"BridgeStoreExtension.EditorialSearchResultCollectionViewCell" hasInstanceMethod:@"accessibilityEditorialTypeLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"BridgeStoreExtension.EditorialSearchResultCollectionViewCell" hasInstanceMethod:@"accessibilityTitleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"BridgeStoreExtension.EditorialSearchResultCollectionViewCell" hasInstanceMethod:@"accessibilitySummaryLabel" withFullSignature:{"@", 0}];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = EditorialSearchResultCollectionViewCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(EditorialSearchResultCollectionViewCellAccessibility *)&v3 accessibilityTraits];
}

@end