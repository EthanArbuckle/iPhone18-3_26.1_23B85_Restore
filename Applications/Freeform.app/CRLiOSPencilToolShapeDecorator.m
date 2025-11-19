@interface CRLiOSPencilToolShapeDecorator
- (NSArray)decoratorOverlayRenderables;
- (_TtC8Freeform30CRLiOSPencilToolShapeDecorator)init;
@end

@implementation CRLiOSPencilToolShapeDecorator

- (_TtC8Freeform30CRLiOSPencilToolShapeDecorator)init
{
  *(&self->super.isa + OBJC_IVAR____TtC8Freeform30CRLiOSPencilToolShapeDecorator_isHoveredWithObjectEraser) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC8Freeform30CRLiOSPencilToolShapeDecorator_previewHelper) = [objc_allocWithZone(type metadata accessor for CRLiOSPencilHoverToolPreviewer()) init];
  v4.receiver = self;
  v4.super_class = type metadata accessor for CRLiOSPencilToolShapeDecorator();
  return [(CRLiOSPencilToolShapeDecorator *)&v4 init];
}

- (NSArray)decoratorOverlayRenderables
{
  v3 = objc_opt_self();
  sub_1005B981C(&unk_1019F4D60);
  v4 = swift_allocObject();
  v5 = *(&self->super.isa + OBJC_IVAR____TtC8Freeform30CRLiOSPencilToolShapeDecorator_previewHelper);
  *(v4 + 16) = xmmword_101465920;
  v6 = *(v5 + OBJC_IVAR____TtC8Freeform30CRLiOSPencilHoverToolPreviewer_shapeLayer);
  *(v4 + 32) = v6;
  sub_100006370(0, &qword_1019FFFF0);
  v7 = self;
  v8 = v6;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v10 = [v3 renderablesFromLayers:isa];

  if (!v10)
  {
    sub_100006370(0, &qword_101A00020);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = Array._bridgeToObjectiveC()().super.isa;
  }

  return v10;
}

@end