@interface MonogramSimulationView
+ (Class)layerClass;
- (_TtC23MonogramPosterExtension22MonogramSimulationView)initWithCoder:(id)a3;
- (_TtC23MonogramPosterExtension22MonogramSimulationView)initWithFrame:(CGRect)a3;
@end

@implementation MonogramSimulationView

- (_TtC23MonogramPosterExtension22MonogramSimulationView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11.receiver = self;
  v11.super_class = type metadata accessor for MonogramSimulationView(0);
  v7 = [(BackgroundSimulationView *)&v11 initWithFrame:x, y, width, height];
  v8 = [(MonogramSimulationView *)v7 layer];
  [v8 setOpaque:0];

  v9 = [(MonogramSimulationView *)v7 layer];
  [v9 setAllowsDisplayCompositing:0];

  return v7;
}

- (_TtC23MonogramPosterExtension22MonogramSimulationView)initWithCoder:(id)a3
{
  result = sub_100026D10();
  __break(1u);
  return result;
}

+ (Class)layerClass
{
  type metadata accessor for MonogramSimulationLayer(0);

  return swift_getObjCClassFromMetadata();
}

@end