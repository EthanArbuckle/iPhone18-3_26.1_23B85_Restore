@interface AXTipsNotificationExtensionGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXTipsNotificationExtensionGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
    [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_285 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_294];

    _Failover = [objc_allocWithZone(AXTipsNotificationExtensionGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __64__AXTipsNotificationExtensionGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"TipsNotificationExtension AX Bundle"];
  [v2 setOverrideProcessName:@"TipsNotificationExtension"];

  return MEMORY[0x2A1C5E698]();
}

void __64__AXTipsNotificationExtensionGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"TPSSingleTipViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TipsWidgetExtensionUIViewAccessibility" canInteractWithTargetClass:1];
}

@end