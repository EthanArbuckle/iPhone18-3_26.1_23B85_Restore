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
  [v3 validateClass:@"AVPlayerViewController"];
  [v3 validateClass:@"AVPlayerViewController" hasInstanceMethod:@"isReadyForDisplay" withFullSignature:{"B", 0}];
}

- (BOOL)isAccessibilityElement
{
  v2 = [(NowPlayingContentViewAccessibility *)self accessibilityIdentifier];
  v3 = [v2 isEqualToString:@"MiniPlayerArtworkNotVisible"];

  return v3 ^ 1;
}

- (BOOL)_axIsVideo
{
  v2 = [(NowPlayingContentViewAccessibility *)self _accessibilityFindSubviewDescendant:&__block_literal_global_2];
  v3 = [v2 _accessibilityViewController];

  LOBYTE(v2) = [v3 safeBoolForKey:@"isReadyForDisplay"];
  return v2;
}

uint64_t __48__NowPlayingContentViewAccessibility__axIsVideo__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _accessibilityViewController];
  MEMORY[0x29C2E7850](@"AVPlayerViewController");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
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

  v3 = accessibilityLocalizedString(v2);

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