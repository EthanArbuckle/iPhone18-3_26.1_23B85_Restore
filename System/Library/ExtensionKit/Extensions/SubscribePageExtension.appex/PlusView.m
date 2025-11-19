@interface PlusView
- (_TtC22SubscribePageExtension8PlusView)initWithCoder:(id)a3;
- (_TtC22SubscribePageExtension8PlusView)initWithFrame:(CGRect)a3;
- (void)drawRect:(CGRect)a3;
@end

@implementation PlusView

- (_TtC22SubscribePageExtension8PlusView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension8PlusView_plusColor) = 0;
  result = sub_100754644();
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
  sub_1004587F4(x, y, width, height);
}

- (_TtC22SubscribePageExtension8PlusView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end