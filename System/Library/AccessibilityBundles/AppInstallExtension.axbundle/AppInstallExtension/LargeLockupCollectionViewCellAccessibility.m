@interface LargeLockupCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation LargeLockupCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AppInstallExtension.LargeLockupCollectionViewCell" hasInstanceMethod:@"accessibilityTitleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AppInstallExtension.LargeLockupCollectionViewCell" hasInstanceMethod:@"accessibilitySubtitleLabel" withFullSignature:{"@", 0}];
}

@end