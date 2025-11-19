@interface SiriUIFrameworkGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation SiriUIFrameworkGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[SiriUIFrameworkGlue accessibilityInitializeBundle];
  }
}

void __52__SiriUIFrameworkGlue_accessibilityInitializeBundle__block_invoke()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_283 withPreValidationHandler:&__block_literal_global_335 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_344];
}

uint64_t __52__SiriUIFrameworkGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"SiriUIContentButton" isKindOfClass:@"UIButton"];
  [v2 validateClass:@"SiriUIReusableHeaderView" hasInstanceMethod:@"titleText" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SiriUIReusableHeaderView" hasInstanceMethod:@"snippetViewController" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SiriUISiriStatusView" hasInstanceMethod:@"setMode:" withFullSignature:{"v", "q", 0}];
  [v2 validateClass:@"SiriUISnippetViewController" hasInstanceMethod:@"headerPunchOut" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SiriUIReusableSubtitledHeaderView" hasInstanceMethod:@"subtitleText" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SiriUIReviewItemCell" hasInstanceVariable:@"_commentLabel" withType:"UILabel"];
  [v2 validateClass:@"SiriUIReviewItemCell" hasInstanceVariable:@"_authorLabel" withType:"UILabel"];
  [v2 validateClass:@"SiriUIReviewItemCell" hasInstanceVariable:@"_ratingView" withType:"UIView"];

  return 1;
}

uint64_t __52__SiriUIFrameworkGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"Siri UI Framework AX Bundle"];
  [v2 setOverrideProcessName:@"Siri UI Framework"];

  return MEMORY[0x2A1C5E698]();
}

void __52__SiriUIFrameworkGlue_accessibilityInitializeBundle__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"SiriUIContentButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SiriUIReusableHeaderViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SiriUISiriStatusViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SiriUIHelpButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SiriUIReviewItemCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SiriUIReusableSubtitledHeaderViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SiriUIAudioRoutePickerButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SiriUISashViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SiriUISnippetControllerCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SiriUIAceObjectControllerCellAccessibility" canInteractWithTargetClass:1];
}

@end