@interface BannerButtonRow
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC18ASMessagesProvider15BannerButtonRow)initWithCoder:(id)a3;
- (_TtC18ASMessagesProvider15BannerButtonRow)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation BannerButtonRow

- (_TtC18ASMessagesProvider15BannerButtonRow)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  v9 = sub_BD88(&qword_950B38);
  __chkstk_darwin(v9);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider15BannerButtonRow_buttonViews) = _swiftEmptyArrayStorage;
  sub_BE70(0, &qword_960F00);
  sub_7667C0();
  sub_361AB8();
  sub_767480();
  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(BannerButtonRow *)&v12 initWithFrame:x, y, width, height];
  [(BannerButtonRow *)v10 setLayoutMargins:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
  return v10;
}

- (_TtC18ASMessagesProvider15BannerButtonRow)initWithCoder:(id)a3
{
  v4 = sub_BD88(&qword_950B38);
  __chkstk_darwin(v4);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider15BannerButtonRow_buttonViews) = _swiftEmptyArrayStorage;
  sub_BE70(0, &qword_960F00);
  sub_7667C0();
  sub_361AB8();
  sub_767480();
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_36102C();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  v6 = sub_361500(width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

@end