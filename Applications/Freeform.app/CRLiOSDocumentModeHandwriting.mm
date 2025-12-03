@interface CRLiOSDocumentModeHandwriting
- (BOOL)allowGestureInRestrictedGestureMode:(id)mode;
- (BOOL)handleTapOnCanvasBackgroundAtUnscaledPoint:(CGPoint)point;
- (BOOL)isEqual:(id)equal;
- (BOOL)shouldSuppressKeyboard;
- (CRLiOSToolTrayProviding)toolTray;
- (_TtC8Freeform29CRLiOSDocumentModeHandwriting)initWithBoardViewController:(id)controller;
- (void)modeDidBeginFromMode:(id)mode forced:(BOOL)forced;
- (void)modeWillBeginFromMode:(id)mode forced:(BOOL)forced;
- (void)modeWillEndForMode:(id)mode forced:(BOOL)forced;
- (void)performBlockIgnoringSelectionChangesToExitHandwritingMode:(id)mode;
@end

@implementation CRLiOSDocumentModeHandwriting

- (_TtC8Freeform29CRLiOSDocumentModeHandwriting)initWithBoardViewController:(id)controller
{
  *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform29CRLiOSDocumentModeHandwriting_currentlyChangingModes) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform29CRLiOSDocumentModeHandwriting_stayInHandwritingModeForSelectionChange) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform29CRLiOSDocumentModeHandwriting_endModeCheckQueuedAfterTextGestures) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform29CRLiOSDocumentModeHandwriting_subscriptions) = _swiftEmptySetSingleton;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = CRLiOSDocumentModeHandwriting.isEqual(_:)(v8);

  sub_1005E09AC(v8);
  return v6;
}

- (CRLiOSToolTrayProviding)toolTray
{
  selfCopy = self;
  v3 = CRLiOSDocumentModeHandwriting.toolTray.getter();

  return v3;
}

- (void)modeWillBeginFromMode:(id)mode forced:(BOOL)forced
{
  forcedCopy = forced;
  v11.receiver = self;
  v11.super_class = type metadata accessor for CRLiOSDocumentModeHandwriting();
  modeCopy = mode;
  v7 = v11.receiver;
  [(CRLiOSDocumentMode *)&v11 modeWillBeginFromMode:modeCopy forced:forcedCopy];
  v8 = objc_opt_self();
  v9 = String._bridgeToObjectiveC()();
  _s8Freeform23CRLAnalyticsFeatureUsedC14featurePayload3forSDySSSo8NSObjectCGAA0bC4NameO_tFZ_0(11);
  sub_100006370(0, &qword_1019F54D0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v8 sendEventInDomain:v9 lazily:1 eventPayload:{isa, v11.receiver, v11.super_class}];

  sub_100601984();
}

- (void)modeDidBeginFromMode:(id)mode forced:(BOOL)forced
{
  forcedCopy = forced;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CRLiOSDocumentModeHandwriting();
  modeCopy = mode;
  v7 = v8.receiver;
  [(CRLiOSDocumentMode *)&v8 modeDidBeginFromMode:modeCopy forced:forcedCopy];
  sub_1006026D0();
}

- (void)modeWillEndForMode:(id)mode forced:(BOOL)forced
{
  forcedCopy = forced;
  v7 = OBJC_IVAR____TtC8Freeform29CRLiOSDocumentModeHandwriting_subscriptions;
  swift_beginAccess();
  *(&self->super.super.isa + v7) = _swiftEmptySetSingleton;
  modeCopy = mode;
  selfCopy = self;

  boardViewController = [(CRLiOSDocumentMode *)selfCopy boardViewController];
  if (boardViewController)
  {
    v11 = boardViewController;
    v12 = sub_101012FD4();

    [v12 removeModeObserver:selfCopy];
    v13.receiver = selfCopy;
    v13.super_class = type metadata accessor for CRLiOSDocumentModeHandwriting();
    [(CRLiOSDocumentMode *)&v13 modeWillEndForMode:modeCopy forced:forcedCopy];
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
  textGesturesInFlight = [Strong textGesturesInFlight];

  return textGesturesInFlight;
}

- (BOOL)allowGestureInRestrictedGestureMode:(id)mode
{
  modeCopy = mode;
  selfCopy = self;
  LOBYTE(self) = CRLiOSDocumentModeHandwriting.restrictedGestureModeShouldAllowGesture(_:)(modeCopy);

  return self & 1;
}

- (void)performBlockIgnoringSelectionChangesToExitHandwritingMode:(id)mode
{
  v4 = _Block_copy(mode);
  v5 = OBJC_IVAR____TtC8Freeform29CRLiOSDocumentModeHandwriting_stayInHandwritingModeForSelectionChange;
  *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform29CRLiOSDocumentModeHandwriting_stayInHandwritingModeForSelectionChange) = 1;
  v6 = v4[2];
  selfCopy = self;
  v6(v4);
  _Block_release(v4);
  *(&self->super.super.isa + v5) = 0;
}

- (BOOL)handleTapOnCanvasBackgroundAtUnscaledPoint:(CGPoint)point
{
  selfCopy = self;
  boardViewController = [(CRLiOSDocumentMode *)selfCopy boardViewController];
  if (boardViewController)
  {
    v5 = boardViewController;
    v6 = sub_101012FD4();

    [v6 resetToDefaultModeAnimated:1];
    LOBYTE(boardViewController) = 0;
  }

  else
  {
    __break(1u);
  }

  return boardViewController;
}

@end