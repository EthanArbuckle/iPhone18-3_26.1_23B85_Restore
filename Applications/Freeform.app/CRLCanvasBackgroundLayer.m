@interface CRLCanvasBackgroundLayer
- (CGAffineTransform)dynamicTransform;
- (_TtC8Freeform24CRLCanvasBackgroundLayer)initWithLayer:(id)a3;
- (void)layoutSublayers;
- (void)setDynamicTransform:(CGAffineTransform *)a3;
- (void)setViewScale:(double)a3;
- (void)tearDown;
@end

@implementation CRLCanvasBackgroundLayer

- (void)setViewScale:(double)a3
{
  *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_viewScale) = a3;
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

- (void)setDynamicTransform:(CGAffineTransform *)a3
{
  v3 = (self + OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_dynamicTransform);
  v4 = *&a3->c;
  v5 = *&a3->tx;
  *v3 = *&a3->a;
  v3[1] = v4;
  v3[2] = v5;
  if (*(&self->super.super.isa + OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_enabled) == 1 && (*(&self->super.super.isa + OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_scalesWithCanvas) & 1) == 0)
  {
    [(CRLCanvasBackgroundLayer *)self setNeedsLayout];
  }
}

- (_TtC8Freeform24CRLCanvasBackgroundLayer)initWithLayer:(id)a3
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