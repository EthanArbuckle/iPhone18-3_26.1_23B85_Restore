@interface PUPhotosGridViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation PUPhotosGridViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PUPhotosGridViewController" hasInstanceMethod:@"_configureAddPlaceholderCell: animated:" withFullSignature:{"v", "@", "B", 0}];
  [validationsCopy validateClass:@"PUPhotosGridViewController" hasInstanceMethod:@"updateNavigationBarAnimated:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"PUPhotosGridViewController" hasInstanceMethod:@"setEditing: animated:" withFullSignature:{"v", "B", "B", 0}];
}

@end