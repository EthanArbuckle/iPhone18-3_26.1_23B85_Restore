@interface AXInvertColors_AvatarUI
+ (void)installCategories:(id)categories;
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_AvatarUI

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AVTAttributeValueView" hasInstanceMethod:@"imageLayer" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVTAttributeValueView" hasInstanceMethod:@"transitionImageLayer" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVTAttributeValueView" hasInstanceMethod:@"cleanupAfterTransition" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"AVTAttributeValueView" hasInstanceMethod:@"updateSelectedState:animated:" withFullSignature:{"v", "B", "B", 0}];
  [validationsCopy validateClass:@"AVTStickerRecentsOverlayView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"AVTStickerRecentsOverlayView" hasInstanceMethod:@"imageView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVTStickerRecentsStickerCollectionViewCell" isKindOfClass:@"UIView"];
}

+ (void)installCategories:(id)categories
{
  categoriesCopy = categories;
  [categoriesCopy installSafeCategory:@"AVTUIAnimatingImageViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"AVTAttributeValueViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"AVTStickerRecentsOverlayViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"AVTStickerRecentsStickerCollectionViewCellInvertColorsAccessibility" canInteractWithTargetClass:1];

  LocalCenter = CFNotificationCenterGetLocalCenter();

  CFNotificationCenterPostNotification(LocalCenter, UIAccessibilityInvertColorsStatusDidChangeNotification, 0, 0, 1u);
}

@end