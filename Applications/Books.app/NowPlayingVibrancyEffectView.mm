@interface NowPlayingVibrancyEffectView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC5Books28NowPlayingVibrancyEffectView)initWithCoder:(id)coder;
- (_TtC5Books28NowPlayingVibrancyEffectView)initWithEffect:(id)effect;
- (void)layoutSubviews;
@end

@implementation NowPlayingVibrancyEffectView

- (_TtC5Books28NowPlayingVibrancyEffectView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5Books28NowPlayingVibrancyEffectView_vibrancyState) = 1;
  result = sub_1007A38A4();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [*(&self->super.super.super.super.isa + OBJC_IVAR____TtC5Books28NowPlayingVibrancyEffectView_contentItemView) sizeThatFits:{fits.width, fits.height}];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)intrinsicContentSize
{
  [*(&self->super.super.super.super.isa + OBJC_IVAR____TtC5Books28NowPlayingVibrancyEffectView_contentItemView) intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for NowPlayingVibrancyEffectView();
  v2 = v4.receiver;
  [(NowPlayingVibrancyEffectView *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC5Books28NowPlayingVibrancyEffectView_contentItemView];
  [v2 bounds];
  [v3 setFrame:?];
}

- (_TtC5Books28NowPlayingVibrancyEffectView)initWithEffect:(id)effect
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end