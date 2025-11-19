@interface CKAudioMessageBalloonViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityCustomActions;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation CKAudioMessageBalloonViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ChatKit.CKAudioMessageBalloonView" hasSwiftField:@"$__lazy_storage_$_timeLabel" withSwiftType:"Optional<UILabel>"];
  [v3 validateClass:@"ChatKit.CKAudioMessageBalloonView" hasSwiftField:@"$__lazy_storage_$_transcriptionLabel" withSwiftType:"Optional<CKTranscriptionView>"];
  [v3 validateClass:@"ChatKit.CKAudioMessageBalloonView" hasSwiftField:@"$__lazy_storage_$_playPauseButton" withSwiftType:"Optional<UIButton>"];
  [v3 validateClass:@"ChatKit.CKTranscriptionView" hasSwiftField:@"text" withSwiftType:"Optional<String>"];
  [v3 validateClass:@"ChatKit.CKTranscriptionView" hasSwiftField:@"expansionButton" withSwiftType:"UIButton"];
  [v3 validateClass:@"ChatKit.CKTranscriptionView" hasSwiftField:@"expandedButtonColor" withSwiftType:"Optional<UIColor>"];
  [v3 validateClass:@"ChatKit.CKAudioMessageBalloonView" isKindOfClass:@"CKBalloonView"];
  [v3 validateClass:@"CKBalloonView" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [v3 validateProtocol:@"CKBalloonViewDelegate" hasRequiredInstanceMethod:@"balloonViewTapped:withModifierFlags:selectedText:"];
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsSafeCategory();
  v3 = [v2 _axMessageSender];
  v4 = accessibilityLocalizedString(@"audio.message.label");
  v5 = [v2 _axReplyDescription];
  v6 = [v2 _axStickerDescription];
  v7 = [v2 _axAcknowledgmentDescription];
  v10 = [v2 _axMessageTime];
  v8 = __UIAXStringForVariables();

  return v8;
}

- (id)accessibilityCustomActions
{
  v11.receiver = self;
  v11.super_class = CKAudioMessageBalloonViewAccessibility;
  v3 = [(CKAudioMessageBalloonViewAccessibility *)&v11 accessibilityCustomActions];
  v4 = [v3 mutableCopy];

  objc_opt_class();
  v5 = [(CKAudioMessageBalloonViewAccessibility *)self safeSwiftValueForKey:@"$__lazy_storage_$_playPauseButton"];
  v6 = __UIAccessibilityCastAsClass();

  v7 = [v6 menu];
  v8 = [v7 children];
  v9 = _AXCustomActionsForActions(v8);
  [v4 axSafelyAddObjectsFromArray:v9];

  return v4;
}

- (id)accessibilityValue
{
  v3 = [(CKAudioMessageBalloonViewAccessibility *)self safeSwiftValueForKey:@"$__lazy_storage_$_timeLabel"];
  v4 = [v3 accessibilityLabel];

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
  v5 = [v3 configuration];
  v6 = [v5 baseForegroundColor];
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