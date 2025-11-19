@interface AXAVFoundationGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXAVFoundationGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    v2 = [MEMORY[0x29EDBD6E8] sharedInstance];
    [v2 performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_282 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_291];

    _Failover = [objc_allocWithZone(AXAVFoundationGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __51__AXAVFoundationGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"AVFoundation AX"];
  [v2 setOverrideProcessName:@"AVFoundation"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __51__AXAVFoundationGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  v2 = [MEMORY[0x29EDB9F48] mainBundle];
  v3 = [v2 bundleIdentifier];
  v4 = [v3 hasPrefix:*MEMORY[0x29EDBD678]];

  if ((v4 & 1) == 0)
  {
    [v5 installSafeCategory:@"AVPlayerAccessibility" canInteractWithTargetClass:1];
  }
}

@end