@interface PrivacyCategoryViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation PrivacyCategoryViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AppInstallExtension.PrivacyCategoryView" hasInstanceMethod:@"accessibilityTitleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AppInstallExtension.PrivacyCategoryView" hasInstanceMethod:@"accessibilityDataTypesLabel" withFullSignature:{"@", 0}];
}

@end