@interface HFCameraPlaybackEngineAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)clipPlayerDidPlayToEndTime:(id)time;
- (void)updatePlaybackPositionToDate:(id)date usingClip:(id)clip;
@end

@implementation HFCameraPlaybackEngineAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HFCameraPlaybackEngine" hasInstanceMethod:@"updatePlaybackPositionToDate:usingClip:" withFullSignature:{"v", "@", "@", 0}];
  [validationsCopy validateClass:@"HFCameraPlaybackEngine" hasInstanceMethod:@"clipPlayerDidPlayToEndTime:" withFullSignature:{"v", "@", 0}];
}

- (void)updatePlaybackPositionToDate:(id)date usingClip:(id)clip
{
  v5.receiver = self;
  v5.super_class = HFCameraPlaybackEngineAccessibility;
  [(HFCameraPlaybackEngineAccessibility *)&v5 updatePlaybackPositionToDate:date usingClip:clip];
  if (UIAccessibilityIsVoiceOverRunning())
  {
    [(HFCameraPlaybackEngineAccessibility *)self pause];
  }
}

- (void)clipPlayerDidPlayToEndTime:(id)time
{
  v4 = *MEMORY[0x29EDC7EA8];
  v5 = *MEMORY[0x29EDC7378];
  timeCopy = time;
  v7 = accessibilityHomeUILocalizedString(@"camera.streaming.live.yes");
  v8 = AXAttributedStringForBetterPronuciation();
  UIAccessibilityPostNotification(v4, v8);

  v9.receiver = self;
  v9.super_class = HFCameraPlaybackEngineAccessibility;
  [(HFCameraPlaybackEngineAccessibility *)&v9 clipPlayerDidPlayToEndTime:timeCopy];
}

@end