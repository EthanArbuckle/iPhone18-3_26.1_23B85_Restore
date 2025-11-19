@interface AudioTraitButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)isAccessibilityElement;
- (id)_accessibilityLabelHelper;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation AudioTraitButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateSwiftEnum:@"Music.AudioTrait"];
  [v3 validateClass:@"MusicNowPlayingControlsViewController" hasSwiftField:@"_playingItemAudioTrait" withSwiftType:"Optional<AudioTrait>"];
  [v3 validateClass:@"MusicNowPlayingControlsViewController" hasSwiftField:@"hapticsState" withSwiftType:"Optional<HapticsState>"];
  [v3 validateClass:@"MusicNowPlayingControlsViewController" hasInstanceMethod:@"updatePlayingItemAudioTraitButton" withFullSignature:{"v", 0}];
}

- (BOOL)isAccessibilityElement
{
  v2 = [(AudioTraitButtonAccessibility *)self _accessibilityLabelHelper];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 length] != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)accessibilityTraits
{
  v2 = [(AudioTraitButtonAccessibility *)self isUserInteractionEnabled];
  v3 = MEMORY[0x29EDC7F70];
  if (!v2)
  {
    v3 = MEMORY[0x29EDC7FA0];
  }

  return *v3;
}

- (id)_accessibilityLabelHelper
{
  v3 = [(AudioTraitButtonAccessibility *)self _accessibilityFindViewAncestor:&__block_literal_global_5 startWithSelf:0];
  v4 = [v3 _accessibilityViewController];
  v5 = [v4 safeValueForKey:@"updatePlayingItemAudioTraitButton"];
  v6 = [v4 safeSwiftValueForKey:@"_playingItemAudioTrait"];
  v7 = [v6 safeSwiftEnumCase];
  if ([v7 isEqualToString:@"dolbyAtmos"])
  {
    v8 = @"dolby.atmos";
LABEL_11:
    v9 = accessibilityOasisMusicLocalizedString(v8);
LABEL_12:
    v10 = v9;
    goto LABEL_13;
  }

  if ([v7 isEqualToString:@"dolbyAudio"])
  {
    v8 = @"dolby.audio";
    goto LABEL_11;
  }

  if ([v7 isEqualToString:@"highResolutionLossless"])
  {
    v8 = @"high.resolution.lossless";
    goto LABEL_11;
  }

  if ([v7 isEqualToString:@"lossless"])
  {
    v8 = @"lossless";
    goto LABEL_11;
  }

  if ([v7 isEqualToString:@"appleDigitalMaster"])
  {
    v8 = @"apple.digital.master";
    goto LABEL_11;
  }

  if ([v7 isEqualToString:@"musicHaptics"])
  {
    v9 = accessibilityMusicLocalizedString(@"music.haptics.badge");
    goto LABEL_12;
  }

  v10 = 0;
LABEL_13:
  if (![v10 length])
  {
    v13.receiver = self;
    v13.super_class = AudioTraitButtonAccessibility;
    v11 = [(AudioTraitButtonAccessibility *)&v13 accessibilityLabel];

    v10 = v11;
  }

  return v10;
}

uint64_t __58__AudioTraitButtonAccessibility__accessibilityLabelHelper__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _accessibilityViewController];
  MEMORY[0x29C2E2910](@"MusicNowPlayingControlsViewController");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)accessibilityValue
{
  v3 = [(AudioTraitButtonAccessibility *)self _accessibilityFindViewAncestor:&__block_literal_global_340 startWithSelf:0];
  v4 = [v3 _accessibilityViewController];
  v5 = [v4 safeSwiftValueForKey:@"_playingItemAudioTrait"];
  v6 = [v5 safeSwiftEnumCase];
  if (![v6 isEqualToString:@"musicHaptics"])
  {
    v10 = 0;
    goto LABEL_11;
  }

  v7 = [v4 safeSwiftValueForKey:@"hapticsState"];
  v8 = [v7 safeSwiftEnumCase];

  if ([v8 isEqualToString:@"unavailable"])
  {
    v9 = @"music.haptics.unavailable";
  }

  else if ([v8 isEqualToString:@"availableActive"])
  {
    v9 = @"music.haptics.active";
  }

  else
  {
    if (![v8 isEqualToString:@"availablePaused"])
    {
      v10 = 0;
      goto LABEL_10;
    }

    v9 = @"music.haptics.paused";
  }

  v10 = accessibilityMusicLocalizedString(v9);
LABEL_10:

LABEL_11:
  if (![v10 length])
  {
    v13.receiver = self;
    v13.super_class = AudioTraitButtonAccessibility;
    v11 = [(AudioTraitButtonAccessibility *)&v13 accessibilityValue];

    v10 = v11;
  }

  return v10;
}

uint64_t __51__AudioTraitButtonAccessibility_accessibilityValue__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _accessibilityViewController];
  MEMORY[0x29C2E2910](@"MusicNowPlayingControlsViewController");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end