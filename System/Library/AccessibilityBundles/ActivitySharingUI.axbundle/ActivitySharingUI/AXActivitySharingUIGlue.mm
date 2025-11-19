@interface AXActivitySharingUIGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXActivitySharingUIGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[AXActivitySharingUIGlue accessibilityInitializeBundle];
  }
}

void __56__AXActivitySharingUIGlue_accessibilityInitializeBundle__block_invoke(id a1)
{
  v1 = +[AXValidationManager sharedInstance];
  [v1 performValidations:&__block_literal_global_283 withPreValidationHandler:&__block_literal_global_285 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_291];
}

BOOL __56__AXActivitySharingUIGlue_accessibilityInitializeBundle__block_invoke_3(id a1, AXValidationManager *a2)
{
  v2 = a2;
  [(AXValidationManager *)v2 setValidationTargetName:@"AX ActivitySharingUI"];
  [(AXValidationManager *)v2 setOverrideProcessName:@"AX ActivitySharingUI"];
  [(AXValidationManager *)v2 setDebugBuild:0];

  return _AXPerformValidationChecks();
}

void __56__AXActivitySharingUIGlue_accessibilityInitializeBundle__block_invoke_4(id a1, AXValidationManager *a2)
{
  v2 = a2;
  [(AXValidationManager *)v2 installSafeCategory:@"ASCompetitionGizmoDetailViewAccessibility" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"ASCompetitionMessageBubbleViewAccessibility" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"ASCompetitionScoreViewAccessibility" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"ASCompetitionGraphViewAccessibility" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"ASCompetitionParticipantScoreViewAccessibility" canInteractWithTargetClass:1];
}

@end