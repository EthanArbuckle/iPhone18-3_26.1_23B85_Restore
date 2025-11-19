@interface PlusView
- (_TtC20ProductPageExtension8PlusView)initWithCoder:(id)a3;
- (_TtC20ProductPageExtension8PlusView)initWithFrame:(CGRect)a3;
- (void)drawRect:(CGRect)a3;
@end

@implementation PlusView

- (_TtC20ProductPageExtension8PlusView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension8PlusView_plusColor) = 0;
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  sub_100622A7C(x, y, width, height);
}

- (_TtC20ProductPageExtension8PlusView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end