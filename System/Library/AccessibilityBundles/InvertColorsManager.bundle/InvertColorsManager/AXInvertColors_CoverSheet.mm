@interface AXInvertColors_CoverSheet
+ (void)installCategories:(id)categories;
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_CoverSheet

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CSCoverSheetViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"CSModalButton" isKindOfClass:@"UIButton"];
  [validationsCopy validateClass:@"CSCoverSheetViewController" hasInstanceMethod:@"_updateBackground" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"CSCoverSheetViewController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"CSCoverSheetViewController" hasInstanceMethod:@"coverSheetView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CSCoverSheetView" hasInstanceMethod:@"backgroundView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CSPasscodeViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"CSCoverSheetViewController" hasInstanceMethod:@"_screenWakeAnimationController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBFLegacyWallpaperWakeAnimator" hasInstanceMethod:@"wakeEffectView" withFullSignature:{"@", 0}];
}

+ (void)installCategories:(id)categories
{
  categoriesCopy = categories;
  [categoriesCopy installSafeCategory:@"CSBatteryFillViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"CSCoverSheetViewControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"CSModalButtonInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"CSPasscodeViewControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"CSPasscodeBackgroundViewInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end