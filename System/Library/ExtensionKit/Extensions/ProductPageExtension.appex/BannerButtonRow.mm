@interface BannerButtonRow
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC20ProductPageExtension15BannerButtonRow)initWithCoder:(id)coder;
- (_TtC20ProductPageExtension15BannerButtonRow)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation BannerButtonRow

- (_TtC20ProductPageExtension15BannerButtonRow)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  v9 = sub_10000A5D4(&qword_10094E548);
  __chkstk_darwin(v9);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension15BannerButtonRow_buttonViews) = _swiftEmptyArrayStorage;
  sub_100016F40(0, &qword_100947240);
  sub_10076D4CC();
  sub_1004BB6F0();
  sub_10076E18C();
  v12.receiver = self;
  v12.super_class = ObjectType;
  height = [(BannerButtonRow *)&v12 initWithFrame:x, y, width, height];
  [(BannerButtonRow *)height setLayoutMargins:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
  return height;
}

- (_TtC20ProductPageExtension15BannerButtonRow)initWithCoder:(id)coder
{
  v4 = sub_10000A5D4(&qword_10094E548);
  __chkstk_darwin(v4);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension15BannerButtonRow_buttonViews) = _swiftEmptyArrayStorage;
  sub_100016F40(0, &qword_100947240);
  sub_10076D4CC();
  sub_1004BB6F0();
  sub_10076E18C();
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1004BAC64();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = sub_1004BB138(width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

@end