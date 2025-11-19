@interface CRLShapeConnectionLineKnobTracker
- (BOOL)snapEnabled;
- (_TtC8Freeform33CRLShapeConnectionLineKnobTracker)initWithRep:(id)a3 knob:(id)a4;
- (void)beginMovingKnob;
- (void)crlaxAccessibilityRequestsConnectionTo:(CGPoint)a3;
- (void)crlaxAccessibilityRequestsDuplicateItemInsertFromKnobAt:(CGPoint)a3;
- (void)endMovingKnob;
- (void)insertDuplicationPreviewInfosWithSender:(id)a3;
- (void)moveKnobToCanvasPosition:(CGPoint)a3;
- (void)setSnapEnabled:(BOOL)a3;
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

- (void)setSnapEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_connectionLineKnobTracker);
  v5 = self;
  [v4 setSnapEnabled:v3];
  *(&v5->super.super.super.isa + OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker__snapEnabled) = v3;
}

- (void)beginMovingKnob
{
  v2 = self;
  sub_100A5E5CC();
}

- (void)insertDuplicationPreviewInfosWithSender:(id)a3
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
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_100A61504();

  sub_10000CAAC(v6, &unk_1019F4D00);
}

- (void)endMovingKnob
{
  v2 = self;
  sub_100A657D8();
}

- (void)moveKnobToCanvasPosition:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = self;
  sub_100A66384(x, y);
}

- (void)crlaxAccessibilityRequestsDuplicateItemInsertFromKnobAt:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = self;
  sub_100A679E8(x, y);
}

- (void)crlaxAccessibilityRequestsConnectionTo:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = self;
  [(CRLShapeConnectionLineKnobTracker *)v5 beginMovingKnob];
  [(CRLShapeConnectionLineKnobTracker *)v5 moveKnobToCanvasPosition:x, y];
  [(CRLShapeConnectionLineKnobTracker *)v5 endMovingKnob];
}

- (_TtC8Freeform33CRLShapeConnectionLineKnobTracker)initWithRep:(id)a3 knob:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_100A68258(v5, v6);

  return v7;
}

@end