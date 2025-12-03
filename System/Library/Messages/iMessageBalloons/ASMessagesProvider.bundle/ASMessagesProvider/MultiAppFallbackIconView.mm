@interface MultiAppFallbackIconView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC18ASMessagesProvider24MultiAppFallbackIconView)initWithCoder:(id)coder;
- (_TtC18ASMessagesProvider24MultiAppFallbackIconView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation MultiAppFallbackIconView

- (_TtC18ASMessagesProvider24MultiAppFallbackIconView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  v9 = sub_BD88(&qword_9464F8);
  __chkstk_darwin(v9);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider24MultiAppFallbackIconView_iconViews) = _swiftEmptyArrayStorage;
  sub_759210();
  sub_7667C0();
  sub_31D0F0();
  sub_767480();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider24MultiAppFallbackIconView_configuration) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider24MultiAppFallbackIconView_sizeCategory) = 7;
  v12.receiver = self;
  v12.super_class = ObjectType;
  height = [(MultiAppFallbackIconView *)&v12 initWithFrame:x, y, width, height];
  [(MultiAppFallbackIconView *)height setLayoutMargins:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
  return height;
}

- (_TtC18ASMessagesProvider24MultiAppFallbackIconView)initWithCoder:(id)coder
{
  v4 = sub_BD88(&qword_9464F8);
  __chkstk_darwin(v4);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider24MultiAppFallbackIconView_iconViews) = _swiftEmptyArrayStorage;
  sub_759210();
  sub_7667C0();
  sub_31D0F0();
  sub_767480();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider24MultiAppFallbackIconView_configuration) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider24MultiAppFallbackIconView_sizeCategory) = 7;
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_31CA70();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  traitCollection = [(MultiAppFallbackIconView *)selfCopy traitCollection];
  sub_31CCA4(traitCollection, width, height);
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

@end