@interface CRLShapeConnectionLineKnobTracker
- (BOOL)snapEnabled;
- (_TtC8Freeform33CRLShapeConnectionLineKnobTracker)initWithRep:(id)rep knob:(id)knob;
- (void)beginMovingKnob;
- (void)crlaxAccessibilityRequestsConnectionTo:(CGPoint)to;
- (void)crlaxAccessibilityRequestsDuplicateItemInsertFromKnobAt:(CGPoint)at;
- (void)endMovingKnob;
- (void)insertDuplicationPreviewInfosWithSender:(id)sender;
- (void)moveKnobToCanvasPosition:(CGPoint)position;
- (void)setSnapEnabled:(BOOL)enabled;
@end

@implementation CRLShapeConnectionLineKnobTracker

- (BOOL)snapEnabled
{
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_connectionLineKnobTracker))
  {
    return [*(&self->super.super.super.isa + OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_connectionLineKnobTracker) snapEnabled];
  }

  else
  {
    return *(&self->super.super.super.isa + OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker__snapEnabled);
  }
}

- (void)setSnapEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_connectionLineKnobTracker);
  selfCopy = self;
  [v4 setSnapEnabled:enabledCopy];
  *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker__snapEnabled) = enabledCopy;
}

- (void)beginMovingKnob
{
  selfCopy = self;
  sub_100A5E5CC();
}

- (void)insertDuplicationPreviewInfosWithSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_100A61504();

  sub_10000CAAC(v6, &unk_1019F4D00);
}

- (void)endMovingKnob
{
  selfCopy = self;
  sub_100A657D8();
}

- (void)moveKnobToCanvasPosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  selfCopy = self;
  sub_100A66384(x, y);
}

- (void)crlaxAccessibilityRequestsDuplicateItemInsertFromKnobAt:(CGPoint)at
{
  y = at.y;
  x = at.x;
  selfCopy = self;
  sub_100A679E8(x, y);
}

- (void)crlaxAccessibilityRequestsConnectionTo:(CGPoint)to
{
  y = to.y;
  x = to.x;
  selfCopy = self;
  [(CRLShapeConnectionLineKnobTracker *)selfCopy beginMovingKnob];
  [(CRLShapeConnectionLineKnobTracker *)selfCopy moveKnobToCanvasPosition:x, y];
  [(CRLShapeConnectionLineKnobTracker *)selfCopy endMovingKnob];
}

- (_TtC8Freeform33CRLShapeConnectionLineKnobTracker)initWithRep:(id)rep knob:(id)knob
{
  repCopy = rep;
  knobCopy = knob;
  v7 = sub_100A68258(repCopy, knobCopy);

  return v7;
}

@end