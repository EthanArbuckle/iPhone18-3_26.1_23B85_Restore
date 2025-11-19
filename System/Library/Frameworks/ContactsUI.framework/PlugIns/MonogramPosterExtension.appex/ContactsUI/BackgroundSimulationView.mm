@interface BackgroundSimulationView
+ (Class)layerClass;
- (_TtC23MonogramPosterExtension24BackgroundSimulationView)initWithCoder:(id)a3;
@end

@implementation BackgroundSimulationView

+ (Class)layerClass
{
  type metadata accessor for BackgroundSimulationLayer(0);

  return swift_getObjCClassFromMetadata();
}

- (_TtC23MonogramPosterExtension24BackgroundSimulationView)initWithCoder:(id)a3
{
  sub_100026690();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23MonogramPosterExtension24BackgroundSimulationView_motion) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23MonogramPosterExtension24BackgroundSimulationView_isSnapshot) = 0;
  result = sub_100026D10();
  __break(1u);
  return result;
}

@end