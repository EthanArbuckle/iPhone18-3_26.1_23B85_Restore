@interface ARRenderView
+ (Class)layerClass;
- (_TtC10RealityKit12ARRenderView)initWithCoder:(id)coder;
- (_TtC10RealityKit12ARRenderView)initWithFrame:(CGRect)frame;
@end

@implementation ARRenderView

+ (Class)layerClass
{
  type metadata accessor for ARReferenceObject(0, &lazy cache variable for type metadata for CAMetalLayer);

  return swift_getObjCClassFromMetadata();
}

- (_TtC10RealityKit12ARRenderView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ARRenderView();
  return [(ARRenderView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC10RealityKit12ARRenderView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ARRenderView();
  coderCopy = coder;
  v5 = [(ARRenderView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end