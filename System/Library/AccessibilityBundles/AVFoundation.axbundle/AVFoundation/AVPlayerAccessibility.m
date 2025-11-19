@interface AVPlayerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (AVPlayerAccessibility)init;
- (void)_accessibilityAsyncObserveAVPlayerIfNeeded;
- (void)_advanceCurrentItemAccordingToFigPlaybackItem:(OpaqueFigPlaybackItem *)a3;
- (void)willChangeValueForKey:(id)a3;
@end

@implementation AVPlayerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AVPlayer" hasInstanceMethod:@"_advanceCurrentItemAccordingToFigPlaybackItem:" withFullSignature:{"v", "^{OpaqueFigPlaybackItem=}", 0}];
  [v3 validateClass:@"AVPlayer" hasInstanceMethod:@"actionAtItemEnd" withFullSignature:{"q", 0}];
}

- (void)_advanceCurrentItemAccordingToFigPlaybackItem:(OpaqueFigPlaybackItem *)a3
{
  v3.receiver = self;
  v3.super_class = AVPlayerAccessibility;
  [(AVPlayerAccessibility *)&v3 _advanceCurrentItemAccordingToFigPlaybackItem:a3];
}

- (AVPlayerAccessibility)init
{
  v5.receiver = self;
  v5.super_class = AVPlayerAccessibility;
  v2 = [(AVPlayerAccessibility *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(AVPlayerAccessibility *)v2 _accessibilityAsyncObserveAVPlayerIfNeeded];
  }

  return v3;
}

- (void)willChangeValueForKey:(id)a3
{
  v6.receiver = self;
  v6.super_class = AVPlayerAccessibility;
  v4 = a3;
  [(AVPlayerAccessibility *)&v6 willChangeValueForKey:v4];
  v5 = [v4 isEqualToString:{@"currentItem", v6.receiver, v6.super_class}];

  if (v5)
  {
    [(AVPlayerAccessibility *)self _accessibilityAsyncObserveAVPlayerIfNeeded];
  }
}

- (void)_accessibilityAsyncObserveAVPlayerIfNeeded
{
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __67__AVPlayerAccessibility__accessibilityAsyncObserveAVPlayerIfNeeded__block_invoke;
  block[3] = &unk_29F298968;
  block[4] = self;
  dispatch_async(MEMORY[0x29EDCA578], block);
}

void __67__AVPlayerAccessibility__accessibilityAsyncObserveAVPlayerIfNeeded__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x29EDCA608];
  if (UIAccessibilityIsVoiceOverRunning() || (+[AXAVFoundationMediaDescriptionManager sharedManager](AXAVFoundationMediaDescriptionManager, "sharedManager"), v2 = objc_claimAutoreleasedReturnValue(), v3 = [v2 isVoiceOverInTheTripleClickMenu], v2, v3))
  {
    v4 = AXRuntimeLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      IsVoiceOverRunning = UIAccessibilityIsVoiceOverRunning();
      v7 = +[AXAVFoundationMediaDescriptionManager sharedManager];
      v13 = 134218496;
      v14 = v5;
      v15 = 2048;
      v16 = IsVoiceOverRunning;
      v17 = 2048;
      v18 = [v7 isVoiceOverInTheTripleClickMenu];
      _os_log_impl(&dword_29BAC0000, v4, OS_LOG_TYPE_DEFAULT, "AX will begin observing player=%p because UIAccessibilityIsVoiceOverRunning=%ld or isVoiceOverInTheTripleClickMenu=%ld", &v13, 0x20u);
    }

    if (([*(a1 + 32) _accessibilityBoolValueForKey:@"AXBeganObservingKey"] & 1) == 0)
    {
      v8 = +[AXAVFoundationMediaDescriptionManager sharedManager];
      v9 = [v8 beginObservingPlayer:*(a1 + 32)];

      [*(a1 + 32) _accessibilitySetBoolValue:v9 forKey:@"AXBeganObservingKey"];
    }
  }

  else
  {
    v10 = AXRuntimeLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v13 = 134217984;
      v14 = v11;
      _os_log_impl(&dword_29BAC0000, v10, OS_LOG_TYPE_DEFAULT, "AX will not begin observing player=%p because UIAccessibilityIsVoiceOverRunning=0 and isVoiceOverInTheTripleClickMenu=0", &v13, 0xCu);
    }
  }

  v12 = *MEMORY[0x29EDCA608];
}

@end