@interface PXAssetUIImageViewTileAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_updateImageView;
@end

@implementation PXAssetUIImageViewTileAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PXAssetUIImageViewTile" conformsToProtocol:@"PXAssetTile"];
  [v3 validateClass:@"PXImageUIView" hasInstanceMethod:@"_imageView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PXAssetUIImageViewTile" hasInstanceMethod:@"setImageRequester:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"PXAssetUIImageViewTile" hasInstanceMethod:@"_updateImageView" withFullSignature:{"v", 0}];
  [v3 validateClass:@"PXImageRequester" hasInstanceMethod:@"asset" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v8 = *MEMORY[0x29EDCA608];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_29C117000, log, OS_LOG_TYPE_DEBUG, "reloading asset: %@ %@", &v4, 0x16u);
  v3 = *MEMORY[0x29EDCA608];
}

- (void)_updateImageView
{
  v3.receiver = self;
  v3.super_class = PXAssetUIImageViewTileAccessibility;
  [(PXAssetUIImageViewTileAccessibility *)&v3 _updateImageView];
  [(PXAssetUIImageViewTileAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end