@interface AXTipsWidgetExtensionGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXTipsWidgetExtensionGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    v2 = [MEMORY[0x29EDBD6E8] sharedInstance];
    [v2 performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_285 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_294];

    _Failover = [objc_allocWithZone(AXTipsWidgetExtensionGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __58__AXTipsWidgetExtensionGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"TipsWidgetExtension AX Bundle"];
  [v2 setOverrideProcessName:@"TipsWidgetExtension"];

  return MEMORY[0x2A1C5E698]();
}

void __58__AXTipsWidgetExtensionGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"TPSWidgetTipViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TipsWidgetExtensionUIViewAccessibility" canInteractWithTargetClass:1];
}

@end