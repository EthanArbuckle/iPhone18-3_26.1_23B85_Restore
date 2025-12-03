@interface CRLSceneCaptureSnapshotLayer
- (_TtC8Freeform28CRLSceneCaptureSnapshotLayer)init;
- (_TtC8Freeform28CRLSceneCaptureSnapshotLayer)initWithCoder:(id)coder;
- (_TtC8Freeform28CRLSceneCaptureSnapshotLayer)initWithLayer:(id)layer;
@end

@implementation CRLSceneCaptureSnapshotLayer

- (_TtC8Freeform28CRLSceneCaptureSnapshotLayer)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC8Freeform28CRLSceneCaptureSnapshotLayer_chromeClippingLayer;
  *(&self->super.super.isa + v4) = [objc_allocWithZone(CALayer) init];
  v5 = OBJC_IVAR____TtC8Freeform28CRLSceneCaptureSnapshotLayer_coordinateSpaceLayer;
  *(&self->super.super.isa + v5) = [objc_allocWithZone(type metadata accessor for CRLSceneCaptureSnapshotLayer.CRLSceneCaptureContentClippingLayer()) init];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC8Freeform28CRLSceneCaptureSnapshotLayer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8Freeform28CRLSceneCaptureSnapshotLayer)initWithLayer:(id)layer
{
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end