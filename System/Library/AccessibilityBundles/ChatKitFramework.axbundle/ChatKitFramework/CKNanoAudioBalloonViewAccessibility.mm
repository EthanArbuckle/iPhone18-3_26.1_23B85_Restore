@interface CKNanoAudioBalloonViewAccessibility
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation CKNanoAudioBalloonViewAccessibility

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

- (id)accessibilityValue
{
  v2 = [(CKNanoAudioBalloonViewAccessibility *)self safeValueForKey:@"duration"];
  [v2 doubleValue];
  v3 = AXDurationStringForDuration();

  return v3;
}

@end