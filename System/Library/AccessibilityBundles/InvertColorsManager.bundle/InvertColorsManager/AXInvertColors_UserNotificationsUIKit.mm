@interface AXInvertColors_UserNotificationsUIKit
+ (void)installCategories:(id)categories;
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_UserNotificationsUIKit

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NCNotificationShortLookView" hasInstanceVariable:@"_platterView" withType:"PLPlatterView"];
  [validationsCopy validateClass:@"PLPlatterView" hasInstanceVariable:@"_materialRecipe" withType:"q"];
  [validationsCopy validateClass:@"NCNotificationContentView" hasInstanceMethod:@"_lazyThumbnailImageView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NCNotificationShortLookView" hasInstanceMethod:@"_configureNotificationContentViewIfNecessary" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"NCFullScreenPresentableViewController" isKindOfClass:@"UIViewController"];
}

+ (void)installCategories:(id)categories
{
  categoriesCopy = categories;
  [categoriesCopy installSafeCategory:@"NCNotificationContentViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"NCNotificationShortLookViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"NCFullScreenPresentableViewControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end