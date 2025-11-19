@interface AXDigitalTouchSharedGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXDigitalTouchSharedGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[AXDigitalTouchSharedGlue accessibilityInitializeBundle];
  }
}

void __57__AXDigitalTouchSharedGlue_accessibilityInitializeBundle__block_invoke()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_283 withPreValidationHandler:&__block_literal_global_285 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_291];

  v1 = [MEMORY[0x29EDBD690] sharedInstance];
  [v1 addHandler:&__block_literal_global_315 forFramework:@"DigitalTouchBalloonProvider"];
}

uint64_t __57__AXDigitalTouchSharedGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"AX DigitalTouchShared"];
  [v2 setOverrideProcessName:@"AX DigitalTouchShared"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __57__AXDigitalTouchSharedGlue_accessibilityInitializeBundle__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"ETCanvasViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UIColorAccessibility_ElectricTouch_UIKit" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ETMessageAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ETTapMessageAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ETHeartbeatMessageAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ETSketchMessageAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ETPaletteCircleViewAccessibility" canInteractWithTargetClass:1];
}

void __57__AXDigitalTouchSharedGlue_accessibilityInitializeBundle__block_invoke_5()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_317 withPreValidationHandler:&__block_literal_global_322 postValidationHandler:&__block_literal_global_325];
}

@end