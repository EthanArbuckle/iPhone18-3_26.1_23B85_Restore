@interface CKAudioBalloonViewAccessibility
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation CKAudioBalloonViewAccessibility

- (id)accessibilityLabel
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsSafeCategory();
  v3 = [v2 _axMessageSender];
  v4 = accessibilityLocalizedString(@"audio.message.label");
  v5 = [v2 _axStickerDescription];
  v6 = [v2 _axAcknowledgmentDescription];
  v9 = [v2 _axMessageTime];
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