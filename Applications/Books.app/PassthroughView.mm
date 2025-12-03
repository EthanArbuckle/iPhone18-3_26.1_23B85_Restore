@interface PassthroughView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (_TtC5Books15PassthroughView)initWithCoder:(id)coder;
@end

@implementation PassthroughView

- (_TtC5Books15PassthroughView)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  result = sub_1007A38A4();
  __break(1u);
  return result;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 1;
  }

  v8 = [Strong passThroughView:self shouldPassthroughHitAtPoint:{x, y}];
  swift_unknownObjectRelease();
  return v8 ^ 1;
}

@end