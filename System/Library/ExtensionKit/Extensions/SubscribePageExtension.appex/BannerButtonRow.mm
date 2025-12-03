@interface BannerButtonRow
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC22SubscribePageExtension15BannerButtonRow)initWithCoder:(id)coder;
- (_TtC22SubscribePageExtension15BannerButtonRow)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation BannerButtonRow

- (_TtC22SubscribePageExtension15BannerButtonRow)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  v9 = sub_10000C518(&qword_10092AF00);
  __chkstk_darwin(v9);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension15BannerButtonRow_buttonViews) = _swiftEmptyArrayStorage;
  sub_100016C60(0, &qword_10093B420);
  sub_100750624();
  sub_100251410();
  sub_1007512E4();
  v12.receiver = self;
  v12.super_class = ObjectType;
  height = [(BannerButtonRow *)&v12 initWithFrame:x, y, width, height];
  [(BannerButtonRow *)height setLayoutMargins:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
  return height;
}

- (_TtC22SubscribePageExtension15BannerButtonRow)initWithCoder:(id)coder
{
  v4 = sub_10000C518(&qword_10092AF00);
  __chkstk_darwin(v4);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension15BannerButtonRow_buttonViews) = _swiftEmptyArrayStorage;
  sub_100016C60(0, &qword_10093B420);
  sub_100750624();
  sub_100251410();
  sub_1007512E4();
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100250984();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = sub_100250E58(width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

@end