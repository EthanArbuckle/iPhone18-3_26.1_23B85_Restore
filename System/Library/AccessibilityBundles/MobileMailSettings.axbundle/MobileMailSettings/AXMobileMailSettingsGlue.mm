@interface AXMobileMailSettingsGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXMobileMailSettingsGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
    [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_303 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_312];

    _Failover = [objc_allocWithZone(AXMobileMailSettingsGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __57__AXMobileMailSettingsGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"MobileMail Settings AX Bundle"];
  [v2 setOverrideProcessName:@"MobileMail Settings"];

  return MEMORY[0x2A1C5E698]();
}

void __57__AXMobileMailSettingsGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"MFSignatureTextViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"WebAccessibilityObjectWrapperAccessibility__MobileMail__WebCore" canInteractWithTargetClass:1];
}

@end