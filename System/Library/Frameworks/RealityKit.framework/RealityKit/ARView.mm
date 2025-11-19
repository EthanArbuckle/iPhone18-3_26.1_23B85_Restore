@interface ARView
+ (Class)layerClass;
- (ARSession)session;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)handleTapForEntityAccessibilityWrapper:(id)a3;
- (CALayer)renderLayer;
- (NSArray)entityAccessibilityWrappers;
- (double)contentScaleFactor;
- (float)distanceInMetersFromEntityAccessibilityWrapper:(id)a3;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)handleRotation:(id)a3;
- (void)handleScale:(id)a3;
- (void)handleSingleTapWithRecognizer:(id)a3;
- (void)handleTranslation:(id)a3;
- (void)layoutSubviews;
- (void)restartEngineWithNotification:(id)a3;
- (void)setContentScaleFactor:(double)a3;
- (void)setSession:(id)a3;
- (void)willResignActiveWithNotification:(id)a3;
- (void)windowDidRotateWithNotification:(id)a3;
- (void)windowWillAnimateRotationWithNotification:(id)a3;
- (void)windowWillRotateWithNotification:(id)a3;
@end

@implementation ARView

- (void)didMoveToWindow
{
  v2 = self;
  ARView.didMoveToWindow()();
}

- (void)windowWillRotateWithNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  ARView.windowWillRotate(notification:)(v4);
}

- (void)windowWillAnimateRotationWithNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized ARView.windowWillAnimateRotation(notification:)();
}

- (void)windowDidRotateWithNotification:(id)a3
{
  v4 = OBJC_IVAR____TtC10RealityKit6ARView___disableCounterRotation;
  swift_beginAccess();
  if (*(&self->super.super.super.isa + v4) & 1) == 0 && (*(&self->super.super.super.isa + OBJC_IVAR____TtC10RealityKit6ARView_viewCounterRotating))
  {
    *(&self->super.super.super.isa + OBJC_IVAR____TtC10RealityKit6ARView_viewCounterRotating) = 0;
    *(&self->super.super.super.isa + OBJC_IVAR____TtC10RealityKit6ARView_updateAfterCounterRotation) = 1;
  }
}

- (NSArray)entityAccessibilityWrappers
{
  v2 = self;
  ARView.entityAccessibilityWrappers.getter();

  type metadata accessor for __EntityAccessibilityWrapper();
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (float)distanceInMetersFromEntityAccessibilityWrapper:(id)a3
{
  v4 = a3;
  v5 = self;
  ARView.distanceInMetersFromEntityAccessibilityWrapper(_:)();
  v7 = v6;

  return v7;
}

- (BOOL)handleTapForEntityAccessibilityWrapper:(id)a3
{
  if (swift_weakLoadStrong())
  {
    v5 = a3;
    v6 = self;

    ARView.handleTapForEntity(_:shouldNotifyDelegateAlways:)(v7, 0);
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

+ (Class)layerClass
{
  type metadata accessor for ARReferenceObject(0, &lazy cache variable for type metadata for CALayer);

  return swift_getObjCClassFromMetadata();
}

- (CALayer)renderLayer
{
  v2 = [*(&self->super.super.super.isa + OBJC_IVAR____TtC10RealityKit6ARView_renderView) layer];

  return v2;
}

- (double)contentScaleFactor
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ARView();
  [(ARView *)&v3 contentScaleFactor];
  return result;
}

- (void)setContentScaleFactor:(double)a3
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for ARView();
  v4 = v10.receiver;
  [(ARView *)&v10 setContentScaleFactor:a3];
  if (*(v4 + OBJC_IVAR____TtC10RealityKit6ARView_initialized) == 1)
  {
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    [v4 contentScaleFactor];
    ARView.resizeDrawable(size:scaleFactor:)(v6, v8, v9);
  }
}

- (void)willResignActiveWithNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized ARView.willResignActive(notification:)();
}

- (void)restartEngineWithNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized ARView.restartEngine(notification:)();
}

- (void)didMoveToSuperview
{
  v2 = self;
  ARView.didMoveToSuperview()();
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for ARView();
  v2 = v8.receiver;
  [(ARView *)&v8 layoutSubviews];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  [v2 contentScaleFactor];
  ARView.resizeDrawable(size:scaleFactor:)(v4, v6, v7);
}

- (ARSession)session
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC10RealityKit6ARView_arSystem);
  if (v2)
  {
    return *(v2 + OBJC_IVAR____TtC10RealityKit10RKARSystem_session);
  }

  __break(1u);
  return self;
}

- (void)setSession:(id)a3
{
  v4 = a3;
  v5 = self;
  ARView.session.setter(v4);
}

- (void)handleTranslation:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized ARView.handleTranslation(_:)(v4);
}

- (void)handleRotation:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized ARView.handleRotation(_:)(v4);
}

- (void)handleScale:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized ARView.handleScale(_:)(v4);
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = specialized ARView.gestureRecognizer(_:shouldRecognizeSimultaneouslyWith:)(v6, v7);

  return v9 & 1;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = ARView.gestureRecognizer(_:shouldReceive:)(v6, v7);

  return v9;
}

- (void)handleSingleTapWithRecognizer:(id)a3
{
  v4 = a3;
  v7 = self;
  [v4 locationInView_];
  ARView.handleTapAtPoint(point:)(__PAIR128__(v6, v5));
}

@end