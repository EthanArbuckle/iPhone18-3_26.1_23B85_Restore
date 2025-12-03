@interface DragFromPointGestureRecognizer
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (_TtC19_RealityKit_SwiftUIP33_4ABB148B5599ED86F84C6943D86F570D30DragFromPointGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (_TtC19_RealityKit_SwiftUIP33_775A7FE6C6FA1F309878473FBDD2537430DragFromPointGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)onPanInternal:(id)internal;
- (void)reset;
@end

@implementation DragFromPointGestureRecognizer

- (void)reset
{
  selfCopy = self;
  DragFromPointGestureRecognizer.reset()();
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  selfCopy = self;
  LOBYTE(self) = DragFromPointGestureRecognizer.gestureRecognizerShouldBegin(_:)(beginCopy);

  return self & 1;
}

- (void)onPanInternal:(id)internal
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
    internalCopy = internal;
    selfCopy = self;
    view = [(DragFromPointGestureRecognizer *)selfCopy view];
    [internalCopy locationInView_];
    v12 = v11;
    v14 = v13;

    v8(v6, v5, v12, v14);
  }
}

- (_TtC19_RealityKit_SwiftUIP33_775A7FE6C6FA1F309878473FBDD2537430DragFromPointGestureRecognizer)initWithTarget:(id)target action:(SEL)action
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

- (_TtC19_RealityKit_SwiftUIP33_4ABB148B5599ED86F84C6943D86F570D30DragFromPointGestureRecognizer)initWithTarget:(id)target action:(SEL)action
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