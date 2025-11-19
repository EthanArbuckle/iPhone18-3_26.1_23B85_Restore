@interface AVTStickerPagingControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)loadView;
@end

@implementation AVTStickerPagingControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AVTStickerPagingController" hasInstanceMethod:@"loadView" withFullSignature:{"v", 0}];
  [v3 validateClass:@"AVTStickerPagingController" hasProperty:@"collectionView" withType:"@"];
  [v3 validateClass:@"AVTStickerPagingController" conformsToProtocol:@"AVTStickerSheetControllerDelegate"];
  [v3 validateProtocol:@"AVTStickerSheetControllerDelegate" hasMethod:@"stickerSheetController:didInteractWithStickerItem:atIndex:byPeeling:" isInstanceMethod:1 isRequired:1];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = AVTStickerPagingControllerAccessibility;
  [(AVTStickerPagingControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v3 = [(AVTStickerPagingControllerAccessibility *)self safeValueForKey:@"collectionView"];
  v4 = __UIAccessibilityCastAsClass();

  [v4 setAccessibilityContainerType:0];
  [v4 setAccessibilityShouldBypassCollectionViewAccessibility:1];
}

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = AVTStickerPagingControllerAccessibility;
  [(AVTStickerPagingControllerAccessibility *)&v3 loadView];
  [(AVTStickerPagingControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end