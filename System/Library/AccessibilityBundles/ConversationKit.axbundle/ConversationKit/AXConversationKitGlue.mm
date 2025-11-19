@interface AXConversationKitGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXConversationKitGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    v2 = [MEMORY[0x29EDBD6E8] sharedInstance];
    [v2 performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_285 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_294];

    _Failover = [objc_allocWithZone(AXConversationKitGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __54__AXConversationKitGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"ConversationKit AX"];
  [v2 setOverrideProcessName:@"ConversationKit"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __54__AXConversationKitGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"InCallControlsViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MultiwayViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ParticipantViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ParticipantCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"LocalParticipantViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"InCallControlsParticipantCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CKUIButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"InCallControlsAddParticipantCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"InCallControlButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ConversationKit_UIViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ParticipantViewLabelContainerViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ParticipantMonogramViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ParticipantInfoViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ParticipantVideoOverlayViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ConversationHUDControlsStatusViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"LocalParticipantControlsViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ConversationHUDControlsViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"InCallControlsBaseCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"InCallControlsStatusCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ConversationControlsManagerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ParticipantGridViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"InCallControlsIgnoreLMIRequestsCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"InCallBannerHostViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"EffectsControlsViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ConversationControlsButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MomentsIndicatorBubbleAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"FTRecentsListViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CKRemotePeoplePickerViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"LabeledButtonViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SystemApertureButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"InCallControlsCollectionViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"RecentsCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PeoplePickerActionBarAccessibility" canInteractWithTargetClass:1];
}

@end