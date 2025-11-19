@interface AXSoftwareUpdateSettingsUIGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXSoftwareUpdateSettingsUIGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[AXSoftwareUpdateSettingsUIGlue accessibilityInitializeBundle];
  }
}

void __63__AXSoftwareUpdateSettingsUIGlue_accessibilityInitializeBundle__block_invoke()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_291 withPreValidationHandler:&__block_literal_global_293 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_299];
}

uint64_t __63__AXSoftwareUpdateSettingsUIGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"Software update Settings UI"];
  [v2 setOverrideProcessName:@"Software update Settings UI"];

  return MEMORY[0x2A1C5E698]();
}

@end