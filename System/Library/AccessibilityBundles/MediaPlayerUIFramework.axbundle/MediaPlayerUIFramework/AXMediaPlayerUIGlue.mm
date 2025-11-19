@interface AXMediaPlayerUIGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXMediaPlayerUIGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[AXMediaPlayerUIGlue accessibilityInitializeBundle];
  }
}

void __52__AXMediaPlayerUIGlue_accessibilityInitializeBundle__block_invoke()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_283 withPreValidationHandler:&__block_literal_global_285 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_294];
}

uint64_t __52__AXMediaPlayerUIGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"MediaUI Player AX Bundle"];
  [v2 setOverrideProcessName:@"MediaPlayerUI"];

  return MEMORY[0x2A1C5E698]();
}

void __52__AXMediaPlayerUIGlue_accessibilityInitializeBundle__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"MPUMarqueeViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MPURatingControlAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MPUEmphasizedTextAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MPUNowPlayingIndicatorViewAccessibility" canInteractWithTargetClass:1];
}

@end