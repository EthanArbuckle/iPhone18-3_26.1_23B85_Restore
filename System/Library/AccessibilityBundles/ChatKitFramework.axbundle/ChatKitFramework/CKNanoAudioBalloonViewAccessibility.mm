@interface CKNanoAudioBalloonViewAccessibility
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation CKNanoAudioBalloonViewAccessibility

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

- (id)accessibilityValue
{
  v2 = [(CKNanoAudioBalloonViewAccessibility *)self safeValueForKey:@"duration"];
  [v2 doubleValue];
  v3 = AXDurationStringForDuration();

  return v3;
}

@end