@interface AXIncomingCallGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXIncomingCallGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    v2 = [MEMORY[0x29EDBD6E8] sharedInstance];
    [v2 performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_282 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_291];

    _Failover = [objc_allocWithZone(AXIncomingCallGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __51__AXIncomingCallGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"IncomingCall AX Bundle"];
  [v2 setOverrideProcessName:@"IncomingCall"];

  return MEMORY[0x2A1C5E698]();
}

@end