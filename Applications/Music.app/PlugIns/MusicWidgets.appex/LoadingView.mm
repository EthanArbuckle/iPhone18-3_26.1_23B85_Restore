@interface LoadingView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC11MusicCoreUI11LoadingView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation LoadingView

- (void)layoutSubviews
{
  v2 = self;
  LoadingView.layoutSubviews()();
}

- (CGSize)intrinsicContentSize
{
  v2 = self;
  v3 = LoadingView.sizeThatFits(_:)(0.0, 0.0);
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  v6 = LoadingView.sizeThatFits(_:)(width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (_TtC11MusicCoreUI11LoadingView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end