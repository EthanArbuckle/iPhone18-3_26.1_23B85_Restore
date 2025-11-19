@interface FMSymbolBulletedListView
- (_TtC6FindMy24FMSymbolBulletedListView)init;
- (_TtC6FindMy24FMSymbolBulletedListView)initWithCoder:(id)a3;
- (_TtC6FindMy24FMSymbolBulletedListView)initWithFrame:(CGRect)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation FMSymbolBulletedListView

- (_TtC6FindMy24FMSymbolBulletedListView)init
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy24FMSymbolBulletedListView_bulletViews) = _swiftEmptyArrayStorage;
  v4.receiver = self;
  v4.super_class = type metadata accessor for FMSymbolBulletedListView();
  v2 = [(FMSymbolBulletedListView *)&v4 initWithFrame:0.0, 0.0, 0.0, 0.0];
  [(FMSymbolBulletedListView *)v2 setAxis:1];
  [(FMSymbolBulletedListView *)v2 setAlignment:0];
  [(FMSymbolBulletedListView *)v2 setBaselineRelativeArrangement:1];

  return v2;
}

- (_TtC6FindMy24FMSymbolBulletedListView)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy24FMSymbolBulletedListView_bulletViews) = _swiftEmptyArrayStorage;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  v11.receiver = self;
  v11.super_class = type metadata accessor for FMSymbolBulletedListView();
  v4 = a3;
  v5 = v11.receiver;
  [(FMSymbolBulletedListView *)&v11 traitCollectionDidChange:v4];
  if (qword_1006AEB98 != -1)
  {
    swift_once();
  }

  v6 = qword_1006D4368;
  v7 = objc_allocWithZone(UIFontMetrics);
  v8 = [v7 initForTextStyle:{v6, v11.receiver, v11.super_class}];
  [v8 scaledValueForValue:36.0];
  v10 = v9;

  [v5 setSpacing:v10];
}

- (_TtC6FindMy24FMSymbolBulletedListView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end