@interface DetailCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation DetailCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AppInstallExtension.DetailCollectionViewCell" hasInstanceMethod:@"accessibilityTitleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AppInstallExtension.DetailCollectionViewCell" hasInstanceMethod:@"accessibilitySubtitleLabel" withFullSignature:{"@", 0}];
}

@end