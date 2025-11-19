@interface NowPlayingShuffleButtonAccessibility
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation NowPlayingShuffleButtonAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = NowPlayingShuffleButtonAccessibility;
  return (*MEMORY[0x29EDC7F70] | [(NowPlayingShuffleButtonAccessibility *)&v3 accessibilityTraits]) & ~*MEMORY[0x29EDC7FC0];
}

- (id)accessibilityValue
{
  v2 = [(NowPlayingShuffleButtonAccessibility *)self safeIntegerForKey:@"accessibilityShuffleType"];
  if (v2 > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = accessibilityMusicLocalizedString(off_29F2DC838[v2]);
  }

  return v3;
}

@end