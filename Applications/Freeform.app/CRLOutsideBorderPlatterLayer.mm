@interface CRLOutsideBorderPlatterLayer
- (_TtC8Freeform28CRLOutsideBorderPlatterLayer)init;
- (_TtC8Freeform28CRLOutsideBorderPlatterLayer)initWithLayer:(id)layer;
- (void)layoutSublayers;
@end

@implementation CRLOutsideBorderPlatterLayer

- (_TtC8Freeform28CRLOutsideBorderPlatterLayer)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform28CRLOutsideBorderPlatterLayer_outsideBorderWidth) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform28CRLOutsideBorderPlatterLayer_outsideBorderInsideCornerRadius) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform28CRLOutsideBorderPlatterLayer_additionalOutsetForShadowPath) = 0;
  v3 = OBJC_IVAR____TtC8Freeform28CRLOutsideBorderPlatterLayer_borderPlatterSublayer;
  *(&self->super.super.isa + v3) = [objc_allocWithZone(CRLNoDefaultImplicitActionLayer) init];
  v6.receiver = self;
  v6.super_class = type metadata accessor for CRLOutsideBorderPlatterLayer();
  v4 = [(CRLOutsideBorderPlatterLayer *)&v6 init];
  [(CRLOutsideBorderPlatterLayer *)v4 setMasksToBounds:0];
  return v4;
}

- (_TtC8Freeform28CRLOutsideBorderPlatterLayer)initWithLayer:(id)layer
{
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  return sub_100F19228(v4);
}

- (void)layoutSublayers
{
  selfCopy = self;
  sub_100F19834();
}

@end