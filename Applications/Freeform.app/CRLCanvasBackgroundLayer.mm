@interface CRLCanvasBackgroundLayer
- (CGAffineTransform)dynamicTransform;
- (_TtC8Freeform24CRLCanvasBackgroundLayer)initWithLayer:(id)layer;
- (void)layoutSublayers;
- (void)setDynamicTransform:(CGAffineTransform *)transform;
- (void)setViewScale:(double)scale;
- (void)tearDown;
@end

@implementation CRLCanvasBackgroundLayer

- (void)setViewScale:(double)scale
{
  *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_viewScale) = scale;
  if (*(&self->super.super.isa + OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_enabled) == 1)
  {
    [(CRLCanvasBackgroundLayer *)self setNeedsLayout];
  }
}

- (CGAffineTransform)dynamicTransform
{
  v3 = self + OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_dynamicTransform;
  v4 = *(&self->c + OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_dynamicTransform);
  *&retstr->a = *(&self->a + OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_dynamicTransform);
  *&retstr->c = v4;
  *&retstr->tx = *(v3 + 2);
  return self;
}

- (void)setDynamicTransform:(CGAffineTransform *)transform
{
  v3 = (self + OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_dynamicTransform);
  v4 = *&transform->c;
  v5 = *&transform->tx;
  *v3 = *&transform->a;
  v3[1] = v4;
  v3[2] = v5;
  if (*(&self->super.super.isa + OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_enabled) == 1 && (*(&self->super.super.isa + OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_scalesWithCanvas) & 1) == 0)
  {
    [(CRLCanvasBackgroundLayer *)self setNeedsLayout];
  }
}

- (_TtC8Freeform24CRLCanvasBackgroundLayer)initWithLayer:(id)layer
{
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  return sub_1005F26BC(v4);
}

- (void)tearDown
{
  swift_unknownObjectWeakAssign();

  [(CRLCanvasBackgroundLayer *)self setDelegate:0];
}

- (void)layoutSublayers
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for CRLCanvasBackgroundLayer();
  [(CRLCanvasBackgroundLayer *)&v2 layoutSublayers];
}

@end