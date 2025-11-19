@interface CRLiOSDocumentModeHandwriting
- (BOOL)allowGestureInRestrictedGestureMode:(id)a3;
- (BOOL)handleTapOnCanvasBackgroundAtUnscaledPoint:(CGPoint)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)shouldSuppressKeyboard;
- (CRLiOSToolTrayProviding)toolTray;
- (_TtC8Freeform29CRLiOSDocumentModeHandwriting)initWithBoardViewController:(id)a3;
- (void)modeDidBeginFromMode:(id)a3 forced:(BOOL)a4;
- (void)modeWillBeginFromMode:(id)a3 forced:(BOOL)a4;
- (void)modeWillEndForMode:(id)a3 forced:(BOOL)a4;
- (void)performBlockIgnoringSelectionChangesToExitHandwritingMode:(id)a3;
@end

@implementation CRLiOSDocumentModeHandwriting

- (_TtC8Freeform29CRLiOSDocumentModeHandwriting)initWithBoardViewController:(id)a3
{
  *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform29CRLiOSDocumentModeHandwriting_currentlyChangingModes) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform29CRLiOSDocumentModeHandwriting_stayInHandwritingModeForSelectionChange) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform29CRLiOSDocumentModeHandwriting_endModeCheckQueuedAfterTextGestures) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform29CRLiOSDocumentModeHandwriting_subscriptions) = _swiftEmptySetSingleton;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = CRLiOSDocumentModeHandwriting.isEqual(_:)(v8);

  sub_1005E09AC(v8);
  return v6;
}

- (CRLiOSToolTrayProviding)toolTray
{
  v2 = self;
  v3 = CRLiOSDocumentModeHandwriting.toolTray.getter();

  return v3;
}

- (void)modeWillBeginFromMode:(id)a3 forced:(BOOL)a4
{
  v4 = a4;
  v11.receiver = self;
  v11.super_class = type metadata accessor for CRLiOSDocumentModeHandwriting();
  v6 = a3;
  v7 = v11.receiver;
  [(CRLiOSDocumentMode *)&v11 modeWillBeginFromMode:v6 forced:v4];
  v8 = objc_opt_self();
  v9 = String._bridgeToObjectiveC()();
  _s8Freeform23CRLAnalyticsFeatureUsedC14featurePayload3forSDySSSo8NSObjectCGAA0bC4NameO_tFZ_0(11);
  sub_100006370(0, &qword_1019F54D0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v8 sendEventInDomain:v9 lazily:1 eventPayload:{isa, v11.receiver, v11.super_class}];

  sub_100601984();
}

- (void)modeDidBeginFromMode:(id)a3 forced:(BOOL)a4
{
  v4 = a4;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CRLiOSDocumentModeHandwriting();
  v6 = a3;
  v7 = v8.receiver;
  [(CRLiOSDocumentMode *)&v8 modeDidBeginFromMode:v6 forced:v4];
  sub_1006026D0();
}

- (void)modeWillEndForMode:(id)a3 forced:(BOOL)a4
{
  v4 = a4;
  v7 = OBJC_IVAR____TtC8Freeform29CRLiOSDocumentModeHandwriting_subscriptions;
  swift_beginAccess();
  *(&self->super.super.isa + v7) = _swiftEmptySetSingleton;
  v8 = a3;
  v9 = self;

  v10 = [(CRLiOSDocumentMode *)v9 boardViewController];
  if (v10)
  {
    v11 = v10;
    v12 = sub_101012FD4();

    [v12 removeModeObserver:v9];
    v13.receiver = v9;
    v13.super_class = type metadata accessor for CRLiOSDocumentModeHandwriting();
    [(CRLiOSDocumentMode *)&v13 modeWillEndForMode:v8 forced:v4];
  }

  else
  {
    __break(1u);
  }
}

- (BOOL)shouldSuppressKeyboard
{
  if (*(&self->super.super.isa + OBJC_IVAR____TtC8Freeform29CRLiOSDocumentModeHandwriting_currentlyChangingModes))
  {
    return 1;
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  v4 = [Strong textGesturesInFlight];

  return v4;
}

- (BOOL)allowGestureInRestrictedGestureMode:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = CRLiOSDocumentModeHandwriting.restrictedGestureModeShouldAllowGesture(_:)(v4);

  return self & 1;
}

- (void)performBlockIgnoringSelectionChangesToExitHandwritingMode:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = OBJC_IVAR____TtC8Freeform29CRLiOSDocumentModeHandwriting_stayInHandwritingModeForSelectionChange;
  *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform29CRLiOSDocumentModeHandwriting_stayInHandwritingModeForSelectionChange) = 1;
  v6 = v4[2];
  v7 = self;
  v6(v4);
  _Block_release(v4);
  *(&self->super.super.isa + v5) = 0;
}

- (BOOL)handleTapOnCanvasBackgroundAtUnscaledPoint:(CGPoint)a3
{
  v3 = self;
  v4 = [(CRLiOSDocumentMode *)v3 boardViewController];
  if (v4)
  {
    v5 = v4;
    v6 = sub_101012FD4();

    [v6 resetToDefaultModeAnimated:1];
    LOBYTE(v4) = 0;
  }

  else
  {
    __break(1u);
  }

  return v4;
}

@end