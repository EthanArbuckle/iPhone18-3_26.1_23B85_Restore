@interface FMSymbolBulletedListHeaderView
- (NSLayoutYAxisAnchor)firstBaselineAnchor;
- (NSLayoutYAxisAnchor)lastBaselineAnchor;
- (_TtC6FindMy30FMSymbolBulletedListHeaderView)init;
- (_TtC6FindMy30FMSymbolBulletedListHeaderView)initWithCoder:(id)coder;
- (_TtC6FindMy30FMSymbolBulletedListHeaderView)initWithFrame:(CGRect)frame;
@end

@implementation FMSymbolBulletedListHeaderView

- (NSLayoutYAxisAnchor)firstBaselineAnchor
{
  firstBaselineAnchor = [*(&self->super.super.super.isa + OBJC_IVAR____TtC6FindMy30FMSymbolBulletedListHeaderView_titleLabel) firstBaselineAnchor];

  return firstBaselineAnchor;
}

- (NSLayoutYAxisAnchor)lastBaselineAnchor
{
  bottomAnchor = [*(&self->super.super.super.isa + OBJC_IVAR____TtC6FindMy30FMSymbolBulletedListHeaderView_separatorView) bottomAnchor];

  return bottomAnchor;
}

- (_TtC6FindMy30FMSymbolBulletedListHeaderView)init
{
  v3 = OBJC_IVAR____TtC6FindMy30FMSymbolBulletedListHeaderView_titleLabel;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(UILabel) init];
  v4 = OBJC_IVAR____TtC6FindMy30FMSymbolBulletedListHeaderView_separatorView;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(UIView) init];
  v7.receiver = self;
  v7.super_class = type metadata accessor for FMSymbolBulletedListHeaderView();
  v5 = [(FMSymbolBulletedListHeaderView *)&v7 initWithFrame:0.0, 0.0, 0.0, 0.0];
  sub_10034E054();
  sub_10034E1DC();

  return v5;
}

- (_TtC6FindMy30FMSymbolBulletedListHeaderView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC6FindMy30FMSymbolBulletedListHeaderView_titleLabel;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(UILabel) init];
  v5 = OBJC_IVAR____TtC6FindMy30FMSymbolBulletedListHeaderView_separatorView;
  *(&self->super.super.super.isa + v5) = [objc_allocWithZone(UIView) init];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC6FindMy30FMSymbolBulletedListHeaderView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end