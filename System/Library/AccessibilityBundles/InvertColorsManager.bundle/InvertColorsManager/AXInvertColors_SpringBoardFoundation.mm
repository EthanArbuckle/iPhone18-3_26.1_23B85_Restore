@interface AXInvertColors_SpringBoardFoundation
+ (void)installCategories:(id)categories;
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_SpringBoardFoundation

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBFWallpaperView"];
  [validationsCopy validateClass:@"SBFWakeAnimationSettings" hasInstanceMethod:@"sleepColorBrightness" withFullSignature:{"d", 0}];
}

+ (void)installCategories:(id)categories
{
  categoriesCopy = categories;
  [categoriesCopy installSafeCategory:@"SBFWallpaperViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"SBFWakeAnimationSettingsInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"SBFLockScreenDateViewInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end