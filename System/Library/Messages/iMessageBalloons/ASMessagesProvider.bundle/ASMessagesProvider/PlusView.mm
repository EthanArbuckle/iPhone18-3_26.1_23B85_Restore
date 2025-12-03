@interface PlusView
- (_TtC18ASMessagesProvider8PlusView)initWithCoder:(id)coder;
- (_TtC18ASMessagesProvider8PlusView)initWithFrame:(CGRect)frame;
- (void)drawRect:(CGRect)rect;
@end

@implementation PlusView

- (_TtC18ASMessagesProvider8PlusView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider8PlusView_plusColor) = 0;
  result = sub_76A840();
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
  sub_61ED7C(x, y, width, height);
}

- (_TtC18ASMessagesProvider8PlusView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end