@interface MultiAppFallbackIconView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC22SubscribePageExtension24MultiAppFallbackIconView)initWithCoder:(id)coder;
- (_TtC22SubscribePageExtension24MultiAppFallbackIconView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation MultiAppFallbackIconView

- (_TtC22SubscribePageExtension24MultiAppFallbackIconView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  v9 = sub_10000C518(&qword_10092DE18);
  __chkstk_darwin(v9);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension24MultiAppFallbackIconView_iconViews) = _swiftEmptyArrayStorage;
  sub_1007433C4();
  sub_100750624();
  sub_100311458();
  sub_1007512E4();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension24MultiAppFallbackIconView_configuration) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension24MultiAppFallbackIconView_sizeCategory) = 7;
  v12.receiver = self;
  v12.super_class = ObjectType;
  height = [(MultiAppFallbackIconView *)&v12 initWithFrame:x, y, width, height];
  [(MultiAppFallbackIconView *)height setLayoutMargins:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
  return height;
}

- (_TtC22SubscribePageExtension24MultiAppFallbackIconView)initWithCoder:(id)coder
{
  v4 = sub_10000C518(&qword_10092DE18);
  __chkstk_darwin(v4);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension24MultiAppFallbackIconView_iconViews) = _swiftEmptyArrayStorage;
  sub_1007433C4();
  sub_100750624();
  sub_100311458();
  sub_1007512E4();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension24MultiAppFallbackIconView_configuration) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension24MultiAppFallbackIconView_sizeCategory) = 7;
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100310DD8();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  traitCollection = [(MultiAppFallbackIconView *)selfCopy traitCollection];
  sub_10031100C(traitCollection, width, height);
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

@end