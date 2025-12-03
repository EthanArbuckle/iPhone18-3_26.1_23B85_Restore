@interface AXTwitterGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXTwitterGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
    [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_282 postValidationHandler:&__block_literal_global_291];

    _Failover = [objc_allocWithZone(AXTwitterGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __46__AXTwitterGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  [a2 setOverrideProcessName:@"Twitter"];
  v2 = AXPerformValidationChecks();
  if (v2)
  {
    NSLog(&cfstr_ValidatingSymb.isa);
  }

  return v2;
}

void __46__AXTwitterGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    NSLog(&cfstr_ErrorsValidati.isa, a3);
  }

  else
  {
    NSLog(&cfstr_ValidatedAxtwi.isa);
  }
}

@end