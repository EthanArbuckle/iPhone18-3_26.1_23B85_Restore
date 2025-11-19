@interface AXInvertColors_SpringBoardFoundation
+ (void)installCategories:(id)a3;
+ (void)performValidations:(id)a3;
@end

@implementation AXInvertColors_SpringBoardFoundation

+ (void)performValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBFWallpaperView"];
  [v3 validateClass:@"SBFWakeAnimationSettings" hasInstanceMethod:@"sleepColorBrightness" withFullSignature:{"d", 0}];
}

+ (void)installCategories:(id)a3
{
  v3 = a3;
  [v3 installSafeCategory:@"SBFWallpaperViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"SBFWakeAnimationSettingsInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"SBFLockScreenDateViewInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end