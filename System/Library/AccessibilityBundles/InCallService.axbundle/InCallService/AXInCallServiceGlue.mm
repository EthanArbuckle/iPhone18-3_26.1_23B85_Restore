@interface AXInCallServiceGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXInCallServiceGlue

+ (void)accessibilityInitializeBundle
{
  v2 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v2 performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_315 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_324];
}

uint64_t __52__AXInCallServiceGlue_accessibilityInitializeBundle__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"PHEmergencyDialerViewController" hasInstanceMethod:@"viewDidDisappear:" withFullSignature:{"v", "B", 0}];
  [v2 validateClass:@"PHEmergencyDialerViewController" hasInstanceMethod:@"viewWillAppear:" withFullSignature:{"v", "B", 0}];
  [v2 validateClass:@"PHCallParticipantsView" hasInstanceMethod:@"singleCallLabelView" withFullSignature:{"@", 0}];
  [v2 validateClass:@"PHCallParticipantsView" hasInstanceMethod:@"topMultipleCallLabelView" withFullSignature:{"@", 0}];
  [v2 validateClass:@"PHCallParticipantsView" hasInstanceMethod:@"bottomMultipleCallLabelView" withFullSignature:{"@", 0}];
  [v2 validateClass:@"PHAbstractCallParticipantLabelView" hasInstanceMethod:@"participantMarqueeLabel" withFullSignature:{"@", 0}];

  return 1;
}

uint64_t __52__AXInCallServiceGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"InCallService AX Bundle"];
  [v2 setOverrideProcessName:@"InCallService"];

  return MEMORY[0x2A1C5E698]();
}

void __52__AXInCallServiceGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"PHAudioCallViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"InCallServiceApplicationAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PHMobilePhoneRemoteViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PHVideoCallInterfaceOverlayViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PHEmergencyDialerViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PHAudioCallControlsViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MobilePhoneUILabelAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PHBottomBarButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PHBottomBarAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PHSingleCallParticipantLabelViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PHAudioControlsButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PHCountdownViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PHSlidingViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PHSOSViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PHSOSDialCountdownViewModelAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PHSOSNotifyCountdownViewModelAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PHActionSliderAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PHCallParticipantsViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PHBannerButtonsViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ICSApplicationDelegateAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PHInCallRemoteAlertShellViewControllerAccessibility" canInteractWithTargetClass:1];
}

@end