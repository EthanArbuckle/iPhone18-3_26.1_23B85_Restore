@interface AXMailAttachmentGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXMailAttachmentGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
    [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_292 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_301];

    _Failover = [objc_allocWithZone(AXMailAttachmentGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __53__AXMailAttachmentGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"Mail Attachment AX Bundle"];
  [v2 setOverrideProcessName:@"Mail Attachment"];

  return MEMORY[0x2A1C5E698]();
}

@end