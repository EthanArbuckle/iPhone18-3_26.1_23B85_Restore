@interface AXMobilePhoneGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXMobilePhoneGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
    [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_374 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_383];

    _Failover = [objc_allocWithZone(AXMobilePhoneGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __50__AXMobilePhoneGlue_accessibilityInitializeBundle__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"PHVoicemailPlayerController" hasClassMethod:@"sharedPlayerController" withFullSignature:{"@", 0}];
  [v2 validateClass:@"DialerController" hasInstanceMethod:@"phonePad: appendString:" withFullSignature:{"v", "@", "@", 0}];
  [v2 validateClass:@"DialerController" hasInstanceMethod:@"phonePad: replaceLastDigitWithString:" withFullSignature:{"v", "@", "@", 0}];
  [v2 validateClass:@"DialerController" hasInstanceMethod:@"viewWillDisappear:" withFullSignature:{"v", "B", 0}];
  [v2 validateClass:@"DialerController" hasInstanceMethod:@"viewWillAppear:" withFullSignature:{"v", "B", 0}];
  [v2 validateClass:@"VMVoicemail" hasInstanceMethod:@"flags" withFullSignature:{"Q", 0}];
  [v2 validateClass:@"PHVoicemailPlayerController" hasInstanceMethod:@"isPlaying" withFullSignature:{"B", 0}];
  [v2 validateClass:@"DialerController" hasInstanceVariable:@"_dialerView" withType:"PHAbstractDialerView"];
  [v2 validateClass:@"DialerController" hasInstanceMethod:@"_phonePad: appendString: suppressClearingDialedNumber:" withFullSignature:{"v", "@", "@", "B", 0}];
  [v2 validateClass:@"DialerController" hasInstanceMethod:@"phonePadDeleteLastDigit:" withFullSignature:{"v", "@", 0}];
  [v2 validateClass:@"DialerController"];
  [v2 validateClass:@"DialerController" hasInstanceMethod:@"_callButtonPressed:" withFullSignature:{"v", "@", 0}];
  [v2 validateClass:@"DialerController" hasInstanceMethod:@"phonePadDeleteLastDigit:" withFullSignature:{"v", "@", 0}];
  [v2 validateClass:@"DialerController" hasInstanceMethod:@"phonePad: appendString:" withFullSignature:{"v", "@", "@", 0}];
  [v2 validateClass:@"DialerController" hasInstanceMethod:@"loadView" withFullSignature:{"v", 0}];
  [v2 validateClass:@"MPKeypadViewController" isKindOfClass:@"DialerController"];
  [v2 validateClass:@"PHHandsetDialerNameLabelView"];
  [v2 validateClass:@"UIView" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [v2 validateClass:@"PHHandsetDialerLCDView" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [v2 validateClass:@"PHAbstractDialerView" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [v2 validateClass:@"PHHandsetDialerLCDView" hasInstanceMethod:@"deleteCharacter" withFullSignature:{"v", 0}];
  [v2 validateClass:@"PHHandsetDialerLCDView" hasInstanceMethod:@"setText: needsFormat:" withFullSignature:{"v", "@", "B", 0}];
  [v2 validateClass:@"PHAbstractDialerView" hasInstanceMethod:@"lcdView" withFullSignature:{"@", 0}];
  [v2 validateClass:@"PHAbstractDialerView" hasInstanceVariable:@"_addContactButton" withType:"UIControl"];
  [v2 validateClass:@"PHAbstractDialerView" hasInstanceVariable:@"_deleteButton" withType:"UIControl"];
  [v2 validateClass:@"PHAbstractDialerView" hasInstanceVariable:@"_callButton" withType:"UIButton"];

  return 1;
}

uint64_t __50__AXMobilePhoneGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"MobilePhone AX Bundle"];
  [v2 setOverrideProcessName:@"Phone"];

  return MEMORY[0x2A1C5E698]();
}

void __50__AXMobilePhoneGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"PhoneRootViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"VMPlayerTimelineSliderAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PHVoicemailGreetingViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PHVoicemailPlayerControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PhoneApplicationAccesssibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MPRecentsTableViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PHRecentCallDetailsItemViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MobilePhoneUIButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MobilePhoneUILabelAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PHAbstractDialerViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PHVoicemailInboxListViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PHVoicemailMessageTableViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"VMMessageMetadataViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"VMRoundButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"VMPlayerControlButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PHVoicemailMessageTableViewCellScrollViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PersonalNicknameMenuViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MPLegacyRecentsTableViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MPVoicemailMessageViewModelAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MPVoicemailTableViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"VMMessageTranscriptViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UITextViewAccessibility__MobilePhone__UIKit" canInteractWithTargetClass:1];
}

@end