@interface FMPassthroughView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (_TtC6FindMy17FMPassthroughView)initWithCoder:(id)coder;
- (_TtC6FindMy17FMPassthroughView)initWithFrame:(CGRect)frame;
@end

@implementation FMPassthroughView

- (_TtC6FindMy17FMPassthroughView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC6FindMy17FMPassthroughView_enabled) = 1;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  eventCopy = event;
  y = inside.y;
  x = inside.x;
  eventCopy2 = event;
  selfCopy = self;
  LOBYTE(eventCopy) = sub_100317040(eventCopy, x, y);

  return eventCopy & 1;
}

- (_TtC6FindMy17FMPassthroughView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end