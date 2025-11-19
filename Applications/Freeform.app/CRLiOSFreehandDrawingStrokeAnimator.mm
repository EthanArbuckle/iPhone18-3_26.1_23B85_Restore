@interface CRLiOSFreehandDrawingStrokeAnimator
- (NSSet)incomingShapeItemUUIDs;
- (_TtC8Freeform35CRLiOSFreehandDrawingStrokeAnimator)init;
- (void)runAnimationWithCompletionHandler:(id)a3;
- (void)setIncomingShapeItemUUIDs:(id)a3;
@end

@implementation CRLiOSFreehandDrawingStrokeAnimator

- (NSSet)incomingShapeItemUUIDs
{
  if (*(self + OBJC_IVAR____TtC8Freeform35CRLiOSFreehandDrawingStrokeAnimator_incomingShapeItemUUIDs))
  {
    type metadata accessor for UUID();
    sub_100068454(&qword_1019FB870, 255, &type metadata accessor for UUID);

    v2.super.isa = Set._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  return v2.super.isa;
}

- (void)setIncomingShapeItemUUIDs:(id)a3
{
  if (a3)
  {
    type metadata accessor for UUID();
    sub_100068454(&qword_1019FB870, 255, &type metadata accessor for UUID);
    v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  v5 = *(self + OBJC_IVAR____TtC8Freeform35CRLiOSFreehandDrawingStrokeAnimator_incomingShapeItemUUIDs);
  *(self + OBJC_IVAR____TtC8Freeform35CRLiOSFreehandDrawingStrokeAnimator_incomingShapeItemUUIDs) = v4;
  v6 = self;
  sub_100C5B6C8(v5);
}

- (void)runAnimationWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_100C5C1B0(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (_TtC8Freeform35CRLiOSFreehandDrawingStrokeAnimator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end