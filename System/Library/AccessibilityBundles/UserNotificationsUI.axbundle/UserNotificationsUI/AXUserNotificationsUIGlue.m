@interface AXUserNotificationsUIGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXUserNotificationsUIGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[AXUserNotificationsUIGlue accessibilityInitializeBundle];
  }
}

void __58__AXUserNotificationsUIGlue_accessibilityInitializeBundle__block_invoke()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_286 withPreValidationHandler:&__block_literal_global_288 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_294];
}

uint64_t __58__AXUserNotificationsUIGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setOverrideProcessName:@"UserNotificationsUI"];
  [v2 setDebugBuild:0];
  [v2 setValidationTargetName:@"UserNotificationsUI"];

  return MEMORY[0x2A1C5E698]();
}

void __58__AXUserNotificationsUIGlue_accessibilityInitializeBundle__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"_UNBlockTouchesViewAcessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CALayerAccessibility__UserNotificationsUI__QuartzCore" canInteractWithTargetClass:1];
}

@end