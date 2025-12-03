@interface TitledParagraphCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation TitledParagraphCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AppInstallExtension.TitledParagraphCollectionViewCell" hasInstanceMethod:@"accessibilitytPrimarySubtitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AppInstallExtension.TitledParagraphCollectionViewCell" hasInstanceMethod:@"accessibilitySecondarySubtitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AppInstallExtension.TitledParagraphCollectionViewCell" hasInstanceMethod:@"accessibilityExpandableTextView" withFullSignature:{"@", 0}];
}

@end