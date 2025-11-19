@interface HFCameraPlaybackEngineAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)clipPlayerDidPlayToEndTime:(id)a3;
- (void)updatePlaybackPositionToDate:(id)a3 usingClip:(id)a4;
@end

@implementation HFCameraPlaybackEngineAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HFCameraPlaybackEngine" hasInstanceMethod:@"updatePlaybackPositionToDate:usingClip:" withFullSignature:{"v", "@", "@", 0}];
  [v3 validateClass:@"HFCameraPlaybackEngine" hasInstanceMethod:@"clipPlayerDidPlayToEndTime:" withFullSignature:{"v", "@", 0}];
}

- (void)updatePlaybackPositionToDate:(id)a3 usingClip:(id)a4
{
  v5.receiver = self;
  v5.super_class = HFCameraPlaybackEngineAccessibility;
  [(HFCameraPlaybackEngineAccessibility *)&v5 updatePlaybackPositionToDate:a3 usingClip:a4];
  if (UIAccessibilityIsVoiceOverRunning())
  {
    [(HFCameraPlaybackEngineAccessibility *)self pause];
  }
}

- (void)clipPlayerDidPlayToEndTime:(id)a3
{
  v4 = *MEMORY[0x29EDC7EA8];
  v5 = *MEMORY[0x29EDC7378];
  v6 = a3;
  v7 = accessibilityHomeUILocalizedString(@"camera.streaming.live.yes");
  v8 = AXAttributedStringForBetterPronuciation();
  UIAccessibilityPostNotification(v4, v8);

  v9.receiver = self;
  v9.super_class = HFCameraPlaybackEngineAccessibility;
  [(HFCameraPlaybackEngineAccessibility *)&v9 clipPlayerDidPlayToEndTime:v6];
}

@end