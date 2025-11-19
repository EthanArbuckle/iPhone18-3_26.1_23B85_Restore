@interface AXSharingUIGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXSharingUIGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    v2 = [MEMORY[0x29EDBD6E8] sharedInstance];
    [v2 performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_299 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_305];

    v3 = [objc_allocWithZone(AXSharingUIGlue) init];
    v4 = _Failover;
    _Failover = v3;

    v5 = [MEMORY[0x29EDBD690] sharedInstance];
    [v5 addHandler:&__block_literal_global_337 forFramework:@"PlatterKit"];
  }
}

uint64_t __48__AXSharingUIGlue_accessibilityInitializeBundle__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"SFPersonCollectionViewCell" hasInstanceMethod:@"person" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SFAirDropNode" hasInstanceMethod:@"realName" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SFPersonCollectionViewCell" hasInstanceVariable:@"_nameLabel" withType:"UILabel"];

  return 1;
}

uint64_t __48__AXSharingUIGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"SharingUI Framework"];
  [v2 setOverrideProcessName:@"SharingUI Framework"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __48__AXSharingUIGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"SFCircleProgressViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SFAirDropIconViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SFAirDropActiveIconViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SFPersonCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SFAirDropActivityViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SFShareAudioViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SFAirDropMagicHeadViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SFMagicHeadWheelViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SFMagicHeadPlaceholderViewAccessibility" canInteractWithTargetClass:1];
}

void __48__AXSharingUIGlue_accessibilityInitializeBundle__block_invoke_4()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_339 withPreValidationHandler:&__block_literal_global_341 postValidationHandler:0];
}

uint64_t __48__AXSharingUIGlue_accessibilityInitializeBundle__block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"SharingUI/PlatterKit Framework"];
  [v2 setOverrideProcessName:@"SharingUI/PlatterKit Framework"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

@end