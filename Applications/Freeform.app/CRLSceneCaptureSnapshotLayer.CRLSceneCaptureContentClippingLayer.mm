@interface CRLSceneCaptureSnapshotLayer.CRLSceneCaptureContentClippingLayer
- (_TtCC8Freeform28CRLSceneCaptureSnapshotLayer35CRLSceneCaptureContentClippingLayer)init;
- (_TtCC8Freeform28CRLSceneCaptureSnapshotLayer35CRLSceneCaptureContentClippingLayer)initWithLayer:(id)layer;
@end

@implementation CRLSceneCaptureSnapshotLayer.CRLSceneCaptureContentClippingLayer

- (_TtCC8Freeform28CRLSceneCaptureSnapshotLayer35CRLSceneCaptureContentClippingLayer)init
{
  v3 = (self + OBJC_IVAR____TtCC8Freeform28CRLSceneCaptureSnapshotLayer35CRLSceneCaptureContentClippingLayer_clippingRect);
  *v3 = 0u;
  v3[1] = 0u;
  *(&self->super.super.isa + OBJC_IVAR____TtCC8Freeform28CRLSceneCaptureSnapshotLayer35CRLSceneCaptureContentClippingLayer_invertClipping) = 0;
  v4 = (self + OBJC_IVAR____TtCC8Freeform28CRLSceneCaptureSnapshotLayer35CRLSceneCaptureContentClippingLayer_renderRect);
  *v4 = 0u;
  v4[1] = 0u;
  v5 = OBJC_IVAR____TtCC8Freeform28CRLSceneCaptureSnapshotLayer35CRLSceneCaptureContentClippingLayer_maskLayer;
  *(&self->super.super.isa + v5) = [objc_allocWithZone(CAShapeLayer) init];
  v7.receiver = self;
  v7.super_class = type metadata accessor for CRLSceneCaptureSnapshotLayer.CRLSceneCaptureContentClippingLayer();
  return [(CRLSceneCaptureSnapshotLayer.CRLSceneCaptureContentClippingLayer *)&v7 init];
}

- (_TtCC8Freeform28CRLSceneCaptureSnapshotLayer35CRLSceneCaptureContentClippingLayer)initWithLayer:(id)layer
{
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v4 = (self + OBJC_IVAR____TtCC8Freeform28CRLSceneCaptureSnapshotLayer35CRLSceneCaptureContentClippingLayer_clippingRect);
  *v4 = 0u;
  v4[1] = 0u;
  *(&self->super.super.isa + OBJC_IVAR____TtCC8Freeform28CRLSceneCaptureSnapshotLayer35CRLSceneCaptureContentClippingLayer_invertClipping) = 0;
  v5 = (self + OBJC_IVAR____TtCC8Freeform28CRLSceneCaptureSnapshotLayer35CRLSceneCaptureContentClippingLayer_renderRect);
  *v5 = 0u;
  v5[1] = 0u;
  v6 = OBJC_IVAR____TtCC8Freeform28CRLSceneCaptureSnapshotLayer35CRLSceneCaptureContentClippingLayer_maskLayer;
  *(&self->super.super.isa + v6) = [objc_allocWithZone(CAShapeLayer) init];
  sub_100020E58(v11, v11[3]);
  v7 = _bridgeAnythingToObjectiveC<A>(_:)();
  v10.receiver = self;
  v10.super_class = type metadata accessor for CRLSceneCaptureSnapshotLayer.CRLSceneCaptureContentClippingLayer();
  v8 = [(CRLSceneCaptureSnapshotLayer.CRLSceneCaptureContentClippingLayer *)&v10 initWithLayer:v7];
  swift_unknownObjectRelease();
  sub_100005070(v11);
  return v8;
}

@end