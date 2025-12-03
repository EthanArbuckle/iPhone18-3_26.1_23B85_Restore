@interface CategoryBrickPlaceholderView
- (_TtC20ProductPageExtension28CategoryBrickPlaceholderView)initWithCoder:(id)coder;
- (_TtC20ProductPageExtension28CategoryBrickPlaceholderView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation CategoryBrickPlaceholderView

- (_TtC20ProductPageExtension28CategoryBrickPlaceholderView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC20ProductPageExtension28CategoryBrickPlaceholderView_artworkPlaceholder;
  sub_10075FD2C();
  v10 = sub_10075FB4C();
  sub_1007638EC();

  *(&self->super.super.super.isa + v9) = v10;
  v13.receiver = self;
  v13.super_class = ObjectType;
  height = [(CategoryBrickPlaceholderView *)&v13 initWithFrame:x, y, width, height];
  [(CategoryBrickPlaceholderView *)height addSubview:*(&height->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension28CategoryBrickPlaceholderView_artworkPlaceholder)];
  return height;
}

- (_TtC20ProductPageExtension28CategoryBrickPlaceholderView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC20ProductPageExtension28CategoryBrickPlaceholderView_artworkPlaceholder;
  sub_10075FD2C();
  v5 = sub_10075FB4C();
  sub_1007638EC();

  *(&self->super.super.super.isa + v4) = v5;
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1005CE2A4();
}

@end