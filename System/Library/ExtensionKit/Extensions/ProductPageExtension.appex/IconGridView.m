@interface IconGridView
- (_TtC20ProductPageExtension12IconGridView)initWithCoder:(id)a3;
- (_TtC20ProductPageExtension12IconGridView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation IconGridView

- (_TtC20ProductPageExtension12IconGridView)initWithCoder:(id)a3
{
  v4 = sub_10000A5D4(&qword_10094B7E8);
  __chkstk_darwin(v4);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension12IconGridView_artworkViews) = _swiftEmptyArrayStorage;
  sub_10075FD2C();
  sub_10076D4CC();
  sub_10018E6DC();
  sub_10076E18C();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension12IconGridView_impressionableArtworks) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension12IconGridView_artworkLoader) = 0;
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1003BEDF4();
}

- (_TtC20ProductPageExtension12IconGridView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end