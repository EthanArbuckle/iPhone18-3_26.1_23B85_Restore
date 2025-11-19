@interface VideoViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)accessibilityUpdatePlayerControllerControls;
@end

@implementation VideoViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"BridgeStoreExtension.ProductLockupCollectionViewCell"];
  [v3 validateClass:@"BridgeStoreExtension.VideoView" hasInstanceMethod:@"accessibilityUpdatePlayerControllerControls" withFullSignature:{"v", 0}];
}

- (void)accessibilityUpdatePlayerControllerControls
{
  v7.receiver = self;
  v7.super_class = VideoViewAccessibility;
  [(VideoViewAccessibility *)&v7 accessibilityUpdatePlayerControllerControls];
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __69__VideoViewAccessibility_accessibilityUpdatePlayerControllerControls__block_invoke;
  v5[3] = &unk_29F2A95A0;
  v6 = @"BridgeStoreExtension.ProductLockupCollectionViewCell";
  v3 = [(VideoViewAccessibility *)self _accessibilityFindAncestor:v5 startWithSelf:1];
  v4 = v3;
  if (v3)
  {
    [v3 resetProductLockupCellAccessibilityElements];
  }
}

uint64_t __69__VideoViewAccessibility_accessibilityUpdatePlayerControllerControls__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  MEMORY[0x29C2CD990](v2);
  LOBYTE(v2) = objc_opt_isKindOfClass();

  return v2 & 1;
}

@end