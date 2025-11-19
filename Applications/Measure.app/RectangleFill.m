@interface RectangleFill
- (_TtC7Measure13RectangleFill)init;
- (_TtC7Measure13RectangleFill)initWithCoder:(id)a3;
- (void)setState:(int64_t)a3;
@end

@implementation RectangleFill

- (void)setState:(int64_t)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC7Measure13RectangleFill_state);
  *(&self->super.super.isa + OBJC_IVAR____TtC7Measure13RectangleFill_state) = a3;
  if (v4 != a3)
  {
    v6 = self;
    sub_100165ABC(a3);
  }
}

- (_TtC7Measure13RectangleFill)initWithCoder:(id)a3
{
  *(&self->super.super.isa + OBJC_IVAR____TtC7Measure13RectangleFill_state) = 1;
  *(&self->super.super.isa + OBJC_IVAR____TtC7Measure13RectangleFill_currentPoints) = 0;
  v3 = OBJC_IVAR____TtC7Measure13RectangleFill_rectangleFill;
  *(&self->super.super.isa + v3) = [objc_allocWithZone(SCNNode) init];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC7Measure13RectangleFill)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end