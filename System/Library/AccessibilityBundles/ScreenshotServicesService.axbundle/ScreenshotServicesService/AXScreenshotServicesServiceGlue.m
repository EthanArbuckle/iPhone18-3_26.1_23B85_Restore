@interface AXScreenshotServicesServiceGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXScreenshotServicesServiceGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[AXScreenshotServicesServiceGlue accessibilityInitializeBundle];
  }
}

void __64__AXScreenshotServicesServiceGlue_accessibilityInitializeBundle__block_invoke()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_283 withPreValidationHandler:&__block_literal_global_285 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_294];

  v1 = [MEMORY[0x29EDBD690] sharedInstance];
  [v1 addHandler:&__block_literal_global_321 forBundleID:@"com.apple.AnnotationKit.axbundle"];
}

uint64_t __64__AXScreenshotServicesServiceGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"ScreenshotServicesService AX Bundle"];
  [v2 setOverrideProcessName:@"Screenshot"];

  return MEMORY[0x2A1C5E698]();
}

void __64__AXScreenshotServicesServiceGlue_accessibilityInitializeBundle__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"SSSScreenshotsViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SSSScreenshotsViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"_SSSScreenshotAnnotationControllerAKOverlayContainerViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SSSCropOverlayGrabberViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SSSCropOverlayCornerViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SSSScreenshotViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SSS_UIWindowAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SSSDittoRootViewControllerAccessibility" canInteractWithTargetClass:1];
}

void __64__AXScreenshotServicesServiceGlue_accessibilityInitializeBundle__block_invoke_5()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_323 withPreValidationHandler:&__block_literal_global_335 postValidationHandler:0];
}

uint64_t __64__AXScreenshotServicesServiceGlue_accessibilityInitializeBundle__block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"AKOverlayView"];
  [v2 validateClass:@"AKOverlayViewAccessibility"];
  [v2 validateClass:@"AKOverlayViewAccessibility" hasInstanceMethod:@"_accessibilityCreateOverlayViewElement" withFullSignature:{"@", 0}];

  return 1;
}

uint64_t __64__AXScreenshotServicesServiceGlue_accessibilityInitializeBundle__block_invoke_7(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"AnnotationKit"];
  [v2 setOverrideProcessName:@"AnnotationKit"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

@end