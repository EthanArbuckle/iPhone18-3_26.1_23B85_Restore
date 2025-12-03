@interface LoadingView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC11MusicCoreUI11LoadingView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation LoadingView

- (void)layoutSubviews
{
  selfCopy = self;
  LoadingView.layoutSubviews()();
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  v3 = LoadingView.sizeThatFits(_:)(0.0, 0.0);
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = LoadingView.sizeThatFits(_:)(width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (_TtC11MusicCoreUI11LoadingView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end