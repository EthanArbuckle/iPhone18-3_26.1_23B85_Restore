@interface AXPhotoBoothGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXPhotoBoothGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    v2 = [MEMORY[0x29EDBD6E8] sharedInstance];
    [v2 performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_361 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_370];

    _Failover = [objc_allocWithZone(AXPhotoBoothGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __49__AXPhotoBoothGlue_accessibilityInitializeBundle__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"PBShelfTile" hasInstanceMethod:@"isSelected" withFullSignature:{"B", 0}];
  [v2 validateClass:@"PBEffectsController" hasInstanceMethod:@"takePicture:" withFullSignature:{"v", "@", 0}];
  [v2 validateClass:@"AVCaptureDeviceInput" hasInstanceMethod:@"device" withFullSignature:{"@", 0}];
  [v2 validateClass:@"AVCaptureDevice" hasInstanceMethod:@"position" withFullSignature:{"q", 0}];
  [v2 validateClass:@"PBFilter" hasInstanceMethod:@"localizedName" withFullSignature:{"@", 0}];
  [v2 validateClass:@"PBEffectsController" hasInstanceVariable:@"_cameraController" withType:"CUCaptureController"];
  [v2 validateClass:@"PhotoBoothApplication" hasInstanceVariable:@"_photoBoothController" withType:"PBController"];
  [v2 validateClass:@"CUCaptureController" hasInstanceMethod:@"_captureEngine" withFullSignature:{"@", 0}];
  [v2 validateClass:@"PBController"];
  [v2 validateClass:@"PBController" hasInstanceVariable:@"_effectsController" withType:"PBEffectsController"];
  [v2 validateClass:@"PBEffectsController" hasInstanceVariable:@"_effectsView" withType:"PBEffectsView"];
  [v2 validateClass:@"PBEffectsView" hasInstanceMethod:@"currentEffect" withFullSignature:{"@", 0}];
  [v2 validateClass:@"PBEffectsController" hasInstanceMethod:@"_currentDevicePosition" withFullSignature:{"q", 0}];

  return 1;
}

uint64_t __49__AXPhotoBoothGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"PBControllerAccessibility.m"];
  [v2 setOverrideProcessName:@"Photobooth"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __49__AXPhotoBoothGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"PBControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PBShelfTileAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PBEffectsViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PBContainerViewAccessibility" canInteractWithTargetClass:1];
}

@end