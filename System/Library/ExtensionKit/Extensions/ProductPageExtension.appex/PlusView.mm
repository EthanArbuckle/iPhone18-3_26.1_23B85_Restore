@interface PlusView
- (_TtC20ProductPageExtension8PlusView)initWithCoder:(id)coder;
- (_TtC20ProductPageExtension8PlusView)initWithFrame:(CGRect)frame;
- (void)drawRect:(CGRect)rect;
@end

@implementation PlusView

- (_TtC20ProductPageExtension8PlusView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension8PlusView_plusColor) = 0;
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
  sub_100622A7C(x, y, width, height);
}

- (_TtC20ProductPageExtension8PlusView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end