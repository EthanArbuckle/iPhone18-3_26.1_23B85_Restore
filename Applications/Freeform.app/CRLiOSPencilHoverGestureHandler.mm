@interface CRLiOSPencilHoverGestureHandler
- (_TtC8Freeform31CRLiOSPencilHoverGestureHandler)init;
- (_TtC8Freeform31CRLiOSPencilHoverGestureHandler)initWithInteractiveCanvasController:(id)controller pencilMediator:(id)mediator;
- (void)handleHoverGesture:(id)gesture;
- (void)removeHoverEffect;
@end

@implementation CRLiOSPencilHoverGestureHandler

- (_TtC8Freeform31CRLiOSPencilHoverGestureHandler)initWithInteractiveCanvasController:(id)controller pencilMediator:(id)mediator
{
  controllerCopy = controller;
  swift_unknownObjectRetain();
  v5 = sub_100C84B18();

  swift_unknownObjectRelease();
  return v5;
}

- (void)handleHoverGesture:(id)gesture
{
  gestureCopy = gesture;
  selfCopy = self;
  sub_100C82F80(gestureCopy);
}

- (void)removeHoverEffect
{
  selfCopy = self;
  sub_100C83BC8();
}

- (_TtC8Freeform31CRLiOSPencilHoverGestureHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end