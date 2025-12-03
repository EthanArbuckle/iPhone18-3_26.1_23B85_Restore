@interface ARView
+ (Class)layerClass;
- (ARSession)session;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)handleTapForEntityAccessibilityWrapper:(id)wrapper;
- (CALayer)renderLayer;
- (NSArray)entityAccessibilityWrappers;
- (double)contentScaleFactor;
- (float)distanceInMetersFromEntityAccessibilityWrapper:(id)wrapper;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)handleRotation:(id)rotation;
- (void)handleScale:(id)scale;
- (void)handleSingleTapWithRecognizer:(id)recognizer;
- (void)handleTranslation:(id)translation;
- (void)layoutSubviews;
- (void)restartEngineWithNotification:(id)notification;
- (void)setContentScaleFactor:(double)factor;
- (void)setSession:(id)session;
- (void)willResignActiveWithNotification:(id)notification;
- (void)windowDidRotateWithNotification:(id)notification;
- (void)windowWillAnimateRotationWithNotification:(id)notification;
- (void)windowWillRotateWithNotification:(id)notification;
@end

@implementation ARView

- (void)didMoveToWindow
{
  selfCopy = self;
  ARView.didMoveToWindow()();
}

- (void)windowWillRotateWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  ARView.windowWillRotate(notification:)(notificationCopy);
}

- (void)windowWillAnimateRotationWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  specialized ARView.windowWillAnimateRotation(notification:)();
}

- (void)windowDidRotateWithNotification:(id)notification
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
  selfCopy = self;
  ARView.entityAccessibilityWrappers.getter();

  type metadata accessor for __EntityAccessibilityWrapper();
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (float)distanceInMetersFromEntityAccessibilityWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  selfCopy = self;
  ARView.distanceInMetersFromEntityAccessibilityWrapper(_:)();
  v7 = v6;

  return v7;
}

- (BOOL)handleTapForEntityAccessibilityWrapper:(id)wrapper
{
  if (swift_weakLoadStrong())
  {
    wrapperCopy = wrapper;
    selfCopy = self;

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
  layer = [*(&self->super.super.super.isa + OBJC_IVAR____TtC10RealityKit6ARView_renderView) layer];

  return layer;
}

- (double)contentScaleFactor
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ARView();
  [(ARView *)&v3 contentScaleFactor];
  return result;
}

- (void)setContentScaleFactor:(double)factor
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for ARView();
  v4 = v10.receiver;
  [(ARView *)&v10 setContentScaleFactor:factor];
  if (*(v4 + OBJC_IVAR____TtC10RealityKit6ARView_initialized) == 1)
  {
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    [v4 contentScaleFactor];
    ARView.resizeDrawable(size:scaleFactor:)(v6, v8, v9);
  }
}

- (void)willResignActiveWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  specialized ARView.willResignActive(notification:)();
}

- (void)restartEngineWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  specialized ARView.restartEngine(notification:)();
}

- (void)didMoveToSuperview
{
  selfCopy = self;
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

- (void)setSession:(id)session
{
  sessionCopy = session;
  selfCopy = self;
  ARView.session.setter(sessionCopy);
}

- (void)handleTranslation:(id)translation
{
  translationCopy = translation;
  selfCopy = self;
  specialized ARView.handleTranslation(_:)(translationCopy);
}

- (void)handleRotation:(id)rotation
{
  rotationCopy = rotation;
  selfCopy = self;
  specialized ARView.handleRotation(_:)(rotationCopy);
}

- (void)handleScale:(id)scale
{
  scaleCopy = scale;
  selfCopy = self;
  specialized ARView.handleScale(_:)(scaleCopy);
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  selfCopy = self;
  v9 = specialized ARView.gestureRecognizer(_:shouldRecognizeSimultaneouslyWith:)(recognizerCopy, gestureRecognizerCopy);

  return v9 & 1;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  selfCopy = self;
  v9 = ARView.gestureRecognizer(_:shouldReceive:)(recognizerCopy, touchCopy);

  return v9;
}

- (void)handleSingleTapWithRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  selfCopy = self;
  [recognizerCopy locationInView_];
  ARView.handleTapAtPoint(point:)(__PAIR128__(v6, v5));
}

@end