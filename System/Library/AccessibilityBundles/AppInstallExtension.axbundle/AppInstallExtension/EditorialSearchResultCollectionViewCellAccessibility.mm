@interface EditorialSearchResultCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (unint64_t)accessibilityTraits;
@end

@implementation EditorialSearchResultCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AppInstallExtension.EditorialSearchResultCollectionViewCell" hasInstanceMethod:@"accessibilityEditorialTypeLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AppInstallExtension.EditorialSearchResultCollectionViewCell" hasInstanceMethod:@"accessibilityTitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AppInstallExtension.EditorialSearchResultCollectionViewCell" hasInstanceMethod:@"accessibilitySummaryLabel" withFullSignature:{"@", 0}];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = EditorialSearchResultCollectionViewCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(EditorialSearchResultCollectionViewCellAccessibility *)&v3 accessibilityTraits];
}

@end