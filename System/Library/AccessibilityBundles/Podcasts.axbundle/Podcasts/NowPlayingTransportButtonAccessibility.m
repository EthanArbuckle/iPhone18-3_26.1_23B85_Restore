@interface NowPlayingTransportButtonAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation NowPlayingTransportButtonAccessibility

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = NowPlayingTransportButtonAccessibility;
  v3 = *MEMORY[0x29EDC7F70] | [(NowPlayingTransportButtonAccessibility *)&v7 accessibilityTraits];
  v4 = [(NowPlayingTransportButtonAccessibility *)self safeBoolForKey:@"isEnabled"];
  v5 = *MEMORY[0x29EDC7FA8];
  if (v4)
  {
    v5 = 0;
  }

  return v3 | v5;
}

@end