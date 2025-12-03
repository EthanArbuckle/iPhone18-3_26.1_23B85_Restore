@interface AXJellyfishGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXJellyfishGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
    [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_282 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_291];

    _Failover = objc_alloc_init(AXJellyfishGlue);

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __48__AXJellyfishGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"Animoji AX"];
  [v2 setOverrideProcessName:@"Animoji"];

  return MEMORY[0x2A1C5E698]();
}

void __48__AXJellyfishGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"MessagesViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PuppetCollectionViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PuppetCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"RecordButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"LaunchViewControllerAccessibility" canInteractWithTargetClass:1];
}

@end