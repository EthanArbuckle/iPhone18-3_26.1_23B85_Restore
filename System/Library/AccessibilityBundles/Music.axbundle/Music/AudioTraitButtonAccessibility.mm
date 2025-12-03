@interface AudioTraitButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)isAccessibilityElement;
- (id)_accessibilityLabelHelper;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation AudioTraitButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateSwiftEnum:@"Music.AudioTrait"];
  [validationsCopy validateClass:@"MusicNowPlayingControlsViewController" hasSwiftField:@"_playingItemAudioTrait" withSwiftType:"Optional<AudioTrait>"];
  [validationsCopy validateClass:@"MusicNowPlayingControlsViewController" hasSwiftField:@"hapticsState" withSwiftType:"Optional<HapticsState>"];
  [validationsCopy validateClass:@"MusicNowPlayingControlsViewController" hasInstanceMethod:@"updatePlayingItemAudioTraitButton" withFullSignature:{"v", 0}];
}

- (BOOL)isAccessibilityElement
{
  _accessibilityLabelHelper = [(AudioTraitButtonAccessibility *)self _accessibilityLabelHelper];
  v3 = _accessibilityLabelHelper;
  if (_accessibilityLabelHelper)
  {
    v4 = [_accessibilityLabelHelper length] != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)accessibilityTraits
{
  isUserInteractionEnabled = [(AudioTraitButtonAccessibility *)self isUserInteractionEnabled];
  v3 = MEMORY[0x29EDC7F70];
  if (!isUserInteractionEnabled)
  {
    v3 = MEMORY[0x29EDC7FA0];
  }

  return *v3;
}

- (id)_accessibilityLabelHelper
{
  v3 = [(AudioTraitButtonAccessibility *)self _accessibilityFindViewAncestor:&__block_literal_global_5 startWithSelf:0];
  _accessibilityViewController = [v3 _accessibilityViewController];
  v5 = [_accessibilityViewController safeValueForKey:@"updatePlayingItemAudioTraitButton"];
  v6 = [_accessibilityViewController safeSwiftValueForKey:@"_playingItemAudioTrait"];
  safeSwiftEnumCase = [v6 safeSwiftEnumCase];
  if ([safeSwiftEnumCase isEqualToString:@"dolbyAtmos"])
  {
    v8 = @"dolby.atmos";
LABEL_11:
    v9 = accessibilityOasisMusicLocalizedString(v8);
LABEL_12:
    v10 = v9;
    goto LABEL_13;
  }

  if ([safeSwiftEnumCase isEqualToString:@"dolbyAudio"])
  {
    v8 = @"dolby.audio";
    goto LABEL_11;
  }

  if ([safeSwiftEnumCase isEqualToString:@"highResolutionLossless"])
  {
    v8 = @"high.resolution.lossless";
    goto LABEL_11;
  }

  if ([safeSwiftEnumCase isEqualToString:@"lossless"])
  {
    v8 = @"lossless";
    goto LABEL_11;
  }

  if ([safeSwiftEnumCase isEqualToString:@"appleDigitalMaster"])
  {
    v8 = @"apple.digital.master";
    goto LABEL_11;
  }

  if ([safeSwiftEnumCase isEqualToString:@"musicHaptics"])
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
    accessibilityLabel = [(AudioTraitButtonAccessibility *)&v13 accessibilityLabel];

    v10 = accessibilityLabel;
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
  _accessibilityViewController = [v3 _accessibilityViewController];
  v5 = [_accessibilityViewController safeSwiftValueForKey:@"_playingItemAudioTrait"];
  safeSwiftEnumCase = [v5 safeSwiftEnumCase];
  if (![safeSwiftEnumCase isEqualToString:@"musicHaptics"])
  {
    v10 = 0;
    goto LABEL_11;
  }

  v7 = [_accessibilityViewController safeSwiftValueForKey:@"hapticsState"];
  safeSwiftEnumCase2 = [v7 safeSwiftEnumCase];

  if ([safeSwiftEnumCase2 isEqualToString:@"unavailable"])
  {
    v9 = @"music.haptics.unavailable";
  }

  else if ([safeSwiftEnumCase2 isEqualToString:@"availableActive"])
  {
    v9 = @"music.haptics.active";
  }

  else
  {
    if (![safeSwiftEnumCase2 isEqualToString:@"availablePaused"])
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
    accessibilityValue = [(AudioTraitButtonAccessibility *)&v13 accessibilityValue];

    v10 = accessibilityValue;
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