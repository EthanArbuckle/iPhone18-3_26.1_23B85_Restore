@interface AXControlCenterUIKitGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXControlCenterUIKitGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[AXControlCenterUIKitGlue accessibilityInitializeBundle];
  }
}

void __57__AXControlCenterUIKitGlue_accessibilityInitializeBundle__block_invoke()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_283 withPreValidationHandler:&__block_literal_global_285 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_291];

  v1 = [MEMORY[0x29EDBD690] sharedInstance];
  [v1 addHandler:&__block_literal_global_336 forBundleName:@"SleepModeControlCenterButton"];
}

uint64_t __57__AXControlCenterUIKitGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"ControlCenterUIKit (ControlCenter)"];
  [v2 setOverrideProcessName:@"ControlCenterUIKit (ControlCenter)"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __57__AXControlCenterUIKitGlue_accessibilityInitializeBundle__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"CCUIButtonModuleViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CCUIToggleViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CCUIMenuModuleViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CCUIAppLauncherViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CCUILabeledRoundButtonViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CCUIMenuModuleItemViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CCUIButtonModuleViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CCUIBaseSliderViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CCUIContinuousSliderViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CCUISteppedSliderViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CCUILabeledRoundButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CCUIRoundButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CCUIMenuModuleStackViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CCUIControlTemplateViewAccessibility" canInteractWithTargetClass:1];
}

void __57__AXControlCenterUIKitGlue_accessibilityInitializeBundle__block_invoke_5()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_338 withPreValidationHandler:&__block_literal_global_343 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_348];
}

uint64_t __57__AXControlCenterUIKitGlue_accessibilityInitializeBundle__block_invoke_7(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"ControlCenterUIKit (SleepModule)"];
  [v2 setOverrideProcessName:@"ControlCenterUIKit (SleepModule)"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

@end