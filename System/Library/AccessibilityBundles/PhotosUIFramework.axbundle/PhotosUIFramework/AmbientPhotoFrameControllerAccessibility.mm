@interface AmbientPhotoFrameControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)accessibilityPresentExtendedMetadataOverlay;
@end

@implementation AmbientPhotoFrameControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PhotosUIPrivate.AmbientPhotoFrameController" hasInstanceMethod:@"accessibilityPresentExtendedMetadataOverlay" withFullSignature:{"v", 0}];
  [v3 validateClass:@"PhotosUIPrivate.AmbientPhotoFrameController" hasInstanceMethod:@"openVisibleAssetInPhotosApp" withFullSignature:{"v", 0}];
  [v3 validateClass:@"PhotosUIPrivate.AmbientPhotoFrameController" hasSwiftField:@"extendedMetadataOverlayView" withSwiftType:"Optional<AmbientPhotoFrameExtendedMetadataOverlayView>"];
  [v3 validateClass:@"PhotosUIPrivate.AmbientPhotoFrameExtendedMetadataOverlayView" hasSwiftField:@"openPhotosLabel" withSwiftType:"Optional<UILabel>"];
}

- (void)accessibilityPresentExtendedMetadataOverlay
{
  v3 = [(AmbientPhotoFrameControllerAccessibility *)self safeSwiftValueForKey:@"extendedMetadataOverlayView"];
  v4 = [v3 safeSwiftValueForKey:@"openPhotosLabel"];
  [v4 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __87__AmbientPhotoFrameControllerAccessibility_accessibilityPresentExtendedMetadataOverlay__block_invoke;
  v5[3] = &unk_29F2E84B8;
  v5[4] = self;
  [v4 setAccessibilityActivateBlock:v5];
}

uint64_t __87__AmbientPhotoFrameControllerAccessibility_accessibilityPresentExtendedMetadataOverlay__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  AXPerformSafeBlock();
  return 1;
}

@end