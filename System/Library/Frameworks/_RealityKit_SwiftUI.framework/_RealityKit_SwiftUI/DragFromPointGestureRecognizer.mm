@interface DragFromPointGestureRecognizer
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (_TtC19_RealityKit_SwiftUIP33_4ABB148B5599ED86F84C6943D86F570D30DragFromPointGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (_TtC19_RealityKit_SwiftUIP33_775A7FE6C6FA1F309878473FBDD2537430DragFromPointGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (void)onPanInternal:(id)a3;
- (void)reset;
@end

@implementation DragFromPointGestureRecognizer

- (void)reset
{
  v2 = self;
  DragFromPointGestureRecognizer.reset()();
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = DragFromPointGestureRecognizer.gestureRecognizerShouldBegin(_:)(v4);

  return self & 1;
}

- (void)onPanInternal:(id)a3
{
  v3 = (self + OBJC_IVAR____TtC19_RealityKit_SwiftUIP33_4ABB148B5599ED86F84C6943D86F570D30DragFromPointGestureRecognizer_startPoint);
  if (*(&self->super.super._gestureFlags + OBJC_IVAR____TtC19_RealityKit_SwiftUIP33_4ABB148B5599ED86F84C6943D86F570D30DragFromPointGestureRecognizer_startPoint + 8))
  {
    __break(1u);
  }

  else
  {
    v6 = *v3;
    v5 = v3[1];
    v8 = *(&self->super.super.super.isa + OBJC_IVAR____TtC19_RealityKit_SwiftUIP33_4ABB148B5599ED86F84C6943D86F570D30DragFromPointGestureRecognizer_onPan);
    v7 = *(&self->super.super._gestureFlags + OBJC_IVAR____TtC19_RealityKit_SwiftUIP33_4ABB148B5599ED86F84C6943D86F570D30DragFromPointGestureRecognizer_onPan);
    v15 = a3;
    v9 = self;
    v10 = [(DragFromPointGestureRecognizer *)v9 view];
    [v15 locationInView_];
    v12 = v11;
    v14 = v13;

    v8(v6, v5, v12, v14);
  }
}

- (_TtC19_RealityKit_SwiftUIP33_775A7FE6C6FA1F309878473FBDD2537430DragFromPointGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
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

- (_TtC19_RealityKit_SwiftUIP33_4ABB148B5599ED86F84C6943D86F570D30DragFromPointGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
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