@interface PUPhotosGridViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation PUPhotosGridViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PUPhotosGridViewController" hasInstanceMethod:@"_configureAddPlaceholderCell: animated:" withFullSignature:{"v", "@", "B", 0}];
  [v3 validateClass:@"PUPhotosGridViewController" hasInstanceMethod:@"updateNavigationBarAnimated:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"PUPhotosGridViewController" hasInstanceMethod:@"setEditing: animated:" withFullSignature:{"v", "B", "B", 0}];
}

@end