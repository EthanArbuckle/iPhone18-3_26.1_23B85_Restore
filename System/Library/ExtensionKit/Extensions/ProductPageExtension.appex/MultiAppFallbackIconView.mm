@interface MultiAppFallbackIconView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC20ProductPageExtension24MultiAppFallbackIconView)initWithCoder:(id)coder;
- (_TtC20ProductPageExtension24MultiAppFallbackIconView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation MultiAppFallbackIconView

- (_TtC20ProductPageExtension24MultiAppFallbackIconView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  v9 = sub_10000A5D4(&qword_10094B7E8);
  __chkstk_darwin(v9);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension24MultiAppFallbackIconView_iconViews) = _swiftEmptyArrayStorage;
  sub_10075FD2C();
  sub_10076D4CC();
  sub_10018E6DC();
  sub_10076E18C();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension24MultiAppFallbackIconView_configuration) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension24MultiAppFallbackIconView_sizeCategory) = 7;
  v12.receiver = self;
  v12.super_class = ObjectType;
  height = [(MultiAppFallbackIconView *)&v12 initWithFrame:x, y, width, height];
  [(MultiAppFallbackIconView *)height setLayoutMargins:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
  return height;
}

- (_TtC20ProductPageExtension24MultiAppFallbackIconView)initWithCoder:(id)coder
{
  v4 = sub_10000A5D4(&qword_10094B7E8);
  __chkstk_darwin(v4);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension24MultiAppFallbackIconView_iconViews) = _swiftEmptyArrayStorage;
  sub_10075FD2C();
  sub_10076D4CC();
  sub_10018E6DC();
  sub_10076E18C();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension24MultiAppFallbackIconView_configuration) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension24MultiAppFallbackIconView_sizeCategory) = 7;
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10018E05C();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  traitCollection = [(MultiAppFallbackIconView *)selfCopy traitCollection];
  sub_10018E290(traitCollection, width, height);
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

@end