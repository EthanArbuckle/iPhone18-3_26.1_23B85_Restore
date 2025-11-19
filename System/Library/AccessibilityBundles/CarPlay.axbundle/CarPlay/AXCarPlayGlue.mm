@interface AXCarPlayGlue
+ (void)accessibilityInitializeBundle;
- (AXCarPlayGlue)init;
@end

@implementation AXCarPlayGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    v2 = [MEMORY[0x29EDBD6E8] sharedInstance];
    [v2 performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_282 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_291];

    _Failover = [objc_allocWithZone(AXCarPlayGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __46__AXCarPlayGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"CarPlay AX"];
  [v2 setOverrideProcessName:@"CarPlay"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __46__AXCarPlayGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"CARFolderViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CarZoomButtonViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CARApplicationAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CARIconScrollViewAccessibility" canInteractWithTargetClass:1];
}

- (AXCarPlayGlue)init
{
  v5.receiver = self;
  v5.super_class = AXCarPlayGlue;
  v2 = [(AXCarPlayGlue *)&v5 init];
  v3 = objc_opt_new();
  [(AXCarPlayGlue *)v2 setWatcher:v3];

  return v2;
}

@end