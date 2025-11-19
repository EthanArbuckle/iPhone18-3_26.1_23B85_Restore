@interface NowPlayingAutoPlayButtonAccessibility
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation NowPlayingAutoPlayButtonAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = NowPlayingAutoPlayButtonAccessibility;
  return (*MEMORY[0x29EDC7F70] | [(NowPlayingAutoPlayButtonAccessibility *)&v3 accessibilityTraits]) & ~*MEMORY[0x29EDC7FC0];
}

- (id)accessibilityValue
{
  if ([(NowPlayingAutoPlayButtonAccessibility *)self safeBoolForKey:@"isSelected"])
  {
    v2 = @"autoplay.on";
  }

  else
  {
    v2 = @"autoplay.off";
  }

  v3 = accessibilityMusicLocalizedString(v2);

  return v3;
}

@end