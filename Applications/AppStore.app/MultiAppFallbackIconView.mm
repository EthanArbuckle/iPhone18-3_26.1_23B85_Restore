@interface MultiAppFallbackIconView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC8AppStore24MultiAppFallbackIconView)initWithCoder:(id)a3;
- (_TtC8AppStore24MultiAppFallbackIconView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation MultiAppFallbackIconView

- (_TtC8AppStore24MultiAppFallbackIconView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  v9 = sub_10002849C(&qword_100975330);
  __chkstk_darwin(v9);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore24MultiAppFallbackIconView_iconViews) = _swiftEmptyArrayStorage;
  type metadata accessor for ArtworkView();
  ViewRecycler.init()();
  sub_10017D010();
  ReusePool.init(recycler:limit:)();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore24MultiAppFallbackIconView_configuration) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore24MultiAppFallbackIconView_sizeCategory) = 7;
  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(MultiAppFallbackIconView *)&v12 initWithFrame:x, y, width, height];
  [(MultiAppFallbackIconView *)v10 setLayoutMargins:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
  return v10;
}

- (_TtC8AppStore24MultiAppFallbackIconView)initWithCoder:(id)a3
{
  v4 = sub_10002849C(&qword_100975330);
  __chkstk_darwin(v4);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore24MultiAppFallbackIconView_iconViews) = _swiftEmptyArrayStorage;
  type metadata accessor for ArtworkView();
  ViewRecycler.init()();
  sub_10017D010();
  ReusePool.init(recycler:limit:)();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore24MultiAppFallbackIconView_configuration) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore24MultiAppFallbackIconView_sizeCategory) = 7;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_10017C990();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  v6 = [(MultiAppFallbackIconView *)v5 traitCollection];
  sub_10017CBC4(v6, width, height);
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

@end