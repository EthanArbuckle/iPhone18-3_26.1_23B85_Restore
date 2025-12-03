@interface MonogramSimulationView
+ (Class)layerClass;
- (_TtC23MonogramPosterExtension22MonogramSimulationView)initWithCoder:(id)coder;
- (_TtC23MonogramPosterExtension22MonogramSimulationView)initWithFrame:(CGRect)frame;
@end

@implementation MonogramSimulationView

- (_TtC23MonogramPosterExtension22MonogramSimulationView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v11.receiver = self;
  v11.super_class = type metadata accessor for MonogramSimulationView(0);
  height = [(BackgroundSimulationView *)&v11 initWithFrame:x, y, width, height];
  layer = [(MonogramSimulationView *)height layer];
  [layer setOpaque:0];

  layer2 = [(MonogramSimulationView *)height layer];
  [layer2 setAllowsDisplayCompositing:0];

  return height;
}

- (_TtC23MonogramPosterExtension22MonogramSimulationView)initWithCoder:(id)coder
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