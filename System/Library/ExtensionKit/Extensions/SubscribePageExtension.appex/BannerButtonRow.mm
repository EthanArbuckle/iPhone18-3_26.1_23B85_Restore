@interface BannerButtonRow
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC22SubscribePageExtension15BannerButtonRow)initWithCoder:(id)a3;
- (_TtC22SubscribePageExtension15BannerButtonRow)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation BannerButtonRow

- (_TtC22SubscribePageExtension15BannerButtonRow)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
  v10 = [(BannerButtonRow *)&v12 initWithFrame:x, y, width, height];
  [(BannerButtonRow *)v10 setLayoutMargins:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
  return v10;
}

- (_TtC22SubscribePageExtension15BannerButtonRow)initWithCoder:(id)a3
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
  v2 = self;
  sub_100250984();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  v6 = sub_100250E58(width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

@end