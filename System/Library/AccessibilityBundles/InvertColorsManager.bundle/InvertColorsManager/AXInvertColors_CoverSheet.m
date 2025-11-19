@interface AXInvertColors_CoverSheet
+ (void)installCategories:(id)a3;
+ (void)performValidations:(id)a3;
@end

@implementation AXInvertColors_CoverSheet

+ (void)performValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CSCoverSheetViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"CSModalButton" isKindOfClass:@"UIButton"];
  [v3 validateClass:@"CSCoverSheetViewController" hasInstanceMethod:@"_updateBackground" withFullSignature:{"v", 0}];
  [v3 validateClass:@"CSCoverSheetViewController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
  [v3 validateClass:@"CSCoverSheetViewController" hasInstanceMethod:@"coverSheetView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CSCoverSheetView" hasInstanceMethod:@"backgroundView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CSPasscodeViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"CSCoverSheetViewController" hasInstanceMethod:@"_screenWakeAnimationController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBFLegacyWallpaperWakeAnimator" hasInstanceMethod:@"wakeEffectView" withFullSignature:{"@", 0}];
}

+ (void)installCategories:(id)a3
{
  v3 = a3;
  [v3 installSafeCategory:@"CSBatteryFillViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"CSCoverSheetViewControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"CSModalButtonInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"CSPasscodeViewControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"CSPasscodeBackgroundViewInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end