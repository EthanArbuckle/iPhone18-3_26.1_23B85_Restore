@interface TitledParagraphCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation TitledParagraphCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AppInstallExtension.TitledParagraphCollectionViewCell" hasInstanceMethod:@"accessibilitytPrimarySubtitleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AppInstallExtension.TitledParagraphCollectionViewCell" hasInstanceMethod:@"accessibilitySecondarySubtitleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AppInstallExtension.TitledParagraphCollectionViewCell" hasInstanceMethod:@"accessibilityExpandableTextView" withFullSignature:{"@", 0}];
}

@end