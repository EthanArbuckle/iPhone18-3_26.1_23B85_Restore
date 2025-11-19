@interface AXStickerKitGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXStickerKitGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    v2 = [MEMORY[0x29EDBD6E8] sharedInstance];
    [v2 performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_295 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_304];

    _Failover = [objc_allocWithZone(AXStickerKitGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __49__AXStickerKitGlue_accessibilityInitializeBundle__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"STKImageGlyph" hasInstanceMethod:@"searchText" withFullSignature:{"@", 0}];
  [v2 validateClass:@"STKImageGlyph" hasInstanceMethod:@"toString" withFullSignature:{"@", 0}];
  [v2 validateClass:@"STKStickerRemoteSearchViewController"];

  return 1;
}

uint64_t __49__AXStickerKitGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"StickerKit AX"];
  [v2 setOverrideProcessName:@"StickerKit"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __49__AXStickerKitGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"EmojiAndStickerCollectionInputViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"EmojiCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"StickerCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"STKStickerViewAccessibility" canInteractWithTargetClass:1];
}

@end