@interface FMSymbolBulletedListHeaderView
- (NSLayoutYAxisAnchor)firstBaselineAnchor;
- (NSLayoutYAxisAnchor)lastBaselineAnchor;
- (_TtC21FindMyRemoteUIService30FMSymbolBulletedListHeaderView)init;
- (_TtC21FindMyRemoteUIService30FMSymbolBulletedListHeaderView)initWithCoder:(id)coder;
- (_TtC21FindMyRemoteUIService30FMSymbolBulletedListHeaderView)initWithFrame:(CGRect)frame;
@end

@implementation FMSymbolBulletedListHeaderView

- (NSLayoutYAxisAnchor)firstBaselineAnchor
{
  firstBaselineAnchor = [*(&self->super.super.super.isa + OBJC_IVAR____TtC21FindMyRemoteUIService30FMSymbolBulletedListHeaderView_titleLabel) firstBaselineAnchor];

  return firstBaselineAnchor;
}

- (NSLayoutYAxisAnchor)lastBaselineAnchor
{
  bottomAnchor = [*(&self->super.super.super.isa + OBJC_IVAR____TtC21FindMyRemoteUIService30FMSymbolBulletedListHeaderView_separatorView) bottomAnchor];

  return bottomAnchor;
}

- (_TtC21FindMyRemoteUIService30FMSymbolBulletedListHeaderView)init
{
  v3 = OBJC_IVAR____TtC21FindMyRemoteUIService30FMSymbolBulletedListHeaderView_titleLabel;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(UILabel) init];
  v4 = OBJC_IVAR____TtC21FindMyRemoteUIService30FMSymbolBulletedListHeaderView_separatorView;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(UIView) init];
  v7.receiver = self;
  v7.super_class = type metadata accessor for FMSymbolBulletedListHeaderView();
  v5 = [(FMSymbolBulletedListHeaderView *)&v7 initWithFrame:0.0, 0.0, 0.0, 0.0];
  sub_10003C1A4();
  sub_10003C300();

  return v5;
}

- (_TtC21FindMyRemoteUIService30FMSymbolBulletedListHeaderView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC21FindMyRemoteUIService30FMSymbolBulletedListHeaderView_titleLabel;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(UILabel) init];
  v5 = OBJC_IVAR____TtC21FindMyRemoteUIService30FMSymbolBulletedListHeaderView_separatorView;
  *(&self->super.super.super.isa + v5) = [objc_allocWithZone(UIView) init];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC21FindMyRemoteUIService30FMSymbolBulletedListHeaderView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end