@interface FMSymbolBulletedListView
- (_TtC21FindMyRemoteUIService24FMSymbolBulletedListView)initWithCoder:(id)coder;
- (_TtC21FindMyRemoteUIService24FMSymbolBulletedListView)initWithFrame:(CGRect)frame;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation FMSymbolBulletedListView

- (_TtC21FindMyRemoteUIService24FMSymbolBulletedListView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC21FindMyRemoteUIService24FMSymbolBulletedListView_headerView;
  *(&self->super.super.super.super.isa + v4) = [objc_allocWithZone(type metadata accessor for FMSymbolBulletedListHeaderView()) init];
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC21FindMyRemoteUIService24FMSymbolBulletedListView_bulletViews) = _swiftEmptyArrayStorage;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  v11.receiver = self;
  v11.super_class = type metadata accessor for FMSymbolBulletedListView();
  changeCopy = change;
  v5 = v11.receiver;
  [(FMSymbolBulletedListView *)&v11 traitCollectionDidChange:changeCopy];
  if (qword_100086D98 != -1)
  {
    swift_once();
  }

  v6 = qword_10008C028;
  v7 = objc_allocWithZone(UIFontMetrics);
  v8 = [v7 initForTextStyle:{v6, v11.receiver, v11.super_class}];
  [v8 scaledValueForValue:36.0];
  v10 = v9;

  [v5 setSpacing:v10];
}

- (_TtC21FindMyRemoteUIService24FMSymbolBulletedListView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end