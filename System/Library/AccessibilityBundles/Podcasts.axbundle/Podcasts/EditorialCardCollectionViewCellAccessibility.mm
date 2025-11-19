@interface EditorialCardCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (unint64_t)accessibilityTraits;
@end

@implementation EditorialCardCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ShelfKitCollectionViews.EditorialCardCollectionViewCell" hasInstanceMethod:@"accessibilityCaptionLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ShelfKitCollectionViews.EditorialCardCollectionViewCell" hasInstanceMethod:@"accessibilityTitleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ShelfKitCollectionViews.EditorialCardCollectionViewCell" hasInstanceMethod:@"accessibilitySubtitleLabel" withFullSignature:{"@", 0}];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = EditorialCardCollectionViewCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(EditorialCardCollectionViewCellAccessibility *)&v3 accessibilityTraits];
}

@end