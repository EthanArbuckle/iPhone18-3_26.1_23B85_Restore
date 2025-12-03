@interface CKAudioMessageBalloonViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityCustomActions;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation CKAudioMessageBalloonViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ChatKit.CKAudioMessageBalloonView" hasSwiftField:@"$__lazy_storage_$_timeLabel" withSwiftType:"Optional<UILabel>"];
  [validationsCopy validateClass:@"ChatKit.CKAudioMessageBalloonView" hasSwiftField:@"$__lazy_storage_$_transcriptionLabel" withSwiftType:"Optional<CKTranscriptionView>"];
  [validationsCopy validateClass:@"ChatKit.CKAudioMessageBalloonView" hasSwiftField:@"$__lazy_storage_$_playPauseButton" withSwiftType:"Optional<UIButton>"];
  [validationsCopy validateClass:@"ChatKit.CKTranscriptionView" hasSwiftField:@"text" withSwiftType:"Optional<String>"];
  [validationsCopy validateClass:@"ChatKit.CKTranscriptionView" hasSwiftField:@"expansionButton" withSwiftType:"UIButton"];
  [validationsCopy validateClass:@"ChatKit.CKTranscriptionView" hasSwiftField:@"expandedButtonColor" withSwiftType:"Optional<UIColor>"];
  [validationsCopy validateClass:@"ChatKit.CKAudioMessageBalloonView" isKindOfClass:@"CKBalloonView"];
  [validationsCopy validateClass:@"CKBalloonView" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [validationsCopy validateProtocol:@"CKBalloonViewDelegate" hasRequiredInstanceMethod:@"balloonViewTapped:withModifierFlags:selectedText:"];
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsSafeCategory();
  _axMessageSender = [v2 _axMessageSender];
  v4 = accessibilityLocalizedString(@"audio.message.label");
  _axReplyDescription = [v2 _axReplyDescription];
  _axStickerDescription = [v2 _axStickerDescription];
  _axAcknowledgmentDescription = [v2 _axAcknowledgmentDescription];
  _axMessageTime = [v2 _axMessageTime];
  v8 = __UIAXStringForVariables();

  return v8;
}

- (id)accessibilityCustomActions
{
  v11.receiver = self;
  v11.super_class = CKAudioMessageBalloonViewAccessibility;
  accessibilityCustomActions = [(CKAudioMessageBalloonViewAccessibility *)&v11 accessibilityCustomActions];
  v4 = [accessibilityCustomActions mutableCopy];

  objc_opt_class();
  v5 = [(CKAudioMessageBalloonViewAccessibility *)self safeSwiftValueForKey:@"$__lazy_storage_$_playPauseButton"];
  v6 = __UIAccessibilityCastAsClass();

  menu = [v6 menu];
  children = [menu children];
  v9 = _AXCustomActionsForActions(children);
  [v4 axSafelyAddObjectsFromArray:v9];

  return v4;
}

- (id)accessibilityValue
{
  v3 = [(CKAudioMessageBalloonViewAccessibility *)self safeSwiftValueForKey:@"$__lazy_storage_$_timeLabel"];
  accessibilityLabel = [v3 accessibilityLabel];

  AXDurationForDurationString();
  v5 = AXDurationStringForDuration();
  v6 = [(CKAudioMessageBalloonViewAccessibility *)self safeSwiftValueForKey:@"$__lazy_storage_$_transcriptionLabel"];
  v7 = [v6 safeSwiftStringForKey:@"text"];
  if ([v7 length])
  {
    v8 = __UIAXStringForVariables();
  }

  else
  {
    v10 = accessibilityLocalizedString(@"no.transcript");
    v8 = __UIAXStringForVariables();
  }

  return v8;
}

- (id)_accessibilitySupplementaryFooterViews
{
  v2 = [(CKAudioMessageBalloonViewAccessibility *)self safeSwiftValueForKey:@"$__lazy_storage_$_transcriptionLabel"];
  v3 = [v2 safeSwiftValueForKey:@"expansionButton"];
  v4 = [v2 safeSwiftValueForKey:@"expandedButtonColor"];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
  configuration = [v3 configuration];
  baseForegroundColor = [configuration baseForegroundColor];
  v7 = UIAccessibilityColorEqualToColor();

  if (v7)
  {
    v8 = accessibilityLocalizedString(@"open.full.message");
    [v3 setAccessibilityLabel:v8];
  }

  v9 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{1, v3}];

  return v9;
}

@end