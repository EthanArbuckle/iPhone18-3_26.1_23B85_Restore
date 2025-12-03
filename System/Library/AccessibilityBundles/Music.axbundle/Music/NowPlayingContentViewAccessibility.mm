@interface NowPlayingContentViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axIsVideo;
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation NowPlayingContentViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"Music.NowPlayingContentView" hasInstanceMethod:@"accessibilityPlayerVideoLayer" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVPlayerLayer" hasInstanceMethod:@"isReadyForDisplay" withFullSignature:{"B", 0}];
}

- (BOOL)isAccessibilityElement
{
  accessibilityIdentifier = [(NowPlayingContentViewAccessibility *)self accessibilityIdentifier];
  v3 = [accessibilityIdentifier isEqualToString:@"MiniPlayerArtworkNotVisible"];

  return v3 ^ 1;
}

- (BOOL)_axIsVideo
{
  v2 = [(NowPlayingContentViewAccessibility *)self safeValueForKey:@"accessibilityPlayerVideoLayer"];
  v3 = [v2 safeBoolForKey:@"isReadyForDisplay"];

  return v3;
}

- (id)accessibilityLabel
{
  if ([(NowPlayingContentViewAccessibility *)self _axIsVideo])
  {
    v2 = @"video.artwork";
  }

  else
  {
    v2 = @"album.artwork";
  }

  v3 = accessibilityMusicLocalizedString(v2);

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = NowPlayingContentViewAccessibility;
  accessibilityTraits = [(NowPlayingContentViewAccessibility *)&v7 accessibilityTraits];
  _axIsVideo = [(NowPlayingContentViewAccessibility *)self _axIsVideo];
  v5 = *MEMORY[0x29EDC7F88];
  if (_axIsVideo)
  {
    v5 = 0;
  }

  return v5 | accessibilityTraits;
}

@end