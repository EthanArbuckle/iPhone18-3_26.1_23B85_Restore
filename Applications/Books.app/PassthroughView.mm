@interface PassthroughView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (_TtC5Books15PassthroughView)initWithCoder:(id)a3;
@end

@implementation PassthroughView

- (_TtC5Books15PassthroughView)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  result = sub_1007A38A4();
  __break(1u);
  return result;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
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