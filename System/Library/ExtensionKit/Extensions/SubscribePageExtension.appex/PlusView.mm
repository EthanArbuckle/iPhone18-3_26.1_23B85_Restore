@interface PlusView
- (_TtC22SubscribePageExtension8PlusView)initWithCoder:(id)coder;
- (_TtC22SubscribePageExtension8PlusView)initWithFrame:(CGRect)frame;
- (void)drawRect:(CGRect)rect;
@end

@implementation PlusView

- (_TtC22SubscribePageExtension8PlusView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension8PlusView_plusColor) = 0;
  result = sub_100754644();
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
  sub_1004587F4(x, y, width, height);
}

- (_TtC22SubscribePageExtension8PlusView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end