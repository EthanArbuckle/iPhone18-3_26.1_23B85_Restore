@interface NowPlayingTrackTitleStackView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NowPlayingTrackTitleStackView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation NowPlayingTrackTitleStackView

- (void)layoutSubviews
{
  selfCopy = self;
  NowPlaying.TrackTitleStackView.layoutSubviews()();
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  NowPlaying.TrackTitleStackView.intrinsicContentSize.getter();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(NowPlayingTrackTitleStackView *)self intrinsicContentSize:fits.width];
  result.height = v4;
  result.width = v3;
  return result;
}

- (NowPlayingTrackTitleStackView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end