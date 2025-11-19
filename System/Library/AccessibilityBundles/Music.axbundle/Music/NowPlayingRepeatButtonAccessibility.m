@interface NowPlayingRepeatButtonAccessibility
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation NowPlayingRepeatButtonAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = NowPlayingRepeatButtonAccessibility;
  return (*MEMORY[0x29EDC7F70] | [(NowPlayingRepeatButtonAccessibility *)&v3 accessibilityTraits]) & ~*MEMORY[0x29EDC7FC0];
}

- (id)accessibilityValue
{
  v2 = [(NowPlayingRepeatButtonAccessibility *)self safeIntegerForKey:@"accessibilityRepeatType"];
  if (v2 > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = accessibilityMusicLocalizedString(off_29F2DC9F8[v2]);
  }

  return v3;
}

@end