@interface CRLiOSPencilHoverToolPreviewer
- (_TtC8Freeform30CRLiOSPencilHoverToolPreviewer)init;
- (void)clearPreview;
@end

@implementation CRLiOSPencilHoverToolPreviewer

- (void)clearPreview
{
  selfCopy = self;
  sub_10083C82C();
}

- (_TtC8Freeform30CRLiOSPencilHoverToolPreviewer)init
{
  v3 = OBJC_IVAR____TtC8Freeform30CRLiOSPencilHoverToolPreviewer_shapeLayer;
  *(&self->super.isa + v3) = [objc_allocWithZone(CAShapeLayer) init];
  v4 = OBJC_IVAR____TtC8Freeform30CRLiOSPencilHoverToolPreviewer_imageLayer;
  *(&self->super.isa + v4) = [objc_allocWithZone(CALayer) init];
  v5 = self + OBJC_IVAR____TtC8Freeform30CRLiOSPencilHoverToolPreviewer_previewState;
  *v5 = 2;
  *(v5 + 1) = 0;
  *(v5 + 2) = 0;
  v5[24] = 2;
  v6 = OBJC_IVAR____TtC8Freeform30CRLiOSPencilHoverToolPreviewer_enteringTimeIntervals;
  static Date.timeIntervalSinceReferenceDate.getter();
  *(&self->super.isa + v6) = v7;
  v9.receiver = self;
  v9.super_class = type metadata accessor for CRLiOSPencilHoverToolPreviewer();
  return [(CRLiOSPencilHoverToolPreviewer *)&v9 init];
}

@end