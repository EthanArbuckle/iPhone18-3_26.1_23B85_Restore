@interface DetailCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation DetailCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AppInstallExtension.DetailCollectionViewCell" hasInstanceMethod:@"accessibilityTitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AppInstallExtension.DetailCollectionViewCell" hasInstanceMethod:@"accessibilitySubtitleLabel" withFullSignature:{"@", 0}];
}

@end