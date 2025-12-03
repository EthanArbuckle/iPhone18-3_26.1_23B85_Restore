@interface PrivacyCategoryViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation PrivacyCategoryViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AppInstallExtension.PrivacyCategoryView" hasInstanceMethod:@"accessibilityTitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AppInstallExtension.PrivacyCategoryView" hasInstanceMethod:@"accessibilityDataTypesLabel" withFullSignature:{"@", 0}];
}

@end