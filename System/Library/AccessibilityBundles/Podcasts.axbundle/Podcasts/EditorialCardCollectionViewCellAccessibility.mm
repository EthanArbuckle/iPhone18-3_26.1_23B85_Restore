@interface EditorialCardCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (unint64_t)accessibilityTraits;
@end

@implementation EditorialCardCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ShelfKitCollectionViews.EditorialCardCollectionViewCell" hasInstanceMethod:@"accessibilityCaptionLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ShelfKitCollectionViews.EditorialCardCollectionViewCell" hasInstanceMethod:@"accessibilityTitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ShelfKitCollectionViews.EditorialCardCollectionViewCell" hasInstanceMethod:@"accessibilitySubtitleLabel" withFullSignature:{"@", 0}];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = EditorialCardCollectionViewCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(EditorialCardCollectionViewCellAccessibility *)&v3 accessibilityTraits];
}

@end