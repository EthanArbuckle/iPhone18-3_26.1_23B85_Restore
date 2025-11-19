@interface AXInvertColors_UserNotificationsUIKit
+ (void)installCategories:(id)a3;
+ (void)performValidations:(id)a3;
@end

@implementation AXInvertColors_UserNotificationsUIKit

+ (void)performValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"NCNotificationShortLookView" hasInstanceVariable:@"_platterView" withType:"PLPlatterView"];
  [v3 validateClass:@"PLPlatterView" hasInstanceVariable:@"_materialRecipe" withType:"q"];
  [v3 validateClass:@"NCNotificationContentView" hasInstanceMethod:@"_lazyThumbnailImageView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NCNotificationShortLookView" hasInstanceMethod:@"_configureNotificationContentViewIfNecessary" withFullSignature:{"v", 0}];
  [v3 validateClass:@"NCFullScreenPresentableViewController" isKindOfClass:@"UIViewController"];
}

+ (void)installCategories:(id)a3
{
  v3 = a3;
  [v3 installSafeCategory:@"NCNotificationContentViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"NCNotificationShortLookViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"NCFullScreenPresentableViewControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end