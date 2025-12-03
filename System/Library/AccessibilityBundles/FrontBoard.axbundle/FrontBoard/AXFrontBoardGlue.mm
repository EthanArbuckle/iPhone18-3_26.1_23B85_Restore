@interface AXFrontBoardGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXFrontBoardGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
    [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_282 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_288];

    _Failover = [objc_allocWithZone(AXFrontBoardGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __49__AXFrontBoardGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"FrontBoard AX"];
  [v2 setOverrideProcessName:@"FrontBoard AX"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __49__AXFrontBoardGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  [a2 installSafeCategory:@"FBApplicationProcessAccessibility" canInteractWithTargetClass:1];
  v2 = [MEMORY[0x29EDBA068] defaultCenter];
  [v2 postNotificationName:*MEMORY[0x29EDBD6F0] object:0];
}

@end