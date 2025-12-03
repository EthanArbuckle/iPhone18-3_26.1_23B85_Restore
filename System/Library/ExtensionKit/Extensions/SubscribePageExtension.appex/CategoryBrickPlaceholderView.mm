@interface CategoryBrickPlaceholderView
- (_TtC22SubscribePageExtension28CategoryBrickPlaceholderView)initWithCoder:(id)coder;
- (_TtC22SubscribePageExtension28CategoryBrickPlaceholderView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation CategoryBrickPlaceholderView

- (_TtC22SubscribePageExtension28CategoryBrickPlaceholderView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC22SubscribePageExtension28CategoryBrickPlaceholderView_artworkPlaceholder;
  sub_1007433C4();
  v10 = sub_1007431E4();
  sub_100746E74();

  *(&self->super.super.super.isa + v9) = v10;
  v13.receiver = self;
  v13.super_class = ObjectType;
  height = [(CategoryBrickPlaceholderView *)&v13 initWithFrame:x, y, width, height];
  [(CategoryBrickPlaceholderView *)height addSubview:*(&height->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension28CategoryBrickPlaceholderView_artworkPlaceholder)];
  return height;
}

- (_TtC22SubscribePageExtension28CategoryBrickPlaceholderView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC22SubscribePageExtension28CategoryBrickPlaceholderView_artworkPlaceholder;
  sub_1007433C4();
  v5 = sub_1007431E4();
  sub_100746E74();

  *(&self->super.super.super.isa + v4) = v5;
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10038B284();
}

@end