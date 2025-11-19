@interface AXMusicUsageGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXMusicUsageGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[AXMusicUsageGlue accessibilityInitializeBundle];
  }
}

void __49__AXMusicUsageGlue_accessibilityInitializeBundle__block_invoke()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_283 withPreValidationHandler:&__block_literal_global_285 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_294];
}

uint64_t __49__AXMusicUsageGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"MusicUsage Usage UI Settings AX Bundle"];
  [v2 setOverrideProcessName:@"MusicUsage Usage UI Settings"];

  return MEMORY[0x2A1C5E698]();
}

void __49__AXMusicUsageGlue_accessibilityInitializeBundle__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"MusicUsageDetailHeaderViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MusicUsageTableViewCellAccessibility" canInteractWithTargetClass:1];
}

@end