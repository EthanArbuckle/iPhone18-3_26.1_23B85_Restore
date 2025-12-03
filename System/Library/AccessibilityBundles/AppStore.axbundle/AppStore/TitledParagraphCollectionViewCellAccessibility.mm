@interface TitledParagraphCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation TitledParagraphCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AppStore.TitledParagraphCollectionViewCell" hasInstanceMethod:@"accessibilitytPrimarySubtitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AppStore.TitledParagraphCollectionViewCell" hasInstanceMethod:@"accessibilitySecondarySubtitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AppStore.TitledParagraphCollectionViewCell" hasInstanceMethod:@"accessibilityExpandableTextView" withFullSignature:{"@", 0}];
}

@end