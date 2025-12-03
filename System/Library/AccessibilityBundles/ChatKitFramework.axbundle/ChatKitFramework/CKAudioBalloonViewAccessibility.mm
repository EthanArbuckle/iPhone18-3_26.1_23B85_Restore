@interface CKAudioBalloonViewAccessibility
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation CKAudioBalloonViewAccessibility

- (id)accessibilityLabel
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsSafeCategory();
  _axMessageSender = [v2 _axMessageSender];
  v4 = accessibilityLocalizedString(@"audio.message.label");
  _axStickerDescription = [v2 _axStickerDescription];
  _axAcknowledgmentDescription = [v2 _axAcknowledgmentDescription];
  _axMessageTime = [v2 _axMessageTime];
  v7 = __UIAXStringForVariables();

  return v7;
}

- (id)accessibilityValue
{
  v2 = [(CKAudioBalloonViewAccessibility *)self safeValueForKey:@"duration"];
  [v2 doubleValue];
  v3 = AXDurationStringForDuration();

  return v3;
}

@end