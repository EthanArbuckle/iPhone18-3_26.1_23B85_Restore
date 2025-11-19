@interface MPUNowPlayingIndicatorView
- (double)bk_width;
@end

@implementation MPUNowPlayingIndicatorView

- (double)bk_width
{
  [(MPUNowPlayingIndicatorView *)self levelWidth];
  v4 = v3;
  v5 = [(MPUNowPlayingIndicatorView *)self numberOfLevels];
  [(MPUNowPlayingIndicatorView *)self interLevelSpacing];
  return v6 * ([(MPUNowPlayingIndicatorView *)self numberOfLevels]- 1) + v4 * v5;
}

@end