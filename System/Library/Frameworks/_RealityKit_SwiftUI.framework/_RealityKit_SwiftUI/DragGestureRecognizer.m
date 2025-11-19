@interface DragGestureRecognizer
- (_TtC19_RealityKit_SwiftUI21DragGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (void)onPanInternal:(id)a3;
@end

@implementation DragGestureRecognizer

- (void)onPanInternal:(id)a3
{
  v4 = a3;
  v13 = self;
  v5 = [(DragGestureRecognizer *)v13 view];
  [v4 locationInView_];
  v7 = v6;
  v9 = v8;

  v10 = v13 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21DragGestureRecognizer_draggable;
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

- (_TtC19_RealityKit_SwiftUI21DragGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  if (a3)
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