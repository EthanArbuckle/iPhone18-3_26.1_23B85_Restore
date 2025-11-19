@interface IconGridView
- (_TtC18ASMessagesProvider12IconGridView)initWithCoder:(id)a3;
- (_TtC18ASMessagesProvider12IconGridView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation IconGridView

- (_TtC18ASMessagesProvider12IconGridView)initWithCoder:(id)a3
{
  v4 = sub_BD88(&qword_9464F8);
  __chkstk_darwin(v4);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider12IconGridView_artworkViews) = _swiftEmptyArrayStorage;
  sub_759210();
  sub_7667C0();
  sub_31D0F0();
  sub_767480();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider12IconGridView_impressionableArtworks) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider12IconGridView_artworkLoader) = 0;
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_533488();
}

- (_TtC18ASMessagesProvider12IconGridView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end