@interface AXTemplateKitGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXTemplateKitGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[AXTemplateKitGlue accessibilityInitializeBundle];
  }
}

void __50__AXTemplateKitGlue_accessibilityInitializeBundle__block_invoke()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_283 withPreValidationHandler:&__block_literal_global_285 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_294];
}

uint64_t __50__AXTemplateKitGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"TemplateKit AX"];
  [v2 setOverrideProcessName:@"TemplateKit"];

  return MEMORY[0x2A1C5E698]();
}

void __50__AXTemplateKitGlue_accessibilityInitializeBundle__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"TLKContentsViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TLKKeyValueGridViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TLKAuxilliaryTextViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TLKTextAreaViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TLKRichTextFieldAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TLKStarsViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TLKDetailsViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TLKMultilineTextAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TLKSelectableGridButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TLKStoreButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TLKImageViewAccessibility" canInteractWithTargetClass:1];
}

@end