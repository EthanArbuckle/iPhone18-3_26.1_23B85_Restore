@interface MultiAppFallbackIconView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC8AppStore24MultiAppFallbackIconView)initWithCoder:(id)coder;
- (_TtC8AppStore24MultiAppFallbackIconView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation MultiAppFallbackIconView

- (_TtC8AppStore24MultiAppFallbackIconView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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
  height = [(MultiAppFallbackIconView *)&v12 initWithFrame:x, y, width, height];
  [(MultiAppFallbackIconView *)height setLayoutMargins:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
  return height;
}

- (_TtC8AppStore24MultiAppFallbackIconView)initWithCoder:(id)coder
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
  selfCopy = self;
  sub_10017C990();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  traitCollection = [(MultiAppFallbackIconView *)selfCopy traitCollection];
  sub_10017CBC4(traitCollection, width, height);
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

@end