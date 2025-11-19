@interface FMSymbolBulletedListItemView
- (NSLayoutYAxisAnchor)firstBaselineAnchor;
- (NSLayoutYAxisAnchor)lastBaselineAnchor;
- (_TtC6FindMy28FMSymbolBulletedListItemView)initWithFrame:(CGRect)a3;
@end

@implementation FMSymbolBulletedListItemView

- (NSLayoutYAxisAnchor)firstBaselineAnchor
{
  v2 = [*(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy28FMSymbolBulletedListItemView_titleLabel) firstBaselineAnchor];

  return v2;
}

- (NSLayoutYAxisAnchor)lastBaselineAnchor
{
  v2 = [*(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy28FMSymbolBulletedListItemView_subtitleLabel) lastBaselineAnchor];

  return v2;
}

- (_TtC6FindMy28FMSymbolBulletedListItemView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end