@interface AXNotificationCenterGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXNotificationCenterGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[AXNotificationCenterGlue accessibilityInitializeBundle];
  }
}

void __57__AXNotificationCenterGlue_accessibilityInitializeBundle__block_invoke()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_283 withPreValidationHandler:&__block_literal_global_288 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_294];
}

uint64_t __57__AXNotificationCenterGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"AX NotificationCenter"];
  [v2 setOverrideProcessName:@"AX NotificationCenter"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

@end