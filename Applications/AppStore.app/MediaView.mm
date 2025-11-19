@interface MediaView
- (UIColor)backgroundColor;
- (_TtC8AppStore9MediaView)initWithCoder:(id)a3;
- (_TtC8AppStore9MediaView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
@end

@implementation MediaView

- (UIColor)backgroundColor
{
  v2 = [*(*(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents) backgroundColor];

  return v2;
}

- (void)setBackgroundColor:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10047B2DC(a3);
}

- (_TtC8AppStore9MediaView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore9MediaView_reflectionView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore9MediaView_reflectionAmount) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore9MediaView_isRubberbanding) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_10047BD30();
}

- (_TtC8AppStore9MediaView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end