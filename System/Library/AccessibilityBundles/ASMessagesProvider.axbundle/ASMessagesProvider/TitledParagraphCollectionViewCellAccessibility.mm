@interface TitledParagraphCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation TitledParagraphCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ASMessagesProvider.TitledParagraphCollectionViewCell" hasInstanceMethod:@"accessibilitytPrimarySubtitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ASMessagesProvider.TitledParagraphCollectionViewCell" hasInstanceMethod:@"accessibilitySecondarySubtitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ASMessagesProvider.TitledParagraphCollectionViewCell" hasInstanceMethod:@"accessibilityExpandableTextView" withFullSignature:{"@", 0}];
}

@end