@interface BannerButtonRow
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC8AppStore15BannerButtonRow)initWithCoder:(id)coder;
- (_TtC8AppStore15BannerButtonRow)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation BannerButtonRow

- (_TtC8AppStore15BannerButtonRow)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  v9 = sub_10002849C(&qword_100975C10);
  __chkstk_darwin(v9);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore15BannerButtonRow_buttonViews) = _swiftEmptyArrayStorage;
  sub_100005744(0, &qword_1009811E0);
  ViewRecycler.init()();
  sub_100143EA0();
  ReusePool.init(recycler:limit:)();
  v12.receiver = self;
  v12.super_class = ObjectType;
  height = [(BannerButtonRow *)&v12 initWithFrame:x, y, width, height];
  [(BannerButtonRow *)height setLayoutMargins:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
  return height;
}

- (_TtC8AppStore15BannerButtonRow)initWithCoder:(id)coder
{
  v4 = sub_10002849C(&qword_100975C10);
  __chkstk_darwin(v4);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore15BannerButtonRow_buttonViews) = _swiftEmptyArrayStorage;
  sub_100005744(0, &qword_1009811E0);
  ViewRecycler.init()();
  sub_100143EA0();
  ReusePool.init(recycler:limit:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100143414();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = sub_1001438E8(width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

@end