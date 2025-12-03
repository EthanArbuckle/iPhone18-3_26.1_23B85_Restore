@interface AXMessageUIFrameworkGlue
+ (void)_webKitInitialized;
+ (void)accessibilityInitializeBundle;
@end

@implementation AXMessageUIFrameworkGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
    [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_415 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_424];

    v4 = [objc_allocWithZone(AXMessageUIFrameworkGlue) init];
    v5 = _Failover;
    _Failover = v4;
  }

  if ([*MEMORY[0x29EDC8008] _accessibilityBoolValueForKey:@"_accessibilityWebKitLoaded"])
  {

    [self _webKitInitialized];
  }

  else
  {
    defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
    [defaultCenter addObserver:self selector:sel__webKitInitialized name:@"UIApplicationLoadedWebKit" object:0];
  }
}

uint64_t __57__AXMessageUIFrameworkGlue_accessibilityInitializeBundle__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"MFMailComposeView"];
  [v2 validateClass:@"UITextField"];
  [v2 validateClass:@"MFModernComposeRecipientAtom"];
  [v2 validateClass:@"MFComposeFromView"];
  [v2 validateClass:@"MFComposeSubjectView"];
  [v2 validateClass:@"MFComposeRecipient"];
  [v2 validateClass:@"MFRecipientTableViewCell"];
  [v2 validateClass:@"MFModernAtomView"];
  [v2 validateClass:@"MFModernLabelledAtomList"];
  [v2 validateClass:@"MFRecipientTableViewCell" hasInstanceMethod:@"recipient" withFullSignature:{"@", 0}];
  [v2 validateClass:@"MFComposeRecipient" hasInstanceMethod:@"displayString" withFullSignature:{"@", 0}];
  [v2 validateClass:@"MFComposeRecipient" hasInstanceMethod:@"address" withFullSignature:{"@", 0}];
  [v2 validateClass:@"MFComposeRecipient" hasInstanceMethod:@"label" withFullSignature:{"@", 0}];
  [v2 validateClass:@"MFMailComposeView" hasInstanceMethod:@"initWithFrame: options: isQuickReply:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", "Q", "B", 0}];
  [v2 validateClass:@"MFComposeSubjectView" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [v2 validateClass:@"MFComposeRecipientView" hasInstanceMethod:@"addRecipient: index: animate:" withFullSignature:{"v", "@", "Q", "B", 0}];
  [v2 validateClass:@"MFComposeRecipientView" hasInstanceMethod:@"addButton" withFullSignature:{"@", 0}];
  [v2 validateClass:@"MFComposeRecipientView" hasInstanceMethod:@"recipients" withFullSignature:{"@", 0}];
  [v2 validateClass:@"MFComposeRecipientView" hasInstanceMethod:@"_reflowAnimated:" withFullSignature:{"v", "B", 0}];
  [v2 validateClass:@"MFComposeRecipientView" hasInstanceMethod:@"removeRecipient:" withFullSignature:{"v", "@", 0}];
  [v2 validateClass:@"UITextContentView" hasInstanceMethod:@"webView" withFullSignature:{"@", 0}];
  [v2 validateClass:@"WebView" hasInstanceMethod:@"selectedDOMRange" withFullSignature:{"@", 0}];
  [v2 validateClass:@"MFComposeImageSizeView" hasInstanceMethod:@"setSizeDescription:forScale:" withFullSignature:{"v", "@", "Q", 0}];
  [v2 validateClass:@"MFComposeImageSizeView" hasInstanceMethod:@"_scaleLabelIndexForScale:" withFullSignature:{"Q", "Q", 0}];
  [v2 validateClass:@"_MFPlaceholderComposeRecipient" isKindOfClass:@"MFComposeRecipient"];
  [v2 validateClass:@"MFModernComposeRecipientAtom" isKindOfClass:@"MFModernAtomView"];
  [v2 validateClass:@"MFModernAtomView" hasInstanceMethod:@"presentationOptions" withFullSignature:{"Q", 0}];
  [v2 validateClass:@"MFModernAtomView" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [v2 validateClass:@"MFComposeImageSizeView" hasInstanceVariable:@"_segmentedControl" withType:"UISegmentedControl"];
  [v2 validateClass:@"MFModernComposeRecipientAtom" hasInstanceVariable:@"_recipient" withType:"MFComposeRecipient"];
  [v2 validateClass:@"MFMailComposeView" hasInstanceVariable:@"_ccField" withType:"MFMailComposeRecipientTextView"];
  [v2 validateClass:@"MFMailComposeView" hasInstanceVariable:@"_bccField" withType:"MFMailComposeRecipientTextView"];
  [v2 validateClass:@"MFMailComposeView" hasInstanceVariable:@"_subjectField" withType:"MFComposeSubjectView"];
  [v2 validateClass:@"MFModernAddressAtom" hasInstanceVariable:@"_atomView" withType:"CNAtomView"];
  [v2 validateClass:@"MFHeaderLabelView"];
  [v2 validateClass:@"_MFMailRecipientTextField"];
  [v2 validateClass:@"MFComposeMultiView"];

  return 1;
}

uint64_t __57__AXMessageUIFrameworkGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"MessageUI Framework AX Bundle"];
  [v2 setOverrideProcessName:@"MessageUI"];

  return MEMORY[0x2A1C5E698]();
}

void __57__AXMessageUIFrameworkGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"UITableViewAccessibility__MessageUI__UIKit" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UITextViewAccessibility__MessageUI__UIKit" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MFComposeRecipientTextViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MFMailComposeViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MFHeaderLabelViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MFModernLabelledAtomListAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MFModernComposeRecipientAtomAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MFCaptionLabelAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MFComposeWebViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MFComposeRecipientAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MFComposeFromViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MFRecipientTableViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MFComposeRecipientViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MFComposeSubjectViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MFComposeImageSizeViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MFMailComposeControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MFModernAtomViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MFModernAddressAtomAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MFAtomTextViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"_MFAtomTextViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UIDimmingViewAccessibility__MessageUI__UIKit" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MFAttachmentAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UIViewAccessibility__MessageUI__UIKit" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MFAutocompleteResultsTableViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"_MFAtomFieldEditorAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MFComposeSendAccessoryButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MFComposeStyleSelectorButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MFComposeTextColorButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MFPhotoPickerControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MFPhotoPickerCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MFMailComposeNavigationBarTitleViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MFComposeActionCardTitleViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MFComposeStyleSelectorViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"WKContentViewAccessibility__MessageUI__WebKit" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MFQuickReplyExpandButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MFQuickReplySendAccessoryButtonAccessibility" canInteractWithTargetClass:1];
}

+ (void)_webKitInitialized
{
  if (_UIApplicationIsExtension())
  {
    v2 = AXLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_29BF6E000, v2, OS_LOG_TYPE_DEFAULT, "Not loading MessageUI.axbundle because we're in an extension", v3, 2u);
    }
  }

  else
  {

    AXPerformBlockOnMainThreadAfterDelay();
  }
}

void __46__AXMessageUIFrameworkGlue__webKitInitialized__block_invoke()
{
  if (_Failover_block_invoke_onceToken != -1)
  {
    __46__AXMessageUIFrameworkGlue__webKitInitialized__block_invoke_cold_1();
  }
}

void __46__AXMessageUIFrameworkGlue__webKitInitialized__block_invoke_2()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_547 withPreValidationHandler:&__block_literal_global_549 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_557];
}

uint64_t __46__AXMessageUIFrameworkGlue__webKitInitialized__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"MessageUI Web Framework AX Bundle"];
  [v2 setOverrideProcessName:@"MessageUI - Web"];

  return MEMORY[0x2A1C5E698]();
}

@end