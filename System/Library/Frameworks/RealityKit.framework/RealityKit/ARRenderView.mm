@interface ARRenderView
+ (Class)layerClass;
- (_TtC10RealityKit12ARRenderView)initWithCoder:(id)a3;
- (_TtC10RealityKit12ARRenderView)initWithFrame:(CGRect)a3;
@end

@implementation ARRenderView

+ (Class)layerClass
{
  type metadata accessor for ARReferenceObject(0, &lazy cache variable for type metadata for CAMetalLayer);

  return swift_getObjCClassFromMetadata();
}

- (_TtC10RealityKit12ARRenderView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ARRenderView();
  return [(ARRenderView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC10RealityKit12ARRenderView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ARRenderView();
  v4 = a3;
  v5 = [(ARRenderView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end