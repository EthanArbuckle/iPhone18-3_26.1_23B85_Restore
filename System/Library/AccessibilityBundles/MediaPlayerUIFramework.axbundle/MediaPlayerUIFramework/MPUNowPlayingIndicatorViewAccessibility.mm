@interface MPUNowPlayingIndicatorViewAccessibility
- (void)setPlaybackState:(int64_t)a3;
@end

@implementation MPUNowPlayingIndicatorViewAccessibility

- (void)setPlaybackState:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = MPUNowPlayingIndicatorViewAccessibility;
  [(MPUNowPlayingIndicatorViewAccessibility *)&v6 setPlaybackState:?];
  if (a3 <= 2)
  {
    v5 = accessibilityMPUILocalizedString(off_29F2D04F8[a3]);
    [(MPUNowPlayingIndicatorViewAccessibility *)self setAccessibilityValue:v5];
  }
}

@end