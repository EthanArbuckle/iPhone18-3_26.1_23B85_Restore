@interface FMSymbolBulletedListItemView
- (NSLayoutYAxisAnchor)firstBaselineAnchor;
- (NSLayoutYAxisAnchor)lastBaselineAnchor;
- (_TtC6FindMy28FMSymbolBulletedListItemView)initWithFrame:(CGRect)frame;
@end

@implementation FMSymbolBulletedListItemView

- (NSLayoutYAxisAnchor)firstBaselineAnchor
{
  firstBaselineAnchor = [*(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy28FMSymbolBulletedListItemView_titleLabel) firstBaselineAnchor];

  return firstBaselineAnchor;
}

- (NSLayoutYAxisAnchor)lastBaselineAnchor
{
  lastBaselineAnchor = [*(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy28FMSymbolBulletedListItemView_subtitleLabel) lastBaselineAnchor];

  return lastBaselineAnchor;
}

- (_TtC6FindMy28FMSymbolBulletedListItemView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end