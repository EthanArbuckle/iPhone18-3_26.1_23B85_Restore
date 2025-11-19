@interface NowPlayingQueueControlsViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_setupAutoPlayButton;
- (void)_setupRepeatButton;
- (void)_setupShuffleButton;
- (void)_setupTransitionButton;
@end

@implementation NowPlayingQueueControlsViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"Music.NowPlayingQueueControlsView" hasSwiftField:@"autoPlayState" withSwiftType:"Optional<Bool>"];
  [v3 validateClass:@"Music.NowPlayingQueueControlsView" hasSwiftField:@"autoPlayButton" withSwiftType:"UIButton"];
  [v3 validateClass:@"Music.NowPlayingQueueControlsView" hasSwiftField:@"shuffleButton" withSwiftType:"UIButton"];
  [v3 validateClass:@"Music.NowPlayingQueueControlsView" hasSwiftField:@"repeatButton" withSwiftType:"UIButton"];
  [v3 validateClass:@"Music.NowPlayingQueueControlsView" hasSwiftField:@"transitionsButton" withSwiftType:"UIButton"];
  [v3 validateClass:@"Music.NowPlayingQueueControlsView" hasInstanceMethod:@"accessibilityShuffleType" withFullSignature:{"q", 0}];
  [v3 validateClass:@"Music.NowPlayingQueueControlsView" hasInstanceMethod:@"accessibilityRepeatType" withFullSignature:{"q", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = NowPlayingQueueControlsViewAccessibility;
  [(NowPlayingQueueControlsViewAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(NowPlayingQueueControlsViewAccessibility *)self _setupAutoPlayButton];
  [(NowPlayingQueueControlsViewAccessibility *)self _setupShuffleButton];
  [(NowPlayingQueueControlsViewAccessibility *)self _setupRepeatButton];
  [(NowPlayingQueueControlsViewAccessibility *)self _setupTransitionButton];
  [(NowPlayingQueueControlsViewAccessibility *)self _setupTransitionButton];
}

- (void)_setupAutoPlayButton
{
  v3 = [(NowPlayingQueueControlsViewAccessibility *)self safeSwiftValueForKey:@"autoPlayButton"];
  [v3 setIsAccessibilityElement:1];
  v4 = accessibilityMusicLocalizedString(@"autoplay.button");
  [v3 setAccessibilityLabel:v4];

  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __64__NowPlayingQueueControlsViewAccessibility__setupAutoPlayButton__block_invoke;
  v6[3] = &unk_29F2DC750;
  v6[4] = self;
  [v3 setAccessibilityTraitsBlock:v6];
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __64__NowPlayingQueueControlsViewAccessibility__setupAutoPlayButton__block_invoke_2;
  v5[3] = &unk_29F2DC728;
  v5[4] = self;
  [v3 setAccessibilityValueBlock:v5];
}

unint64_t __64__NowPlayingQueueControlsViewAccessibility__setupAutoPlayButton__block_invoke(uint64_t a1)
{
  v6.receiver = *(a1 + 32);
  v6.super_class = NowPlayingQueueControlsViewAccessibility;
  v2 = (*MEMORY[0x29EDC7F70] | objc_msgSendSuper2(&v6, sel_accessibilityTraits) | *MEMORY[0x29EDC7FF0]) & ~*MEMORY[0x29EDC7FC0];
  v3 = [*(a1 + 32) safeSwiftOptionalBoolForKey:@"autoPlayState"];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = *MEMORY[0x29EDC7FA8];
  }

  return v4 | v2;
}

id __64__NowPlayingQueueControlsViewAccessibility__setupAutoPlayButton__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) safeSwiftOptionalBoolForKey:@"autoPlayState"];
  v2 = v1;
  if (v1)
  {
    if ([v1 BOOLValue])
    {
      v3 = @"autoplay.on";
    }

    else
    {
      v3 = @"autoplay.off";
    }

    v4 = accessibilityMusicLocalizedString(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_setupShuffleButton
{
  v3 = [(NowPlayingQueueControlsViewAccessibility *)self safeSwiftValueForKey:@"shuffleButton"];
  [v3 setIsAccessibilityElement:1];
  v4 = accessibilityMusicLocalizedString(@"shuffle.button");
  [v3 setAccessibilityLabel:v4];

  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __63__NowPlayingQueueControlsViewAccessibility__setupShuffleButton__block_invoke;
  v6[3] = &unk_29F2DC750;
  v6[4] = self;
  [v3 setAccessibilityTraitsBlock:v6];
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __63__NowPlayingQueueControlsViewAccessibility__setupShuffleButton__block_invoke_2;
  v5[3] = &unk_29F2DC728;
  v5[4] = self;
  [v3 setAccessibilityValueBlock:v5];
}

unint64_t __63__NowPlayingQueueControlsViewAccessibility__setupShuffleButton__block_invoke(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = NowPlayingQueueControlsViewAccessibility;
  return (*MEMORY[0x29EDC7F70] | objc_msgSendSuper2(&v2, sel_accessibilityTraits) | *MEMORY[0x29EDC7FF0]) & ~*MEMORY[0x29EDC7FC0];
}

id __63__NowPlayingQueueControlsViewAccessibility__setupShuffleButton__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) safeIntegerForKey:@"accessibilityShuffleType"];
  if (v1 > 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = accessibilityMusicLocalizedString(off_29F2DC770[v1]);
  }

  return v2;
}

- (void)_setupRepeatButton
{
  v3 = [(NowPlayingQueueControlsViewAccessibility *)self safeSwiftValueForKey:@"repeatButton"];
  [v3 setIsAccessibilityElement:1];
  v4 = accessibilityMusicLocalizedString(@"repeat.button");
  [v3 setAccessibilityLabel:v4];

  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __62__NowPlayingQueueControlsViewAccessibility__setupRepeatButton__block_invoke;
  v6[3] = &unk_29F2DC750;
  v6[4] = self;
  [v3 setAccessibilityTraitsBlock:v6];
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __62__NowPlayingQueueControlsViewAccessibility__setupRepeatButton__block_invoke_2;
  v5[3] = &unk_29F2DC728;
  v5[4] = self;
  [v3 setAccessibilityValueBlock:v5];
}

unint64_t __62__NowPlayingQueueControlsViewAccessibility__setupRepeatButton__block_invoke(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = NowPlayingQueueControlsViewAccessibility;
  return (*MEMORY[0x29EDC7F70] | objc_msgSendSuper2(&v2, sel_accessibilityTraits) | *MEMORY[0x29EDC7FF0]) & ~*MEMORY[0x29EDC7FC0];
}

id __62__NowPlayingQueueControlsViewAccessibility__setupRepeatButton__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) safeIntegerForKey:@"accessibilityRepeatType"];
  v2 = @"repeat.off";
  if (v1 == 1)
  {
    v2 = @"repeat.one";
  }

  if (v1 == 2)
  {
    v3 = @"repeat.all";
  }

  else
  {
    v3 = v2;
  }

  v4 = accessibilityMusicLocalizedString(v3);

  return v4;
}

- (void)_setupTransitionButton
{
  v3 = [(NowPlayingQueueControlsViewAccessibility *)self safeSwiftValueForKey:@"transitionsButton"];
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = __66__NowPlayingQueueControlsViewAccessibility__setupTransitionButton__block_invoke;
  v4[3] = &unk_29F2DC750;
  v4[4] = self;
  [v3 setAccessibilityTraitsBlock:v4];
}

unint64_t __66__NowPlayingQueueControlsViewAccessibility__setupTransitionButton__block_invoke(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = NowPlayingQueueControlsViewAccessibility;
  return (*MEMORY[0x29EDC7F70] | objc_msgSendSuper2(&v2, sel_accessibilityTraits) | *MEMORY[0x29EDC7FF0]) & ~*MEMORY[0x29EDC7FC0];
}

@end