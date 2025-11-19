@interface IconGridView
- (_TtC22SubscribePageExtension12IconGridView)initWithCoder:(id)a3;
- (_TtC22SubscribePageExtension12IconGridView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation IconGridView

- (_TtC22SubscribePageExtension12IconGridView)initWithCoder:(id)a3
{
  v4 = sub_10000C518(&qword_10092DE18);
  __chkstk_darwin(v4);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension12IconGridView_artworkViews) = _swiftEmptyArrayStorage;
  sub_1007433C4();
  sub_100750624();
  sub_100311458();
  sub_1007512E4();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension12IconGridView_impressionableArtworks) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension12IconGridView_artworkLoader) = 0;
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_10071A1A4();
}

- (_TtC22SubscribePageExtension12IconGridView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end