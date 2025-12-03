@interface MPUNowPlayingIndicatorViewAccessibility
- (void)setPlaybackState:(int64_t)state;
@end

@implementation MPUNowPlayingIndicatorViewAccessibility

- (void)setPlaybackState:(int64_t)state
{
  v6.receiver = self;
  v6.super_class = MPUNowPlayingIndicatorViewAccessibility;
  [(MPUNowPlayingIndicatorViewAccessibility *)&v6 setPlaybackState:?];
  if (state <= 2)
  {
    v5 = accessibilityMPUILocalizedString(off_29F2D04F8[state]);
    [(MPUNowPlayingIndicatorViewAccessibility *)self setAccessibilityValue:v5];
  }
}

@end