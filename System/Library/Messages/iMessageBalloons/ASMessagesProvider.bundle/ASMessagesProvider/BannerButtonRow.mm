@interface BannerButtonRow
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC18ASMessagesProvider15BannerButtonRow)initWithCoder:(id)coder;
- (_TtC18ASMessagesProvider15BannerButtonRow)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation BannerButtonRow

- (_TtC18ASMessagesProvider15BannerButtonRow)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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
  height = [(BannerButtonRow *)&v12 initWithFrame:x, y, width, height];
  [(BannerButtonRow *)height setLayoutMargins:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
  return height;
}

- (_TtC18ASMessagesProvider15BannerButtonRow)initWithCoder:(id)coder
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
  selfCopy = self;
  sub_36102C();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = sub_361500(width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

@end