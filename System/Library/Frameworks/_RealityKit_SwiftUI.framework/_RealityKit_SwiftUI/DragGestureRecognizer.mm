@interface DragGestureRecognizer
- (_TtC19_RealityKit_SwiftUI21DragGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)onPanInternal:(id)internal;
@end

@implementation DragGestureRecognizer

- (void)onPanInternal:(id)internal
{
  internalCopy = internal;
  selfCopy = self;
  view = [(DragGestureRecognizer *)selfCopy view];
  [internalCopy locationInView_];
  v7 = v6;
  v9 = v8;

  v10 = selfCopy + OBJC_IVAR____TtC19_RealityKit_SwiftUI21DragGestureRecognizer_draggable;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v10 + 1);
    ObjectType = swift_getObjectType();
    (*(v11 + 24))(v7, v9, 0, ObjectType, v11);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

- (_TtC19_RealityKit_SwiftUI21DragGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  if (target)
  {
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end