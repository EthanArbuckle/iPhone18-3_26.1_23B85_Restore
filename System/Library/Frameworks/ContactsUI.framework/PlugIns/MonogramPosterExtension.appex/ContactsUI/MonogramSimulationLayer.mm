@interface MonogramSimulationLayer
- (_TtC23MonogramPosterExtension23MonogramSimulationLayer)init;
- (_TtC23MonogramPosterExtension23MonogramSimulationLayer)initWithCoder:(id)coder;
- (_TtC23MonogramPosterExtension23MonogramSimulationLayer)initWithLayer:(id)layer;
@end

@implementation MonogramSimulationLayer

- (_TtC23MonogramPosterExtension23MonogramSimulationLayer)init
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23MonogramPosterExtension23MonogramSimulationLayer_monogramTexture) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for MonogramSimulationLayer(0);
  return [(BackgroundSimulationLayer *)&v3 init];
}

- (_TtC23MonogramPosterExtension23MonogramSimulationLayer)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23MonogramPosterExtension23MonogramSimulationLayer_monogramTexture) = 0;
  result = sub_100026D10();
  __break(1u);
  return result;
}

- (_TtC23MonogramPosterExtension23MonogramSimulationLayer)initWithLayer:(id)layer
{
  swift_unknownObjectRetain();
  sub_100026C40();
  swift_unknownObjectRelease();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23MonogramPosterExtension23MonogramSimulationLayer_monogramTexture) = 0;
  result = sub_100026D10();
  __break(1u);
  return result;
}

@end