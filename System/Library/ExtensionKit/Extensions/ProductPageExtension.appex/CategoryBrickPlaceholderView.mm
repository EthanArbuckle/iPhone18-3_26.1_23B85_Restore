@interface CategoryBrickPlaceholderView
- (_TtC20ProductPageExtension28CategoryBrickPlaceholderView)initWithCoder:(id)a3;
- (_TtC20ProductPageExtension28CategoryBrickPlaceholderView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation CategoryBrickPlaceholderView

- (_TtC20ProductPageExtension28CategoryBrickPlaceholderView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC20ProductPageExtension28CategoryBrickPlaceholderView_artworkPlaceholder;
  sub_10075FD2C();
  v10 = sub_10075FB4C();
  sub_1007638EC();

  *(&self->super.super.super.isa + v9) = v10;
  v13.receiver = self;
  v13.super_class = ObjectType;
  v11 = [(CategoryBrickPlaceholderView *)&v13 initWithFrame:x, y, width, height];
  [(CategoryBrickPlaceholderView *)v11 addSubview:*(&v11->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension28CategoryBrickPlaceholderView_artworkPlaceholder)];
  return v11;
}

- (_TtC20ProductPageExtension28CategoryBrickPlaceholderView)initWithCoder:(id)a3
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
  v2 = self;
  sub_1005CE2A4();
}

@end