@interface AXFaceTimeGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXFaceTimeGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[AXFaceTimeGlue accessibilityInitializeBundle];
  }
}

void __47__AXFaceTimeGlue_accessibilityInitializeBundle__block_invoke()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_283 withPreValidationHandler:&__block_literal_global_288 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_297];
}

uint64_t __47__AXFaceTimeGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"Facetime AX Bundle"];
  [v2 setOverrideProcessName:@"Facetime"];

  return MEMORY[0x2A1C5E698]();
}

void __47__AXFaceTimeGlue_accessibilityInitializeBundle__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"FaceTimeApplicationAccesssibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MobilePhoneUIButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MobilePhoneUILabelAccessibility" canInteractWithTargetClass:1];
}

@end