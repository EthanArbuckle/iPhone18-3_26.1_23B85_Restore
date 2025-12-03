@interface PlusView
- (_TtC8AppStore8PlusView)initWithCoder:(id)coder;
- (_TtC8AppStore8PlusView)initWithFrame:(CGRect)frame;
- (void)drawRect:(CGRect)rect;
@end

@implementation PlusView

- (_TtC8AppStore8PlusView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore8PlusView_plusColor) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
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
  sub_10018D7C0(x, y, width, height);
}

- (_TtC8AppStore8PlusView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end