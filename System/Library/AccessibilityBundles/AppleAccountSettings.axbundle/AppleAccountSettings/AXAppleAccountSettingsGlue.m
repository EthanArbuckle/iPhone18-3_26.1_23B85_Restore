@interface AXAppleAccountSettingsGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXAppleAccountSettingsGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[AXAppleAccountSettingsGlue accessibilityInitializeBundle];
  }
}

void __59__AXAppleAccountSettingsGlue_accessibilityInitializeBundle__block_invoke()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_293 withPreValidationHandler:&__block_literal_global_295 postValidationHandler:&__block_literal_global_301 safeCategoryInstallationHandler:&__block_literal_global_304];
}

uint64_t __59__AXAppleAccountSettingsGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"AppleAccount settings"];
  [v2 setOverrideProcessName:@"AppleAccount settings"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __59__AXAppleAccountSettingsGlue_accessibilityInitializeBundle__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"AAUserNotificationAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AAUIAppleAccountHeaderViewAccessibility" canInteractWithTargetClass:1];
}

@end