@interface AXTextInputUIGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXTextInputUIGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
    [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_314 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_323];

    _Failover = [objc_allocWithZone(AXTextInputUIGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __50__AXTextInputUIGlue_accessibilityInitializeBundle__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"TUICandidateView" hasInstanceMethod:@"primaryGrid" withFullSignature:{"@", 0}];
  [v2 validateClass:@"TUICandidateGrid" hasInstanceMethod:@"collectionView" withFullSignature:{"@", 0}];
  [v2 validateClass:@"TUIEmojiSearchInputViewController" hasInstanceMethod:@"emojiSearchView" withFullSignature:{"@", 0}];
  [v2 validateClass:@"TUIEmojiSearchView" hasInstanceMethod:@"searchTextField" withFullSignature:{"@", 0}];
  [v2 validateClass:@"TUIEmojiSearchTextField" hasInstanceMethod:@"isActive" withFullSignature:{"B", 0}];

  return 1;
}

uint64_t __50__AXTextInputUIGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"TextInputUI AX"];
  [v2 setOverrideProcessName:@"TextInputUI"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __50__AXTextInputUIGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"TUICandidateCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TUIProactiveCandidateCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TUICandidateGroupHeaderAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TUICandidateGridAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TUICandidateSortControlAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TUICandidateArrowButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TUICandidateViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TUISystemInputAssistantViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TUIPredictionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TUIPredictionViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TUIAutofillExtraCandidateCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TUISuggestionCandidateCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TUIEmojiSearchResultCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TUIEmojiSearchTextFieldAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TUIEmojiSearchResultsCollectionViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TUIEmojiSearchInputViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TUIEmojiSearchViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TUIGenmojiButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UIKeyboardItemContainerViewAccessibility" canInteractWithTargetClass:1];
}

@end