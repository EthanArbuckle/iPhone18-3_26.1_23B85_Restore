@interface CategoryBrickPlaceholderView
- (_TtC18ASMessagesProvider28CategoryBrickPlaceholderView)initWithCoder:(id)coder;
- (_TtC18ASMessagesProvider28CategoryBrickPlaceholderView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation CategoryBrickPlaceholderView

- (_TtC18ASMessagesProvider28CategoryBrickPlaceholderView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC18ASMessagesProvider28CategoryBrickPlaceholderView_artworkPlaceholder;
  sub_759210();
  v10 = sub_759030();
  sub_75CD10();

  *(&self->super.super.super.isa + v9) = v10;
  v13.receiver = self;
  v13.super_class = ObjectType;
  height = [(CategoryBrickPlaceholderView *)&v13 initWithFrame:x, y, width, height];
  [(CategoryBrickPlaceholderView *)height addSubview:*(&height->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider28CategoryBrickPlaceholderView_artworkPlaceholder)];
  return height;
}

- (_TtC18ASMessagesProvider28CategoryBrickPlaceholderView)initWithCoder:(id)coder
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
  selfCopy = self;
  sub_58702C();
}

@end