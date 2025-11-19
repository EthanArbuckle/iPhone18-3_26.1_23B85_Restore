@interface NowPlayingTrackTitleStackView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NowPlayingTrackTitleStackView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation NowPlayingTrackTitleStackView

- (void)layoutSubviews
{
  v2 = self;
  NowPlaying.TrackTitleStackView.layoutSubviews()();
}

- (CGSize)intrinsicContentSize
{
  v2 = self;
  NowPlaying.TrackTitleStackView.intrinsicContentSize.getter();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(NowPlayingTrackTitleStackView *)self intrinsicContentSize:a3.width];
  result.height = v4;
  result.width = v3;
  return result;
}

- (NowPlayingTrackTitleStackView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end