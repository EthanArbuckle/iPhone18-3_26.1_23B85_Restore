@interface AXActivityAchievementsUIGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXActivityAchievementsUIGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[AXActivityAchievementsUIGlue accessibilityInitializeBundle];
  }
}

void __61__AXActivityAchievementsUIGlue_accessibilityInitializeBundle__block_invoke(id a1)
{
  v1 = +[AXValidationManager sharedInstance];
  [v1 performValidations:&__block_literal_global_283 withPreValidationHandler:&__block_literal_global_285 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_291];
}

BOOL __61__AXActivityAchievementsUIGlue_accessibilityInitializeBundle__block_invoke_3(id a1, AXValidationManager *a2)
{
  v2 = a2;
  [(AXValidationManager *)v2 setValidationTargetName:@"AX ActivityAchievementsUI"];
  [(AXValidationManager *)v2 setOverrideProcessName:@"AX ActivityAchievementsUI"];
  [(AXValidationManager *)v2 setDebugBuild:0];

  return _AXPerformValidationChecks();
}

void __61__AXActivityAchievementsUIGlue_accessibilityInitializeBundle__block_invoke_4(id a1, AXValidationManager *a2)
{
  v2 = a2;
  [(AXValidationManager *)v2 installSafeCategory:@"AAUIBadgeImageFactoryAccessibility" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"AAUIBadgeViewAccessibility" canInteractWithTargetClass:1];
}

@end