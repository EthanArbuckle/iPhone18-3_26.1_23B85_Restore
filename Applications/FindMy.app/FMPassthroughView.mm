@interface FMPassthroughView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (_TtC6FindMy17FMPassthroughView)initWithCoder:(id)a3;
- (_TtC6FindMy17FMPassthroughView)initWithFrame:(CGRect)a3;
@end

@implementation FMPassthroughView

- (_TtC6FindMy17FMPassthroughView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC6FindMy17FMPassthroughView_enabled) = 1;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  LOBYTE(v4) = sub_100317040(v4, x, y);

  return v4 & 1;
}

- (_TtC6FindMy17FMPassthroughView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end