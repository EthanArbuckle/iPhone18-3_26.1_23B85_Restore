@interface CRLiOSPencilHoverGestureHandler
- (_TtC8Freeform31CRLiOSPencilHoverGestureHandler)init;
- (_TtC8Freeform31CRLiOSPencilHoverGestureHandler)initWithInteractiveCanvasController:(id)a3 pencilMediator:(id)a4;
- (void)handleHoverGesture:(id)a3;
- (void)removeHoverEffect;
@end

@implementation CRLiOSPencilHoverGestureHandler

- (_TtC8Freeform31CRLiOSPencilHoverGestureHandler)initWithInteractiveCanvasController:(id)a3 pencilMediator:(id)a4
{
  v4 = a3;
  swift_unknownObjectRetain();
  v5 = sub_100C84B18();

  swift_unknownObjectRelease();
  return v5;
}

- (void)handleHoverGesture:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100C82F80(v4);
}

- (void)removeHoverEffect
{
  v2 = self;
  sub_100C83BC8();
}

- (_TtC8Freeform31CRLiOSPencilHoverGestureHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end