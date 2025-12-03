@interface AXAvatarKitGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXAvatarKitGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
    [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_282 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_291];

    _Failover = objc_alloc_init(AXAvatarKitGlue);

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __48__AXAvatarKitGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"AvatarKit AX"];
  [v2 setOverrideProcessName:@"AvatarKit"];

  return MEMORY[0x2A1C5E698]();
}

void __48__AXAvatarKitGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"AVTRecordViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AVTViewAccessibility" canInteractWithTargetClass:1];
}

@end