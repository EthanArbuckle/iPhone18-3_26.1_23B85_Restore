@interface AXAppleAccountUIGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXAppleAccountUIGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[AXAppleAccountUIGlue accessibilityInitializeBundle];
  }
}

void __53__AXAppleAccountUIGlue_accessibilityInitializeBundle__block_invoke()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_291 withPreValidationHandler:&__block_literal_global_293 postValidationHandler:&__block_literal_global_299 safeCategoryInstallationHandler:&__block_literal_global_302];
}

uint64_t __53__AXAppleAccountUIGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"AppleAccountUI"];
  [v2 setOverrideProcessName:@"AppleAccountUI"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __53__AXAppleAccountUIGlue_accessibilityInitializeBundle__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"AAUISignInViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AAUIImageControlAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AAUIProfilePhotoViewAccessibility" canInteractWithTargetClass:1];
}

@end