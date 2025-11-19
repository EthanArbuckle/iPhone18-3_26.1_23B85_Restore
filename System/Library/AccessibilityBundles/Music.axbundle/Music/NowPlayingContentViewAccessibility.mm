@interface NowPlayingContentViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axIsVideo;
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation NowPlayingContentViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"Music.NowPlayingContentView" hasInstanceMethod:@"accessibilityPlayerVideoLayer" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AVPlayerLayer" hasInstanceMethod:@"isReadyForDisplay" withFullSignature:{"B", 0}];
}

- (BOOL)isAccessibilityElement
{
  v2 = [(NowPlayingContentViewAccessibility *)self accessibilityIdentifier];
  v3 = [v2 isEqualToString:@"MiniPlayerArtworkNotVisible"];

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
  v3 = [(NowPlayingContentViewAccessibility *)&v7 accessibilityTraits];
  v4 = [(NowPlayingContentViewAccessibility *)self _axIsVideo];
  v5 = *MEMORY[0x29EDC7F88];
  if (v4)
  {
    v5 = 0;
  }

  return v5 | v3;
}

@end