@interface AXCarouselAppViewSharedGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXCarouselAppViewSharedGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    v2 = [MEMORY[0x29EDBD6E8] sharedInstance];
    [v2 performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_282 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_291];

    _Failover = [objc_allocWithZone(AXCarouselAppViewSharedGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __60__AXCarouselAppViewSharedGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"CarouselAppViewSettings AX"];
  [v2 setOverrideProcessName:@"CarouselAppViewSettings"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __60__AXCarouselAppViewSharedGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"CSLPRFWatchChoiceViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CSLPRFAppViewChoiceCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CSLUIFieldOfIconsViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CSLUINanoResourceGrabberIconViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CSLUILayoutCalendarViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CSLUILayoutIconViewAccessibility" canInteractWithTargetClass:1];
}

@end