@interface AXDigitalTouchBalloonProviderSharedGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXDigitalTouchBalloonProviderSharedGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[AXDigitalTouchBalloonProviderSharedGlue accessibilityInitializeBundle];
  }
}

void __72__AXDigitalTouchBalloonProviderSharedGlue_accessibilityInitializeBundle__block_invoke()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_289 withPreValidationHandler:&__block_literal_global_291 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_297];
}

uint64_t __72__AXDigitalTouchBalloonProviderSharedGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"AX DigitalTouchBalloonProvider"];
  [v2 setOverrideProcessName:@"AX DigitalTouchBalloonProvider"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __72__AXDigitalTouchBalloonProviderSharedGlue_accessibilityInitializeBundle__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"ETTranscriptDetailCanvasViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ETTranscriptColorWheelAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ColorWheelPickerCircleViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ETCompositionUIButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"GestureInstructionItemViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ETHorizontalColorPickerAccessibility" canInteractWithTargetClass:1];
}

@end