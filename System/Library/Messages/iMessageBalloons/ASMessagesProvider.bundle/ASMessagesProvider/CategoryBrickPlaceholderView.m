@interface CategoryBrickPlaceholderView
- (_TtC18ASMessagesProvider28CategoryBrickPlaceholderView)initWithCoder:(id)a3;
- (_TtC18ASMessagesProvider28CategoryBrickPlaceholderView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation CategoryBrickPlaceholderView

- (_TtC18ASMessagesProvider28CategoryBrickPlaceholderView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC18ASMessagesProvider28CategoryBrickPlaceholderView_artworkPlaceholder;
  sub_759210();
  v10 = sub_759030();
  sub_75CD10();

  *(&self->super.super.super.isa + v9) = v10;
  v13.receiver = self;
  v13.super_class = ObjectType;
  v11 = [(CategoryBrickPlaceholderView *)&v13 initWithFrame:x, y, width, height];
  [(CategoryBrickPlaceholderView *)v11 addSubview:*(&v11->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider28CategoryBrickPlaceholderView_artworkPlaceholder)];
  return v11;
}

- (_TtC18ASMessagesProvider28CategoryBrickPlaceholderView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC18ASMessagesProvider28CategoryBrickPlaceholderView_artworkPlaceholder;
  sub_759210();
  v5 = sub_759030();
  sub_75CD10();

  *(&self->super.super.super.isa + v4) = v5;
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_58702C();
}

@end