@interface AXInvertColors_AvatarUI
+ (void)installCategories:(id)a3;
+ (void)performValidations:(id)a3;
@end

@implementation AXInvertColors_AvatarUI

+ (void)performValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AVTAttributeValueView" hasInstanceMethod:@"imageLayer" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AVTAttributeValueView" hasInstanceMethod:@"transitionImageLayer" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AVTAttributeValueView" hasInstanceMethod:@"cleanupAfterTransition" withFullSignature:{"v", 0}];
  [v3 validateClass:@"AVTAttributeValueView" hasInstanceMethod:@"updateSelectedState:animated:" withFullSignature:{"v", "B", "B", 0}];
  [v3 validateClass:@"AVTStickerRecentsOverlayView" isKindOfClass:@"UIView"];
  [v3 validateClass:@"AVTStickerRecentsOverlayView" hasInstanceMethod:@"imageView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AVTStickerRecentsStickerCollectionViewCell" isKindOfClass:@"UIView"];
}

+ (void)installCategories:(id)a3
{
  v3 = a3;
  [v3 installSafeCategory:@"AVTUIAnimatingImageViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"AVTAttributeValueViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"AVTStickerRecentsOverlayViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"AVTStickerRecentsStickerCollectionViewCellInvertColorsAccessibility" canInteractWithTargetClass:1];

  LocalCenter = CFNotificationCenterGetLocalCenter();

  CFNotificationCenterPostNotification(LocalCenter, UIAccessibilityInvertColorsStatusDidChangeNotification, 0, 0, 1u);
}

@end